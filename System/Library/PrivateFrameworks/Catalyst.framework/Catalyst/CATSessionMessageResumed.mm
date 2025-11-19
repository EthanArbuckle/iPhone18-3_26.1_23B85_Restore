@interface CATSessionMessageResumed
- (CATSessionMessageResumed)initWithCoder:(id)a3;
- (CATSessionMessageResumed)initWithSessionUUID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CATSessionMessageResumed

- (CATSessionMessageResumed)initWithSessionUUID:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CATSessionMessageResumed;
  v6 = [(CATMessage *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionUUID, a3);
    pendingRemoteTaskUUIDs = v7->_pendingRemoteTaskUUIDs;
    v7->_pendingRemoteTaskUUIDs = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (CATSessionMessageResumed)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CATSessionMessageResumed;
  v5 = [(CATMessage *)&v29 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"sessionUUID"];
    sessionUUID = v5->_sessionUUID;
    v5->_sessionUUID = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"pendingRemoteTaskUUIDs"];
    pendingRemoteTaskUUIDs = v5->_pendingRemoteTaskUUIDs;
    v5->_pendingRemoteTaskUUIDs = v12;

    v28 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v26 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v28 setWithObjects:{v27, v26, v14, v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"serverUserInfo"];
    serverUserInfo = v5->_serverUserInfo;
    v5->_serverUserInfo = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CATSessionMessageResumed;
  v4 = a3;
  [(CATMessage *)&v8 encodeWithCoder:v4];
  v5 = [(CATSessionMessageResumed *)self sessionUUID:v8.receiver];
  [v4 encodeObject:v5 forKey:@"sessionUUID"];

  v6 = [(CATSessionMessageResumed *)self pendingRemoteTaskUUIDs];
  [v4 encodeObject:v6 forKey:@"pendingRemoteTaskUUIDs"];

  v7 = [(CATSessionMessageResumed *)self serverUserInfo];
  [v4 encodeObject:v7 forKey:@"serverUserInfo"];
}

@end