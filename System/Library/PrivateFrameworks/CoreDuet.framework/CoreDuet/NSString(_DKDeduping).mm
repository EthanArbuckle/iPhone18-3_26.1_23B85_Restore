@interface NSString(_DKDeduping)
- (id)dedup;
- (id)dk_dedup;
@end

@implementation NSString(_DKDeduping)

- (id)dk_dedup
{
  if (dk_dedup_onceToken != -1)
  {
    [NSString(_DKDeduping) dk_dedup];
  }

  selfCopy = self;
  os_unfair_lock_lock(&dk_dedup_lock);
  v3 = [dk_dedup_set member:selfCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;

    selfCopy = v5;
  }

  else if ([dk_dedup_set count] <= 0x7F)
  {
    [dk_dedup_set addObject:selfCopy];
  }

  os_unfair_lock_unlock(&dk_dedup_lock);

  return selfCopy;
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