@interface CNAtomicToggle
- (BOOL)isEqual:(id)a3;
- (BOOL)trySetState:(BOOL)a3;
- (CNAtomicToggle)initWithState:(BOOL)a3;
- (id)description;
@end

@implementation CNAtomicToggle

- (CNAtomicToggle)initWithState:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CNAtomicToggle;
  v4 = [(CNAtomicToggle *)&v8 init];
  v5 = v4;
  if (v4)
  {
    atomic_store(a3, &v4->_state);
    v6 = v4;
  }

  return v5;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = atomic_load(&self->_state);
  v5 = [v3 appendName:@"state" BOOLValue:v4 & 1];
  v6 = [v3 build];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = atomic_load(&self->_state);
      v6 = atomic_load(&v4->_state);
      v7 = v6 ^ v5 ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

- (BOOL)trySetState:(BOOL)a3
{
  v3 = !a3;
  atomic_compare_exchange_strong(&self->_state, &v3, a3);
  return v3 == !a3;
}

@end