@interface _IDSRealTimeEncryptionProxy
- (_IDSRealTimeEncryptionProxy)initWithAccount:(id)account;
- (void)dealloc;
- (void)requestMasterKeyMaterialForGroup:(id)group;
- (void)requestPublicKeys;
- (void)resetKeysForGroup:(id)group;
- (void)sendMKMRecoveryRequestToGroup:(id)group;
- (void)sendMasterKeyMaterialToGroup:(id)group;
- (void)sendPrekeyToGroup:(id)group;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)xpcObject:(id)object objectContext:(id)context;
@end

@implementation _IDSRealTimeEncryptionProxy

- (_IDSRealTimeEncryptionProxy)initWithAccount:(id)account
{
  accountCopy = account;
  if (_IDSRunningInDaemon())
  {
    v5 = +[IDSLogging IDSRealTimeEncryptionProxy];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B26A7C();
    }

    selfCopy = 0;
  }

  else
  {
    v7 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v7 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B291D0();
      }
    }

    v20.receiver = self;
    v20.super_class = _IDSRealTimeEncryptionProxy;
    v10 = [(_IDSRealTimeEncryptionProxy *)&v20 init];
    if (v10)
    {
      stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
      uniqueID = v10->_uniqueID;
      v10->_uniqueID = stringGUID;

      _internal = [accountCopy _internal];
      uniqueID = [_internal uniqueID];
      accountID = v10->_accountID;
      v10->_accountID = uniqueID;

      v16 = +[IDSDaemonController sharedInstance];
      listener = [v16 listener];
      [listener addHandler:v10];

      v18 = +[IDSDaemonController sharedInstance];
      [v18 setupRealtimeEncryptionController:v10->_uniqueID forAccountWithID:v10->_accountID];
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  v3 = +[IDSDaemonController sharedInstance];
  listener = [v3 listener];
  [listener removeHandler:self];

  v5.receiver = self;
  v5.super_class = _IDSRealTimeEncryptionProxy;
  [(_IDSRealTimeEncryptionProxy *)&v5 dealloc];
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  v18 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B29270();
    }
  }

  v11 = +[IDSLogging IDSRealTimeEncryptionProxy];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = delegateCopy;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Setting up delegate %p", &v16, 0xCu);
  }

  if (self->_delegate != delegateCopy)
  {
    v12 = [MEMORY[0x1E6995700] weakRefWithObject:delegateCopy];
    delegate = self->_delegate;
    self->_delegate = v12;
  }

  queue = self->_queue;
  self->_queue = queueCopy;

  v15 = *MEMORY[0x1E69E9840];
}

- (void)sendPrekeyToGroup:(id)group
{
  v13 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B29310();
    }
  }

  v8 = +[IDSLogging IDSRealTimeEncryptionProxy];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = groupCopy;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Sending the real-time media prekey of this device to the group %@", &v11, 0xCu);
  }

  v9 = +[IDSDaemonController sharedInstance];
  [v9 sendRealTimeMediaPrekey:self->_uniqueID toGroup:groupCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)requestPublicKeys
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B293B0();
    }
  }

  v6 = +[IDSDaemonController sharedInstance];
  [v6 requestPublicKeysForRealTimeEncryption:self->_uniqueID forAccountWithID:self->_accountID];
}

- (void)sendMasterKeyMaterialToGroup:(id)group
{
  groupCopy = group;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B29450();
    }
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 sendRealTimeEncryptionMasterKeyMaterial:self->_uniqueID toGroup:groupCopy];
}

- (void)requestMasterKeyMaterialForGroup:(id)group
{
  groupCopy = group;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B294F0();
    }
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 requestRealTimeEncryptionMasterKeyMaterial:self->_uniqueID forGroup:groupCopy];
}

- (void)sendMKMRecoveryRequestToGroup:(id)group
{
  groupCopy = group;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B29590();
    }
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 sendRealTimeEncryptionMKMRecoveryRequest:self->_uniqueID toGroup:groupCopy];
}

- (void)resetKeysForGroup:(id)group
{
  groupCopy = group;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B29630();
    }
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 resetRealTimeEncryptionKeys:self->_uniqueID forGroup:groupCopy];
}

- (void)xpcObject:(id)object objectContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  object = [(CUTWeakReference *)self->_delegate object];
  if (contextCopy)
  {
    v7 = CFDictionaryGetValue(contextCopy, @"object-type");
    if ([v7 isEqualToIgnoringCase:@"public-keys"])
    {
      Value = CFDictionaryGetValue(contextCopy, @"public-keys");
LABEL_5:
      v10 = Value;
      if (object && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [object didReceivePublickeys:v10];
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
      v14 = CFDictionaryGetValue(contextCopy, @"master-key-materials");
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
      if (object && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [object didReceiveMasterKeyMaterials:v10];
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