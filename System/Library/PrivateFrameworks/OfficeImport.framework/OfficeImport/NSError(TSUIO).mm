@interface NSError(TSUIO)
+ (id)tsu_fileReadCorruptedFileErrorWithUserInfo:()TSUIO;
+ (id)tsu_fileReadPOSIXErrorWithNumber:()TSUIO userInfo:;
+ (id)tsu_fileReadUnknownErrorWithUserInfo:()TSUIO;
+ (id)tsu_fileWritePOSIXErrorWithNumber:()TSUIO userInfo:;
+ (id)tsu_fileWriteUnknownErrorWithUserInfo:()TSUIO;
+ (id)tsu_userInfoWithErrorType:()TSUIO userInfo:;
@end

@implementation NSError(TSUIO)

+ (id)tsu_userInfoWithErrorType:()TSUIO userInfo:
{
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count") + 1}];
  v7 = v6;
  if (v5)
  {
    [v6 addEntriesFromDictionary:v5];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v7 setObject:v8 forKeyedSubscript:@"TSUIOErrorType"];

  return v7;
}

+ (id)tsu_fileReadUnknownErrorWithUserInfo:()TSUIO
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA050];
  v5 = [a1 tsu_userInfoWithErrorType:1 userInfo:a3];
  v6 = [v3 errorWithDomain:v4 code:256 userInfo:v5];

  return v6;
}

+ (id)tsu_fileReadCorruptedFileErrorWithUserInfo:()TSUIO
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA050];
  v5 = [a1 tsu_userInfoWithErrorType:1 userInfo:a3];
  v6 = [v3 errorWithDomain:v4 code:259 userInfo:v5];

  return v6;
}

+ (id)tsu_fileReadPOSIXErrorWithNumber:()TSUIO userInfo:
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA5B8];
  v5 = a3;
  v6 = [a1 tsu_userInfoWithErrorType:1 userInfo:?];
  v7 = [v3 errorWithDomain:v4 code:v5 userInfo:v6];

  return v7;
}

+ (id)tsu_fileWriteUnknownErrorWithUserInfo:()TSUIO
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA050];
  v5 = [a1 tsu_userInfoWithErrorType:2 userInfo:a3];
  v6 = [v3 errorWithDomain:v4 code:512 userInfo:v5];

  return v6;
}

+ (id)tsu_fileWritePOSIXErrorWithNumber:()TSUIO userInfo:
{
  v6 = MEMORY[0x277CCA9B8];
  v7 = a4;
  v8 = [v6 alloc];
  v9 = *MEMORY[0x277CCA5B8];
  v10 = [a1 tsu_userInfoWithErrorType:2 userInfo:v7];

  v11 = [v8 initWithDomain:v9 code:a3 userInfo:v10];

  return v11;
}

@end