@interface CATTaskMessage
- (CATTaskMessage)initWithCoder:(id)a3;
- (CATTaskMessage)initWithTaskUUID:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CATTaskMessage

- (CATTaskMessage)initWithTaskUUID:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(CATTaskMessage *)a2 initWithTaskUUID:?];
  }

  v7 = [(CATMessage *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_taskUUID, a3);
  }

  return v8;
}

- (CATTaskMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CATTaskMessage;
  v5 = [(CATMessage *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"taskUUID"];
    taskUUID = v5->_taskUUID;
    v5->_taskUUID = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CATTaskMessage;
  v4 = a3;
  [(CATMessage *)&v6 encodeWithCoder:v4];
  v5 = [(CATTaskMessage *)self taskUUID:v6.receiver];
  [v4 encodeObject:v5 forKey:@"taskUUID"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CATMessage *)self messageUUID];
  v6 = [v5 UUIDString];
  v7 = [(CATTaskMessage *)self taskUUID];
  v8 = [v7 UUIDString];
  v9 = [v3 stringWithFormat:@"<%@: %p { messageUUID = '%@', taskUUID = '%@' }>", v4, self, v6, v8];

  return v9;
}

- (void)initWithTaskUUID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATTaskMessage.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"taskUUID"}];
}

@end