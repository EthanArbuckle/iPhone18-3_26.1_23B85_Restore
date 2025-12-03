@interface HDSettingsMigrationStep
- (HDSettingsMigrationStep)initWithIdentifier:(id)identifier migrationVersion:(int64_t)version block:(id)block;
@end

@implementation HDSettingsMigrationStep

- (HDSettingsMigrationStep)initWithIdentifier:(id)identifier migrationVersion:(int64_t)version block:(id)block
{
  blockCopy = block;
  v13.receiver = self;
  v13.super_class = HDSettingsMigrationStep;
  v8 = [(HDSettingsMigrationStep *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_migrationVersion = version;
    v10 = _Block_copy(blockCopy);
    block = v9->_block;
    v9->_block = v10;
  }

  return v9;
}

@end