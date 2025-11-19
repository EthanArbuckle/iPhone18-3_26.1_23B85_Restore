@interface CRKClassKitPersonIDObservation
- (CRKClassKitPersonIDObservation)initWithPersonIDs:(id)a3 classKitFacade:(id)a4 block:(id)a5;
- (void)cancel;
- (void)dealloc;
@end

@implementation CRKClassKitPersonIDObservation

- (void)dealloc
{
  [(CRKClassKitPersonIDObservation *)self cancel];
  v3.receiver = self;
  v3.super_class = CRKClassKitPersonIDObservation;
  [(CRKClassKitPersonIDObservation *)&v3 dealloc];
}

- (CRKClassKitPersonIDObservation)initWithPersonIDs:(id)a3 classKitFacade:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CRKClassKitPersonIDObservation;
  v11 = [(CRKClassKitPersonIDObservation *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_classKitFacade, a4);
    v13 = [(CRKClassKitFacade *)v12->_classKitFacade personObserverWithPersonIDs:v8 sortDescriptors:0];
    dataObserver = v12->_dataObserver;
    v12->_dataObserver = v13;

    if (v12->_dataObserver)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __73__CRKClassKitPersonIDObservation_initWithPersonIDs_classKitFacade_block___block_invoke;
      v17[3] = &unk_278DC1CA0;
      v18 = v10;
      [(CRKClassKitDataObserver *)v12->_dataObserver setDataChanged:v17];
      [(CRKClassKitFacade *)v12->_classKitFacade registerDataObserver:v12->_dataObserver];
      v15 = v18;
    }

    else
    {
      v15 = _CRKLogASM_7();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CRKClassKitPersonIDObservation initWithPersonIDs:v15 classKitFacade:? block:?];
      }
    }
  }

  return v12;
}

void __73__CRKClassKitPersonIDObservation_initWithPersonIDs_classKitFacade_block___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CRKClassKitPersonIDObservation_initWithPersonIDs_classKitFacade_block___block_invoke_2;
  block[3] = &unk_278DC1C78;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __73__CRKClassKitPersonIDObservation_initWithPersonIDs_classKitFacade_block___block_invoke_2(uint64_t a1)
{
  v2 = _CRKLogASM_7();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243550000, v2, OS_LOG_TYPE_DEFAULT, "ClassKit person data observer fired", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)cancel
{
  v3 = [(CRKClassKitPersonIDObservation *)self dataObserver];

  if (v3)
  {
    v5 = [(CRKClassKitPersonIDObservation *)self classKitFacade];
    v4 = [(CRKClassKitPersonIDObservation *)self dataObserver];
    [v5 deregisterDataObserver:v4];
  }
}

@end