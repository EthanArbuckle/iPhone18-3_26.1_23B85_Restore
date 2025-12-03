@interface CLKUICurvedLayoutManager
- (CLKUICurvedLayoutManager)init;
- (void)showCGGlyphs:(const unsigned __int16 *)glyphs positions:(const CGPoint *)positions count:(int64_t)count font:(id)font textMatrix:(CGAffineTransform *)matrix attributes:(id)attributes inContext:(CGContext *)context;
@end

@implementation CLKUICurvedLayoutManager

- (CLKUICurvedLayoutManager)init
{
  v3.receiver = self;
  v3.super_class = CLKUICurvedLayoutManager;
  return [(CLKUICurvedLayoutManager *)&v3 init];
}

- (void)showCGGlyphs:(const unsigned __int16 *)glyphs positions:(const CGPoint *)positions count:(int64_t)count font:(id)font textMatrix:(CGAffineTransform *)matrix attributes:(id)attributes inContext:(CGContext *)context
{
  attributesCopy = attributes;
  fontCopy = font;
  CGContextSetShouldSubpixelQuantizeFonts(context, 0);
  v19.receiver = self;
  v19.super_class = CLKUICurvedLayoutManager;
  v17 = *&matrix->c;
  v18[0] = *&matrix->a;
  v18[1] = v17;
  v18[2] = *&matrix->tx;
  [(CLKUICurvedLayoutManager *)&v19 showCGGlyphs:glyphs positions:positions count:count font:fontCopy textMatrix:v18 attributes:attributesCopy inContext:context];
}

@end