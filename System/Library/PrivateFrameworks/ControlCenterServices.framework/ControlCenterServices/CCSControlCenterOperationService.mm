@interface CCSControlCenterOperationService
+ (id)sharedService;
- (CCSControlCenterOperationServiceDelegate)delegate;
- (void)handleControlCenterOperationType:(int64_t)type completionHandler:(id)handler;
- (void)handleIconElementRequest:(id)request completionHandler:(id)handler;
- (void)requestIconElementState:(id)state completionHandler:(id)handler;
- (void)resetToDefaultLayoutWithCompletionHandler:(id)handler;
@end

@implementation CCSControlCenterOperationService

+ (id)sharedService
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CCSControlCenterOperationService_sharedService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)handleIconElementRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained handleIconElementRequestWithOperationService:self iconElementRequest:requestCopy completionHandler:handlerCopy];
}

- (void)handleControlCenterOperationType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained handleControlCenterOperationTypeWithOperationService:self operationType:type completionHandler:handlerCopy];
}

- (void)requestIconElementState:(id)state completionHandler:(id)handler
{
  handlerCopy = handler;
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained requestIconElementStateWithOperationService:self iconElementRequest:stateCopy completionHandler:handlerCopy];
}

- (void)resetToDefaultLayoutWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained resetToDefaultLayoutWithCompletionHandler:handlerCopy];
}

- (CCSControlCenterOperationServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end