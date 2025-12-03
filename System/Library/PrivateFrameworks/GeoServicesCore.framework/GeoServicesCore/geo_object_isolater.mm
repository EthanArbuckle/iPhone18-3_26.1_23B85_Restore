@interface geo_object_isolater
- (geo_object_isolater)initWithValue:(id)value;
- (id)mutate:(id)mutate;
- (id)value;
- (void)setValue:(id)value;
@end

@implementation geo_object_isolater

- (id)mutate:(id)mutate
{
  mutateCopy = mutate;
  os_unfair_lock_lock(&self->_lock);
  v5 = mutateCopy[2](mutateCopy, self->_value);
  value = self->_value;
  self->_value = v5;

  v7 = self->_value;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  value = self->_value;
  self->_value = valueCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)value
{
  os_unfair_lock_lock_with_options();
  v3 = self->_value;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (geo_object_isolater)initWithValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = geo_object_isolater;
  v6 = [(geo_object_isolater *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_value, value);
    v8 = v7;
  }

  return v7;
}

@end