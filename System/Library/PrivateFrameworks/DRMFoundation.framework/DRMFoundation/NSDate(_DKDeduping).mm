@interface NSDate(_DKDeduping)
- (id)_os_dedup;
@end

@implementation NSDate(_DKDeduping)

- (id)_os_dedup
{
  if (_os_dedup_onceToken_9 != -1)
  {
    [NSDate(_DKDeduping) _os_dedup];
  }

  v2 = MEMORY[0x277CBEAA8];
  [self timeIntervalSinceReferenceDate];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:floor(v3)];
  os_unfair_lock_lock(&_os_dedup_lock_11);
  v5 = [_os_dedup_set_10 member:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if ([_os_dedup_set_10 count] >= 0x80)
    {
      v8 = [MEMORY[0x277CBEB58] set];
      v9 = _os_dedup_set_10;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __32__NSDate__DKDeduping___os_dedup__block_invoke_2;
      v12[3] = &unk_278EEDD30;
      v13 = v8;
      v10 = v8;
      [v9 enumerateObjectsUsingBlock:v12];
      [_os_dedup_set_10 minusSet:v10];
    }

    v7 = v4;
    if ([_os_dedup_set_10 count] <= 0x7F)
    {
      [_os_dedup_set_10 addObject:v4];
      v7 = v4;
    }
  }

  os_unfair_lock_unlock(&_os_dedup_lock_11);

  return v7;
}

@end