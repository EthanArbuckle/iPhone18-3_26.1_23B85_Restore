@interface CUIMutableNamedLayerVectorSVGImage
- (CGColor)color;
- (CUIMutableNamedLayerVectorSVGImage)init;
- (id)gradient;
- (void)dealloc;
- (void)setAppearance:(id)a3;
- (void)setColor:(CGColor *)a3;
- (void)setGradient:(id)a3;
- (void)setSvgDocument:(CGSVGDocument *)a3;
- (void)setSvgDocumentURL:(id)a3;
@end

@implementation CUIMutableNamedLayerVectorSVGImage

- (CUIMutableNamedLayerVectorSVGImage)init
{
  v4.receiver = self;
  v4.super_class = CUIMutableNamedLayerVectorSVGImage;
  v2 = [(CUIMutableNamedLayerVectorSVGImage *)&v4 init];
  [(CUINamedLayerVectorSVGImage *)v2 setOpacity:1.0];
  return v2;
}

- (void)dealloc
{
  svgDocument = self->_svgDocument;
  if (svgDocument)
  {
    CFRelease(svgDocument);
  }

  v4.receiver = self;
  v4.super_class = CUIMutableNamedLayerVectorSVGImage;
  [(CUINamedLayerVectorSVGImage *)&v4 dealloc];
}

- (void)setSvgDocumentURL:(id)a3
{
  [(CUIMutableNamedLayerVectorSVGImage *)self setSvgDocument:CGSVGDocumentCreateFromURL()];

  CGSVGDocumentRelease();
}

- (void)setSvgDocument:(CGSVGDocument *)a3
{
  svgDocument = self->_svgDocument;
  if (svgDocument != a3)
  {
    if (svgDocument)
    {
      CFRelease(svgDocument);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    self->_svgDocument = a3;
  }
}

- (void)setColor:(CGColor *)a3
{
  gradientOrColor = self->_gradientOrColor;
  if (gradientOrColor != a3)
  {

    v6 = a3;
    self->_gradientOrColor = a3;
  }
}

- (void)setGradient:(id)a3
{
  gradientOrColor = self->_gradientOrColor;
  if (gradientOrColor != a3)
  {

    v6 = a3;
    self->_gradientOrColor = a3;
  }
}

- (CGColor)color
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  else
  {
    return self->_gradientOrColor;
  }
}

- (id)gradient
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return self->_gradientOrColor;
  }

  else
  {
    return 0;
  }
}

- (void)setAppearance:(id)a3
{
  appearance = self->_appearance;
  if (appearance != a3)
  {

    self->_appearance = a3;
  }
}

@end