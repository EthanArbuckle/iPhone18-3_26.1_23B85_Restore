@interface _KSUtilities
+ (id)findAllDbsInDirectory:(id)directory;
+ (id)keyboardDirectory;
+ (id)keyboardServicesDirectory;
+ (id)userDictionaryWordKeyPairsFilePathLegacy;
+ (void)createFileIfDoesNotExist:(id)exist;
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
  keyboardDirectory = [self keyboardDirectory];
  v3 = [keyboardDirectory stringByAppendingPathComponent:@"UserDictionaryWordKeyPairs.plist"];

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

+ (void)createFileIfDoesNotExist:(id)exist
{
  existCopy = exist;
  v7 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:existCopy isDirectory:&v7];

  if ((v5 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager2 createFileAtPath:existCopy contents:0 attributes:0];
  }
}

+ (id)findAllDbsInDirectory:(id)directory
{
  directoryCopy = directory;
  array = [MEMORY[0x277CBEB18] array];
  v5 = objc_autoreleasePoolPush();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager enumeratorAtPath:directoryCopy];

  nextObject = [v7 nextObject];
  if (nextObject)
  {
    v9 = nextObject;
    do
    {
      if (([v9 hasSuffix:@"UserDictionary.db"] & 1) != 0 || objc_msgSend(v9, "hasSuffix:", @"CloudUserDictionary.sqlite"))
      {
        v10 = [directoryCopy stringByAppendingPathComponent:v9];
        [array addObject:v10];
      }

      nextObject2 = [v7 nextObject];

      v9 = nextObject2;
    }

    while (nextObject2);
  }

  objc_autoreleasePoolPop(v5);

  return array;
}

@end