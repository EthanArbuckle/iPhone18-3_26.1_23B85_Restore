@interface SGHKHealthStore
- (SGHKHealthStore)init;
@end

@implementation SGHKHealthStore

- (SGHKHealthStore)init
{
  v8.receiver = self;
  v8.super_class = SGHKHealthStore;
  v2 = [(SGHKHealthStore *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getHKHealthStoreClass_softClass;
    v13 = getHKHealthStoreClass_softClass;
    if (!getHKHealthStoreClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getHKHealthStoreClass_block_invoke;
      v9[3] = &unk_278955BF0;
      v9[4] = &v10;
      __getHKHealthStoreClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_opt_new();
    healthStore = v2->_healthStore;
    v2->_healthStore = v5;
  }

  return v2;
}

@end