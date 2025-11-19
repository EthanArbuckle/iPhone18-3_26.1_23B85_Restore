@interface MFSecureMIMECompositionManager
+ (__SecIdentity)copyEncryptionIdentityForAccount:(id)a3 sendingAddress:(id)a4 error:(id *)a5;
+ (__SecIdentity)copySigningIdentityForAccount:(id)a3 sendingAddress:(id)a4 error:(id *)a5;
+ (id)copyEncryptionCertificatesForAccount:(id)a3 recipientAddresses:(id)a4 errorsByAddress:(id *)a5;
+ (unsigned)evaluateTrustForSigningCertificate:(__SecCertificate *)a3 sendingAddress:(id)a4;
- (BOOL)_updateEncryptionStatus_nts;
- (BOOL)shouldAllowSend;
- (MFSecureMIMECompositionManager)initWithSendingAccount:(id)a3 signingPolicy:(int64_t)a4 encryptionPolicy:(int64_t)a5;
- (MFSecureMIMECompositionManagerDelegate)delegate;
- (NSSet)recipients;
- (NSString)sendingAddress;
- (id)compositionSpecification;
- (int64_t)encryptionStatus;
- (int64_t)signingStatus;
- (void)_determineEncryptionStatusWithNewRecipients:(uint64_t)a1;
- (void)_determineEncryptionStatusWithSendingAddress:(uint64_t)a1;
- (void)_determineIdentitiesWithSendingAddress:(int)a3 forSigning:(int)a4 encryption:;
- (void)_determineSigningStatusWithSendingAddress:(uint64_t)a1;
- (void)_determineTrustStatusForSigningIdentity:(void *)a3 sendingAddress:;
- (void)_notifyDelegateEncryptionStatusDidChange:(void *)a3 certsByRecipient:(void *)a4 errorsByRecipient:(id)a5 identity:(void *)a6 error:;
- (void)_notifyDelegateSigningStatusDidChange:(uint64_t)a3 identity:(void *)a4 error:;
- (void)_nts_copyEncryptionIdentity:(void *)a3 error:(void *)a4 certificatesByRecipient:(void *)a5 errorsByRecipient:;
- (void)_nts_setEncryptionIdentity:(void *)a3 error:;
- (void)_nts_setSigningIdentity:(void *)a3 error:;
- (void)addRecipients:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)removeRecipients:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setSendingAddress:(id)a3;
@end

@implementation MFSecureMIMECompositionManager

- (MFSecureMIMECompositionManager)initWithSendingAccount:(id)a3 signingPolicy:(int64_t)a4 encryptionPolicy:(int64_t)a5
{
  v9 = a3;
  v17.receiver = self;
  v17.super_class = MFSecureMIMECompositionManager;
  v10 = [(MFSecureMIMECompositionManager *)&v17 init];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E69AD6D8]) initWithName:@"MFSecureMIMECompositionManager_lock" andDelegate:0];
    lock = v10->_lock;
    v10->_lock = v11;

    v13 = dispatch_queue_create("com.apple.mobilemail.MFSecureMIMECompositionManagerQueue", 0);
    queue = v10->_queue;
    v10->_queue = v13;

    objc_storeStrong(&v10->_sendingAccount, a3);
    v10->_signingPolicy = a4;
    v10->_encryptionPolicy = a5;
    if (a4)
    {
      if (v10->_signingStatusSemaphore)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2 * (v10->_signingIdentity == 0);
      }
    }

    else
    {
      v15 = 2;
    }

    v10->_signingStatus = v15;
    [(MFSecureMIMECompositionManager *)v10 _updateEncryptionStatus_nts];
  }

  return v10;
}

- (void)dealloc
{
  signingIdentity = self->_signingIdentity;
  if (signingIdentity)
  {
    CFRelease(signingIdentity);
  }

  encryptionIdentity = self->_encryptionIdentity;
  if (encryptionIdentity)
  {
    CFRelease(encryptionIdentity);
  }

  v5.receiver = self;
  v5.super_class = MFSecureMIMECompositionManager;
  [(MFSecureMIMECompositionManager *)&v5 dealloc];
}

- (void)addRecipients:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 copy];
    [(NSLock *)self->_lock lock];
    if (self->_invalidated)
    {
      updated = 0;
      v7 = 0;
      encryptionStatus = 0xAAAAAAAAAAAAAAAALL;
    }

    else
    {
      recipients = self->_recipients;
      if (!recipients)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v11 = self->_recipients;
        self->_recipients = v10;

        recipients = self->_recipients;
      }

      [(NSMutableSet *)recipients unionSet:v5];
      encryptionPolicy = self->_encryptionPolicy;
      v7 = encryptionPolicy != 0;
      if (encryptionPolicy)
      {
        ++self->_encryptionStatusSemaphore;
      }

      updated = [(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts];
      encryptionStatus = self->_encryptionStatus;
    }

    [(NSLock *)self->_lock unlock];
    if (updated)
    {
      [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:0 certsByRecipient:0 errorsByRecipient:0 identity:0 error:?];
    }

    if (v7)
    {
      queue = self->_queue;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __48__MFSecureMIMECompositionManager_addRecipients___block_invoke;
      v14[3] = &unk_1E7AA26E0;
      v14[4] = self;
      v15 = v5;
      dispatch_async(queue, v14);
    }
  }
}

- (void)_notifyDelegateEncryptionStatusDidChange:(void *)a3 certsByRecipient:(void *)a4 errorsByRecipient:(id)a5 identity:(void *)a6 error:
{
  v16 = a3;
  v11 = a4;
  v12 = a6;
  if (a1)
  {
    v13 = [a1 delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_15:

      goto LABEL_16;
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v16)
    {
      [v14 setObject:v16 forKey:@"CertificatesByRecipient"];
    }

    if (v11)
    {
      [v14 setObject:v11 forKey:@"ErrorsByRecipient"];
    }

    if (a5)
    {
      v15 = @"IdentityRef";
    }

    else
    {
      if (!v12)
      {
LABEL_12:
        if (![v14 count])
        {

          v14 = 0;
        }

        [v13 secureMIMECompositionManager:a1 encryptionStatusDidChange:a2 context:v14];

        goto LABEL_15;
      }

      v15 = @"IdentityError";
      a5 = v12;
    }

    [v14 setObject:a5 forKey:v15];
    goto LABEL_12;
  }

LABEL_16:
}

- (void)_determineEncryptionStatusWithNewRecipients:(uint64_t)a1
{
  v41 = *MEMORY[0x1E69E9840];
  v30 = a2;
  if (a1)
  {
    cf = 0;
    v3 = objc_opt_class();
    v4 = *(a1 + 24);
    v5 = [v30 allObjects];
    v38 = 0;
    v6 = [v3 copyEncryptionCertificatesForAccount:v4 recipientAddresses:v5 errorsByAddress:&v38];
    v7 = v38;
    v8 = [v6 mutableCopy];

    v9 = [v7 mutableCopy];
    [*(a1 + 8) lock];
    v10 = *(a1 + 128);
    if (!v10)
    {
      __assert_rtn("[MFSecureMIMECompositionManager _determineEncryptionStatusWithNewRecipients:]", "MFSecureMIMECompositionManager.m", 571, "_encryptionStatusSemaphore > 0");
    }

    *(a1 + 128) = v10 - 1;
    if (*(a1 + 144))
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 1;
    }

    else
    {
      v16 = [v30 mutableCopy];
      [v16 minusSet:*(a1 + 72)];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v18)
      {
        v19 = *v35;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v34 + 1) + 8 * i);
            [v8 removeObjectForKey:{v21, v30}];
            [v9 removeObjectForKey:v21];
          }

          v18 = [v17 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v18);
      }

      v22 = *(a1 + 80);
      if (!v22)
      {
        v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v24 = *(a1 + 80);
        *(a1 + 80) = v23;

        v22 = *(a1 + 80);
      }

      [v22 addEntriesFromDictionary:{v9, v30}];
      v25 = *(a1 + 88);
      if (!v25)
      {
        v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v27 = *(a1 + 88);
        *(a1 + 88) = v26;

        v25 = *(a1 + 88);
      }

      [v25 addEntriesFromDictionary:v8];
      if (*(a1 + 128))
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 1;
      }

      else
      {
        updated = [(MFSecureMIMECompositionManager *)a1 _updateEncryptionStatus_nts];
        v15 = *(a1 + 120);
        if (updated)
        {
          v32 = 0;
          v33 = 0;
          v31 = 0;
          [(MFSecureMIMECompositionManager *)a1 _nts_copyEncryptionIdentity:&v33 error:&v32 certificatesByRecipient:&v31 errorsByRecipient:?];
          v13 = v33;
          v12 = v32;
          v11 = v31;
          v14 = 1;
        }

        else
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
        }
      }
    }

    [*(a1 + 8) unlock];
    if (v14)
    {
      [(MFSecureMIMECompositionManager *)a1 _notifyDelegateEncryptionStatusDidChange:v15 certsByRecipient:v12 errorsByRecipient:v11 identity:cf error:v13];
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)removeRecipients:(id)a3
{
  v15 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_invalidated)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    encryptionStatus = 0xAAAAAAAAAAAAAAAALL;
    goto LABEL_21;
  }

  v10 = [v15 allObjects];
  v11 = [(NSMutableDictionary *)self->_errorsByRecipient count];
  v12 = [(NSMutableDictionary *)self->_certificatesByRecipient count];
  [(NSMutableSet *)self->_recipients minusSet:v15];
  [(NSMutableDictionary *)self->_errorsByRecipient removeObjectsForKeys:v10];
  [(NSMutableDictionary *)self->_certificatesByRecipient removeObjectsForKeys:v10];
  if (!self->_encryptionStatusSemaphore)
  {
    if ([(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts]|| [(NSMutableDictionary *)self->_certificatesByRecipient count]!= v12)
    {
      encryptionStatus = self->_encryptionStatus;
    }

    else
    {
      v13 = [(NSMutableDictionary *)self->_errorsByRecipient count];
      encryptionStatus = self->_encryptionStatus;
      if (v13 == v11)
      {
        v4 = 0;
        v5 = 0;
        v6 = 0;
        v7 = 0;
        v8 = 0;
        goto LABEL_20;
      }
    }

    if ([(NSMutableDictionary *)self->_errorsByRecipient count])
    {
      v7 = [(NSMutableDictionary *)self->_errorsByRecipient copy];
    }

    else
    {
      v7 = 0;
    }

    if ([(NSMutableDictionary *)self->_certificatesByRecipient count])
    {
      v6 = [(NSMutableDictionary *)self->_certificatesByRecipient copy];
    }

    else
    {
      v6 = 0;
    }

    encryptionIdentity = self->_encryptionIdentity;
    if (encryptionIdentity)
    {
      v4 = CFRetain(encryptionIdentity);
      v5 = 0;
    }

    else
    {
      v5 = self->_encryptionIdentityError;
      v4 = 0;
    }

    v8 = 1;
    goto LABEL_20;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  encryptionStatus = 0xAAAAAAAAAAAAAAAALL;
LABEL_20:

LABEL_21:
  [(NSLock *)self->_lock unlock];
  if (v8)
  {
    [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:v6 certsByRecipient:v7 errorsByRecipient:v4 identity:v5 error:?];
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

- (void)invalidate
{
  [(NSLock *)self->_lock lock];
  objc_storeWeak(&self->_delegate, 0);
  self->_invalidated = 1;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  [(NSLock *)self->_lock lock];
  objc_storeWeak(&self->_delegate, obj);
  [(NSLock *)self->_lock unlock];
}

- (MFSecureMIMECompositionManagerDelegate)delegate
{
  [(NSLock *)self->_lock lock];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(NSLock *)self->_lock unlock];

  return WeakRetained;
}

- (void)setSendingAddress:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_invalidated || [(NSString *)self->_sendingAddress isEqualToString:v4])
  {
    v5 = 0;
    updated = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    encryptionStatus = 0xAAAAAAAAAAAAAAAALL;
    v11 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    v9 = [v4 copy];
    objc_storeStrong(&self->_sendingAddress, v9);
    if (self->_signingPolicy)
    {
      sendingAddress = self->_sendingAddress;
      v7 = sendingAddress != 0;
      signingStatusSemaphore = self->_signingStatusSemaphore;
      if (sendingAddress)
      {
        self->_signingStatusSemaphore = ++signingStatusSemaphore;
      }

      signingStatus = self->_signingStatus;
      if (signingStatusSemaphore)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2 * (self->_signingIdentity == 0);
      }
    }

    else
    {
      v7 = 0;
      signingStatus = self->_signingStatus;
      v11 = 2;
    }

    self->_signingStatus = v11;
    v5 = signingStatus != v11;
    if (self->_encryptionPolicy && self->_sendingAddress)
    {
      ++self->_encryptionStatusSemaphore;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    updated = [(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts];
    encryptionStatus = self->_encryptionStatus;
  }

  [(NSLock *)self->_lock unlock];
  if (v5)
  {
    [(MFSecureMIMECompositionManager *)self _notifyDelegateSigningStatusDidChange:v11 identity:0 error:0];
  }

  if (updated)
  {
    [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:0 certsByRecipient:0 errorsByRecipient:0 identity:0 error:?];
  }

  if ((v7 | v8) == 1)
  {
    queue = self->_queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__MFSecureMIMECompositionManager_setSendingAddress___block_invoke;
    v16[3] = &unk_1E7AA78B0;
    v16[4] = self;
    v17 = v9;
    v19 = v7;
    v20 = v8;
    v18 = v4;
    dispatch_async(queue, v16);
  }
}

- (void)_notifyDelegateSigningStatusDidChange:(uint64_t)a3 identity:(void *)a4 error:
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a1)
  {
    v8 = [a1 delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_9:

      goto LABEL_10;
    }

    if (a3)
    {
      v15 = @"IdentityRef";
      v16[0] = a3;
      v9 = &v15;
      v10 = v16;
    }

    else
    {
      if (!v7)
      {
        v11 = 0;
        goto LABEL_8;
      }

      v13 = @"IdentityError";
      v14 = v7;
      v9 = &v13;
      v10 = &v14;
    }

    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:1];
LABEL_8:
    [v8 secureMIMECompositionManager:a1 signingStatusDidChange:a2 context:v11];

    goto LABEL_9;
  }

LABEL_10:

  v12 = *MEMORY[0x1E69E9840];
}

void __52__MFSecureMIMECompositionManager_setSendingAddress___block_invoke(uint64_t a1)
{
  [(MFSecureMIMECompositionManager *)*(a1 + 32) _determineIdentitiesWithSendingAddress:*(a1 + 56) forSigning:1 encryption:?];
  if (*(a1 + 56) == 1)
  {
    [(MFSecureMIMECompositionManager *)*(a1 + 32) _determineSigningStatusWithSendingAddress:?];
  }

  if (*(a1 + 57) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);

    [(MFSecureMIMECompositionManager *)v2 _determineEncryptionStatusWithSendingAddress:v3];
  }
}

- (void)_determineIdentitiesWithSendingAddress:(int)a3 forSigning:(int)a4 encryption:
{
  v7 = a2;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (!a3)
  {
    v10 = 0;
    v11 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

LABEL_6:
    v14 = objc_opt_class();
    v15 = *(a1 + 24);
    v16 = 0;
    v13 = [v14 copyEncryptionIdentityForAccount:v15 sendingAddress:v7 error:&v16];
    v12 = v16;
    goto LABEL_7;
  }

  v8 = objc_opt_class();
  v9 = *(a1 + 24);
  v17 = 0;
  v10 = [v8 copySigningIdentityForAccount:v9 sendingAddress:v7 error:&v17];
  v11 = v17;
  if (a4)
  {
    goto LABEL_6;
  }

LABEL_4:
  v12 = 0;
  v13 = 0;
LABEL_7:
  [*(a1 + 8) lock];
  if ((*(a1 + 144) & 1) == 0)
  {
    if (a3)
    {
      [(MFSecureMIMECompositionManager *)a1 _nts_setSigningIdentity:v10 error:v11];
    }

    if (a4)
    {
      [(MFSecureMIMECompositionManager *)a1 _nts_setEncryptionIdentity:v13 error:v12];
    }
  }

  [*(a1 + 8) unlock];
  if (v10)
  {
    CFRelease(v10);
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_17:
}

- (void)_determineSigningStatusWithSendingAddress:(uint64_t)a1
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_16;
  }

  [*(a1 + 8) lock];
  v4 = *(a1 + 136);
  if (!v4)
  {
    __assert_rtn("[MFSecureMIMECompositionManager _determineSigningStatusWithSendingAddress:]", "MFSecureMIMECompositionManager.m", 417, "_signingStatusSemaphore > 0");
  }

  *(a1 + 136) = v4 - 1;
  if (*(a1 + 144))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v5 = CFRetain(v8);
    }

    else
    {
      v5 = 0;
    }

    v7 = *(a1 + 48);
    if (!*(a1 + 136))
    {
      if (v5)
      {
        v10 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __76__MFSecureMIMECompositionManager__determineSigningStatusWithSendingAddress___block_invoke;
        block[3] = &unk_1E7AA4240;
        block[4] = a1;
        v14 = v5;
        v13 = v3;
        dispatch_async(v10, block);
      }

      v11 = *(a1 + 112);
      if (*(a1 + 96))
      {
        if (*(a1 + 136))
        {
          v9 = 1;
        }

        else
        {
          v9 = 2 * (*(a1 + 40) == 0);
        }
      }

      else
      {
        v9 = 2;
      }

      *(a1 + 112) = v9;
      v6 = v11 != v9;
      goto LABEL_11;
    }

    v6 = 0;
  }

  v9 = 1;
LABEL_11:
  [*(a1 + 8) unlock];
  if (v6)
  {
    [(MFSecureMIMECompositionManager *)a1 _notifyDelegateSigningStatusDidChange:v9 identity:v5 error:v7];
  }

  if (v5)
  {
    CFRelease(v5);
  }

LABEL_16:
}

- (void)_determineEncryptionStatusWithSendingAddress:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    cf = 0;
    [*(a1 + 8) lock];
    v4 = *(a1 + 128);
    if (!v4)
    {
      __assert_rtn("[MFSecureMIMECompositionManager _determineEncryptionStatusWithSendingAddress:]", "MFSecureMIMECompositionManager.m", 533, "_encryptionStatusSemaphore > 0");
    }

    v5 = 0;
    v6 = 0;
    v7 = 1;
    v8 = v4 - 1;
    *(a1 + 128) = v8;
    if (v8)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      if ((*(a1 + 144) & 1) == 0)
      {
        updated = [(MFSecureMIMECompositionManager *)a1 _updateEncryptionStatus_nts];
        v7 = *(a1 + 120);
        if (updated)
        {
          v13 = 0;
          v14 = 0;
          v12 = 0;
          [(MFSecureMIMECompositionManager *)a1 _nts_copyEncryptionIdentity:&v14 error:&v13 certificatesByRecipient:&v12 errorsByRecipient:?];
          v10 = v14;
          v9 = v13;
          v5 = v12;
          v6 = 1;
        }

        else
        {
          v6 = 0;
          v5 = 0;
          v9 = 0;
          v10 = 0;
        }
      }
    }

    [*(a1 + 8) unlock];
    if (v6)
    {
      [(MFSecureMIMECompositionManager *)a1 _notifyDelegateEncryptionStatusDidChange:v7 certsByRecipient:v9 errorsByRecipient:v5 identity:cf error:v10];
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (NSString)sendingAddress
{
  [(NSLock *)self->_lock lock];
  v3 = self->_sendingAddress;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)_nts_setSigningIdentity:(void *)a3 error:
{
  v6 = a3;
  if (a1)
  {
    v9 = v6;
    v7 = *(a1 + 40);
    if (v7 != a2)
    {
      if (v7)
      {
        CFRelease(v7);
      }

      if (a2)
      {
        v8 = CFRetain(a2);
      }

      else
      {
        v8 = 0;
      }

      *(a1 + 40) = v8;
    }

    objc_storeStrong((a1 + 48), a3);
    v6 = v9;
  }
}

- (void)_nts_setEncryptionIdentity:(void *)a3 error:
{
  v6 = a3;
  if (a1)
  {
    v9 = v6;
    v7 = *(a1 + 56);
    if (v7 != a2)
    {
      if (v7)
      {
        CFRelease(v7);
      }

      if (a2)
      {
        v8 = CFRetain(a2);
      }

      else
      {
        v8 = 0;
      }

      *(a1 + 56) = v8;
    }

    objc_storeStrong((a1 + 64), a3);
    v6 = v9;
  }
}

- (void)_determineTrustStatusForSigningIdentity:(void *)a3 sendingAddress:
{
  v5 = a3;
  if (a1)
  {
    certificateRef = 0;
    v6 = SecIdentityCopyCertificate(a2, &certificateRef);
    if (!certificateRef)
    {
      v12 = v6;
      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(MFSecureMIMECompositionManager *)v5 _determineTrustStatusForSigningIdentity:v12 sendingAddress:v8];
      }

      goto LABEL_11;
    }

    v7 = [objc_opt_class() evaluateTrustForSigningCertificate:certificateRef sendingAddress:v5];
    CFRelease(certificateRef);
    if (v7 <= 7 && ((1 << v7) & 0xCD) != 0)
    {
      v8 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1052 localizedDescription:0];
      [*(a1 + 8) lock];
      if (!*(a1 + 136) && (v13 = *(a1 + 40)) != 0 && CFEqual(a2, v13))
      {
        [(MFSecureMIMECompositionManager *)a1 _nts_setSigningIdentity:v8 error:?];
        v14 = *(a1 + 112);
        if (*(a1 + 96))
        {
          if (*(a1 + 136))
          {
            v10 = 1;
          }

          else
          {
            v10 = 2 * (*(a1 + 40) == 0);
          }
        }

        else
        {
          v10 = 2;
        }

        *(a1 + 112) = v10;
        v9 = v14 != v10;
      }

      else
      {
        v9 = 0;
        v10 = 1;
      }

      [*(a1 + 8) unlock];
      if (v9)
      {
        v11 = *(a1 + 16);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __89__MFSecureMIMECompositionManager__determineTrustStatusForSigningIdentity_sendingAddress___block_invoke;
        v15[3] = &unk_1E7AA4240;
        v15[4] = a1;
        v17 = v10;
        v8 = v8;
        v16 = v8;
        dispatch_async(v11, v15);
      }

LABEL_11:
    }
  }
}

- (int64_t)signingStatus
{
  [(NSLock *)self->_lock lock];
  signingStatus = self->_signingStatus;
  [(NSLock *)self->_lock unlock];
  return signingStatus;
}

- (int64_t)encryptionStatus
{
  [(NSLock *)self->_lock lock];
  encryptionStatus = self->_encryptionStatus;
  [(NSLock *)self->_lock unlock];
  return encryptionStatus;
}

- (NSSet)recipients
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSMutableSet *)self->_recipients copy];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (id)compositionSpecification
{
  [(NSLock *)self->_lock lock];
  if (*&self->_encryptionStatusSemaphore != 0 || self->_signingPolicy == 2 && self->_signingStatus || self->_encryptionPolicy == 2 && self->_encryptionStatus)
  {
    v3 = 0;
    goto LABEL_3;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_signingPolicy)
  {
    v6 = self->_signingStatus == 0;
  }

  else
  {
    v6 = 0;
  }

  if (self->_encryptionPolicy)
  {
    v7 = self->_encryptionStatus == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  [v5 setObject:v8 forKeyedSubscript:@"ShouldSign"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  [v5 setObject:v9 forKeyedSubscript:@"ShouldEncrypt"];

  if (v6)
  {
    signingIdentity = self->_signingIdentity;
    if (!signingIdentity)
    {
      v14 = "_signingIdentity";
      v15 = 735;
      goto LABEL_27;
    }

    [v5 setObject:signingIdentity forKeyedSubscript:@"SigningIdentity"];
    encryptionIdentity = self->_encryptionIdentity;
    if (encryptionIdentity)
    {
      [v5 setObject:encryptionIdentity forKeyedSubscript:@"EncryptionIdentity"];
    }
  }

  if (v7)
  {
    v12 = self->_encryptionIdentity;
    if (v12)
    {
      [v5 setObject:v12 forKeyedSubscript:@"EncryptionIdentity"];
      if ([(NSMutableDictionary *)self->_certificatesByRecipient count])
      {
        v13 = [(NSMutableDictionary *)self->_certificatesByRecipient copy];
        [v5 setObject:v13 forKeyedSubscript:@"RecipientCertificates"];
      }

      goto LABEL_24;
    }

    v14 = "_encryptionIdentity";
    v15 = 746;
LABEL_27:
    __assert_rtn("[MFSecureMIMECompositionManager compositionSpecification]", "MFSecureMIMECompositionManager.m", v15, v14);
  }

LABEL_24:
  v3 = v5;
LABEL_3:
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (BOOL)shouldAllowSend
{
  [(NSLock *)self->_lock lock];
  v3 = (self->_signingPolicy != 2 || !self->_signingStatus) && (self->_encryptionPolicy != 2 || self->_encryptionStatus == 0);
  [(NSLock *)self->_lock unlock];
  return v3;
}

+ (__SecIdentity)copySigningIdentityForAccount:(id)a3 sendingAddress:(id)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [a3 signingIdentityPersistentReferenceForAddress:v7];
  v18 = 0;
  v9 = [MFMessageKeychainManager copyIdentityForPersistentReference:v8 error:&v18];
  v10 = v18;
  v11 = v10;
  if (a5 && !v9)
  {
    if (v10)
    {
      v19 = *MEMORY[0x1E696AA08];
      v20[0] = v10;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    }

    else
    {
      v12 = 0;
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = MFLookupLocalizedString(@"SMIME_MISSING_SIGNING_IDENTITY_FORMAT", @"You can’t send signed messages because a signing identity for the address “%@” could not be found. Go to the Advanced settings for this account to choose a signing identity.", @"Delayed");
    v15 = [v13 stringWithFormat:v14, v7];

    *a5 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1052 localizedDescription:v15 title:0 userInfo:v12];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (__SecIdentity)copyEncryptionIdentityForAccount:(id)a3 sendingAddress:(id)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [a3 encryptionIdentityPersistentReferenceForAddress:v7];
  v18 = 0;
  v9 = [MFMessageKeychainManager copyIdentityForPersistentReference:v8 error:&v18];
  v10 = v18;
  v11 = v10;
  if (a5 && !v9)
  {
    if (v10)
    {
      v19 = *MEMORY[0x1E696AA08];
      v20[0] = v10;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    }

    else
    {
      v12 = 0;
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = MFLookupLocalizedString(@"SMIME_MISSING_ENCRYPTION_IDENTITY_FORMAT", @"You can’t send encrypted messages because an encryption identity for the address “%@” could not be found. Go to the Advanced settings for this account to choose an encryption identity.", @"Delayed");
    v15 = [v13 stringWithFormat:v14, v7];

    *a5 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1052 localizedDescription:v15 title:0 userInfo:v12];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)copyEncryptionCertificatesForAccount:(id)a3 recipientAddresses:(id)a4 errorsByAddress:(id *)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v31 = a4;
  v36 = [a3 copyDataForRemoteEncryptionCertificatesForAddresses:? errors:?];
  v38 = 0;
  if (!v38)
  {
    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v31;
  v37 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v37)
  {
    v35 = *v47;
    v32 = *MEMORY[0x1E696AA08];
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v47 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v46 + 1) + 8 * i);
        v40 = [v36 objectForKeyedSubscript:v6];
        v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if ([v40 count])
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v8 = v40;
          v9 = 0;
          v10 = [v8 countByEnumeratingWithState:&v42 objects:v55 count:16];
          if (v10)
          {
            v11 = *v43;
            do
            {
              v12 = 0;
              v13 = v9;
              do
              {
                if (*v43 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v14 = *(*(&v42 + 1) + 8 * v12);
                v15 = SecCertificateCreateWithData(0, v14);
                v16 = v15;
                if (v15)
                {
                  v9 = checkCertificateExpiration(v15, v6);

                  if (!v9)
                  {
                    [v7 addObject:v16];
                  }

                  CFRelease(v16);
                }

                else
                {
                  v17 = MFLogGeneral();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v54 = v14;
                    _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_INFO, "#SMIMEErrors SecCertificateCreateWithData() failed for %@", buf, 0xCu);
                  }

                  v18 = MFLookupLocalizedString(@"MIME_GENERIC_REMOTE_ENCRYPTION_CERT_MESSAGE", @"An error occurred while retrieving the encryption certificate.", @"Delayed");
                  v9 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v18 title:0 userInfo:0];
                }

                ++v12;
                v13 = v9;
              }

              while (v10 != v12);
              v10 = [v8 countByEnumeratingWithState:&v42 objects:v55 count:16];
            }

            while (v10);
          }
        }

        else
        {
          v41 = 0;
          v19 = [MFMessageKeychainManager copyEncryptionCertificateForAddress:v6 error:&v41];
          v20 = v41;
          v8 = v20;
          if (v19)
          {
            v9 = checkCertificateExpiration(v19, v6);
            if (!v9)
            {
              [v7 addObject:v19];
            }

            CFRelease(v19);
          }

          else
          {
            if (v20)
            {
              v51 = v32;
              v52 = v20;
              v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
              v22 = MEMORY[0x1E696AEC0];
              v23 = MFLookupLocalizedString(@"SMIME_OTHER_ENCRYPTION_CERT_ERROR_MESSAGE", @"An error occurred while searching for an encryption certificate for “%@” in your keychain.", @"Delayed");
              v24 = [v22 stringWithFormat:v23, v6];
              v25 = v21;
            }

            else
            {
              v26 = MEMORY[0x1E696AEC0];
              v23 = MFLookupLocalizedString(@"SMIME_MISSING_ENCRYPTION_CERT_MESSAGE", @"You can’t send encrypted messages because an encryption certificate for the address “%@” could not be found.", @"Delayed");
              v24 = [v26 stringWithFormat:v23, v6];
              v25 = 0;
            }

            v27 = MFLookupLocalizedString(@"SMIME_CANT_ENCRYPT_TITLE", @"Unable to Encrypt", @"Delayed");
            v9 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v24 title:v27 userInfo:v25];
          }
        }

        if (v9)
        {
          [v38 setObject:v9 forKeyedSubscript:v6];
        }

        if ([v7 count])
        {
          [v34 setObject:v7 forKeyedSubscript:v6];
          [v38 setObject:0 forKeyedSubscript:v6];
        }
      }

      v37 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v37);
  }

  if (a5)
  {
    *a5 = [v38 copy];
  }

  v28 = *MEMORY[0x1E69E9840];
  return v34;
}

+ (unsigned)evaluateTrustForSigningCertificate:(__SecCertificate *)a3 sendingAddress:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v7 = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:v5];
  if (v7)
  {
    [v6 addObject:v7];
    CFRelease(v7);
  }

  Revocation = SecPolicyCreateRevocation(3uLL);
  if (Revocation)
  {
    [v6 addObject:Revocation];
    CFRelease(Revocation);
  }

  trust = 0;
  v9 = SecTrustCreateWithCertificates(a3, v6, &trust);
  if (v9 || !trust)
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MFSecureMIMECompositionManager evaluateTrustForSigningCertificate:v9 sendingAddress:v10];
    }

    v11 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E699B318] evaluateTrust:trust withOptions:0 signerEmailAddress:v5];
    v11 = [v10 trustResult];
  }

  return v11;
}

- (BOOL)_updateEncryptionStatus_nts
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 120);
    if (*(result + 104))
    {
      if (*(result + 128))
      {
        v3 = 1;
LABEL_9:
        *(v1 + 120) = v3;
        return v2 != v3;
      }

      if (*(result + 56))
      {
        v4 = [*(result + 72) count];
        if (v4 == [*(v1 + 88) count])
        {
          v3 = 0;
          goto LABEL_9;
        }
      }
    }

    v3 = 2;
    goto LABEL_9;
  }

  return result;
}

- (void)_nts_copyEncryptionIdentity:(void *)a3 error:(void *)a4 certificatesByRecipient:(void *)a5 errorsByRecipient:
{
  if (!a1)
  {
    return;
  }

  if (a2)
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *a2 = v10;
  }

  if (a3)
  {
    *a3 = *(a1 + 64);
  }

  if (a4)
  {
    if (![*(a1 + 88) count])
    {
      *a4 = 0;
      if (!a5)
      {
        return;
      }

      goto LABEL_12;
    }

    v11 = [*(a1 + 88) copy];
    *a4 = v11;
  }

  if (!a5)
  {
    return;
  }

LABEL_12:
  if ([*(a1 + 80) count])
  {
    v12 = [*(a1 + 80) copy];
    *a5 = v12;
  }

  else
  {
    *a5 = 0;
  }
}

- (void)_determineTrustStatusForSigningIdentity:(os_log_t)log sendingAddress:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecIdentityCopyCertificate could not find certificate for %@, returned %d", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)evaluateTrustForSigningCertificate:(int)a1 sendingAddress:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecTrustCreateWithCertificates returned %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end