@interface CLPermissiveTimer
- (void)invalidate;
- (void)shouldFire;
@end

@implementation CLPermissiveTimer

- (void)invalidate
{
  os_unfair_lock_lock(&unk_1ED5FAD70);
  v3.receiver = self;
  v3.super_class = CLPermissiveTimer;
  [(CLTimer *)&v3 invalidate];
  os_unfair_lock_unlock(&unk_1ED5FAD70);
}

- (void)shouldFire
{
  os_unfair_lock_lock(&unk_1ED5FAD70);
  [(CLPermissiveTimer *)self dbgAssertInside];
  handler = [(CLTimer *)self handler];

  if (handler)
  {
    handler2 = [(CLTimer *)self handler];
    v5 = [handler2 copy];

    os_unfair_lock_unlock(&unk_1ED5FAD70);
    v5[2]();
  }

  else
  {

    os_unfair_lock_unlock(&unk_1ED5FAD70);
  }
}

@end