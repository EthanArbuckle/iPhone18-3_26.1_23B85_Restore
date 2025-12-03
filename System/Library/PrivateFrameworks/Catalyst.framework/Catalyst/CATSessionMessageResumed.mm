@interface CATSessionMessageResumed
- (CATSessionMessageResumed)initWithCoder:(id)coder;
- (CATSessionMessageResumed)initWithSessionUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CATSessionMessageResumed

- (CATSessionMessageResumed)initWithSessionUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = CATSessionMessageResumed;
  v6 = [(CATMessage *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionUUID, d);
    pendingRemoteTaskUUIDs = v7->_pendingRemoteTaskUUIDs;
    v7->_pendingRemoteTaskUUIDs = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (CATSessionMessageResumed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = CATSessionMessageResumed;
  v5 = [(CATMessage *)&v29 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"sessionUUID"];
    sessionUUID = v5->_sessionUUID;
    v5->_sessionUUID = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"pendingRemoteTaskUUIDs"];
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
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"serverUserInfo"];
    serverUserInfo = v5->_serverUserInfo;
    v5->_serverUserInfo = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CATSessionMessageResumed;
  coderCopy = coder;
  [(CATMessage *)&v8 encodeWithCoder:coderCopy];
  v5 = [(CATSessionMessageResumed *)self sessionUUID:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"sessionUUID"];

  pendingRemoteTaskUUIDs = [(CATSessionMessageResumed *)self pendingRemoteTaskUUIDs];
  [coderCopy encodeObject:pendingRemoteTaskUUIDs forKey:@"pendingRemoteTaskUUIDs"];

  serverUserInfo = [(CATSessionMessageResumed *)self serverUserInfo];
  [coderCopy encodeObject:serverUserInfo forKey:@"serverUserInfo"];
}

@end