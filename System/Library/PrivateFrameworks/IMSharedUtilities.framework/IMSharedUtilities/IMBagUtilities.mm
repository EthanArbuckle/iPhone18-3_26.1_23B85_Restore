@interface IMBagUtilities
+ (unsigned)getUnsignedIntForKey:(id)key withDefault:(unsigned int)default;
@end

@implementation IMBagUtilities

+ (unsigned)getUnsignedIntForKey:(id)key withDefault:(unsigned int)default
{
  v5 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", key}];
  if (v5)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      return [v6 unsignedIntegerValue];
    }
  }

  return default;
}

@end