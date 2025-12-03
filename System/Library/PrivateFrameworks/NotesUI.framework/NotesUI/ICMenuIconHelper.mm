@interface ICMenuIconHelper
+ (id)imageForIcon:(int64_t)icon;
@end

@implementation ICMenuIconHelper

+ (id)imageForIcon:(int64_t)icon
{
  v3 = [self symbolNameForIcon:icon];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCAB8] ic_systemImageNamed:v3 usePrivateCatalog:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end