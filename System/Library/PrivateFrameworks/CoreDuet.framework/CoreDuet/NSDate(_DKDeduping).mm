@interface NSDate(_DKDeduping)
- (id)dedup;
- (id)dk_dedup;
@end

@implementation NSDate(_DKDeduping)

- (id)dk_dedup
{
  if (dk_dedup_onceToken_8 != -1)
  {
    [NSDate(_DKDeduping) dk_dedup];
  }

  v2 = MEMORY[0x1E695DF00];
  [self timeIntervalSinceReferenceDate];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:floor(v3)];
  os_unfair_lock_lock(&dk_dedup_lock_10);
  v5 = [dk_dedup_set_9 member:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if ([dk_dedup_set_9 count] >= 0x80)
    {
      v8 = [MEMORY[0x1E695DFA8] set];
      v9 = dk_dedup_set_9;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __31__NSDate__DKDeduping__dk_dedup__block_invoke_2;
      v12[3] = &unk_1E7369C88;
      v13 = v8;
      v10 = v8;
      [v9 enumerateObjectsUsingBlock:v12];
      [dk_dedup_set_9 minusSet:v10];
    }

    v7 = v4;
    if ([dk_dedup_set_9 count] <= 0x7F)
    {
      [dk_dedup_set_9 addObject:v4];
      v7 = v4;
    }
  }

  os_unfair_lock_unlock(&dk_dedup_lock_10);

  return v7;
}

- (id)dedup
{
  v2 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [(NSString(_DKDeduping) *)v2 dedup:v3];
  }

  dk_dedup = [self dk_dedup];

  return dk_dedup;
}

@end