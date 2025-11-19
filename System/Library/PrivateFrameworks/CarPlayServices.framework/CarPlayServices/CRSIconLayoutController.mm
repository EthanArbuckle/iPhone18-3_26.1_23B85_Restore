@interface CRSIconLayoutController
- (CRSIconLayoutController)init;
- (void)dealloc;
- (void)exportIconStateForCertificateSerial:(id)a3 categories:(unint64_t)a4 completion:(id)a5;
- (void)fetchIconStateForVehicleID:(id)a3 completion:(id)a4;
- (void)fetchWidgetStateForVehicleID:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)refreshWidgetStateForVehicleID:(id)a3;
- (void)resetIconStateForVehicleID:(id)a3;
- (void)resetWidgetStateForVehicleID:(id)a3;
- (void)setIconOrder:(id)a3 hiddenIcons:(id)a4 forVehicleID:(id)a5;
- (void)setWidgetState:(id)a3 forVehicleID:(id)a4;
@end

@implementation CRSIconLayoutController

- (CRSIconLayoutController)init
{
  v21 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = CRSIconLayoutController;
  v2 = [(CRSIconLayoutController *)&v18 init];
  if (v2)
  {
    v3 = MEMORY[0x277CF3288];
    v4 = +[CRSIconLayoutServiceSpecification identifier];
    v5 = [v3 endpointForMachName:@"com.apple.CarPlayApp.service" service:v4 instance:0];

    v6 = [MEMORY[0x277CF3280] connectionWithEndpoint:v5];
    connection = v2->_connection;
    v2->_connection = v6;

    v8 = v2->_connection;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __31__CRSIconLayoutController_init__block_invoke;
    v16[3] = &unk_278D8E1A8;
    v9 = v2;
    v17 = v9;
    [(BSServiceConnection *)v8 configureConnection:v16];
    Serial = BSDispatchQueueCreateSerial();
    callbackQueue = v9->_callbackQueue;
    v9->_callbackQueue = Serial;

    v12 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v2->_connection;
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&dword_242FB5000, v12, OS_LOG_TYPE_INFO, "Activating connection! %@", buf, 0xCu);
    }

    [(BSServiceConnection *)v2->_connection activate];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

void __31__CRSIconLayoutController_init__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[CRSIconLayoutServiceSpecification serviceQuality];
  [v5 setServiceQuality:v3];

  v4 = +[CRSIconLayoutServiceSpecification interface];
  [v5 setInterface:v4];

  [v5 setInterfaceTarget:*(a1 + 32)];
  [v5 setActivationHandler:&__block_literal_global_3];
  [v5 setInterruptionHandler:&__block_literal_global_69];
  [v5 setInvalidationHandler:&__block_literal_global_72];
}

void __31__CRSIconLayoutController_init__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "Connection activated! %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __31__CRSIconLayoutController_init__block_invoke_67(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "[CRSIconLayoutController] connection interrupted! Reactivating... %@", &v5, 0xCu);
  }

  [v2 activate];
  v4 = *MEMORY[0x277D85DE8];
}

void __31__CRSIconLayoutController_init__block_invoke_70(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "Connection invalidated! %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [(CRSIconLayoutController *)self connection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = CRSIconLayoutController;
  [(CRSIconLayoutController *)&v4 dealloc];
}

- (void)fetchIconStateForVehicleID:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_INFO, "Fetching icon state for vehicle: %{public}@", buf, 0xCu);
    }

    v9 = [(CRSIconLayoutController *)self connection];
    v10 = [v9 remoteTarget];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__CRSIconLayoutController_fetchIconStateForVehicleID_completion___block_invoke;
    v12[3] = &unk_278D8E220;
    v12[4] = self;
    v13 = v7;
    [v10 fetchIconStateForVehicleID:v6 completion:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __65__CRSIconLayoutController_fetchIconStateForVehicleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 iconOrder];
  [v4 setObject:v5 forKeyedSubscript:@"iconOrder"];

  v6 = [v3 hiddenIcons];
  v7 = [v6 bs_map:&__block_literal_global_82];

  [v4 setObject:v7 forKeyedSubscript:@"hiddenIcons"];
  v8 = [v3 oemIconLabel];
  [v4 setObject:v8 forKeyedSubscript:@"OEMIconLabel"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "displaysOEMIcon")}];
  [v4 setObject:v9 forKeyedSubscript:@"displaysOEMIcon"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "rows")}];
  [v4 setObject:v10 forKeyedSubscript:@"rows"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [v3 columns];

  v13 = [v11 numberWithUnsignedInteger:v12];
  [v4 setObject:v13 forKeyedSubscript:@"columns"];

  v14 = [*(a1 + 32) callbackQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__CRSIconLayoutController_fetchIconStateForVehicleID_completion___block_invoke_3;
  v17[3] = &unk_278D8E1F8;
  v15 = *(a1 + 40);
  v18 = v4;
  v19 = v15;
  v16 = v4;
  dispatch_async(v14, v17);
}

void __65__CRSIconLayoutController_fetchIconStateForVehicleID_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)exportIconStateForCertificateSerial:(id)a3 categories:(unint64_t)a4 completion:(id)a5
{
  v6 = a5;
  if (v6)
  {
    v7 = a3;
    v8 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_INFO, "Exporting icon state for vehicle by certificate serial.", buf, 2u);
    }

    v9 = v6;
    CRVehicleIdentifierForCertificateSerial();
  }
}

void __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke(void *a1, uint64_t a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_2;
  v5[3] = &unk_278D8E298;
  v4 = a1[4];
  v3 = a1[5];
  v7 = a1[6];
  v5[4] = v4;
  v6 = v3;
  [v4 fetchIconStateForVehicleID:a2 completion:v5];
}

void __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CF8A28];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v4 objectForKeyedSubscript:@"iconOrder"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_3;
  v17[3] = &unk_278D8E270;
  v8 = *(a1 + 48);
  v18 = v5;
  v20 = v8;
  v9 = v6;
  v19 = v9;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v17];
  v11 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_132;
  block[3] = &unk_278D8E1F8;
  v12 = *(a1 + 40);
  v15 = v9;
  v16 = v12;
  v13 = v9;
  dispatch_async(v11, block);
}

void __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_4;
  v7[3] = &unk_278D8E248;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v10 = v5;
  v9 = v6;
  [a2 enumerateObjectsUsingBlock:v7];
}

void __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isEqualToString:@"com.apple.cardisplay.OEM"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.cardisplay.nowplaying") & 1) == 0)
  {
    v4 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v3];
    v5 = [MEMORY[0x277CF8A10] requiredInfoKeys];
    v6 = [v4 objectsForInfoDictionaryKeys:v5];

    v7 = [MEMORY[0x277CF8A10] requiredEntitlementKeys];
    v8 = [v4 entitlementValuesForKeys:v7];

    v9 = [MEMORY[0x277CF8A10] declarationForBundleIdentifier:v3 info:v6 entitlements:v8];
    v10 = [*(a1 + 32) effectivePolicyForAppDeclaration:v9];
    v11 = v10;
    v12 = *(a1 + 48);
    if ((v12 & 1) == 0 && ([v10 applicationCategory] & v12) == 0)
    {
      v16 = CRSLogForCategory(1uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_4_cold_2(v3, v11, v16);
      }

      goto LABEL_38;
    }

    v13 = [v4 localizedNameForContext:@"Car"];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v4 localizedNameForContext:0];
    }

    v16 = v15;

    if (([v11 applicationCategory] & 0x10) != 0)
    {
      v18 = @"audio";
    }

    else if (([v11 applicationCategory] & 4) != 0)
    {
      v18 = @"calling";
    }

    else if (([v11 applicationCategory] & 2) != 0)
    {
      v18 = @"messaging";
    }

    else if (([v11 applicationCategory] & 8) != 0)
    {
      v18 = @"navigation";
    }

    else if (([v11 applicationCategory] & 0x20) != 0)
    {
      v18 = @"automaker";
    }

    else if (([v11 applicationCategory] & 0x200) != 0)
    {
      v18 = @"parking";
    }

    else if (([v11 applicationCategory] & 0x100) != 0)
    {
      v18 = @"charging";
    }

    else if (([v11 applicationCategory] & 0x80) != 0)
    {
      v18 = @"quick ordering";
    }

    else if (([v11 applicationCategory] & 0x400) != 0)
    {
      v18 = @"productivity";
    }

    else if (([v11 applicationCategory] & 0x800) != 0)
    {
      v18 = @"fueling";
    }

    else
    {
      if (([v11 applicationCategory] & 0x1000) == 0)
      {
        v17 = CRSLogForCategory(1uLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_4_cold_1(v3, v17);
        }

LABEL_37:

LABEL_38:
        goto LABEL_39;
      }

      v18 = @"driving task";
    }

    v19 = *(a1 + 40);
    v22[0] = @"CARApplicationLocalizedNameKey";
    v22[1] = @"CARApplicationBundleIdentifierKey";
    v20 = &stru_28559CEB8;
    if (v16)
    {
      v20 = v16;
    }

    v23[0] = v20;
    v23[1] = v3;
    v22[2] = @"CARApplicationCategoryKey";
    v23[2] = v18;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    [v19 addObject:v17];
    goto LABEL_37;
  }

LABEL_39:

  v21 = *MEMORY[0x277D85DE8];
}

void __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_132(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x277CBEA60] arrayWithArray:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

- (void)setIconOrder:(id)a3 hiddenIcons:(id)a4 forVehicleID:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = [a3 bs_map:&__block_literal_global_138];
  v11 = [v9 bs_map:&__block_literal_global_141];

  v12 = [[CRSIconLayoutPage alloc] initWithIcons:v10];
  v13 = [CRSIconLayoutState alloc];
  v22[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v15 = [(CRSIconLayoutState *)v13 initWithPages:v14 hiddenIcons:v11];

  v16 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v20 = 138543362;
    v21 = v8;
    _os_log_impl(&dword_242FB5000, v16, OS_LOG_TYPE_INFO, "Setting icon state for vehicle: %{public}@", &v20, 0xCu);
  }

  v17 = [(CRSIconLayoutController *)self connection];
  v18 = [v17 remoteTarget];
  [v18 setIconState:v15 forVehicleID:v8];

  v19 = *MEMORY[0x277D85DE8];
}

CRSApplicationIcon *__65__CRSIconLayoutController_setIconOrder_hiddenIcons_forVehicleID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRSApplicationIcon alloc] initWithBundleIdentifier:v2];

  return v3;
}

CRSApplicationIcon *__65__CRSIconLayoutController_setIconOrder_hiddenIcons_forVehicleID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRSApplicationIcon alloc] initWithBundleIdentifier:v2];

  return v3;
}

- (void)resetIconStateForVehicleID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_INFO, "Resetting icon state for vehicle: %{public}@", &v9, 0xCu);
  }

  v6 = [(CRSIconLayoutController *)self connection];
  v7 = [v6 remoteTarget];
  [v7 resetIconStateForVehicleID:v4];

  v8 = *MEMORY[0x277D85DE8];
}

void __110__CRSIconLayoutController_fetchApplicationIconInformationForBundleIdentifier_vehicleID_showBorder_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained callbackQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __110__CRSIconLayoutController_fetchApplicationIconInformationForBundleIdentifier_vehicleID_showBorder_completion___block_invoke_2;
    v7[3] = &unk_278D8E1F8;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)fetchWidgetStateForVehicleID:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_INFO, "Fetching widget state for vehicle: %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v9 = [(CRSIconLayoutController *)self connection];
    v10 = [v9 remoteTarget];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__CRSIconLayoutController_fetchWidgetStateForVehicleID_completion___block_invoke;
    v12[3] = &unk_278D8E358;
    objc_copyWeak(&v14, buf);
    v13 = v7;
    [v10 fetchWidgetStateForVehicleID:v6 completion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __67__CRSIconLayoutController_fetchWidgetStateForVehicleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__CRSIconLayoutController_fetchWidgetStateForVehicleID_completion___block_invoke_2;
    block[3] = &unk_278D8E330;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (void)setWidgetState:(id)a3 forVehicleID:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_INFO, "Setting widget state for vehicle: %{public}@", &v12, 0xCu);
  }

  v9 = [(CRSIconLayoutController *)self connection];
  v10 = [v9 remoteTarget];
  [v10 setWidgetState:v7 forVehicleID:v6];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)resetWidgetStateForVehicleID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_INFO, "Resetting widget state for vehicle: %{public}@", &v9, 0xCu);
  }

  v6 = [(CRSIconLayoutController *)self connection];
  v7 = [v6 remoteTarget];
  [v7 resetWidgetStateForVehicleID:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(CRSIconLayoutController *)self connection];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "Invalidating connection! %@", &v7, 0xCu);
  }

  v5 = [(CRSIconLayoutController *)self connection];
  [v5 invalidate];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)refreshWidgetStateForVehicleID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_242FB5000, v4, OS_LOG_TYPE_INFO, "Requesting to refresh widget state for vehicle: %{public}@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CRSIconLayoutController_refreshWidgetStateForVehicleID___block_invoke;
  block[3] = &unk_278D8E380;
  v8 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v6 = *MEMORY[0x277D85DE8];
}

void __58__CRSIconLayoutController_refreshWidgetStateForVehicleID___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);
  v6 = @"vehicleID";
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"CRSWidgetLayoutStateChangedNotification" object:0 userInfo:v4];

  v5 = *MEMORY[0x277D85DE8];
}

void __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_242FB5000, a2, OS_LOG_TYPE_DEBUG, "Unable to determine a category for %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_4_cold_2(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "applicationCategory")}];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_242FB5000, a3, OS_LOG_TYPE_DEBUG, "Ignoring app %@ with categories %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end