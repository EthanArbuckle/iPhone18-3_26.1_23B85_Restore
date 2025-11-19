@interface EQKitRenderContext
- (EQKitRenderContext)initWithCGContext:(CGContext *)a3;
- (void)dealloc;
- (void)setHighlightColor:(CGColor *)a3;
@end

@implementation EQKitRenderContext

- (EQKitRenderContext)initWithCGContext:(CGContext *)a3
{
  v6.receiver = self;
  v6.super_class = EQKitRenderContext;
  v4 = [(EQKitRenderContext *)&v6 init];
  if (v4)
  {
    CFRetain(a3);
    v4->_selection = 0;
    v4->_cgContext = a3;
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

- (void)setHighlightColor:(CGColor *)a3
{
  highlightColor = self->_highlightColor;
  if (highlightColor != a3)
  {
    if (highlightColor)
    {
      CFRelease(highlightColor);
    }

    self->_highlightColor = a3;
    if (a3)
    {

      CFRetain(a3);
    }
  }
}

@end