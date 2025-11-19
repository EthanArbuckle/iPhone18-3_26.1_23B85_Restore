@interface EFLocked
- (EFLocked)initWithObject:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)getObject;
- (id)replaceObject:(id)a3;
- (void)performWhileLocked:(id)a3;
- (void)setObject:(id)a3;
@end

@implementation EFLocked

- (id)getObject
{
  os_unfair_lock_lock(&self->_lock);
  object = self->_object;
  v4 = objc_opt_respondsToSelector();
  v5 = self->_object;
  if (v4)
  {
    v6 = [v5 copyWithZone:0];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (EFLocked)initWithObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EFLocked;
  v6 = [(EFLocked *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_object, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = EFLocked;
  v4 = [(EFLocked *)&v8 description];
  v5 = [self->_object description];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = EFLocked;
  v4 = [(EFLocked *)&v8 description];
  v5 = [self->_object debugDescription];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)performWhileLocked:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4, self->_object);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  object = self->_object;
  self->_object = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)replaceObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_object;
  object = self->_object;
  self->_object = v4;
  v7 = v4;

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end