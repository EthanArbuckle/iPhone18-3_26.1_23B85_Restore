@interface CNUnfairLock
- (CNUnfairLock)init;
- (id)description;
@end

@implementation CNUnfairLock

- (CNUnfairLock)init
{
  v6.receiver = self;
  v6.super_class = CNUnfairLock;
  v2 = [(CNUnfairLock *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_os_unfair_lock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"os_unfair_lock_t" pointerValue:&self->_os_unfair_lock];
  v5 = [v3 build];

  return v5;
}

@end