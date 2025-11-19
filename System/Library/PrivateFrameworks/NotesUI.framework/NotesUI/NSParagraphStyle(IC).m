@interface NSParagraphStyle(IC)
+ (id)ic_mutableDefaultParagraphStyle;
@end

@implementation NSParagraphStyle(IC)

+ (id)ic_mutableDefaultParagraphStyle
{
  v0 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v1 = [v0 mutableCopy];

  v2 = [v1 tabStops];
  v3 = [v2 count];

  if (v3 < 2)
  {
    [v1 setDefaultTabInterval:28.0];
  }

  else
  {
    v4 = [v1 tabStops];
    v5 = [v4 objectAtIndexedSubscript:1];
    [v5 location];
    v7 = v6;
    v8 = [v1 tabStops];
    v9 = [v8 objectAtIndexedSubscript:0];
    [v9 location];
    [v1 setDefaultTabInterval:v7 - v10];
  }

  v11 = [MEMORY[0x1E695DEC8] array];
  [v1 setTabStops:v11];

  return v1;
}

@end