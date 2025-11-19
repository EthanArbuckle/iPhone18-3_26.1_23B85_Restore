@interface NSError(HDSQLiteDatabase)
- (id)hd_failingSQLStatement;
- (uint64_t)hd_isConstraintViolation;
- (uint64_t)hd_sqliteExtendedErrorCode;
@end

@implementation NSError(HDSQLiteDatabase)

- (uint64_t)hd_sqliteExtendedErrorCode
{
  v1 = a1;
  if ([v1 hk_isErrorInDomain:@"com.apple.healthd.SQLite" code:2])
  {
    v2 = [v1 userInfo];
    v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v1 = v3;
  }

  v4 = [v1 domain];
  v5 = [v4 isEqualToString:@"com.apple.SQLite"];

  if (v5)
  {
    v6 = [v1 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"extended_error_code"];

    if (v7)
    {
      v8 = [v7 intValue];
    }

    else
    {
      v8 = [v1 code];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)hd_isConstraintViolation
{
  if ([a1 hk_isHealthKitError] && objc_msgSend(a1, "code") == 400 || objc_msgSend(a1, "hd_sqliteExtendedErrorCode") == 19)
  {
    return 1;
  }

  v3 = [a1 userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (v4)
  {
    v2 = [v4 hd_isConstraintViolation];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)hd_failingSQLStatement
{
  v1 = a1;
  if ([v1 hk_isErrorInDomain:@"com.apple.healthd.SQLite" code:2])
  {
    v2 = [v1 userInfo];
    v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v1 = v3;
  }

  v4 = [v1 domain];
  v5 = [v4 isEqualToString:@"com.apple.SQLite"];

  if (v5)
  {
    v6 = [v1 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"sql_statement"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end