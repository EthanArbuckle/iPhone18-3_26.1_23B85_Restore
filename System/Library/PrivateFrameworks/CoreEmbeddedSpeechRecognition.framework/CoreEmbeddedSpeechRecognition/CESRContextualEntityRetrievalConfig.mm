@interface CESRContextualEntityRetrievalConfig
- (CESRContextualEntityRetrievalConfig)initWithMaxNumEnrolled:(unint64_t)enrolled retrievalTimeout:(double)timeout maxEntityChars:(unint64_t)chars maxEntityWords:(unint64_t)words rejectedContextTypes:(id)types rejectedBundleTypes:(id)bundleTypes enabledTasks:(id)tasks;
@end

@implementation CESRContextualEntityRetrievalConfig

- (CESRContextualEntityRetrievalConfig)initWithMaxNumEnrolled:(unint64_t)enrolled retrievalTimeout:(double)timeout maxEntityChars:(unint64_t)chars maxEntityWords:(unint64_t)words rejectedContextTypes:(id)types rejectedBundleTypes:(id)bundleTypes enabledTasks:(id)tasks
{
  typesCopy = types;
  bundleTypesCopy = bundleTypes;
  tasksCopy = tasks;
  v23.receiver = self;
  v23.super_class = CESRContextualEntityRetrievalConfig;
  v20 = [(CESRContextualEntityRetrievalConfig *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_maxNumEnrolled = enrolled;
    v20->_retrievalTimeout = timeout;
    v20->_maxEntityChars = chars;
    v20->_maxEntityWords = words;
    objc_storeStrong(&v20->_rejectedContextTypes, types);
    objc_storeStrong(&v21->_rejectedBundleTypes, bundleTypes);
    objc_storeStrong(&v21->_enabledTasks, tasks);
  }

  return v21;
}

@end