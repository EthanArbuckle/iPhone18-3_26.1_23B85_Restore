@interface _IDSXPCCheckinManager
+ (id)sharedInstance;
- (_IDSXPCCheckinManager)init;
- (_IDSXPCCheckinManager)initWithXPCAdapter:(id)adapter;
- (void)_performLockedAccess:(id)access;
- (void)_temporarilyStoreMessage:(id)message forServiceIdentifier:(id)identifier;
- (void)noteCreatedService:(id)service;
- (void)noteFinishedTransactionForService:(id)service;
- (void)teardownService:(id)service;
@end

@implementation _IDSXPCCheckinManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A01844;
  block[3] = &unk_1E743EBC0;
  block[4] = self;
  if (qword_1ED5DDFF0 != -1)
  {
    dispatch_once(&qword_1ED5DDFF0, block);
  }

  v2 = qword_1ED5DDFD8;

  return v2;
}

- (_IDSXPCCheckinManager)init
{
  xPCAdapter = [MEMORY[0x1E69A5238] XPCAdapter];
  v4 = [(_IDSXPCCheckinManager *)self initWithXPCAdapter:xPCAdapter];

  return v4;
}

- (_IDSXPCCheckinManager)initWithXPCAdapter:(id)adapter
{
  adapterCopy = adapter;
  v11.receiver = self;
  v11.super_class = _IDSXPCCheckinManager;
  v6 = [(_IDSXPCCheckinManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_checkinLock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    connectionInfoByServiceIdentifier = v7->_connectionInfoByServiceIdentifier;
    v7->_connectionInfoByServiceIdentifier = v8;

    objc_storeStrong(&v7->_XPCAdapter, adapter);
  }

  return v7;
}

- (void)noteCreatedService:(id)service
{
  serviceCopy = service;
  v5 = serviceCopy;
  if (serviceCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195B0C098;
    v6[3] = &unk_1E74430A0;
    v7 = serviceCopy;
    selfCopy = self;
    [(_IDSXPCCheckinManager *)self _performLockedAccess:v6];
  }
}

- (void)noteFinishedTransactionForService:(id)service
{
  serviceCopy = service;
  v5 = serviceCopy;
  if (serviceCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195B0C390;
    v6[3] = &unk_1E74430C8;
    v7 = serviceCopy;
    [(_IDSXPCCheckinManager *)self _performLockedAccess:v6];
  }
}

- (void)teardownService:(id)service
{
  serviceCopy = service;
  v5 = serviceCopy;
  if (serviceCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195B0C53C;
    v6[3] = &unk_1E74430C8;
    v7 = serviceCopy;
    [(_IDSXPCCheckinManager *)self _performLockedAccess:v6];
  }
}

- (void)_performLockedAccess:(id)access
{
  accessCopy = access;
  os_unfair_lock_lock(&self->_checkinLock);
  accessCopy[2](accessCopy, self->_connectionInfoByServiceIdentifier);

  os_unfair_lock_unlock(&self->_checkinLock);
}

- (void)_temporarilyStoreMessage:(id)message forServiceIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (messageCopy && identifierCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195B0C810;
    v9[3] = &unk_1E74430A0;
    v10 = identifierCopy;
    v11 = messageCopy;
    [(_IDSXPCCheckinManager *)self _performLockedAccess:v9];
  }
}

@end