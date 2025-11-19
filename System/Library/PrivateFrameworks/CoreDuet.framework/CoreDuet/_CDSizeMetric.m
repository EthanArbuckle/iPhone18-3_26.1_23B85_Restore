@interface _CDSizeMetric
- (_CDSizeMetric)initWithName:(id)a3 string:(id)a4 scale:(unint64_t)a5 family:(id)a6;
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

- (_CDSizeMetric)initWithName:(id)a3 string:(id)a4 scale:(unint64_t)a5 family:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = _CDSizeMetric;
  v14 = [(_CDSizeMetric *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_name, a3);
    objc_storeStrong(&v15->_string, a4);
    v15->_scale = a5;
    objc_storeWeak(&v15->_family, v13);
  }

  return v15;
}

- (uint64_t)count
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_21(a1);
  v2 = *(v1 + 24);
  os_unfair_lock_unlock((v1 + 8));
  return v2;
}

- (uint64_t)firstSize
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_21(a1);
  v2 = *(v1 + 32);
  os_unfair_lock_unlock((v1 + 8));
  return v2;
}

- (uint64_t)lastSize
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_21(a1);
  v2 = *(v1 + 40);
  os_unfair_lock_unlock((v1 + 8));
  return v2;
}

- (uint64_t)minimumSize
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_21(a1);
  v2 = *(v1 + 48);
  os_unfair_lock_unlock((v1 + 8));
  return v2;
}

- (uint64_t)maximumSize
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_21(a1);
  v2 = *(v1 + 56);
  os_unfair_lock_unlock((v1 + 8));
  return v2;
}

- (double)averageSize
{
  if (!a1)
  {
    return 0.0;
  }

  os_unfair_lock_lock((a1 + 8));
  v2 = *(a1 + 64) / *(a1 + 24);
  os_unfair_lock_unlock((a1 + 8));
  return v2;
}

- (id)firstUpdate
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v2 = *(a1 + 72);
    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)lastUpdate
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v2 = *(a1 + 80);
    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end