@interface MSVTrialExperiment
- (MSVTrialExperiment)initWithProjectID:(int64_t)d namespaceName:(id)name;
@end

@implementation MSVTrialExperiment

- (MSVTrialExperiment)initWithProjectID:(int64_t)d namespaceName:(id)name
{
  v5 = os_log_create("com.apple.amp.MediaServices", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AC81F000, v5, OS_LOG_TYPE_FAULT, "MSVTrialExperiment is currently not supported on this platform.", v7, 2u);
  }

  return 0;
}

@end