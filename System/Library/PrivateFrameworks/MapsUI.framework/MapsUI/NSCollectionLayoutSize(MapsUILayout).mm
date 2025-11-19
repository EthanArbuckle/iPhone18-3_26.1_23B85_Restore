@interface NSCollectionLayoutSize(MapsUILayout)
+ (id)_mapsui_layoutSizeWithFractionalWidth:()MapsUILayout fractionalHeight:;
+ (id)_mapsui_layoutSizeWithFractionalWidth:()MapsUILayout fractionalHeightUsingWidth:;
+ (id)_mapsui_layoutSizeWithFractionalWidth:()MapsUILayout height:;
@end

@implementation NSCollectionLayoutSize(MapsUILayout)

+ (id)_mapsui_layoutSizeWithFractionalWidth:()MapsUILayout height:
{
  v3 = MEMORY[0x1E6995588];
  v4 = [MEMORY[0x1E6995558] fractionalWidthDimension:?];
  v5 = [MEMORY[0x1E6995558] absoluteDimension:a2];
  v6 = [v3 sizeWithWidthDimension:v4 heightDimension:v5];

  return v6;
}

+ (id)_mapsui_layoutSizeWithFractionalWidth:()MapsUILayout fractionalHeightUsingWidth:
{
  v3 = MEMORY[0x1E6995588];
  v4 = [MEMORY[0x1E6995558] fractionalWidthDimension:?];
  v5 = [MEMORY[0x1E6995558] fractionalWidthDimension:a2];
  v6 = [v3 sizeWithWidthDimension:v4 heightDimension:v5];

  return v6;
}

+ (id)_mapsui_layoutSizeWithFractionalWidth:()MapsUILayout fractionalHeight:
{
  v3 = MEMORY[0x1E6995588];
  v4 = [MEMORY[0x1E6995558] fractionalWidthDimension:?];
  v5 = [MEMORY[0x1E6995558] fractionalHeightDimension:a2];
  v6 = [v3 sizeWithWidthDimension:v4 heightDimension:v5];

  return v6;
}

@end