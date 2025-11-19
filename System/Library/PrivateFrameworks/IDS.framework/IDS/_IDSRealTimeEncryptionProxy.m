@interface _IDSRealTimeEncryptionProxy
- (_IDSRealTimeEncryptionProxy)initWithAccount:(id)a3;
- (void)dealloc;
- (void)requestMasterKeyMaterialForGroup:(id)a3;
- (void)requestPublicKeys;
- (void)resetKeysForGroup:(id)a3;
- (void)sendMKMRecoveryRequestToGroup:(id)a3;
- (void)sendMasterKeyMaterialToGroup:(id)a3;
- (void)sendPrekeyToGroup:(id)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)xpcObject:(id)a3 objectContext:(id)a4;
@end

@implementation _IDSRealTimeEncryptionProxy

- (_IDSRealTimeEncryptionProxy)initWithAccount:(id)a3
{
  v4 = a3;
  if (_IDSRunningInDaemon())
  {
    v5 = +[IDSLogging IDSRealTimeEncryptionProxy];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B26A7C();
    }

    v6 = 0;
  }

  else
  {
    v7 = +[IDSInternalQueueController sharedInstance];
    v8 = [v7 assertQueueIsCurrent];

    if (v8)
    {
      v9 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_195B291D0();
      }
    }

    v20.receiver = self;
    v20.super_class = _IDSRealTimeEncryptionProxy;
    v10 = [(_IDSRealTimeEncryptionProxy *)&v20 init];
    if (v10)
    {
      v11 = [MEMORY[0x1E696AEC0] stringGUID];
      uniqueID = v10->_uniqueID;
      v10->_uniqueID = v11;

      v13 = [v4 _internal];
      v14 = [v13 uniqueID];
      accountID = v10->_accountID;
      v10->_accountID = v14;

      v16 = +[IDSDaemonController sharedInstance];
      v17 = [v16 listener];
      [v17 addHandler:v10];

      v18 = +[IDSDaemonController sharedInstance];
      [v18 setupRealtimeEncryptionController:v10->_uniqueID forAccountWithID:v10->_accountID];
    }

    self = v10;
    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[IDSDaemonController sharedInstance];
  v4 = [v3 listener];
  [v4 removeHandler:self];

  v5.receiver = self;
  v5.super_class = _IDSRealTimeEncryptionProxy;
  [(_IDSRealTimeEncryptionProxy *)&v5 dealloc];
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B29270();
    }
  }

  v11 = +[IDSLogging IDSRealTimeEncryptionProxy];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = v6;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Setting up delegate %p", &v16, 0xCu);
  }

  if (self->_delegate != v6)
  {
    v12 = [MEMORY[0x1E6995700] weakRefWithObject:v6];
    delegate = self->_delegate;
    self->_delegate = v12;
  }

  queue = self->_queue;
  self->_queue = v7;

  v15 = *MEMORY[0x1E69E9840];
}

- (void)sendPrekeyToGroup:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B29310();
    }
  }

  v8 = +[IDSLogging IDSRealTimeEncryptionProxy];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Sending the real-time media prekey of this device to the group %@", &v11, 0xCu);
  }

  v9 = +[IDSDaemonController sharedInstance];
  [v9 sendRealTimeMediaPrekey:self->_uniqueID toGroup:v4];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)requestPublicKeys
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B293B0();
    }
  }

  v6 = +[IDSDaemonController sharedInstance];
  [v6 requestPublicKeysForRealTimeEncryption:self->_uniqueID forAccountWithID:self->_accountID];
}

- (void)sendMasterKeyMaterialToGroup:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B29450();
    }
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 sendRealTimeEncryptionMasterKeyMaterial:self->_uniqueID toGroup:v4];
}

- (void)requestMasterKeyMaterialForGroup:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B294F0();
    }
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 requestRealTimeEncryptionMasterKeyMaterial:self->_uniqueID forGroup:v4];
}

- (void)sendMKMRecoveryRequestToGroup:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B29590();
    }
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 sendRealTimeEncryptionMKMRecoveryRequest:self->_uniqueID toGroup:v4];
}

- (void)resetKeysForGroup:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B29630();
    }
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 resetRealTimeEncryptionKeys:self->_uniqueID forGroup:v4];
}

- (void)xpcObject:(id)a3 objectContext:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(CUTWeakReference *)self->_delegate object];
  if (v5)
  {
    v7 = CFDictionaryGetValue(v5, @"object-type");
    if ([v7 isEqualToIgnoringCase:@"public-keys"])
    {
      Value = CFDictionaryGetValue(v5, @"public-keys");
LABEL_5:
      v10 = Value;
      if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v6 didReceivePublickeys:v10];
        goto LABEL_22;
      }

      v11 = +[IDSLogging IDSRealTimeEncryptionProxy];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        delegate = self->_delegate;
        v18 = 138412290;
        v19 = delegate;
        v13 = "the delegate object %@ doesn't respond to the selector didReceivePublickeys:";
LABEL_20:
        _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, v13, &v18, 0xCu);
        goto LABEL_21;
      }

      goto LABEL_21;
    }

    if ([v7 isEqualToIgnoringCase:@"master-key-materials"])
    {
      v14 = CFDictionaryGetValue(v5, @"master-key-materials");
      goto LABEL_13;
    }
  }

  else
  {
    v9 = [0 isEqualToIgnoringCase:@"public-keys"];
    v7 = 0;
    Value = 0;
    if (v9)
    {
      goto LABEL_5;
    }

    v15 = [0 isEqualToIgnoringCase:@"master-key-materials"];
    v7 = 0;
    v14 = 0;
    if (v15)
    {
LABEL_13:
      v10 = v14;
      if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v6 didReceiveMasterKeyMaterials:v10];
        goto LABEL_22;
      }

      v11 = +[IDSLogging IDSRealTimeEncryptionProxy];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_delegate;
        v18 = 138412290;
        v19 = v16;
        v13 = "the delegate object %@ doesn't respond to the selector didReceiveMasterKeyMaterials:";
        goto LABEL_20;
      }

LABEL_21:

      goto LABEL_22;
    }
  }

  v10 = +[IDSLogging IDSRealTimeEncryptionProxy];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "unknown object type %@", &v18, 0xCu);
  }

LABEL_22:

  v17 = *MEMORY[0x1E69E9840];
}

@end