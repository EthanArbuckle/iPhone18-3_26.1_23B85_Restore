@interface LACDTOLocationControllerFactory
+ (id)controllerWithStore:(id)a3 featureController:(id)a4 eventBus:(id)a5 featureFlags:(id)a6 workQueue:(id)a7;
@end

@implementation LACDTOLocationControllerFactory

+ (id)controllerWithStore:(id)a3 featureController:(id)a4 eventBus:(id)a5 featureFlags:(id)a6 workQueue:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __105__LACDTOLocationControllerFactory_controllerWithStore_featureController_eventBus_featureFlags_workQueue___block_invoke;
  v43[3] = &unk_1E7A95C90;
  v15 = v14;
  v44 = v15;
  v16 = v11;
  v45 = v16;
  v46 = v12;
  v17 = v12;
  v18 = a5;
  v19 = __105__LACDTOLocationControllerFactory_controllerWithStore_featureController_eventBus_featureFlags_workQueue___block_invoke(v43);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __105__LACDTOLocationControllerFactory_controllerWithStore_featureController_eventBus_featureFlags_workQueue___block_invoke_3;
  v38[3] = &unk_1E7A95CB8;
  v20 = v19;
  v39 = v20;
  v21 = v16;
  v40 = v21;
  v22 = v13;
  v41 = v22;
  v23 = v15;
  v42 = v23;
  v24 = __105__LACDTOLocationControllerFactory_controllerWithStore_featureController_eventBus_featureFlags_workQueue___block_invoke_3(v38);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __105__LACDTOLocationControllerFactory_controllerWithStore_featureController_eventBus_featureFlags_workQueue___block_invoke_4;
  v32[3] = &unk_1E7A95CE0;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v36 = v24;
  v37 = v23;
  v25 = v23;
  v26 = v24;
  v27 = v22;
  v28 = v21;
  v29 = v20;
  v30 = __105__LACDTOLocationControllerFactory_controllerWithStore_featureController_eventBus_featureFlags_workQueue___block_invoke_4(v32);
  [v30 setEventBus:v18];

  return v30;
}

LACDTOLocationProviderModeDecorator *__105__LACDTOLocationControllerFactory_controllerWithStore_featureController_eventBus_featureFlags_workQueue___block_invoke(uint64_t a1)
{
  v2 = [LACDTOLocationProviderModeDecorator alloc];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __105__LACDTOLocationControllerFactory_controllerWithStore_featureController_eventBus_featureFlags_workQueue___block_invoke_2;
  v9 = &unk_1E7A95C68;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v3 = __105__LACDTOLocationControllerFactory_controllerWithStore_featureController_eventBus_featureFlags_workQueue___block_invoke_2(&v6);
  v4 = [(LACDTOLocationProviderModeDecorator *)v2 initWithLocationProvider:v3 featureController:*(a1 + 48), v6, v7];

  return v4;
}

LACDTOLocationProviderTaskDecorator *__105__LACDTOLocationControllerFactory_controllerWithStore_featureController_eventBus_featureFlags_workQueue___block_invoke_2(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = [[LACDTOLocationProviderCRAdapter alloc] initWithWorkQueue:*(a1 + 32)];
    v3 = [[LACDTOLocationProviderTaskDecorator alloc] initWithLocationProvider:v2 workQueue:*(a1 + 32)];
  }

  else
  {
    v3 = [[LACDTOLocationProviderKVSAdapter alloc] initWithKVStore:*(a1 + 40)];
  }

  return v3;
}

LACDTOLocationMonitor *__105__LACDTOLocationControllerFactory_controllerWithStore_featureController_eventBus_featureFlags_workQueue___block_invoke_3(void *a1)
{
  v2 = [[LACDTOLocationProviderPersistenceDecorator alloc] initWithLocationProvider:a1[4] store:a1[5] featureFlags:a1[6] cacheEnabled:1];
  v3 = [[LACDTOLocationMonitor alloc] initWithLocationProvider:v2 workQueue:a1[7]];

  return v3;
}

LACDTOLocationController *__105__LACDTOLocationControllerFactory_controllerWithStore_featureController_eventBus_featureFlags_workQueue___block_invoke_4(void *a1)
{
  v2 = [[LACDTOLocationProviderPersistenceDecorator alloc] initWithLocationProvider:a1[4] store:a1[5] featureFlags:a1[6] cacheEnabled:0];
  v3 = [[LACDTOLocationController alloc] initWithLocationProvider:v2 monitor:a1[7] workQueue:a1[8]];

  return v3;
}

@end