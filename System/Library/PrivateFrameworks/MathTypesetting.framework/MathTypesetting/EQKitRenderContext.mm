@interface EQKitRenderContext
- (EQKitRenderContext)initWithCGContext:(CGContext *)context;
- (void)dealloc;
- (void)setHighlightColor:(CGColor *)color;
@end

@implementation EQKitRenderContext

- (EQKitRenderContext)initWithCGContext:(CGContext *)context
{
  v6.receiver = self;
  v6.super_class = EQKitRenderContext;
  v4 = [(EQKitRenderContext *)&v6 init];
  if (v4)
  {
    CFRetain(context);
    v4->_selection = 0;
    v4->_cgContext = context;
    v4->_highlightColor = 0;
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_cgContext);
  highlightColor = self->_highlightColor;
  if (highlightColor)
  {
    CFRelease(highlightColor);
  }

  v4.receiver = self;
  v4.super_class = EQKitRenderContext;
  [(EQKitRenderContext *)&v4 dealloc];
}

- (void)setHighlightColor:(CGColor *)color
{
  highlightColor = self->_highlightColor;
  if (highlightColor != color)
  {
    if (highlightColor)
    {
      CFRelease(highlightColor);
    }

    self->_highlightColor = color;
    if (color)
    {

      CFRetain(color);
    }
  }
}

@end