@interface JFXEffectsPreviewGeneratorJob
- (JFXEffectsPreviewGeneratorJob)initWithRenderOutputs:(id)a3 callbackKeys:(id)a4;
@end

@implementation JFXEffectsPreviewGeneratorJob

- (JFXEffectsPreviewGeneratorJob)initWithRenderOutputs:(id)a3 callbackKeys:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = JFXEffectsPreviewGeneratorJob;
  v9 = [(JFXEffectsPreviewGeneratorJob *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_outputNodes, a3);
    objc_storeStrong(&v10->_callbackKeys, a4);
  }

  return v10;
}

@end