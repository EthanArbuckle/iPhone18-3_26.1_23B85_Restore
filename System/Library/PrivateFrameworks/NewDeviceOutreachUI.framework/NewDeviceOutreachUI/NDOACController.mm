@interface NDOACController
+ (NDOACController)sharedController;
- (NDOACController)initWithSerialNumber:(id)number;
- (NDOACController)initWithSerialNumber:(id)number updateHandler:(id)handler;
- (NSArray)specifiers;
- (PSListController)parentViewController;
- (void)forceUpdateSpecifiersAndForceUpdateFollowup:(BOOL)followup withCompletionHandler:(id)handler;
- (void)loadSpecifiers;
- (void)updateSpecifiersWithCompletionHandler:(id)handler;
@end

@implementation NDOACController

+ (NDOACController)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[NDOACController sharedController];
  }

  v3 = sharedController_sharedController;

  return v3;
}

uint64_t __35__NDOACController_sharedController__block_invoke()
{
  sharedController_sharedController = [[NDOACController alloc] initWithSerialNumber:0];

  return MEMORY[0x2821F96F8]();
}

- (NDOACController)initWithSerialNumber:(id)number
{
  v25 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v18.receiver = self;
  v18.super_class = NDOACController;
  v5 = [(NDOACController *)&v18 init];
  v6 = v5;
  if (v5)
  {
    [(NDOACController *)v5 setSpecifierIDToInsertAfter:@"SerialNumber"];
    v7 = objc_opt_new();
    v8 = v7;
    if (numberCopy)
    {
      defaultDevice = [v7 defaultDevice];
      serialNumber = [defaultDevice serialNumber];
      -[NDOACController setIsDefaultDevice:](v6, "setIsDefaultDevice:", [serialNumber isEqualToString:numberCopy]);
    }

    else
    {
      [(NDOACController *)v6 setIsDefaultDevice:1];
    }

    v11 = _NDOLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      isDefaultDevice = [(NDOACController *)v6 isDefaultDevice];
      *buf = 136315650;
      v20 = "[NDOACController initWithSerialNumber:]";
      v21 = 2112;
      v22 = numberCopy;
      v23 = 1024;
      v24 = isDefaultDevice;
      _os_log_impl(&dword_25BD8D000, v11, OS_LOG_TYPE_DEFAULT, "%s: initWithSerialNumber: %@ %d", buf, 0x1Cu);
    }

    v13 = [[NDOSpecifierDataSource alloc] initWithDefaultDevice:[(NDOACController *)v6 isDefaultDevice]];
    [(NDOACController *)v6 setNdoSpecifierDataSource:v13];

    ndoSpecifierDataSource = [(NDOACController *)v6 ndoSpecifierDataSource];
    [ndoSpecifierDataSource setSerialNumber:numberCopy];

    ndoSpecifierDataSource2 = [(NDOACController *)v6 ndoSpecifierDataSource];
    [ndoSpecifierDataSource2 setHostingController:v6];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NDOACController)initWithSerialNumber:(id)number updateHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = NDOACController;
  v8 = [(NDOACController *)&v16 init];
  if (v8)
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[NDOACController initWithSerialNumber:updateHandler:]";
      v19 = 2112;
      v20 = numberCopy;
      _os_log_impl(&dword_25BD8D000, v9, OS_LOG_TYPE_DEFAULT, "%s: serialNumber: %@", buf, 0x16u);
    }

    [(NDOACController *)v8 setIsDefaultDevice:0];
    v10 = [[NDOSpecifierDataSource alloc] initWithDefaultDevice:[(NDOACController *)v8 isDefaultDevice]];
    [(NDOACController *)v8 setNdoSpecifierDataSource:v10];

    ndoSpecifierDataSource = [(NDOACController *)v8 ndoSpecifierDataSource];
    [ndoSpecifierDataSource setSerialNumber:numberCopy];

    ndoSpecifierDataSource2 = [(NDOACController *)v8 ndoSpecifierDataSource];
    [ndoSpecifierDataSource2 setUpdateHandler:handlerCopy];

    ndoSpecifierDataSource3 = [(NDOACController *)v8 ndoSpecifierDataSource];
    [ndoSpecifierDataSource3 setHostingController:v8];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NSArray)specifiers
{
  ndoSpecifierDataSource = [(NDOACController *)self ndoSpecifierDataSource];
  ndoSpecifiers = [ndoSpecifierDataSource ndoSpecifiers];

  return ndoSpecifiers;
}

- (void)loadSpecifiers
{
  ndoSpecifierDataSource = [(NDOACController *)self ndoSpecifierDataSource];
  [ndoSpecifierDataSource loadSpecifiers];
}

- (void)updateSpecifiersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  ndoSpecifierDataSource = [(NDOACController *)self ndoSpecifierDataSource];
  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__NDOACController_updateSpecifiersWithCompletionHandler___block_invoke;
  v9[3] = &unk_2799783F0;
  v10 = ndoSpecifierDataSource;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = ndoSpecifierDataSource;
  dispatch_async(v6, v9);
}

void __57__NDOACController_updateSpecifiersWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ndoManager];
  v3 = [v2 clientConfiguration];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NDOACController_updateSpecifiersWithCompletionHandler___block_invoke_2;
  block[3] = &unk_279978688;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __57__NDOACController_updateSpecifiersWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) generalAboutPolicy];
  v4 = *(a1 + 48);

  return [v2 updateNDOSpecifiersWithPolicy:v3 withCompletion:v4];
}

- (void)forceUpdateSpecifiersAndForceUpdateFollowup:(BOOL)followup withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  ndoSpecifierDataSource = [(NDOACController *)self ndoSpecifierDataSource];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__NDOACController_forceUpdateSpecifiersAndForceUpdateFollowup_withCompletionHandler___block_invoke;
  v8[3] = &unk_2799783F0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [ndoSpecifierDataSource updateNDOSpecifiersWithPolicy:2 withCompletion:v8];
}

void __85__NDOACController_forceUpdateSpecifiersAndForceUpdateFollowup_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ndoSpecifierDataSource];
  v3 = [v2 ndoSpecifiers];
  v6 = [v3 specifierForID:@"WARRANTY_OFFER"];

  if (v6)
  {
    v4 = [v6 propertyForKey:@"NDODeviceInfo"];
    v5 = [v4 warranty];
  }

  (*(*(a1 + 40) + 16))();
}

- (PSListController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end