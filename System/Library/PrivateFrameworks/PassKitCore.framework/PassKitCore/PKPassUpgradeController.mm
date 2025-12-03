@interface PKPassUpgradeController
- (PKPassUpgradeController)initWithWebService:(id)service;
- (void)dealloc;
@end

@implementation PKPassUpgradeController

- (PKPassUpgradeController)initWithWebService:(id)service
{
  serviceCopy = service;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__PKPassUpgradeController_initWithWebService___block_invoke;
  v10[3] = &unk_1E79E27A0;
  selfCopy = self;
  v5 = serviceCopy;
  v12 = v5;
  v9.receiver = selfCopy;
  v9.super_class = PKPassUpgradeController;
  v6 = [(PKPassUpgradeControllerBase *)&v9 initWithWebService:v5 addPaymentPassToLibrary:v10];
  if (v6)
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__handleScriptsExecutedNotification_ name:@"com.apple.stockholm.tsm.script.executed" object:0];
  }

  return v6;
}

void __46__PKPassUpgradeController_initWithWebService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 paymentWebService];
  v9 = [v8 targetDevice];
  v10 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__PKPassUpgradeController_initWithWebService___block_invoke_2;
  v12[3] = &unk_1E79C4E78;
  v13 = v5;
  v11 = v5;
  [v9 paymentWebService:v10 addPaymentPass:v7 withCompletionHandlerV2:v12];
}

void __46__PKPassUpgradeController_initWithWebService___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v3;
    if (v3)
    {
      (*(v4 + 16))(v4, 0);
    }

    else
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPaymentErrorDomain" code:3 userInfo:0];
      (*(v4 + 16))(v4, v5);
    }

    v3 = v6;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKPassUpgradeController;
  [(PKPassUpgradeController *)&v4 dealloc];
}

@end