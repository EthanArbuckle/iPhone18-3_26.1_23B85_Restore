@interface NSError(HDSQLiteDatabase)
- (id)hd_failingSQLStatement;
- (uint64_t)hd_isConstraintViolation;
- (uint64_t)hd_sqliteExtendedErrorCode;
@end

@implementation NSError(HDSQLiteDatabase)

- (uint64_t)hd_sqliteExtendedErrorCode
{
  selfCopy = self;
  if ([selfCopy hk_isErrorInDomain:@"com.apple.healthd.SQLite" code:2])
  {
    userInfo = [selfCopy userInfo];
    v3 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    selfCopy = v3;
  }

  domain = [selfCopy domain];
  v5 = [domain isEqualToString:@"com.apple.SQLite"];

  if (v5)
  {
    userInfo2 = [selfCopy userInfo];
    v7 = [userInfo2 objectForKeyedSubscript:@"extended_error_code"];

    if (v7)
    {
      intValue = [v7 intValue];
    }

    else
    {
      intValue = [selfCopy code];
    }
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (uint64_t)hd_isConstraintViolation
{
  if ([self hk_isHealthKitError] && objc_msgSend(self, "code") == 400 || objc_msgSend(self, "hd_sqliteExtendedErrorCode") == 19)
  {
    return 1;
  }

  userInfo = [self userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (v4)
  {
    hd_isConstraintViolation = [v4 hd_isConstraintViolation];
  }

  else
  {
    hd_isConstraintViolation = 0;
  }

  return hd_isConstraintViolation;
}

- (id)hd_failingSQLStatement
{
  selfCopy = self;
  if ([selfCopy hk_isErrorInDomain:@"com.apple.healthd.SQLite" code:2])
  {
    userInfo = [selfCopy userInfo];
    v3 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    selfCopy = v3;
  }

  domain = [selfCopy domain];
  v5 = [domain isEqualToString:@"com.apple.SQLite"];

  if (v5)
  {
    userInfo2 = [selfCopy userInfo];
    v7 = [userInfo2 objectForKeyedSubscript:@"sql_statement"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end