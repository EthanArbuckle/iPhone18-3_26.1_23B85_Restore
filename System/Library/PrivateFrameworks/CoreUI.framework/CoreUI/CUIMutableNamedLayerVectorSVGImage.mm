@interface CUIMutableNamedLayerVectorSVGImage
- (CGColor)color;
- (CUIMutableNamedLayerVectorSVGImage)init;
- (id)gradient;
- (void)dealloc;
- (void)setAppearance:(id)appearance;
- (void)setColor:(CGColor *)color;
- (void)setGradient:(id)gradient;
- (void)setSvgDocument:(CGSVGDocument *)document;
- (void)setSvgDocumentURL:(id)l;
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

- (void)setSvgDocumentURL:(id)l
{
  [(CUIMutableNamedLayerVectorSVGImage *)self setSvgDocument:CGSVGDocumentCreateFromURL()];

  CGSVGDocumentRelease();
}

- (void)setSvgDocument:(CGSVGDocument *)document
{
  svgDocument = self->_svgDocument;
  if (svgDocument != document)
  {
    if (svgDocument)
    {
      CFRelease(svgDocument);
    }

    if (document)
    {
      CFRetain(document);
    }

    self->_svgDocument = document;
  }
}

- (void)setColor:(CGColor *)color
{
  gradientOrColor = self->_gradientOrColor;
  if (gradientOrColor != color)
  {

    colorCopy = color;
    self->_gradientOrColor = color;
  }
}

- (void)setGradient:(id)gradient
{
  gradientOrColor = self->_gradientOrColor;
  if (gradientOrColor != gradient)
  {

    gradientCopy = gradient;
    self->_gradientOrColor = gradient;
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

- (void)setAppearance:(id)appearance
{
  appearance = self->_appearance;
  if (appearance != appearance)
  {

    self->_appearance = appearance;
  }
}

@end