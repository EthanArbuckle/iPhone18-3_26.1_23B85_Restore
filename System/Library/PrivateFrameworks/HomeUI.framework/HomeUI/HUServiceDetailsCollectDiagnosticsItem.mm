@interface HUServiceDetailsCollectDiagnosticsItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUServiceDetailsCollectDiagnosticsItem

- (id)_subclass_updateWithOptions:(id)options
{
  v89 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = sourceServiceItem;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  accessory = [v6 accessory];

  if (!accessory)
  {
    objc_opt_class();
    sourceServiceItem2 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
    v9 = (objc_opt_isKindOfClass() & 1) != 0 ? sourceServiceItem2 : 0;
    v10 = v9;

    service = [v10 service];

    accessory = [service accessory];

    if (!accessory)
    {
      sourceServiceItem3 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
      accessories = [sourceServiceItem3 accessories];

      accessory = [accessories anyObject];
    }
  }

  selfCopy = self;
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  home = [mEMORY[0x277D146E8] home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  supportedDiagnostics = [accessory supportedDiagnostics];
  supportedTypes = [supportedDiagnostics supportedTypes];

  v19 = HFPreferencesBooleanValueForKey();
  v70 = v19;
  if (([MEMORY[0x277D14CE8] isInternalInstall] & 1) != 0 || v19 == 2)
  {
    v20 = (supportedTypes >> 1) & 1;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  v21 = supportedTypes & 1;
  mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8]2 homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  v25 = 0;
  if ([accessory supportsCHIP] && hasOptedToHH2)
  {
    home2 = [accessory home];
    hdm_sharedMatterController = [home2 hdm_sharedMatterController];
    if (!hdm_sharedMatterController)
    {
      v28 = HFLogForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        matterControllerID = [home2 matterControllerID];
        *buf = 138412546;
        *v78 = home2;
        *&v78[8] = 2112;
        v79 = matterControllerID;
        _os_log_error_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_ERROR, "No MTRDeviceController found for home: %@, matterControllerID: %@", buf, 0x16u);
      }
    }

    v29 = MEMORY[0x277CD5310];
    matterNodeID = [accessory matterNodeID];
    v31 = [v29 deviceWithNodeID:matterNodeID controller:hdm_sharedMatterController];

    if (!v31)
    {
      v32 = HFLogForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v78 = accessory;
        *&v78[8] = 2112;
        v79 = hdm_sharedMatterController;
        _os_log_error_impl(&dword_20CEB6000, v32, OS_LOG_TYPE_ERROR, "No MTRDevice found for sourceAccessory: %@, MTRDeviceController: %@", buf, 0x16u);
      }
    }

    v33 = [v31 readAttributeWithEndpointID:&unk_282491118 clusterID:&unk_282491130 attributeID:&unk_282491148 params:0];
    if (!v33)
    {
      v34 = HFLogForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v78 = v31;
        _os_log_error_impl(&dword_20CEB6000, v34, OS_LOG_TYPE_ERROR, "No attributes found for device: %@", buf, 0xCu);
      }
    }

    allValues = [v33 allValues];
    v25 = [allValues containsObject:&unk_282491160];
  }

  if (accessory)
  {
    v36 = hf_currentUserIsAdministrator;
  }

  else
  {
    v36 = 0;
  }

  if ((v36 & (v21 == 0)) != 0)
  {
    v37 = v20 | v25;
  }

  else
  {
    v37 = v36;
  }

  v38 = HFLogForCategory();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    isInternalInstall = [MEMORY[0x277D14CE8] isInternalInstall];
    *buf = 67110912;
    *v78 = v37 & 1;
    *&v78[4] = 1024;
    *&v78[6] = hf_currentUserIsAdministrator;
    LOWORD(v79) = 1024;
    *(&v79 + 2) = accessory != 0;
    HIWORD(v79) = 1024;
    v80 = v21;
    v81 = 1024;
    v82 = v20;
    v83 = 1024;
    v84 = v25;
    v85 = 1024;
    v86 = v70 == 2;
    v87 = 1024;
    v88 = isInternalInstall;
    _os_log_impl(&dword_20CEB6000, v38, OS_LOG_TYPE_INFO, "Showing Logs button: %{BOOL}d. isAdmin= %{BOOL}d, sourceAccessory= %{BOOL}d, manufacturerSnapshot= %{BOOL}d, adkSnapshot= %{BOOL}d, matterSnapshot= %{BOOL}d, supportProfileInstalled= %{BOOL}d, isInternalInstall= %{BOOL}d", buf, 0x32u);
  }

  v40 = MEMORY[0x277D14858];
  v75[0] = *MEMORY[0x277D13F60];
  v41 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsCollectDiagnosticsButton", @"HUServiceDetailsCollectDiagnosticsButton", 1);
  v76[0] = v41;
  v42 = *MEMORY[0x277D13FB8];
  v75[1] = *MEMORY[0x277D13FB8];
  v43 = v37 ^ 1;
  v44 = [MEMORY[0x277CCABB0] numberWithInt:(v37 ^ 1) & 1];
  v76[1] = v44;
  v75[2] = *MEMORY[0x277D13DA8];
  v45 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessory];
  v76[2] = v45;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:3];
  v47 = [v40 outcomeWithResults:v46];

  if (!v20 || (v43 & 1) != 0 || v70 == 2)
  {
    v57 = [MEMORY[0x277D2C900] futureWithResult:v47];
  }

  else
  {
    objc_opt_class();
    sourceServiceItem4 = [(HUServiceDetailsAbstractItem *)selfCopy sourceServiceItem];
    if (objc_opt_isKindOfClass())
    {
      v49 = sourceServiceItem4;
    }

    else
    {
      v49 = 0;
    }

    v50 = v49;

    if (v50)
    {
      accessories2 = [v50 accessories];
      if ([accessories2 count] != 1)
      {
        NSLog(&cfstr_ExpectedOneAcc.isa, accessories2);
      }

      anyObject = [accessories2 anyObject];
      services = [anyObject services];
      v54 = [services na_firstObjectPassingTest:&__block_literal_global_71];

      services2 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v54];
      valueSource = [v50 valueSource];
    }

    else
    {
      sourceServiceItem5 = [(HUServiceDetailsAbstractItem *)selfCopy sourceServiceItem];
      valueSource = [sourceServiceItem5 valueSource];

      accessories2 = [(HUServiceDetailsAbstractItem *)selfCopy sourceServiceItem];
      services2 = [accessories2 services];
    }

    v59 = objc_alloc(MEMORY[0x277D14AF8]);
    anyObject2 = [services2 anyObject];
    hf_serviceDescriptor = [anyObject2 hf_serviceDescriptor];
    v62 = [v59 initWithValueSource:valueSource services:services2 primaryServiceDescriptor:hf_serviceDescriptor];

    v63 = objc_alloc(MEMORY[0x277D142C0]);
    v73 = v42;
    v74 = MEMORY[0x277CBEC38];
    v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v65 = [v63 initWithValueSource:v62 displayResults:v64];

    v66 = [v65 updateWithOptions:MEMORY[0x277CBEC10]];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __70__HUServiceDetailsCollectDiagnosticsItem__subclass_updateWithOptions___block_invoke_2;
    v71[3] = &unk_277DBB878;
    v72 = v47;
    v57 = [v66 flatMap:v71];
  }

  return v57;
}

uint64_t __70__HUServiceDetailsCollectDiagnosticsItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0E28]];

  return v3;
}

id __70__HUServiceDetailsCollectDiagnosticsItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D13810]];
  v4 = [v3 integerValue] & 2;
  if (!(v4 & 0xFFFFFFFFFFFFFFFELL | [v3 integerValue] & 1))
  {
    [*(a1 + 32) safeSetObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D13FB8]];
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109376;
      v8[1] = 0;
      v9 = 1024;
      v10 = 0;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_INFO, "Hiding Logs button. verboseLogging= %{BOOL}d, audioClips= %{BOOL}d", v8, 0xEu);
    }
  }

  v6 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 32)];

  return v6;
}

@end