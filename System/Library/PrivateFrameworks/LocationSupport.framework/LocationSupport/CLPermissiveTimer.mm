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
  v3 = [(CLTimer *)self handler];

  if (v3)
  {
    v4 = [(CLTimer *)self handler];
    v5 = [v4 copy];

    os_unfair_lock_unlock(&unk_1ED5FAD70);
    v5[2]();
  }

  else
  {

    os_unfair_lock_unlock(&unk_1ED5FAD70);
  }
}

@end