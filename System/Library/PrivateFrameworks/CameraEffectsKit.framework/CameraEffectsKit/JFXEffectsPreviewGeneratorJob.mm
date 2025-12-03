@interface JFXEffectsPreviewGeneratorJob
- (JFXEffectsPreviewGeneratorJob)initWithRenderOutputs:(id)outputs callbackKeys:(id)keys;
@end

@implementation JFXEffectsPreviewGeneratorJob

- (JFXEffectsPreviewGeneratorJob)initWithRenderOutputs:(id)outputs callbackKeys:(id)keys
{
  outputsCopy = outputs;
  keysCopy = keys;
  v12.receiver = self;
  v12.super_class = JFXEffectsPreviewGeneratorJob;
  v9 = [(JFXEffectsPreviewGeneratorJob *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_outputNodes, outputs);
    objc_storeStrong(&v10->_callbackKeys, keys);
  }

  return v10;
}

@end