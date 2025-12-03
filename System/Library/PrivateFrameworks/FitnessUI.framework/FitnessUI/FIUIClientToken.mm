@interface FIUIClientToken
- (BOOL)isEqual:(id)equal;
- (FIUIClientToken)init;
- (id)_initWithUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FIUIClientToken

- (FIUIClientToken)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(FIUIClientToken *)self _initWithUUID:uUID];

  return v4;
}

- (id)_initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = FIUIClientToken;
  v6 = [(FIUIClientToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, d);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FIUIClientToken alloc];
  UUID = self->_UUID;

  return [(FIUIClientToken *)v4 _initWithUUID:UUID];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSUUID *)self->_UUID isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end