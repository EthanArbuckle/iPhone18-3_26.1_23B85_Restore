@interface EDMigrateUserDefaultsUpgradeStep
+ (BOOL)run;
+ (id)propertiesToMigrate;
@end

@implementation EDMigrateUserDefaultsUpgradeStep

+ (BOOL)run
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  propertiesToMigrate = [self propertiesToMigrate];
  v3 = [propertiesToMigrate countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(propertiesToMigrate);
        }

        [MEMORY[0x1E695E000] em_migrateDefault:*(*(&v8 + 1) + 8 * v5++)];
      }

      while (v3 != v5);
      v3 = [propertiesToMigrate countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 1;
}

+ (id)propertiesToMigrate
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E699AB70];
  v6[0] = *MEMORY[0x1E699AB58];
  v6[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end