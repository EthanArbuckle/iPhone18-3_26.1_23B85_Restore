@interface IMBagUtilities
+ (unsigned)getUnsignedIntForKey:(id)a3 withDefault:(unsigned int)a4;
@end

@implementation IMBagUtilities

+ (unsigned)getUnsignedIntForKey:(id)a3 withDefault:(unsigned int)a4
{
  v5 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", a3}];
  if (v5)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      return [v6 unsignedIntegerValue];
    }
  }

  return a4;
}

@end