@interface DOCSmartFolderManager_OBJC
+ (id)sharedManager;
@end

@implementation DOCSmartFolderManager_OBJC

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[DOCSmartFolderManager_OBJC sharedManager];
  }

  v3 = sharedManager__sharedManager;

  return v3;
}

@end