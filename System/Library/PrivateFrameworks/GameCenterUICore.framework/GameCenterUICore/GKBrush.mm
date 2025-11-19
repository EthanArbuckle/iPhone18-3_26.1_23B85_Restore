@interface GKBrush
+ (id)brush;
- (CGSize)sizeForInput:(id)a3;
- (double)scaleForInput:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)drawnImageForSize:(CGSize)a3 opaque:(BOOL)a4 input:(id)a5;
@end

@implementation GKBrush

+ (id)brush
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (CGSize)sizeForInput:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)scaleForInput:(id)a3
{
  if (scaleForInput__onceToken != -1)
  {
    [GKBrush scaleForInput:];
  }

  return *&scaleForInput__defaultScale;
}

void __25__GKBrush_scaleForInput___block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  scaleForInput__defaultScale = v0;
}

- (id)drawnImageForSize:(CGSize)a3 opaque:(BOOL)a4 input:(id)a5
{
  v5 = a4;
  height = a3.height;
  width = a3.width;
  v9 = a5;
  [(GKBrush *)self scaleForInput:v9];
  v11 = [[GKImageContext alloc] initWithSize:v5 scale:width options:height, v10];
  v12 = [(GKImageContext *)v11 CGContext];
  UIGraphicsPushContext(v12);
  [(GKBrush *)self drawInRect:v12 withContext:v9 input:0.0, 0.0, width, height];

  UIGraphicsPopContext();
  v13 = [(GKImageContext *)v11 image];

  return v13;
}

@end