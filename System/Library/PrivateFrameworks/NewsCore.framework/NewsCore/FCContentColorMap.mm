@interface FCContentColorMap
- (FCContentColorMap)initWithColors:(id)colors;
@end

@implementation FCContentColorMap

- (FCContentColorMap)initWithColors:(id)colors
{
  colorsCopy = colors;
  v10.receiver = self;
  v10.super_class = FCContentColorMap;
  v5 = [(FCContentColorMap *)&v10 init];
  if (v5)
  {
    v6 = [colorsCopy copy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_colors, v8);
  }

  return v5;
}

@end