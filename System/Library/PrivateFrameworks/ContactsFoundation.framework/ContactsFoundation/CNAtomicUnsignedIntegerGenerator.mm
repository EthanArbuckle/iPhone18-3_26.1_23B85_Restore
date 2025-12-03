@interface CNAtomicUnsignedIntegerGenerator
- (CNAtomicUnsignedIntegerGenerator)init;
- (id)description;
@end

@implementation CNAtomicUnsignedIntegerGenerator

- (CNAtomicUnsignedIntegerGenerator)init
{
  v6.receiver = self;
  v6.super_class = CNAtomicUnsignedIntegerGenerator;
  v2 = [(CNAtomicUnsignedIntegerGenerator *)&v6 init];
  v3 = v2;
  if (v2)
  {
    atomic_store(0, &v2->_n);
    v4 = v2;
  }

  return v3;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  atomic_fetch_or_explicit(&self->_n, 0, memory_order_relaxed);
  v4 = [v3 appendName:@"n" unsignedInteger:?];
  build = [v3 build];

  return build;
}

@end