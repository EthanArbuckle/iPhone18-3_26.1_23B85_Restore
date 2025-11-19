@interface NSCoder(HMDHH2Migrator)
- (uint64_t)hmd_isHH2MigrationInProgress;
@end

@implementation NSCoder(HMDHH2Migrator)

- (uint64_t)hmd_isHH2MigrationInProgress
{
  v1 = objc_getAssociatedObject(a1, @"HMDHH2MigrationInProgressAssociationKey");
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end