@interface CATNotificationMessage
- (CATNotificationMessage)initWithCoder:(id)coder;
- (CATNotificationMessage)initWithName:(id)name userInfo:(id)info;
- (CATNotificationMessage)initWithTaskUUID:(id)d name:(id)name userInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CATNotificationMessage

- (CATNotificationMessage)initWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  if (!nameCopy)
  {
    [CATNotificationMessage initWithName:a2 userInfo:self];
  }

  v15.receiver = self;
  v15.super_class = CATNotificationMessage;
  v9 = [(CATMessage *)&v15 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    name = v9->_name;
    v9->_name = v10;

    v12 = [infoCopy copy];
    userInfo = v9->_userInfo;
    v9->_userInfo = v12;
  }

  return v9;
}

- (CATNotificationMessage)initWithTaskUUID:(id)d name:(id)name userInfo:(id)info
{
  dCopy = d;
  nameCopy = name;
  infoCopy = info;
  if (!dCopy)
  {
    [CATNotificationMessage initWithTaskUUID:a2 name:self userInfo:?];
  }

  v13 = [(CATNotificationMessage *)self initWithName:nameCopy userInfo:infoCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_taskUUID, d);
  }

  return v14;
}

- (CATNotificationMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = CATNotificationMessage;
  v5 = [(CATMessage *)&v27 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"name"];
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
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v18;

    v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"taskUUID"];
    taskUUID = v5->_taskUUID;
    v5->_taskUUID = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CATNotificationMessage;
  coderCopy = coder;
  [(CATMessage *)&v8 encodeWithCoder:coderCopy];
  v5 = [(CATNotificationMessage *)self name:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"name"];

  userInfo = [(CATNotificationMessage *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"userInfo"];

  taskUUID = [(CATNotificationMessage *)self taskUUID];
  [coderCopy encodeObject:taskUUID forKey:@"taskUUID"];
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