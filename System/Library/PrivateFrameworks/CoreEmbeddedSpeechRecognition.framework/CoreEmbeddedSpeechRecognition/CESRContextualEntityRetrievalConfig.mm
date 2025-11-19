@interface CESRContextualEntityRetrievalConfig
- (CESRContextualEntityRetrievalConfig)initWithMaxNumEnrolled:(unint64_t)a3 retrievalTimeout:(double)a4 maxEntityChars:(unint64_t)a5 maxEntityWords:(unint64_t)a6 rejectedContextTypes:(id)a7 rejectedBundleTypes:(id)a8 enabledTasks:(id)a9;
@end

@implementation CESRContextualEntityRetrievalConfig

- (CESRContextualEntityRetrievalConfig)initWithMaxNumEnrolled:(unint64_t)a3 retrievalTimeout:(double)a4 maxEntityChars:(unint64_t)a5 maxEntityWords:(unint64_t)a6 rejectedContextTypes:(id)a7 rejectedBundleTypes:(id)a8 enabledTasks:(id)a9
{
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v23.receiver = self;
  v23.super_class = CESRContextualEntityRetrievalConfig;
  v20 = [(CESRContextualEntityRetrievalConfig *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_maxNumEnrolled = a3;
    v20->_retrievalTimeout = a4;
    v20->_maxEntityChars = a5;
    v20->_maxEntityWords = a6;
    objc_storeStrong(&v20->_rejectedContextTypes, a7);
    objc_storeStrong(&v21->_rejectedBundleTypes, a8);
    objc_storeStrong(&v21->_enabledTasks, a9);
  }

  return v21;
}

@end