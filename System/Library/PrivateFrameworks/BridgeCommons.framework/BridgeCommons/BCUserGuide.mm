@interface BCUserGuide
- (BCUserGuide)init;
- (id)getUserGuideViewWithTitle:(id)a3;
@end

@implementation BCUserGuide

- (BCUserGuide)init
{
  v3.receiver = self;
  v3.super_class = BCUserGuide;
  return [(BCUserGuide *)&v3 init];
}

- (id)getUserGuideViewWithTitle:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v4 = getHLPHelpViewControllerVersionLatestSymbolLoc_ptr;
  v23 = getHLPHelpViewControllerVersionLatestSymbolLoc_ptr;
  if (!getHLPHelpViewControllerVersionLatestSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getHLPHelpViewControllerVersionLatestSymbolLoc_block_invoke;
    v25 = &unk_278D224B0;
    v26 = &v20;
    v5 = HelpKitLibrary();
    v6 = dlsym(v5, "HLPHelpViewControllerVersionLatest");
    *(v26[1] + 24) = v6;
    getHLPHelpViewControllerVersionLatestSymbolLoc_ptr = *(v26[1] + 24);
    v4 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v4)
  {
    [BCUserGuide getUserGuideViewWithTitle:];
    __break(1u);
  }

  v7 = *v4;
  v8 = [MEMORY[0x277D2BCF8] sharedInstance];
  v9 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v10 = [v8 getAllDevicesWithArchivedAltAccountDevicesMatching:v9];
  v11 = [v10 firstObject];

  if (v11)
  {
    v12 = [v11 valueForProperty:*MEMORY[0x277D2BC20]];

    v7 = v12;
  }

  v13 = pbb_bridge_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = @"watch";
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_241E55000, v13, OS_LOG_TYPE_DEFAULT, "Asking HelpKit for %@ user guide, version: %@", buf, 0x16u);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v14 = getHLPHelpViewControllerClass_softClass;
  v23 = getHLPHelpViewControllerClass_softClass;
  if (!getHLPHelpViewControllerClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getHLPHelpViewControllerClass_block_invoke;
    v25 = &unk_278D224B0;
    v26 = &v20;
    __getHLPHelpViewControllerClass_block_invoke(buf);
    v14 = v21[3];
  }

  v15 = v14;
  _Block_object_dispose(&v20, 8);
  v16 = [v14 helpViewControllerWithTitle:v3 identifier:@"watch" version:{v7, v20}];
  [v16 setShowTopicViewOnLoad:1];
  v17 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (uint64_t)getUserGuideViewWithTitle:.cold.1()
{
  dlerror();
  abort_report_np();
  return __getHLPHelpViewControllerClass_block_invoke_cold_1();
}

@end