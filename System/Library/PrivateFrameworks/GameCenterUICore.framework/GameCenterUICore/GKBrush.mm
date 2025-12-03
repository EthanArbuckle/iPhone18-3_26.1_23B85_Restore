@interface GKBrush
+ (id)brush;
- (CGSize)sizeForInput:(id)input;
- (double)scaleForInput:(id)input;
- (id)copyWithZone:(_NSZone *)zone;
- (id)drawnImageForSize:(CGSize)size opaque:(BOOL)opaque input:(id)input;
@end

@implementation GKBrush

+ (id)brush
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (CGSize)sizeForInput:(id)input
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)scaleForInput:(id)input
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

- (id)drawnImageForSize:(CGSize)size opaque:(BOOL)opaque input:(id)input
{
  opaqueCopy = opaque;
  height = size.height;
  width = size.width;
  inputCopy = input;
  [(GKBrush *)self scaleForInput:inputCopy];
  v11 = [[GKImageContext alloc] initWithSize:opaqueCopy scale:width options:height, v10];
  cGContext = [(GKImageContext *)v11 CGContext];
  UIGraphicsPushContext(cGContext);
  [(GKBrush *)self drawInRect:cGContext withContext:inputCopy input:0.0, 0.0, width, height];

  UIGraphicsPopContext();
  image = [(GKImageContext *)v11 image];

  return image;
}

@end