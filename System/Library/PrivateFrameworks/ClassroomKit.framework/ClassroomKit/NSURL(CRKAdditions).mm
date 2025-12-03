@interface NSURL(CRKAdditions)
+ (id)crk_uniqueTemporaryDirectoryURL;
+ (id)crk_uniqueTemporaryFileURL;
- (id)crk_escapedPath;
- (uint64_t)crk_isBundle;
- (void)crk_isBundle;
@end

@implementation NSURL(CRKAdditions)

+ (id)crk_uniqueTemporaryDirectoryURL
{
  v2 = NSTemporaryDirectory();
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 stringByAppendingPathComponent:uUIDString];
  v6 = [self fileURLWithPath:v5];

  return v6;
}

+ (id)crk_uniqueTemporaryFileURL
{
  crk_uniqueTemporaryDirectoryURL = [self crk_uniqueTemporaryDirectoryURL];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v4 = [crk_uniqueTemporaryDirectoryURL URLByAppendingPathComponent:uUIDString];

  return v4;
}

- (id)crk_escapedPath
{
  path = [self path];
  uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v3 = [path stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  return v3;
}

- (uint64_t)crk_isBundle
{
  v10 = 0;
  v2 = *MEMORY[0x277CBE868];
  v9 = 0;
  v3 = [self getResourceValue:&v10 forKey:v2 error:&v9];
  v4 = v10;
  v5 = v9;
  if (v3)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    if (_CRKLogGeneral_onceToken_20 != -1)
    {
      [NSURL(CRKAdditions) crk_isBundle];
    }

    v7 = _CRKLogGeneral_logObj_20;
    if (os_log_type_enabled(_CRKLogGeneral_logObj_20, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(CRKAdditions) *)v7 crk_isBundle];
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)crk_isBundle
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  path = [a2 path];
  v7 = 138543618;
  v8 = path;
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_243550000, selfCopy, OS_LOG_TYPE_ERROR, "Failed to check if %{public}@ is a directory. Error: %{public}@", &v7, 0x16u);
}

@end