@interface CATTaskMessage
- (CATTaskMessage)initWithCoder:(id)coder;
- (CATTaskMessage)initWithTaskUUID:(id)d;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CATTaskMessage

- (CATTaskMessage)initWithTaskUUID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    [(CATTaskMessage *)a2 initWithTaskUUID:?];
  }

  v7 = [(CATMessage *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_taskUUID, d);
  }

  return v8;
}

- (CATTaskMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CATTaskMessage;
  v5 = [(CATMessage *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"taskUUID"];
    taskUUID = v5->_taskUUID;
    v5->_taskUUID = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CATTaskMessage;
  coderCopy = coder;
  [(CATMessage *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CATTaskMessage *)self taskUUID:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"taskUUID"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  messageUUID = [(CATMessage *)self messageUUID];
  uUIDString = [messageUUID UUIDString];
  taskUUID = [(CATTaskMessage *)self taskUUID];
  uUIDString2 = [taskUUID UUIDString];
  v9 = [v3 stringWithFormat:@"<%@: %p { messageUUID = '%@', taskUUID = '%@' }>", v4, self, uUIDString, uUIDString2];

  return v9;
}

- (void)initWithTaskUUID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATTaskMessage.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"taskUUID"}];
}

@end