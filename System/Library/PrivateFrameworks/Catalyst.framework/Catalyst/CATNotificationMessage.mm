@interface CATNotificationMessage
- (CATNotificationMessage)initWithCoder:(id)a3;
- (CATNotificationMessage)initWithName:(id)a3 userInfo:(id)a4;
- (CATNotificationMessage)initWithTaskUUID:(id)a3 name:(id)a4 userInfo:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CATNotificationMessage

- (CATNotificationMessage)initWithName:(id)a3 userInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [CATNotificationMessage initWithName:a2 userInfo:self];
  }

  v15.receiver = self;
  v15.super_class = CATNotificationMessage;
  v9 = [(CATMessage *)&v15 init];
  if (v9)
  {
    v10 = [v7 copy];
    name = v9->_name;
    v9->_name = v10;

    v12 = [v8 copy];
    userInfo = v9->_userInfo;
    v9->_userInfo = v12;
  }

  return v9;
}

- (CATNotificationMessage)initWithTaskUUID:(id)a3 name:(id)a4 userInfo:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    [CATNotificationMessage initWithTaskUUID:a2 name:self userInfo:?];
  }

  v13 = [(CATNotificationMessage *)self initWithName:v11 userInfo:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_taskUUID, a3);
  }

  return v14;
}

- (CATNotificationMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CATNotificationMessage;
  v5 = [(CATMessage *)&v27 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"name"];
    name = v5->_name;
    v5->_name = v7;

    v26 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v24 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v26 setWithObjects:{v25, v24, v9, v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v18;

    v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"taskUUID"];
    taskUUID = v5->_taskUUID;
    v5->_taskUUID = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CATNotificationMessage;
  v4 = a3;
  [(CATMessage *)&v8 encodeWithCoder:v4];
  v5 = [(CATNotificationMessage *)self name:v8.receiver];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(CATNotificationMessage *)self userInfo];
  [v4 encodeObject:v6 forKey:@"userInfo"];

  v7 = [(CATNotificationMessage *)self taskUUID];
  [v4 encodeObject:v7 forKey:@"taskUUID"];
}

- (void)initWithName:(uint64_t)a1 userInfo:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATNotificationMessage.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"name"}];
}

- (void)initWithTaskUUID:(uint64_t)a1 name:(uint64_t)a2 userInfo:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATNotificationMessage.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"taskUUID"}];
}

@end