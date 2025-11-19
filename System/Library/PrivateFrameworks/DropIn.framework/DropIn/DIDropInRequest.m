@interface DIDropInRequest
- (BOOL)isEqual:(id)a3;
- (DIDropInRequest)initWithCoder:(id)a3;
- (DIDropInRequest)initWithDevice:(id)a3;
- (DIDropInRequest)initWithHandle:(id)a3 connectionManager:(id)a4;
- (DIXPCConnectionManager)connectionManager;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DIDropInRequest

- (DIDropInRequest)initWithDevice:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DILogHandleDropInRequest();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = &stru_285D02BA8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Creating Request with device %@", &v14, 0x16u);
  }

  v6 = [v4 homeKitIdentifier];
  if (v6)
  {
    v7 = [v4 homeKitIdentifier];
    v8 = [v7 UUIDString];
  }

  else
  {
    v8 = &stru_285D02BA8;
  }

  v9 = [[DIHandle alloc] initWithType:0 value:v8];
  v10 = [v4 connectionManager];
  v11 = [(DIDropInRequest *)self initWithHandle:v9 connectionManager:v10];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (DIDropInRequest)initWithHandle:(id)a3 connectionManager:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = DIDropInRequest;
  v9 = [(DIDropInRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_handle, a3);
    objc_storeWeak(&v10->_connectionManager, v8);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DIDropInRequest *)self handle];
      v7 = [(DIDropInRequest *)v5 handle];

      v8 = [v6 isEqual:v7];
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
  v2 = [(DIDropInRequest *)self handle];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DIDropInRequest *)self handle];
  v6 = [v3 stringWithFormat:@"<%@: %p> Handle = [%@]", v4, self, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DIDropInRequest *)self handle];
  [v4 encodeObject:v5 forKey:@"Handle"];

  v6 = [(DIDropInRequest *)self existingSessionIdentifier];
  [v4 encodeObject:v6 forKey:@"ExistingSessionIdentifier"];
}

- (DIDropInRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DIDropInRequest *)self init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Handle"];
  if (v6)
  {
    [(DIDropInRequest *)v5 setHandle:v6];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ExistingSessionIdentifier"];
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