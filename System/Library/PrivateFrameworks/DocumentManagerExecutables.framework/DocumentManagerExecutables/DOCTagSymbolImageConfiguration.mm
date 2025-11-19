@interface DOCTagSymbolImageConfiguration
- (DOCTagSymbolImageConfiguration)initWithTag:(id)a3 color:(id)a4 variant:(unint64_t)a5 differentiateWithShapes:(BOOL)a6;
- (id)loadedImageForSettings;
@end

@implementation DOCTagSymbolImageConfiguration

- (DOCTagSymbolImageConfiguration)initWithTag:(id)a3 color:(id)a4 variant:(unint64_t)a5 differentiateWithShapes:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = DOCTagSymbolImageConfiguration;
  v13 = [(DOCTagSymbolImageConfiguration *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_tag, a3);
    objc_storeStrong(&v14->_color, a4);
    v14->_variant = a5;
    v14->_differentiateWithShapes = a6;
  }

  return v14;
}

- (id)loadedImageForSettings
{
  v3 = MEMORY[0x277D755B8];
  v4 = [(DOCTagSymbolImageConfiguration *)self variant];
  v5 = [(DOCTagSymbolImageConfiguration *)self differentiateWithShapes];
  v6 = [(DOCTagSymbolImageConfiguration *)self tag];
  v7 = [v6 labelIndex];
  v8 = [(DOCTagSymbolImageConfiguration *)self color];
  v9 = [v3 _doc_tagImageForRenderingVariant:v4 differentiateWithShapes:v5 tagColorType:v7 renderedColor:v8];

  return v9;
}

@end