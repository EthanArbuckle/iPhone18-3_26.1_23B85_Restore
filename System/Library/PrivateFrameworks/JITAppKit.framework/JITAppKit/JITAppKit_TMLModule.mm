@interface JITAppKit_TMLModule
+ (BOOL)loadModule;
+ (void)initializeJSContext:(id)context;
@end

@implementation JITAppKit_TMLModule

+ (BOOL)loadModule
{
  selfCopy = self;
  v15 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x20000000;
  v13 = 32;
  v14 = 1;
  obj = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __33__JITAppKit_TMLModule_loadModule__block_invoke;
  v8 = &unk_2797EE008;
  v9 = &v10;
  v18 = &loadModule_onceToken;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v3 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v3 & 1;
}

+ (void)initializeJSContext:(id)context
{
  v57[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = MEMORY[0x277CD4658];
  context = [location[0] context];
  v38 = [v3 valueWithNewObjectInContext:?];
  MEMORY[0x277D82BD8](context);
  v5 = location[0];
  v21 = MEMORY[0x277CD4630];
  v56[0] = *MEMORY[0x277CD4630];
  v57[0] = v38;
  v22 = MEMORY[0x277CD4638];
  v56[1] = *MEMORY[0x277CD4638];
  v23 = MEMORY[0x277CBEC28];
  v57[1] = MEMORY[0x277CBEC28];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:?];
  [v5 defineProperty:@"JITAppKit" descriptor:?];
  MEMORY[0x277D82BD8](v6);
  v37 = _Block_copy(&__block_literal_global_0);
  v36 = _Block_copy(&__block_literal_global_9);
  v7 = v38;
  v54[0] = *MEMORY[0x277CD4620];
  v55[0] = v37;
  v54[1] = *MEMORY[0x277CD4628];
  v55[1] = v36;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
  [v7 defineProperty:@"baseURL" descriptor:?];
  MEMORY[0x277D82BD8](v8);
  v35 = _Block_copy(&__block_literal_global_15);
  v9 = v38;
  v52[0] = *v21;
  v53[0] = v35;
  v52[1] = *v22;
  v53[1] = v23;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
  [v9 defineProperty:@"loadPage" descriptor:?];
  MEMORY[0x277D82BD8](v10);
  v34 = _Block_copy(&__block_literal_global_22);
  v11 = v38;
  v50[0] = *v21;
  v51[0] = v34;
  v50[1] = *v22;
  v51[1] = v23;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
  [v11 defineProperty:@"loadPageWithData" descriptor:?];
  MEMORY[0x277D82BD8](v12);
  v33 = _Block_copy(&__block_literal_global_28);
  v13 = v38;
  v48[0] = *v21;
  v49[0] = v33;
  v48[1] = *v22;
  v49[1] = v23;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  [v13 defineProperty:@"loadPageWithDataURL" descriptor:?];
  MEMORY[0x277D82BD8](v14);
  v32 = _Block_copy(&__block_literal_global_34);
  v15 = v38;
  v46[0] = *v21;
  v47[0] = v32;
  v46[1] = *v22;
  v47[1] = v23;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
  [v15 defineProperty:@"loadView" descriptor:?];
  MEMORY[0x277D82BD8](v16);
  v31 = _Block_copy(&__block_literal_global_39);
  v17 = v38;
  v44[0] = *v21;
  v45[0] = v31;
  v44[1] = *v22;
  v45[1] = v23;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
  [v17 defineProperty:@"loadClass" descriptor:?];
  MEMORY[0x277D82BD8](v18);
  v30 = _Block_copy(&__block_literal_global_44);
  v19 = v38;
  v42[0] = *v21;
  v43[0] = v30;
  v42[1] = *v22;
  v43[1] = v23;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  [v19 defineProperty:@"loadObject" descriptor:?];
  MEMORY[0x277D82BD8](v20);
  v29 = _Block_copy(&__block_literal_global_50);
  v24 = v38;
  v40[0] = *v21;
  v41[0] = v29;
  v40[1] = *v22;
  v41[1] = v23;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  [v24 defineProperty:@"dismissApplication" descriptor:?];
  MEMORY[0x277D82BD8](v25);
  v26 = _Block_copy(&__block_literal_global_56);
  [location[0] setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v26);
  v27 = _Block_copy(&__block_literal_global_66);
  [location[0] setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v27);
  v28 = _Block_copy(&__block_literal_global_72);
  [location[0] setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v28);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end