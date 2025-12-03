@interface DOCTagSymbolImageConfiguration
- (DOCTagSymbolImageConfiguration)initWithTag:(id)tag color:(id)color variant:(unint64_t)variant differentiateWithShapes:(BOOL)shapes;
- (id)loadedImageForSettings;
@end

@implementation DOCTagSymbolImageConfiguration

- (DOCTagSymbolImageConfiguration)initWithTag:(id)tag color:(id)color variant:(unint64_t)variant differentiateWithShapes:(BOOL)shapes
{
  tagCopy = tag;
  colorCopy = color;
  v16.receiver = self;
  v16.super_class = DOCTagSymbolImageConfiguration;
  v13 = [(DOCTagSymbolImageConfiguration *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_tag, tag);
    objc_storeStrong(&v14->_color, color);
    v14->_variant = variant;
    v14->_differentiateWithShapes = shapes;
  }

  return v14;
}

- (id)loadedImageForSettings
{
  v3 = MEMORY[0x277D755B8];
  variant = [(DOCTagSymbolImageConfiguration *)self variant];
  differentiateWithShapes = [(DOCTagSymbolImageConfiguration *)self differentiateWithShapes];
  v6 = [(DOCTagSymbolImageConfiguration *)self tag];
  labelIndex = [v6 labelIndex];
  color = [(DOCTagSymbolImageConfiguration *)self color];
  v9 = [v3 _doc_tagImageForRenderingVariant:variant differentiateWithShapes:differentiateWithShapes tagColorType:labelIndex renderedColor:color];

  return v9;
}

@end