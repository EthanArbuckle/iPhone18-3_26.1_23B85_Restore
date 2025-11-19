@interface NTKFaceViewComplicationFactory
- (UIColor)foregroundColor;
- (UIColor)platterColor;
- (double)alpha;
- (id)initForDevice:(id)a3;
- (void)setAlpha:(double)a3 faceView:(id)a4;
- (void)setForegroundColor:(id)a3 faceView:(id)a4;
- (void)setPlatterColor:(id)a3 faceView:(id)a4;
@end

@implementation NTKFaceViewComplicationFactory

- (id)initForDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKFaceViewComplicationFactory;
  v6 = [(NTKFaceViewComplicationFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v7->_contentSpecificAnimationDuration = 0.45;
  }

  return v7;
}

- (void)setForegroundColor:(id)a3 faceView:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([(UIColor *)self->_foregroundColor isEqual:v7]& 1) == 0)
  {
    objc_storeStrong(&self->_foregroundColor, a3);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__NTKFaceViewComplicationFactory_setForegroundColor_faceView___block_invoke;
    v9[3] = &unk_27877F148;
    v9[4] = self;
    v10 = v8;
    [v10 enumerateComplicationDisplayWrappersWithBlock:v9];
  }
}

void __62__NTKFaceViewComplicationFactory_setForegroundColor_faceView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 display];
  [v5 configureComplicationView:v7 forSlot:v6 faceView:*(a1 + 40)];
}

- (void)setPlatterColor:(id)a3 faceView:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([(UIColor *)self->_platterColor isEqual:v7]& 1) == 0)
  {
    objc_storeStrong(&self->_platterColor, a3);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__NTKFaceViewComplicationFactory_setPlatterColor_faceView___block_invoke;
    v9[3] = &unk_27877F148;
    v9[4] = self;
    v10 = v8;
    [v10 enumerateComplicationDisplayWrappersWithBlock:v9];
  }
}

void __59__NTKFaceViewComplicationFactory_setPlatterColor_faceView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 display];
  [v5 configureComplicationView:v7 forSlot:v6 faceView:*(a1 + 40)];
}

- (void)setAlpha:(double)a3 faceView:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_alpha != a3)
  {
    self->_alpha = a3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__NTKFaceViewComplicationFactory_setAlpha_faceView___block_invoke;
    v8[3] = &unk_27877F148;
    v8[4] = self;
    v9 = v6;
    [v9 enumerateComplicationDisplayWrappersWithBlock:v8];
  }
}

void __52__NTKFaceViewComplicationFactory_setAlpha_faceView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 display];
  [v5 configureComplicationView:v7 forSlot:v6 faceView:*(a1 + 40)];
}

- (UIColor)foregroundColor
{
  foregroundColorProviderBlock = self->_foregroundColorProviderBlock;
  if (foregroundColorProviderBlock)
  {
    v4 = foregroundColorProviderBlock[2](foregroundColorProviderBlock, a2);
    foregroundColor = v4;
    if (!v4)
    {
      foregroundColor = self->_foregroundColor;
    }

    v6 = foregroundColor;
  }

  else
  {
    v6 = self->_foregroundColor;
  }

  return v6;
}

- (UIColor)platterColor
{
  platterColorProviderBlock = self->_platterColorProviderBlock;
  if (platterColorProviderBlock)
  {
    v4 = platterColorProviderBlock[2](platterColorProviderBlock, a2);
    platterColor = v4;
    if (!v4)
    {
      platterColor = self->_platterColor;
    }

    v6 = platterColor;
  }

  else
  {
    v6 = self->_platterColor;
  }

  return v6;
}

- (double)alpha
{
  alphaProviderBlock = self->_alphaProviderBlock;
  if (!alphaProviderBlock)
  {
    return self->_alpha;
  }

  alphaProviderBlock[2]();
  return result;
}

@end