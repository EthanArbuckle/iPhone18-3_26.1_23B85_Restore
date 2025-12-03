@interface CMDrawableStyle
- (void)addPositionProperties:(CGRect)properties;
- (void)addPositionUsingOffsets:(CGRect)offsets;
- (void)addRotationFromBounds:(id)bounds;
@end

@implementation CMDrawableStyle

- (void)addPositionProperties:(CGRect)properties
{
  height = properties.size.height;
  width = properties.size.width;
  y = properties.origin.y;
  x = properties.origin.x;
  v9.receiver = self;
  v9.super_class = CMDrawableStyle;
  [(CMStyle *)&v9 appendPropertyForName:0x286EF5C90 stringWithColons:@":absolute;"];
  v8.receiver = self;
  v8.super_class = CMDrawableStyle;
  [(CMStyle *)&v8 appendPositionInfoFromRect:x, y, width, height];
}

- (void)addPositionUsingOffsets:(CGRect)offsets
{
  y = offsets.origin.y;
  x = offsets.origin.x;
  v9.receiver = self;
  v9.super_class = CMDrawableStyle;
  [(CMStyle *)&v9 appendSizeInfoFromRect:offsets.origin.x, offsets.origin.y, offsets.size.width, offsets.size.height];
  v8.receiver = self;
  v8.super_class = CMDrawableStyle;
  [(CMStyle *)&v8 appendPropertyForName:0x286EF67B0 length:1 unit:x];
  v7.receiver = self;
  v7.super_class = CMDrawableStyle;
  [(CMStyle *)&v7 appendPropertyForName:0x286EF67D0 length:1 unit:y];
  v6.receiver = self;
  v6.super_class = CMDrawableStyle;
  [(CMStyle *)&v6 appendPropertyForName:0x286EF5C90 stringWithColons:@":absolute;"];
}

- (void)addRotationFromBounds:(id)bounds
{
  boundsCopy = bounds;
  [boundsCopy rotation];
  if (v4 != 0.0)
  {
    v5 = MEMORY[0x277CCACA8];
    [boundsCopy rotation];
    v7 = [v5 stringWithFormat:@":%0.fdeg", v6];;
    [(CMStyle *)self appendPropertyForName:0x286F08210 stringWithColons:v7];
  }
}

@end