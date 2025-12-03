@interface NSParagraphStyle(IC)
+ (id)ic_mutableDefaultParagraphStyle;
@end

@implementation NSParagraphStyle(IC)

+ (id)ic_mutableDefaultParagraphStyle
{
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v1 = [defaultParagraphStyle mutableCopy];

  tabStops = [v1 tabStops];
  v3 = [tabStops count];

  if (v3 < 2)
  {
    [v1 setDefaultTabInterval:28.0];
  }

  else
  {
    tabStops2 = [v1 tabStops];
    v5 = [tabStops2 objectAtIndexedSubscript:1];
    [v5 location];
    v7 = v6;
    tabStops3 = [v1 tabStops];
    v9 = [tabStops3 objectAtIndexedSubscript:0];
    [v9 location];
    [v1 setDefaultTabInterval:v7 - v10];
  }

  array = [MEMORY[0x1E695DEC8] array];
  [v1 setTabStops:array];

  return v1;
}

@end