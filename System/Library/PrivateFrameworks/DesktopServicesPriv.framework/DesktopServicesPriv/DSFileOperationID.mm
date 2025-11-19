@interface DSFileOperationID
- (BOOL)isEqual:(id)a3;
- (DSFileOperationID)init;
- (DSFileOperationID)initWithCoder:(id)a3;
- (DSFileOperationID)initWithUUID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DSFileOperationID

- (DSFileOperationID)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(DSFileOperationID *)self initWithUUID:v3];

  return v4;
}

- (DSFileOperationID)initWithUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DSFileOperationID;
  v6 = [(DSFileOperationID *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  uuid = self->_uuid;
  v5 = NSStringFromSelector(sel_uuid);
  [v6 encodeObject:uuid forKey:v5];
}

- (DSFileOperationID)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DSFileOperationID;
  v5 = [(DSFileOperationID *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_uuid);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    uuid = v5->_uuid;
    v5->_uuid = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4[1] isEqual:self->_uuid];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end