@interface BWInferenceEngineConfiguration
- (BWInferenceEngineConfiguration)init;
- (void)dealloc;
- (void)setInferenceRequirements:(id)a3;
@end

@implementation BWInferenceEngineConfiguration

- (BWInferenceEngineConfiguration)init
{
  v5.receiver = self;
  v5.super_class = BWInferenceEngineConfiguration;
  v2 = [(BWInferenceEngineConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_connection = 0;
    v2->_dependencyProvider = objc_alloc_init(BWInferenceDependencyProvider);
    v3->_inferenceRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_videoRequirementsPossiblyReceivingAttachedMedia = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_videoRequirementsPossiblyProvidingAttachedMedia = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_lazyInputVideoRequirementsByAttachedMediaKey = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3->_lazyOutputVideoRequirementsByAttachedMediaKey = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3->_unresolvedAttachedMediaKeysPreventingProvidedVideoRequirements = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  return v3;
}

- (void)setInferenceRequirements:(id)a3
{
  inferenceRequirements = self->_inferenceRequirements;
  if (inferenceRequirements != a3)
  {

    self->_inferenceRequirements = a3;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceEngineConfiguration;
  [(BWInferenceEngineConfiguration *)&v3 dealloc];
}

@end