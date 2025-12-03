@interface VCPLogManager
+ (id)dateFormatter;
+ (id)dateFormatterDateTime;
+ (id)sharedLogManager;
- (VCPLogManager)init;
@end

@implementation VCPLogManager

+ (id)sharedLogManager
{
  if (+[VCPLogManager sharedLogManager]::once != -1)
  {
    +[VCPLogManager sharedLogManager];
  }

  v3 = +[VCPLogManager sharedLogManager]::instance;

  return v3;
}

void __33__VCPLogManager_sharedLogManager__block_invoke()
{
  v0 = objc_alloc_init(VCPLogManager);
  v1 = +[VCPLogManager sharedLogManager]::instance;
  +[VCPLogManager sharedLogManager]::instance = v0;
}

- (VCPLogManager)init
{
  v13.receiver = self;
  v13.super_class = VCPLogManager;
  v2 = [(VCPLogManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_logLevel = 6;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [standardUserDefaults persistentDomainForName:@"com.apple.mediaanalysis"];

    v6 = [v5 objectForKey:@"LogLevel"];
    v7 = v6;
    if (v6)
    {
      intValue = [v6 intValue];
      if (intValue >= 7)
      {
        v9 = 7;
      }

      else
      {
        v9 = intValue;
      }

      v3->_logLevel = v9 & ~(v9 >> 31);
    }

    v10 = [v5 objectForKey:@"EnableDatabaseLog"];
    v11 = v10;
    if (v10)
    {
      v3->_enableDatabaseLog = [v10 BOOLValue];
    }
  }

  return v3;
}

+ (id)dateFormatter
{
  if (+[VCPLogManager dateFormatter]::once != -1)
  {
    +[VCPLogManager dateFormatter];
  }

  v3 = +[VCPLogManager dateFormatter]::formatter;

  return v3;
}

void __30__VCPLogManager_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = +[VCPLogManager dateFormatter]::formatter;
  +[VCPLogManager dateFormatter]::formatter = v0;

  [+[VCPLogManager dateFormatter]::formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSSXXXX"];
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  [+[VCPLogManager dateFormatter]::formatter setLocale:?];
}

+ (id)dateFormatterDateTime
{
  if (+[VCPLogManager dateFormatterDateTime]::once != -1)
  {
    +[VCPLogManager dateFormatterDateTime];
  }

  v3 = +[VCPLogManager dateFormatterDateTime]::formatter;

  return v3;
}

void __38__VCPLogManager_dateFormatterDateTime__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = +[VCPLogManager dateFormatterDateTime]::formatter;
  +[VCPLogManager dateFormatterDateTime]::formatter = v0;

  [+[VCPLogManager dateFormatterDateTime]::formatter setDateFormat:@"yyyy-MM-dd HH:mm:ssXXXX"];
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  [+[VCPLogManager dateFormatterDateTime]::formatter setLocale:?];
}

@end