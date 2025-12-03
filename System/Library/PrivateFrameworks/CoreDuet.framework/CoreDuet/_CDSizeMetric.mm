@interface _CDSizeMetric
- (_CDSizeMetric)initWithName:(id)name string:(id)string scale:(unint64_t)scale family:(id)family;
- (double)averageSize;
- (id)firstUpdate;
- (id)lastUpdate;
- (uint64_t)count;
- (uint64_t)firstSize;
- (uint64_t)lastSize;
- (uint64_t)maximumSize;
- (uint64_t)minimumSize;
@end

@implementation _CDSizeMetric

- (_CDSizeMetric)initWithName:(id)name string:(id)string scale:(unint64_t)scale family:(id)family
{
  nameCopy = name;
  stringCopy = string;
  familyCopy = family;
  v17.receiver = self;
  v17.super_class = _CDSizeMetric;
  v14 = [(_CDSizeMetric *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_name, name);
    objc_storeStrong(&v15->_string, string);
    v15->_scale = scale;
    objc_storeWeak(&v15->_family, familyCopy);
  }

  return v15;
}

- (uint64_t)count
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_21(self);
  v2 = *(v1 + 24);
  os_unfair_lock_unlock((v1 + 8));
  return v2;
}

- (uint64_t)firstSize
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_21(self);
  v2 = *(v1 + 32);
  os_unfair_lock_unlock((v1 + 8));
  return v2;
}

- (uint64_t)lastSize
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_21(self);
  v2 = *(v1 + 40);
  os_unfair_lock_unlock((v1 + 8));
  return v2;
}

- (uint64_t)minimumSize
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_21(self);
  v2 = *(v1 + 48);
  os_unfair_lock_unlock((v1 + 8));
  return v2;
}

- (uint64_t)maximumSize
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_21(self);
  v2 = *(v1 + 56);
  os_unfair_lock_unlock((v1 + 8));
  return v2;
}

- (double)averageSize
{
  if (!self)
  {
    return 0.0;
  }

  os_unfair_lock_lock((self + 8));
  v2 = *(self + 64) / *(self + 24);
  os_unfair_lock_unlock((self + 8));
  return v2;
}

- (id)firstUpdate
{
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v2 = *(self + 72);
    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)lastUpdate
{
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v2 = *(self + 80);
    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end