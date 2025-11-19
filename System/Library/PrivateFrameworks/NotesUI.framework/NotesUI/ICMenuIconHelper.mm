@interface ICMenuIconHelper
+ (id)imageForIcon:(int64_t)a3;
@end

@implementation ICMenuIconHelper

+ (id)imageForIcon:(int64_t)a3
{
  v3 = [a1 symbolNameForIcon:a3];
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