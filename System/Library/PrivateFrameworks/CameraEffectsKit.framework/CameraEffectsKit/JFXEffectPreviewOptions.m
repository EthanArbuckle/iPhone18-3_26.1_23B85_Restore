@interface JFXEffectPreviewOptions
- (id)copyWithZone:(_NSZone *)a3;
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
    v4 = [MEMORY[0x277D415E0] rec709GammaColorSpace];
    outputColorSpace = v3->_outputColorSpace;
    v3->_outputColorSpace = v4;

    v3->_parentCode = -1;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initPreviewOptions];
  *(v4 + 8) = self->_parentCode;
  objc_storeStrong((v4 + 24), self->_outputColorSpace);
  *(v4 + 16) = self->_quality;
  return v4;
}

@end