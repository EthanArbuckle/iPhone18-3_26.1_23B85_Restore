@interface HDSettingsMigrationStep
- (HDSettingsMigrationStep)initWithIdentifier:(id)a3 migrationVersion:(int64_t)a4 block:(id)a5;
@end

@implementation HDSettingsMigrationStep

- (HDSettingsMigrationStep)initWithIdentifier:(id)a3 migrationVersion:(int64_t)a4 block:(id)a5
{
  v7 = a5;
  v13.receiver = self;
  v13.super_class = HDSettingsMigrationStep;
  v8 = [(HDSettingsMigrationStep *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_migrationVersion = a4;
    v10 = _Block_copy(v7);
    block = v9->_block;
    v9->_block = v10;
  }

  return v9;
}

@end