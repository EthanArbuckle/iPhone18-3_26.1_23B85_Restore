@interface CESRSpeechProfileEvaluationStatus
+ (id)sharedStatus;
- (BOOL)isEvaluationEnabled;
- (void)setEvaluationEnabled:(BOOL)a3;
@end

@implementation CESRSpeechProfileEvaluationStatus

- (void)setEvaluationEnabled:(BOOL)a3
{
  if (!+[CESRUtilities isCustomerInstall])
  {
    atomic_store(a3, &self->_isEvaluationEnabled);
  }
}

- (BOOL)isEvaluationEnabled
{
  if (+[CESRUtilities isCustomerInstall])
  {
    v3 = 0;
  }

  else
  {
    v3 = atomic_load(&self->_isEvaluationEnabled);
  }

  return v3 & 1;
}

+ (id)sharedStatus
{
  if (sharedStatus_onceToken != -1)
  {
    dispatch_once(&sharedStatus_onceToken, &__block_literal_global_4269);
  }

  v3 = sharedStatus_sharedStatus;

  return v3;
}

uint64_t __49__CESRSpeechProfileEvaluationStatus_sharedStatus__block_invoke()
{
  v0 = objc_alloc_init(CESRSpeechProfileEvaluationStatus);
  v1 = sharedStatus_sharedStatus;
  sharedStatus_sharedStatus = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end