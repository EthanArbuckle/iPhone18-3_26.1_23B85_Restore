@interface NSCoder(HMDHH2Migrator)
- (uint64_t)hmd_isHH2MigrationInProgress;
@end

@implementation NSCoder(HMDHH2Migrator)

- (uint64_t)hmd_isHH2MigrationInProgress
{
  v1 = objc_getAssociatedObject(self, @"HMDHH2MigrationInProgressAssociationKey");
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end