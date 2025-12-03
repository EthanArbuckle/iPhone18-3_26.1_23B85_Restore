@interface MFSecureMIMECompositionManager
+ (BOOL)isRevokedCertificate:(__SecCertificate *)certificate sendingAddress:(id)address;
+ (__SecIdentity)copyEncryptionIdentityForAccount:(id)account sendingAddress:(id)address error:(id *)error;
+ (__SecIdentity)copySigningIdentityForAccount:(id)account sendingAddress:(id)address error:(id *)error;
+ (id)copyEncryptionCertificatesForAccount:(id)account recipientAddress:(id)address error:(id *)error;
- (BOOL)_shouldAllowSend_nts;
- (BOOL)_updateEncryptionStatus_nts;
- (BOOL)_updateSigningStatus_nts;
- (BOOL)shouldAllowSend;
- (MFSecureMIMECompositionManager)initWithSendingAccount:(id)account signingPolicy:(int)policy encryptionPolicy:(int)encryptionPolicy;
- (MFSecureMIMECompositionManagerDelegate)delegate;
- (NSSet)recipients;
- (NSString)sendingAddress;
- (id)compositionSpecification;
- (int)encryptionStatus;
- (int)signingStatus;
- (void)_determineEncryptionStatusWithNewRecipients:(id)recipients;
- (void)_determineEncryptionStatusWithSendingAddress:(id)address;
- (void)_determineIdentitiesWithSendingAddress:(id)address forSigning:(BOOL)signing encryption:(BOOL)encryption;
- (void)_determineRevocationStatusWithIdentity:(__SecIdentity *)identity sendingAddress:(id)address;
- (void)_determineSigningStatusWithSendingAddress:(id)address;
- (void)_nts_copyEncryptionIdentity:(__SecIdentity *)identity error:(id *)error certificatesByRecipient:(id *)recipient errorsByRecipient:(id *)byRecipient;
- (void)_nts_copySigningIdentity:(__SecIdentity *)identity error:(id *)error;
- (void)_nts_setEncryptionIdentity:(__SecIdentity *)identity error:(id)error;
- (void)_nts_setSigningIdentity:(__SecIdentity *)identity error:(id)error;
- (void)addRecipients:(id)recipients;
- (void)dealloc;
- (void)invalidate;
- (void)removeRecipients:(id)recipients;
- (void)setDelegate:(id)delegate;
- (void)setSendingAddress:(id)address;
@end

@implementation MFSecureMIMECompositionManager

- (MFSecureMIMECompositionManager)initWithSendingAccount:(id)account signingPolicy:(int)policy encryptionPolicy:(int)encryptionPolicy
{
  v10.receiver = self;
  v10.super_class = MFSecureMIMECompositionManager;
  v8 = [(MFSecureMIMECompositionManager *)&v10 init];
  if (v8)
  {
    v8->_lock = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"MFSecureMIMECompositionManager_lock" andDelegate:0];
    v8->_queue = dispatch_queue_create("com.apple.mobilemail.MFSecureMIMECompositionManagerQueue", 0);
    v8->_sendingAccount = account;
    v8->_signingPolicy = policy;
    v8->_encryptionPolicy = encryptionPolicy;
    [(MFSecureMIMECompositionManager *)v8 _updateSigningStatus_nts];
    [(MFSecureMIMECompositionManager *)v8 _updateEncryptionStatus_nts];
  }

  return v8;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

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

  v6.receiver = self;
  v6.super_class = MFSecureMIMECompositionManager;
  [(MFSecureMIMECompositionManager *)&v6 dealloc];
}

- (void)addRecipients:(id)recipients
{
  if ([recipients count])
  {
    v5 = [recipients copy];
    [(NSLock *)self->_lock lock];
    if (self->_invalidated)
    {
      [(NSLock *)self->_lock unlock];
    }

    else
    {
      recipients = self->_recipients;
      if (!recipients)
      {
        recipients = objc_alloc_init(MEMORY[0x277CBEB58]);
        self->_recipients = recipients;
      }

      [(NSMutableSet *)recipients unionSet:v5];
      encryptionPolicy = self->_encryptionPolicy;
      if (encryptionPolicy)
      {
        ++self->_encryptionStatusSemaphore;
      }

      _updateEncryptionStatus_nts = [(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts];
      encryptionStatus = self->_encryptionStatus;
      [(NSLock *)self->_lock unlock];
      if (_updateEncryptionStatus_nts)
      {
        [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:encryptionStatus certsByRecipient:0 errorsByRecipient:0 identity:0 error:0];
      }

      if (encryptionPolicy)
      {
        queue = self->_queue;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __48__MFSecureMIMECompositionManager_addRecipients___block_invoke;
        v11[3] = &unk_2798B61E8;
        v11[4] = self;
        v11[5] = v5;
        dispatch_async(queue, v11);
      }
    }
  }
}

- (void)removeRecipients:(id)recipients
{
  [(NSLock *)self->_lock lock];
  if (self->_invalidated || (v5 = [recipients allObjects], v6 = -[NSMutableDictionary count](self->_errorsByRecipient, "count"), v7 = -[NSMutableDictionary count](self->_certificatesByRecipient, "count"), -[NSMutableSet minusSet:](self->_recipients, "minusSet:", recipients), -[NSMutableDictionary removeObjectsForKeys:](self->_errorsByRecipient, "removeObjectsForKeys:", v5), -[NSMutableDictionary removeObjectsForKeys:](self->_certificatesByRecipient, "removeObjectsForKeys:", v5), self->_encryptionStatusSemaphore) || !-[MFSecureMIMECompositionManager _updateEncryptionStatus_nts](self, "_updateEncryptionStatus_nts") && -[NSMutableDictionary count](self->_certificatesByRecipient, "count") == v7 && -[NSMutableDictionary count](self->_errorsByRecipient, "count") == v6)
  {
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }

  else
  {
    encryptionStatus = self->_encryptionStatus;
    if ([(NSMutableDictionary *)self->_errorsByRecipient count])
    {
      v10 = [(NSMutableDictionary *)self->_errorsByRecipient copy];
    }

    else
    {
      v10 = 0;
    }

    if ([(NSMutableDictionary *)self->_certificatesByRecipient count])
    {
      v11 = [(NSMutableDictionary *)self->_certificatesByRecipient copy];
    }

    else
    {
      v11 = 0;
    }

    encryptionIdentity = self->_encryptionIdentity;
    if (encryptionIdentity)
    {
      v13 = CFRetain(encryptionIdentity);
      v14 = 0;
    }

    else
    {
      v14 = self->_encryptionIdentityError;
      v13 = 0;
    }

    [(NSLock *)self->_lock unlock];
    [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:encryptionStatus certsByRecipient:v11 errorsByRecipient:v10 identity:v13 error:v14];
    if (v13)
    {

      CFRelease(v13);
    }
  }
}

- (void)invalidate
{
  [(NSLock *)self->_lock lock];
  self->_delegate = 0;
  self->_invalidated = 1;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setDelegate:(id)delegate
{
  [(NSLock *)self->_lock lock];
  self->_delegate = delegate;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (MFSecureMIMECompositionManagerDelegate)delegate
{
  [(NSLock *)self->_lock lock];
  delegate = self->_delegate;
  [(NSLock *)self->_lock unlock];
  return delegate;
}

- (void)setSendingAddress:(id)address
{
  [(NSLock *)self->_lock lock];
  if (!self->_invalidated && ![(NSString *)self->_sendingAddress isEqualToString:address])
  {
    v7 = [address copy];

    self->_sendingAddress = v7;
    if (self->_signingPolicy)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    v5 = !v9;
    if (!v9)
    {
      ++self->_signingStatusSemaphore;
    }

    _updateSigningStatus_nts = [(MFSecureMIMECompositionManager *)self _updateSigningStatus_nts];
    if (self->_encryptionPolicy && self->_sendingAddress)
    {
      ++self->_encryptionStatusSemaphore;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    signingStatus = self->_signingStatus;
    _updateEncryptionStatus_nts = [(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts];
    encryptionStatus = self->_encryptionStatus;
    [(NSLock *)self->_lock unlock];
    if (_updateSigningStatus_nts)
    {
      [(MFSecureMIMECompositionManager *)self _notifyDelegateSigningStatusDidChange:signingStatus identity:0 error:0];
      if (!_updateEncryptionStatus_nts)
      {
        goto LABEL_4;
      }
    }

    else if (!_updateEncryptionStatus_nts)
    {
      goto LABEL_4;
    }

    [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:encryptionStatus certsByRecipient:0 errorsByRecipient:0 identity:0 error:0];
    goto LABEL_4;
  }

  [(NSLock *)self->_lock unlock];
  v5 = 0;
  v6 = 0;
  v7 = 0;
LABEL_4:
  if ((v5 & 1) != 0 || v6)
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__MFSecureMIMECompositionManager_setSendingAddress___block_invoke;
    v14[3] = &unk_2798B78A0;
    v14[4] = self;
    v14[5] = v7;
    v15 = v5;
    v16 = v6;
    v14[6] = address;
    dispatch_async(queue, v14);
  }
}

uint64_t __52__MFSecureMIMECompositionManager_setSendingAddress___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _determineIdentitiesWithSendingAddress:*(a1 + 40) forSigning:*(a1 + 56) encryption:1];
  if (*(a1 + 56) == 1)
  {
    result = [*(a1 + 32) _determineSigningStatusWithSendingAddress:*(a1 + 40)];
  }

  if (*(a1 + 57) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);

    return [v3 _determineEncryptionStatusWithSendingAddress:v4];
  }

  return result;
}

- (NSString)sendingAddress
{
  [(NSLock *)self->_lock lock];
  sendingAddress = self->_sendingAddress;
  [(NSLock *)self->_lock unlock];
  return sendingAddress;
}

- (void)_determineIdentitiesWithSendingAddress:(id)address forSigning:(BOOL)signing encryption:(BOOL)encryption
{
  encryptionCopy = encryption;
  signingCopy = signing;
  v9 = 0;
  v11 = 0;
  v12 = 0;
  if (signing)
  {
    v9 = [objc_opt_class() copySigningIdentityForAccount:self->_sendingAccount sendingAddress:address error:&v12];
  }

  if (encryptionCopy)
  {
    v10 = [objc_opt_class() copyEncryptionIdentityForAccount:self->_sendingAccount sendingAddress:address error:&v11];
  }

  else
  {
    v10 = 0;
  }

  [(NSLock *)self->_lock lock];
  if (!self->_invalidated)
  {
    if (signingCopy)
    {
      [(MFSecureMIMECompositionManager *)self _nts_setSigningIdentity:v9 error:v12];
    }

    if (encryptionCopy)
    {
      [(MFSecureMIMECompositionManager *)self _nts_setEncryptionIdentity:v10 error:v11];
    }
  }

  [(NSLock *)self->_lock unlock];
  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

- (void)_determineRevocationStatusWithIdentity:(__SecIdentity *)identity sendingAddress:(id)address
{
  v19 = *MEMORY[0x277D85DE8];
  certificateRef = 0;
  SecIdentityCopyCertificate(identity, &certificateRef);
  if (certificateRef)
  {
    if ([objc_opt_class() isRevokedCertificate:certificateRef sendingAddress:address])
    {
      v7 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1052 localizedDescription:0];
      [(NSLock *)self->_lock lock];
      if (!self->_signingStatusSemaphore && (signingIdentity = self->_signingIdentity) != 0 && CFEqual(identity, signingIdentity))
      {
        [(MFSecureMIMECompositionManager *)self _nts_setSigningIdentity:0 error:v7];
        _updateSigningStatus_nts = [(MFSecureMIMECompositionManager *)self _updateSigningStatus_nts];
        signingStatus = self->_signingStatus;
        [(NSLock *)self->_lock unlock];
        if (_updateSigningStatus_nts)
        {
          queue = self->_queue;
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __88__MFSecureMIMECompositionManager__determineRevocationStatusWithIdentity_sendingAddress___block_invoke;
          v14[3] = &unk_2798B78C8;
          v15 = signingStatus;
          v14[4] = self;
          v14[5] = v7;
          dispatch_async(queue, v14);
        }
      }

      else
      {
        [(NSLock *)self->_lock unlock];
      }
    }
  }

  else
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      addressCopy = address;
      _os_log_impl(&dword_258BDA000, v8, OS_LOG_TYPE_INFO, "#SMIMEErrors SecIdentityCopyCertificate could not find certificate for %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_determineSigningStatusWithSendingAddress:(id)address
{
  v11 = 0;
  v12 = 0;
  [(NSLock *)self->_lock lock];
  signingStatusSemaphore = self->_signingStatusSemaphore;
  if (!signingStatusSemaphore)
  {
    [MFSecureMIMECompositionManager _determineSigningStatusWithSendingAddress:];
  }

  self->_signingStatusSemaphore = signingStatusSemaphore - 1;
  if (self->_invalidated || ([(MFSecureMIMECompositionManager *)self _nts_copySigningIdentity:&v11 error:&v12], self->_signingStatusSemaphore))
  {
    [(NSLock *)self->_lock unlock];
  }

  else
  {
    v6 = v11;
    if (v11)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__MFSecureMIMECompositionManager__determineSigningStatusWithSendingAddress___block_invoke;
      block[3] = &unk_2798B78F0;
      block[5] = address;
      block[6] = v6;
      block[4] = self;
      dispatch_async(global_queue, block);
    }

    _updateSigningStatus_nts = [(MFSecureMIMECompositionManager *)self _updateSigningStatus_nts];
    signingStatus = self->_signingStatus;
    [(NSLock *)self->_lock unlock];
    if (_updateSigningStatus_nts)
    {
      [(MFSecureMIMECompositionManager *)self _notifyDelegateSigningStatusDidChange:signingStatus identity:v11 error:v12];
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

- (BOOL)_updateSigningStatus_nts
{
  signingStatus = self->_signingStatus;
  if (self->_signingPolicy)
  {
    if (self->_signingStatusSemaphore)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2 * (self->_signingIdentity == 0);
    }
  }

  else
  {
    v3 = 2;
  }

  self->_signingStatus = v3;
  return signingStatus != v3;
}

- (void)_nts_setSigningIdentity:(__SecIdentity *)identity error:(id)error
{
  signingIdentity = self->_signingIdentity;
  if (signingIdentity != identity)
  {
    if (signingIdentity)
    {
      CFRelease(signingIdentity);
    }

    if (identity)
    {
      v8 = CFRetain(identity);
    }

    else
    {
      v8 = 0;
    }

    self->_signingIdentity = v8;
  }

  signingIdentityError = self->_signingIdentityError;
  if (signingIdentityError != error)
  {

    self->_signingIdentityError = error;
  }
}

- (void)_nts_copySigningIdentity:(__SecIdentity *)identity error:(id *)error
{
  if (identity)
  {
    signingIdentity = self->_signingIdentity;
    if (signingIdentity)
    {
      signingIdentity = CFRetain(signingIdentity);
    }

    *identity = signingIdentity;
  }

  if (error)
  {
    *error = self->_signingIdentityError;
  }
}

- (int)signingStatus
{
  [(NSLock *)self->_lock lock];
  signingStatus = self->_signingStatus;
  [(NSLock *)self->_lock unlock];
  return signingStatus;
}

- (void)_determineEncryptionStatusWithSendingAddress:(id)address
{
  v10 = 0;
  v11 = 0;
  cf = 0;
  v9 = 0;
  [(NSLock *)self->_lock lock];
  encryptionStatusSemaphore = self->_encryptionStatusSemaphore;
  if (!encryptionStatusSemaphore)
  {
    [MFSecureMIMECompositionManager _determineEncryptionStatusWithSendingAddress:];
  }

  v5 = encryptionStatusSemaphore - 1;
  self->_encryptionStatusSemaphore = v5;
  if (v5 || self->_invalidated || ![(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts])
  {
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }

  else
  {
    encryptionStatus = self->_encryptionStatus;
    [(MFSecureMIMECompositionManager *)self _nts_copyEncryptionIdentity:&cf error:&v9 certificatesByRecipient:&v10 errorsByRecipient:&v11];
    [(NSLock *)self->_lock unlock];
    [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:encryptionStatus certsByRecipient:v10 errorsByRecipient:v11 identity:cf error:v9];
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (void)_determineEncryptionStatusWithNewRecipients:(id)recipients
{
  v42 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = 0;
  v36 = 0;
  cf = 0;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [recipients countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(recipients);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v31 = 0;
        v12 = [objc_opt_class() copyEncryptionCertificatesForAccount:self->_sendingAccount recipientAddress:v11 error:&v31];
        if (v12)
        {
          v13 = v12;
          [v5 setObject:v12 forKey:v11];
        }

        else if (v31)
        {
          [v6 setObject:v31 forKey:v11];
        }
      }

      v8 = [recipients countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v8);
  }

  [(NSLock *)self->_lock lock];
  encryptionStatusSemaphore = self->_encryptionStatusSemaphore;
  if (!encryptionStatusSemaphore)
  {
    [MFSecureMIMECompositionManager _determineEncryptionStatusWithNewRecipients:];
  }

  self->_encryptionStatusSemaphore = encryptionStatusSemaphore - 1;
  if (self->_invalidated)
  {
    goto LABEL_26;
  }

  v15 = [recipients mutableCopy];
  [v15 minusSet:self->_recipients];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v40 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * j);
        [v5 removeObjectForKey:v20];
        [v6 removeObjectForKey:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v40 count:16];
    }

    while (v17);
  }

  errorsByRecipient = self->_errorsByRecipient;
  if (!errorsByRecipient)
  {
    errorsByRecipient = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_errorsByRecipient = errorsByRecipient;
  }

  [(NSMutableDictionary *)errorsByRecipient addEntriesFromDictionary:v6];
  certificatesByRecipient = self->_certificatesByRecipient;
  if (!certificatesByRecipient)
  {
    certificatesByRecipient = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_certificatesByRecipient = certificatesByRecipient;
  }

  [(NSMutableDictionary *)certificatesByRecipient addEntriesFromDictionary:v5];
  if (self->_encryptionStatusSemaphore)
  {
LABEL_26:
    v23 = 0;
    encryptionStatus = 1;
  }

  else
  {
    _updateEncryptionStatus_nts = [(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts];
    encryptionStatus = self->_encryptionStatus;
    if (_updateEncryptionStatus_nts)
    {
      [(MFSecureMIMECompositionManager *)self _nts_copyEncryptionIdentity:&cf error:&v36 certificatesByRecipient:&v38 errorsByRecipient:&v39];
      v23 = 1;
    }

    else
    {
      v23 = 0;
    }
  }

  [(NSLock *)self->_lock unlock];

  if (v23)
  {
    [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:encryptionStatus certsByRecipient:v38 errorsByRecipient:v39 identity:cf error:v36];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateEncryptionStatus_nts
{
  encryptionStatus = self->_encryptionStatus;
  if (!self->_encryptionPolicy)
  {
    goto LABEL_7;
  }

  if (!self->_encryptionStatusSemaphore)
  {
    if (self->_encryptionIdentity)
    {
      v5 = [(NSMutableSet *)self->_recipients count];
      if (v5 == [(NSMutableDictionary *)self->_certificatesByRecipient count])
      {
        v4 = 0;
        goto LABEL_8;
      }
    }

LABEL_7:
    v4 = 2;
    goto LABEL_8;
  }

  v4 = 1;
LABEL_8:
  self->_encryptionStatus = v4;
  return encryptionStatus != v4;
}

- (void)_nts_setEncryptionIdentity:(__SecIdentity *)identity error:(id)error
{
  encryptionIdentity = self->_encryptionIdentity;
  if (encryptionIdentity != identity)
  {
    if (encryptionIdentity)
    {
      CFRelease(encryptionIdentity);
    }

    if (identity)
    {
      v8 = CFRetain(identity);
    }

    else
    {
      v8 = 0;
    }

    self->_encryptionIdentity = v8;
  }

  encryptionIdentityError = self->_encryptionIdentityError;
  if (encryptionIdentityError != error)
  {

    self->_encryptionIdentityError = error;
  }
}

- (void)_nts_copyEncryptionIdentity:(__SecIdentity *)identity error:(id *)error certificatesByRecipient:(id *)recipient errorsByRecipient:(id *)byRecipient
{
  if (identity)
  {
    encryptionIdentity = self->_encryptionIdentity;
    if (encryptionIdentity)
    {
      encryptionIdentity = CFRetain(encryptionIdentity);
    }

    *identity = encryptionIdentity;
  }

  if (error)
  {
    *error = self->_encryptionIdentityError;
  }

  if (recipient)
  {
    v12 = [(NSMutableDictionary *)self->_certificatesByRecipient count];
    if (v12)
    {
      v12 = [(NSMutableDictionary *)self->_certificatesByRecipient copy];
    }

    *recipient = v12;
  }

  if (byRecipient)
  {
    v13 = [(NSMutableDictionary *)self->_errorsByRecipient count];
    if (v13)
    {
      v13 = [(NSMutableDictionary *)self->_errorsByRecipient copy];
    }

    *byRecipient = v13;
  }
}

- (int)encryptionStatus
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
  if (*&self->_encryptionStatusSemaphore == 0 && [(MFSecureMIMECompositionManager *)self _shouldAllowSend_nts])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    _shouldSign_nts = [(MFSecureMIMECompositionManager *)self _shouldSign_nts];
    _shouldEncrypt_nts = [(MFSecureMIMECompositionManager *)self _shouldEncrypt_nts];
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", _shouldSign_nts), @"ShouldSign"}];
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", _shouldEncrypt_nts), @"ShouldEncrypt"}];
    if (_shouldSign_nts)
    {
      signingIdentity = self->_signingIdentity;
      if (!signingIdentity)
      {
        [MFSecureMIMECompositionManager compositionSpecification];
      }

      [v3 setObject:signingIdentity forKeyedSubscript:@"SigningIdentity"];
      encryptionIdentity = self->_encryptionIdentity;
      if (encryptionIdentity)
      {
        [v3 setObject:encryptionIdentity forKeyedSubscript:@"EncryptionIdentity"];
      }
    }

    if (_shouldEncrypt_nts)
    {
      v8 = self->_encryptionIdentity;
      if (!v8)
      {
        [MFSecureMIMECompositionManager compositionSpecification];
      }

      [v3 setObject:v8 forKeyedSubscript:@"EncryptionIdentity"];
      if ([(NSMutableDictionary *)self->_certificatesByRecipient count])
      {
        v9 = [(NSMutableDictionary *)self->_certificatesByRecipient copy];
        [v3 setObject:v9 forKeyedSubscript:@"RecipientCertificates"];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  [(NSLock *)self->_lock unlock];

  return v3;
}

- (BOOL)shouldAllowSend
{
  [(NSLock *)self->_lock lock];
  _shouldAllowSend_nts = [(MFSecureMIMECompositionManager *)self _shouldAllowSend_nts];
  [(NSLock *)self->_lock unlock];
  return _shouldAllowSend_nts;
}

- (BOOL)_shouldAllowSend_nts
{
  if (self->_signingPolicy == 2 && self->_signingStatus)
  {
    return 0;
  }

  if (self->_encryptionPolicy == 2)
  {
    return self->_encryptionStatus == 0;
  }

  return 1;
}

+ (__SecIdentity)copySigningIdentityForAccount:(id)account sendingAddress:(id)address error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v7 = +[MFMessageKeychainManager copyIdentityForPersistentReference:error:](MFMessageKeychainManager, "copyIdentityForPersistentReference:error:", [account signingIdentityPersistentReferenceForAddress:address], &v12);
  v8 = v7;
  if (error && !v7)
  {
    if (v12)
    {
      v13 = *MEMORY[0x277CCA7E8];
      v14[0] = v12;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v9 = 0;
    }

    *error = +[MFError errorWithDomain:code:localizedDescription:title:userInfo:](MFError, "errorWithDomain:code:localizedDescription:title:userInfo:", @"MFMessageErrorDomain", 1052, [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"SMIME_MISSING_SIGNING_IDENTITY_FORMAT", @"You can’t send signed messages because a signing identity for the address “%@” could not be found.  Go to the Advanced settings for this account to choose a signing identity.", @"Delayed", address], 0, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (__SecIdentity)copyEncryptionIdentityForAccount:(id)account sendingAddress:(id)address error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v7 = +[MFMessageKeychainManager copyIdentityForPersistentReference:error:](MFMessageKeychainManager, "copyIdentityForPersistentReference:error:", [account encryptionIdentityPersistentReferenceForAddress:address], &v12);
  v8 = v7;
  if (error && !v7)
  {
    if (v12)
    {
      v13 = *MEMORY[0x277CCA7E8];
      v14[0] = v12;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v9 = 0;
    }

    *error = +[MFError errorWithDomain:code:localizedDescription:title:userInfo:](MFError, "errorWithDomain:code:localizedDescription:title:userInfo:", @"MFMessageErrorDomain", 1052, [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"SMIME_MISSING_ENCRYPTION_IDENTITY_FORMAT", @"You can’t send encrypted messages because an encryption identity for the address “%@” could not be found.  Go to the Advanced settings for this account to choose an encryption identity.", @"Delayed", address], 0, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)copyEncryptionCertificatesForAccount:(id)account recipientAddress:(id)address error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v7 = [account copyDataForRemoteEncryptionCertificatesForAddress:address error:&v28];
  if ([v7 count])
  {
    errorCopy = error;
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = SecCertificateCreateWithData(0, v13);
          if (v14)
          {
            v15 = v14;
            v28 = checkCertificateExpiration(v14, address);
            if (!v28)
            {
              [v8 addObject:v15];
            }

            CFRelease(v15);
          }

          else
          {
            v16 = MFLogGeneral();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v13;
              _os_log_impl(&dword_258BDA000, v16, OS_LOG_TYPE_INFO, "#SMIMEErrors SecCertificateCreateWithData() failed for %@", buf, 0xCu);
            }

            v28 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:MFLookupLocalizedString(@"MIME_GENERIC_REMOTE_ENCRYPTION_CERT_MESSAGE" title:@"An error occurred while retrieving the encryption certificate." userInfo:@"Delayed"), 0, 0];
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v10);
    }

    if (![v8 count])
    {

      v8 = 0;
    }

    error = errorCopy;
  }

  else
  {
    *buf = 0;
    v17 = [MFMessageKeychainManager copyEncryptionCertificateForAddress:address error:buf];
    if (v17)
    {
      v18 = v17;
      v28 = checkCertificateExpiration(v17, address);
      if (v28)
      {
        v8 = 0;
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v18, 0}];
      }

      CFRelease(v18);
    }

    else if (v28)
    {
      v8 = 0;
    }

    else
    {
      if (*buf)
      {
        v29 = *MEMORY[0x277CCA7E8];
        v30 = *buf;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        address = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"SMIME_OTHER_ENCRYPTION_CERT_ERROR_MESSAGE", @"An error occurred while searching for an encryption certificate for “%@” in your keychain.", @"Delayed", address];
      }

      else
      {
        address = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"SMIME_MISSING_ENCRYPTION_CERT_MESSAGE", @"You can’t send encrypted messages because an encryption certificate for the address “%@” could not be found.", @"Delayed", address];
        v21 = 0;
      }

      v8 = 0;
      v28 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:address title:MFLookupLocalizedString(@"SMIME_CANT_ENCRYPT_TITLE" userInfo:@"Unable to Encrypt", @"Delayed"), v21];
    }
  }

  if (error && !v8 && v28)
  {
    *error = v28;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)isRevokedCertificate:(__SecCertificate *)certificate sendingAddress:(id)address
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v7 = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:address];
  if (v7)
  {
    v8 = v7;
    [v6 addObject:v7];
    CFRelease(v8);
  }

  Revocation = SecPolicyCreateRevocation(3uLL);
  if (Revocation)
  {
    v10 = Revocation;
    [v6 addObject:Revocation];
    CFRelease(v10);
  }

  trust = 0;
  v11 = SecTrustCreateWithCertificates(certificate, v6, &trust);

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = trust == 0;
  }

  if (v12)
  {
    v13 = MFLogGeneral();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [MFSecureMIMECompositionManager isRevokedCertificate:v11 sendingAddress:v13];
LABEL_15:
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    v15 = MEMORY[0x259C96F80]();
    CFRelease(trust);
    v16 = MFLogGeneral();
    v17 = v16;
    if (v15)
    {
      v14 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        [MFSecureMIMECompositionManager isRevokedCertificate:v15 sendingAddress:v17];
        goto LABEL_15;
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v22 = 0;
        _os_log_impl(&dword_258BDA000, v17, OS_LOG_TYPE_INFO, "#SMIMEErrors Revocation check succeeded (SecTrustResultType: %d)", buf, 8u);
      }

      LOBYTE(v14) = 1;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (void)isRevokedCertificate:(int)a1 sendingAddress:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_258BDA000, a2, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecTrustCreateWithCertificates returned %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)isRevokedCertificate:(int)a1 sendingAddress:(NSObject *)a2 .cold.2(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_258BDA000, a2, OS_LOG_TYPE_ERROR, "#SMIMEErrors Revocation check failed with status %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end