@interface DSFileOperationID
- (BOOL)isEqual:(id)equal;
- (DSFileOperationID)init;
- (DSFileOperationID)initWithCoder:(id)coder;
- (DSFileOperationID)initWithUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DSFileOperationID

- (DSFileOperationID)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(DSFileOperationID *)self initWithUUID:uUID];

  return v4;
}

- (DSFileOperationID)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = DSFileOperationID;
  v6 = [(DSFileOperationID *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, d);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = self->_uuid;
  v5 = NSStringFromSelector(sel_uuid);
  [coderCopy encodeObject:uuid forKey:v5];
}

- (DSFileOperationID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DSFileOperationID;
  v5 = [(DSFileOperationID *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_uuid);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    uuid = v5->_uuid;
    v5->_uuid = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [equalCopy[1] isEqual:self->_uuid];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end