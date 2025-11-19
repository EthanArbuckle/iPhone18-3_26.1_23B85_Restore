@interface HDSQLiteDatabase(Health)
+ (id)highFrequencyDatabaseURLWithProfileDirectoryPath:()Health;
+ (id)mainDatabaseURLWithProfileDirectoryPath:()Health;
+ (id)protectedDatabaseURLWithProfileDirectoryPath:()Health;
@end

@implementation HDSQLiteDatabase(Health)

+ (id)mainDatabaseURLWithProfileDirectoryPath:()Health
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [a3 stringByAppendingPathComponent:@"healthdb.sqlite"];
  v5 = [v3 fileURLWithPath:v4 isDirectory:0];

  return v5;
}

+ (id)protectedDatabaseURLWithProfileDirectoryPath:()Health
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [a3 stringByAppendingPathComponent:@"healthdb_secure.sqlite"];
  v5 = [v3 fileURLWithPath:v4 isDirectory:0];

  return v5;
}

+ (id)highFrequencyDatabaseURLWithProfileDirectoryPath:()Health
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [a3 stringByAppendingPathComponent:@"healthdb_secure.hfd"];
  v5 = [v3 fileURLWithPath:v4 isDirectory:0];

  return v5;
}

@end