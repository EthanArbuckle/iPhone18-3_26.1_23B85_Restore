@interface FIUIClientToken
- (BOOL)isEqual:(id)a3;
- (FIUIClientToken)init;
- (id)_initWithUUID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FIUIClientToken

- (FIUIClientToken)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(FIUIClientToken *)self _initWithUUID:v3];

  return v4;
}

- (id)_initWithUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FIUIClientToken;
  v6 = [(FIUIClientToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [FIUIClientToken alloc];
  UUID = self->_UUID;

  return [(FIUIClientToken *)v4 _initWithUUID:UUID];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSUUID *)self->_UUID isEqual:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end