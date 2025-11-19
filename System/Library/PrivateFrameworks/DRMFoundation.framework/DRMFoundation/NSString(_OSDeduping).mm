@interface NSString(_OSDeduping)
- (id)_os_dedup;
@end

@implementation NSString(_OSDeduping)

- (id)_os_dedup
{
  if (_os_dedup_onceToken != -1)
  {
    [NSString(_OSDeduping) _os_dedup];
  }

  v2 = a1;
  os_unfair_lock_lock(&_os_dedup_lock);
  v3 = [_os_dedup_set member:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;

    v2 = v5;
  }

  else
  {
    if ([_os_dedup_set count] >= 0x80)
    {
      v6 = [MEMORY[0x277CBEB58] set];
      v7 = _os_dedup_set;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __34__NSString__OSDeduping___os_dedup__block_invoke_2;
      v10[3] = &unk_278EEDD30;
      v11 = v6;
      v8 = v6;
      [v7 enumerateObjectsUsingBlock:v10];
      [_os_dedup_set minusSet:v8];
    }

    if ([_os_dedup_set count] <= 0x7F)
    {
      [_os_dedup_set addObject:v2];
    }
  }

  os_unfair_lock_unlock(&_os_dedup_lock);

  return v2;
}

@end