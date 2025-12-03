@interface JFXEffectPreviewOptions
- (id)copyWithZone:(_NSZone *)zone;
- (id)initPreviewOptions;
@end

@implementation JFXEffectPreviewOptions

- (id)initPreviewOptions
{
  v7.receiver = self;
  v7.super_class = JFXEffectPreviewOptions;
  v2 = [(JFXEffectPreviewOptions *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_quality = 0;
    rec709GammaColorSpace = [MEMORY[0x277D415E0] rec709GammaColorSpace];
    outputColorSpace = v3->_outputColorSpace;
    v3->_outputColorSpace = rec709GammaColorSpace;

    v3->_parentCode = -1;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  initPreviewOptions = [objc_alloc(objc_opt_class()) initPreviewOptions];
  *(initPreviewOptions + 8) = self->_parentCode;
  objc_storeStrong((initPreviewOptions + 24), self->_outputColorSpace);
  *(initPreviewOptions + 16) = self->_quality;
  return initPreviewOptions;
}

@end