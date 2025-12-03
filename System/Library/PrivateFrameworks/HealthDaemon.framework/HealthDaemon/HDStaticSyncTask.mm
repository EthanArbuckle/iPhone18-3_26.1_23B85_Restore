@interface HDStaticSyncTask
- (HDStaticSyncTask)initWithProfile:(id)profile options:(unint64_t)options storeIdentifier:(id)identifier;
- (id)runWithCompletion:(id)completion;
@end

@implementation HDStaticSyncTask

- (HDStaticSyncTask)initWithProfile:(id)profile options:(unint64_t)options storeIdentifier:(id)identifier
{
  profileCopy = profile;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = HDStaticSyncTask;
  v10 = [(HDStaticSyncTask *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_profile, profileCopy);
    v11->_options = options;
    v12 = HKCreateSerialDispatchQueue();
    queue = v11->_queue;
    v11->_queue = v12;

    if (!identifierCopy)
    {
      identifierCopy = [MEMORY[0x277CCAD78] UUID];
    }

    objc_storeStrong(&v11->_storeIdentifier, identifierCopy);
  }

  return v11;
}

- (id)runWithCompletion:(id)completion
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v3 = MEMORY[0x277CCAC48];

  return [v3 discreteProgressWithTotalUnitCount:0];
}

@end