@interface MFAuthScheme
+ (id)schemeWithName:(id)name;
@end

@implementation MFAuthScheme

+ (id)schemeWithName:(id)name
{
  v3 = [MEMORY[0x1E699B208] schemeWithName:name];

  return v3;
}

@end