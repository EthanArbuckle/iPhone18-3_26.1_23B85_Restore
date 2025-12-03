@interface NSError(EFSQLite)
+ (id)ef_SQLiteErrorWithCode:()EFSQLite;
@end

@implementation NSError(EFSQLite)

+ (id)ef_SQLiteErrorWithCode:()EFSQLite
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (_registerSQLiteErrorDomainUserInfoValueProvider_onceToken != -1)
  {
    +[NSError(EFSQLite) ef_SQLiteErrorWithCode:];
  }

  if (a3 < 0x100)
  {
    v7 = 0;
  }

  else
  {
    v11 = @"EFSQLiteExtendedErrorCodeKey";
    v5 = [MEMORY[0x1E696AD98] numberWithInt:a3];
    v12[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    v7 = v6;
  }

  v8 = [[self alloc] initWithDomain:@"EFSQLiteErrorDomain" code:a3 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end