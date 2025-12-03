@interface DIDropInRequest
- (BOOL)isEqual:(id)equal;
- (DIDropInRequest)initWithCoder:(id)coder;
- (DIDropInRequest)initWithDevice:(id)device;
- (DIDropInRequest)initWithHandle:(id)handle connectionManager:(id)manager;
- (DIXPCConnectionManager)connectionManager;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIDropInRequest

- (DIDropInRequest)initWithDevice:(id)device
{
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = DILogHandleDropInRequest();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = &stru_285D02BA8;
    v16 = 2112;
    v17 = deviceCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Creating Request with device %@", &v14, 0x16u);
  }

  homeKitIdentifier = [deviceCopy homeKitIdentifier];
  if (homeKitIdentifier)
  {
    homeKitIdentifier2 = [deviceCopy homeKitIdentifier];
    uUIDString = [homeKitIdentifier2 UUIDString];
  }

  else
  {
    uUIDString = &stru_285D02BA8;
  }

  v9 = [[DIHandle alloc] initWithType:0 value:uUIDString];
  connectionManager = [deviceCopy connectionManager];
  v11 = [(DIDropInRequest *)self initWithHandle:v9 connectionManager:connectionManager];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (DIDropInRequest)initWithHandle:(id)handle connectionManager:(id)manager
{
  v19 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = DIDropInRequest;
  v9 = [(DIDropInRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_handle, handle);
    objc_storeWeak(&v10->_connectionManager, managerCopy);
  }

  v11 = DILogHandleDropInRequest();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = &stru_285D02BA8;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_249DA7000, v11, OS_LOG_TYPE_DEFAULT, "%@Created Request %@", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      handle = [(DIDropInRequest *)self handle];
      handle2 = [(DIDropInRequest *)v5 handle];

      v8 = [handle isEqual:handle2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  handle = [(DIDropInRequest *)self handle];
  v3 = [handle hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  handle = [(DIDropInRequest *)self handle];
  v6 = [v3 stringWithFormat:@"<%@: %p> Handle = [%@]", v4, self, handle];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  handle = [(DIDropInRequest *)self handle];
  [coderCopy encodeObject:handle forKey:@"Handle"];

  existingSessionIdentifier = [(DIDropInRequest *)self existingSessionIdentifier];
  [coderCopy encodeObject:existingSessionIdentifier forKey:@"ExistingSessionIdentifier"];
}

- (DIDropInRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DIDropInRequest *)self init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Handle"];
  if (v6)
  {
    [(DIDropInRequest *)v5 setHandle:v6];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ExistingSessionIdentifier"];
    [(DIDropInRequest *)v5 setExistingSessionIdentifier:v7];

LABEL_4:
    v6 = v5;
  }

  return v6;
}

- (DIXPCConnectionManager)connectionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionManager);

  return WeakRetained;
}

@end