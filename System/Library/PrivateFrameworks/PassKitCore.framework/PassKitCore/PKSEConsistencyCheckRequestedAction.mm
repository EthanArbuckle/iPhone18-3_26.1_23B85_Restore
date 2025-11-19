@interface PKSEConsistencyCheckRequestedAction
- (PKSEConsistencyCheckRequestedAction)initWithActions:(int64_t)a3 deviceCredential:(id)a4 address:(id)a5;
- (id)description;
@end

@implementation PKSEConsistencyCheckRequestedAction

- (PKSEConsistencyCheckRequestedAction)initWithActions:(int64_t)a3 deviceCredential:(id)a4 address:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PKSEConsistencyCheckRequestedAction;
  v11 = [(PKSEConsistencyCheckRequestedAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_actions = a3;
    objc_storeStrong(&v11->_deviceCredential, a4);
    objc_storeStrong(&v12->_address, a5);
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = PKConsistencyCheckCleanupActionsToString(self->_actions);
  [v3 appendFormat:@"actions: '%@'; ", v4];

  [v3 appendFormat:@"deviceCredential: '%@'; ", self->_deviceCredential];
  [v3 appendFormat:@"address: '%@'; ", self->_address];
  [v3 appendFormat:@">"];

  return v3;
}

@end