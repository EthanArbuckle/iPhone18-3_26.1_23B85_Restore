@interface CDPRecoveryTestController
- (CDPRecoveryTestController)initWithDevices:(id)a3 andNavigationController:(id)a4;
- (id)dummyRecoveryInfo;
- (void)setUp;
@end

@implementation CDPRecoveryTestController

- (CDPRecoveryTestController)initWithDevices:(id)a3 andNavigationController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDPRecoveryTestController;
  v9 = [(CDPRecoveryTestController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mockDevices, a3);
    objc_storeStrong(&v10->_navController, a4);
  }

  return v10;
}

- (void)setUp
{
  [(NSArray *)self->_mockDevices enumerateObjectsUsingBlock:&__block_literal_global];
  v10 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  [v10 setIdmsRecovery:1];
  v3 = objc_alloc_init(MEMORY[0x277CFD530]);
  [v3 setContext:v10];
  v4 = [objc_alloc(MEMORY[0x277CFDAD8]) initWithPresentingViewController:self->_navController];
  v5 = [objc_alloc(MEMORY[0x277CFD550]) initWithUIProvider:v4];
  v6 = objc_alloc(MEMORY[0x277CFDA90]);
  v7 = [objc_alloc(MEMORY[0x277CFDAA8]) initWithContext:v10 uiProvider:v5 delegate:0];
  v8 = [v6 initWithContext:v3 uiProvider:v5 secureBackupController:v7 circleProxy:0 octagonProxy:0];
  recoveryController = self->_recoveryController;
  self->_recoveryController = v8;
}

- (id)dummyRecoveryInfo
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CFD3F0];
  v10[0] = *MEMORY[0x277CFD3F8];
  v10[1] = v2;
  v11[0] = @"mockMID";
  v11[1] = @"mockPRK";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = *MEMORY[0x277CFB320];
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];
  v9 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end