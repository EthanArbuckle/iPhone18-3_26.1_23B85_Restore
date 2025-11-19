@interface MusicFamilyCircleUIWrapper
+ (void)presentFamilyCircleSheet:(id)a3 withParameters:(id)a4 completionHandler:(id)a5;
@end

@implementation MusicFamilyCircleUIWrapper

+ (void)presentFamilyCircleSheet:(id)a3 withParameters:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v10 = getFACircleStateControllerClass_softClass;
  v41 = getFACircleStateControllerClass_softClass;
  if (!getFACircleStateControllerClass_softClass)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getFACircleStateControllerClass_block_invoke;
    v36 = &unk_278225A08;
    v37 = &v38;
    __getFACircleStateControllerClass_block_invoke(&v33);
    v10 = v39[3];
  }

  v11 = v10;
  _Block_object_dispose(&v38, 8);
  v32 = [[v10 alloc] initWithPresenter:v7];
  [v28[5] setPresentationType:2];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v12 = getFACircleContextClass_softClass;
  v41 = getFACircleContextClass_softClass;
  if (!getFACircleContextClass_softClass)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getFACircleContextClass_block_invoke;
    v36 = &unk_278225A08;
    v37 = &v38;
    __getFACircleContextClass_block_invoke(&v33);
    v12 = v39[3];
  }

  v13 = v12;
  _Block_object_dispose(&v38, 8);
  v14 = [v12 alloc];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v15 = getFACircleEventTypeInitiateSymbolLoc_ptr;
  v41 = getFACircleEventTypeInitiateSymbolLoc_ptr;
  if (!getFACircleEventTypeInitiateSymbolLoc_ptr)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getFACircleEventTypeInitiateSymbolLoc_block_invoke;
    v36 = &unk_278225A08;
    v37 = &v38;
    v16 = FamilyCircleUILibrary();
    v17 = dlsym(v16, "FACircleEventTypeInitiate");
    *(v37[1] + 24) = v17;
    getFACircleEventTypeInitiateSymbolLoc_ptr = *(v37[1] + 24);
    v15 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (v15)
  {
    v18 = *v15;
    v19 = [v14 initWithEventType:v18];

    [v19 setClientName:@"AppleMusic"];
    v20 = [MEMORY[0x277CCA8D8] mainBundle];
    v21 = [v20 bundleIdentifier];
    [v19 setClientBundleID:v21];

    [v19 setAdditionalParameters:v8];
    [v19 setActivityIndicatorStyle:0];
    v22 = v28[5];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __88__MusicFamilyCircleUIWrapper_presentFamilyCircleSheet_withParameters_completionHandler___block_invoke;
    v24[3] = &unk_2782259E0;
    v23 = v9;
    v25 = v23;
    v26 = &v27;
    [v22 performWithContext:v19 completion:v24];

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }
}

void __88__MusicFamilyCircleUIWrapper_presentFamilyCircleSheet_withParameters_completionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __88__MusicFamilyCircleUIWrapper_presentFamilyCircleSheet_withParameters_completionHandler___block_invoke_2;
  v4[3] = &unk_2782259B8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __88__MusicFamilyCircleUIWrapper_presentFamilyCircleSheet_withParameters_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

@end