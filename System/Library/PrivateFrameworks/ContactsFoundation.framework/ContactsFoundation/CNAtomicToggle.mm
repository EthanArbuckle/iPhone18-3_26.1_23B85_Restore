@interface CNAtomicToggle
- (BOOL)isEqual:(id)equal;
- (BOOL)trySetState:(BOOL)state;
- (CNAtomicToggle)initWithState:(BOOL)state;
- (id)description;
@end

@implementation CNAtomicToggle

- (CNAtomicToggle)initWithState:(BOOL)state
{
  v8.receiver = self;
  v8.super_class = CNAtomicToggle;
  v4 = [(CNAtomicToggle *)&v8 init];
  v5 = v4;
  if (v4)
  {
    atomic_store(state, &v4->_state);
    v6 = v4;
  }

  return v5;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = atomic_load(&self->_state);
  v5 = [v3 appendName:@"state" BOOLValue:v4 & 1];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = atomic_load(&self->_state);
      v6 = atomic_load(&equalCopy->_state);
      v7 = v6 ^ v5 ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

- (BOOL)trySetState:(BOOL)state
{
  v3 = !state;
  atomic_compare_exchange_strong(&self->_state, &v3, state);
  return v3 == !state;
}

@end