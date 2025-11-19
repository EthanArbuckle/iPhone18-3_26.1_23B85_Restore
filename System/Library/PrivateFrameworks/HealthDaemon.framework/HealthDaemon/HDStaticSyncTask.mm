@interface HDStaticSyncTask
- (HDStaticSyncTask)initWithProfile:(id)a3 options:(unint64_t)a4 storeIdentifier:(id)a5;
- (id)runWithCompletion:(id)a3;
@end

@implementation HDStaticSyncTask

- (HDStaticSyncTask)initWithProfile:(id)a3 options:(unint64_t)a4 storeIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = HDStaticSyncTask;
  v10 = [(HDStaticSyncTask *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_profile, v8);
    v11->_options = a4;
    v12 = HKCreateSerialDispatchQueue();
    queue = v11->_queue;
    v11->_queue = v12;

    if (!v9)
    {
      v9 = [MEMORY[0x277CCAD78] UUID];
    }

    objc_storeStrong(&v11->_storeIdentifier, v9);
  }

  return v11;
}

- (id)runWithCompletion:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v3 = MEMORY[0x277CCAC48];

  return [v3 discreteProgressWithTotalUnitCount:0];
}

@end