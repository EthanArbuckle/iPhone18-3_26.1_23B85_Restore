@interface NSNumber(_DKDeduping)
- (id)_os_dedup;
@end

@implementation NSNumber(_DKDeduping)

- (id)_os_dedup
{
  if (_os_dedup_onceToken_3 != -1)
  {
    [NSNumber(_DKDeduping) _os_dedup];
  }

  selfCopy = self;
  os_unfair_lock_lock(&_os_dedup_lock_5);
  v3 = [_os_dedup_set_4 member:selfCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;

    selfCopy = v5;
  }

  else
  {
    if ([_os_dedup_set_4 count] >= 0x80)
    {
      v6 = [MEMORY[0x277CBEB58] set];
      v7 = _os_dedup_set_4;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __34__NSNumber__DKDeduping___os_dedup__block_invoke_2;
      v10[3] = &unk_278EEDD30;
      v11 = v6;
      v8 = v6;
      [v7 enumerateObjectsUsingBlock:v10];
      [_os_dedup_set_4 minusSet:v8];
    }

    if ([_os_dedup_set_4 count] <= 0x7F)
    {
      [_os_dedup_set_4 addObject:selfCopy];
    }
  }

  os_unfair_lock_unlock(&_os_dedup_lock_5);

  return selfCopy;
}

@end