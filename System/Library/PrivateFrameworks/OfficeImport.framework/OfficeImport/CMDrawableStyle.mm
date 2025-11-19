@interface CMDrawableStyle
- (void)addPositionProperties:(CGRect)a3;
- (void)addPositionUsingOffsets:(CGRect)a3;
- (void)addRotationFromBounds:(id)a3;
@end

@implementation CMDrawableStyle

- (void)addPositionProperties:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = CMDrawableStyle;
  [(CMStyle *)&v9 appendPropertyForName:0x286EF5C90 stringWithColons:@":absolute;"];
  v8.receiver = self;
  v8.super_class = CMDrawableStyle;
  [(CMStyle *)&v8 appendPositionInfoFromRect:x, y, width, height];
}

- (void)addPositionUsingOffsets:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = CMDrawableStyle;
  [(CMStyle *)&v9 appendSizeInfoFromRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)addRotationFromBounds:(id)a3
{
  v8 = a3;
  [v8 rotation];
  if (v4 != 0.0)
  {
    v5 = MEMORY[0x277CCACA8];
    [v8 rotation];
    v7 = [v5 stringWithFormat:@":%0.fdeg", v6];;
    [(CMStyle *)self appendPropertyForName:0x286F08210 stringWithColons:v7];
  }
}

@end