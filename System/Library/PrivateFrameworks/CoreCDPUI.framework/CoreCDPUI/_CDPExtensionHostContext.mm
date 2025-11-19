@interface _CDPExtensionHostContext
+ (id)_allowedItemPayloadClasses;
@end

@implementation _CDPExtensionHostContext

+ (id)_allowedItemPayloadClasses
{
  if (_allowedItemPayloadClasses_onceToken[0] != -1)
  {
    +[_CDPExtensionHostContext _allowedItemPayloadClasses];
  }

  v3 = _allowedItemPayloadClasses_classes;

  return v3;
}

@end