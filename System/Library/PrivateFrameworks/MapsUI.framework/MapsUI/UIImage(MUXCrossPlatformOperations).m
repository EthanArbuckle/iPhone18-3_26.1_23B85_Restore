@interface UIImage(MUXCrossPlatformOperations)
+ (id)_mapsui_customSymbolImageNamed:()MUXCrossPlatformOperations withConfiguration:;
+ (id)_mapsui_resolvedSymbolImageNamed:()MUXCrossPlatformOperations withConfiguration:;
@end

@implementation UIImage(MUXCrossPlatformOperations)

+ (id)_mapsui_resolvedSymbolImageNamed:()MUXCrossPlatformOperations withConfiguration:
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69DCAB8] _mapsui_customSymbolImageNamed:v5 withConfiguration:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x1E69DCAB8] _mapsui_systemImageNamed:v5 withConfiguration:v6];
  }

  return v7;
}

+ (id)_mapsui_customSymbolImageNamed:()MUXCrossPlatformOperations withConfiguration:
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = MEMORY[0x1E696AAE8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 _mapsuiBundle];
  v10 = [v5 imageNamed:v8 inBundle:v9 withConfiguration:v7];

  return v10;
}

@end