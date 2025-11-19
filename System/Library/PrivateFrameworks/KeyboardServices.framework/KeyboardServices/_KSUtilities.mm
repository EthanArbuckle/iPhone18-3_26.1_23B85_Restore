@interface _KSUtilities
+ (id)findAllDbsInDirectory:(id)a3;
+ (id)keyboardDirectory;
+ (id)keyboardServicesDirectory;
+ (id)userDictionaryWordKeyPairsFilePathLegacy;
+ (void)createFileIfDoesNotExist:(id)a3;
@end

@implementation _KSUtilities

+ (id)keyboardDirectory
{
  if (keyboardDirectory_onceToken != -1)
  {
    +[_KSUtilities keyboardDirectory];
  }

  v3 = keyboardDirectory_dir;

  return v3;
}

+ (id)userDictionaryWordKeyPairsFilePathLegacy
{
  v2 = [a1 keyboardDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"UserDictionaryWordKeyPairs.plist"];

  return v3;
}

+ (id)keyboardServicesDirectory
{
  if (keyboardServicesDirectory_onceToken != -1)
  {
    +[_KSUtilities keyboardServicesDirectory];
  }

  v3 = keyboardServicesDirectory_dir;

  return v3;
}

+ (void)createFileIfDoesNotExist:(id)a3
{
  v3 = a3;
  v7 = 0;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:&v7];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    [v6 createFileAtPath:v3 contents:0 attributes:0];
  }
}

+ (id)findAllDbsInDirectory:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 enumeratorAtPath:v3];

  v8 = [v7 nextObject];
  if (v8)
  {
    v9 = v8;
    do
    {
      if (([v9 hasSuffix:@"UserDictionary.db"] & 1) != 0 || objc_msgSend(v9, "hasSuffix:", @"CloudUserDictionary.sqlite"))
      {
        v10 = [v3 stringByAppendingPathComponent:v9];
        [v4 addObject:v10];
      }

      v11 = [v7 nextObject];

      v9 = v11;
    }

    while (v11);
  }

  objc_autoreleasePoolPop(v5);

  return v4;
}

@end