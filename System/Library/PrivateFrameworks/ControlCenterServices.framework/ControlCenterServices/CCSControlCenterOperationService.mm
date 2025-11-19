@interface CCSControlCenterOperationService
+ (id)sharedService;
- (CCSControlCenterOperationServiceDelegate)delegate;
- (void)handleControlCenterOperationType:(int64_t)a3 completionHandler:(id)a4;
- (void)handleIconElementRequest:(id)a3 completionHandler:(id)a4;
- (void)requestIconElementState:(id)a3 completionHandler:(id)a4;
- (void)resetToDefaultLayoutWithCompletionHandler:(id)a3;
@end

@implementation CCSControlCenterOperationService

+ (id)sharedService
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CCSControlCenterOperationService_sharedService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, block);
  }

  v2 = sharedService_instance;

  return v2;
}

uint64_t __49__CCSControlCenterOperationService_sharedService__block_invoke(uint64_t a1)
{
  sharedService_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)handleIconElementRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained handleIconElementRequestWithOperationService:self iconElementRequest:v7 completionHandler:v6];
}

- (void)handleControlCenterOperationType:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained handleControlCenterOperationTypeWithOperationService:self operationType:a3 completionHandler:v6];
}

- (void)requestIconElementState:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained requestIconElementStateWithOperationService:self iconElementRequest:v7 completionHandler:v6];
}

- (void)resetToDefaultLayoutWithCompletionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained resetToDefaultLayoutWithCompletionHandler:v4];
}

- (CCSControlCenterOperationServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end