@interface MRUAssetManager
+ (MRUAssetManager)sharedManager;
- (BOOL)shouldLoadPhotorealisticAssetForRoute:(id)route;
- (MRUAssetManager)init;
- (id)symbolImageForEndpointRoute:(id)route;
- (void)imageForEndpointRoute:(id)route completion:(id)completion;
- (void)imageForModelIdentifier:(id)identifier color:(id)color allowFallback:(BOOL)fallback timeout:(double)timeout completion:(id)completion;
- (void)imageForModelIdentifier:(id)identifier color:(id)color name:(id)name allowFallback:(BOOL)fallback timeout:(double)timeout completion:(id)completion;
- (void)imageForOutputDevice:(id)device completion:(id)completion;
- (void)productKitImageForModelIdentifier:(id)identifier color:(id)color allowFallback:(BOOL)fallback timeout:(double)timeout completion:(id)completion;
@end

@implementation MRUAssetManager

+ (MRUAssetManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[MRUAssetManager sharedManager];
  }

  v3 = sharedManager_shared;

  return v3;
}

uint64_t __32__MRUAssetManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MRUAssetManager);
  v1 = sharedManager_shared;
  sharedManager_shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MRUAssetManager)init
{
  v6.receiver = self;
  v6.super_class = MRUAssetManager;
  v2 = [(MRUAssetManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69CDE88]);
    assetManager = v2->_assetManager;
    v2->_assetManager = v3;

    [(SFDeviceAssetManager *)v2->_assetManager activate];
  }

  return v2;
}

- (void)imageForEndpointRoute:(id)route completion:(id)completion
{
  routeCopy = route;
  completionCopy = completion;
  v8 = [(MRUAssetManager *)self symbolImageForEndpointRoute:routeCopy];
  if ([(MRUAssetManager *)self shouldLoadPhotorealisticAssetForRoute:routeCopy])
  {
    endpointObject = [routeCopy endpointObject];
    outputDevices = [endpointObject outputDevices];
    firstObject = [outputDevices firstObject];

    modelID = [firstObject modelID];
    deviceEnclosureColor = [firstObject deviceEnclosureColor];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__MRUAssetManager_imageForEndpointRoute_completion___block_invoke;
    v14[3] = &unk_1E7664978;
    v16 = completionCopy;
    v15 = v8;
    [(MRUAssetManager *)self imageForModelIdentifier:modelID color:deviceEnclosureColor allowFallback:0 completion:v14];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, v8);
  }
}

uint64_t __52__MRUAssetManager_imageForEndpointRoute_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (!a2)
  {
    a2 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, a2);
}

- (void)imageForOutputDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  modelID = [deviceCopy modelID];
  deviceEnclosureColor = [deviceCopy deviceEnclosureColor];

  [(MRUAssetManager *)self imageForModelIdentifier:modelID color:deviceEnclosureColor completion:completionCopy];
}

- (void)imageForModelIdentifier:(id)identifier color:(id)color allowFallback:(BOOL)fallback timeout:(double)timeout completion:(id)completion
{
  fallbackCopy = fallback;
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  colorCopy = color;
  v15 = [(MRUAssetManager *)self shouldUseProductKitFor:identifierCopy];
  v16 = MCLogCategoryDefault();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (v15)
  {
    if (v17)
    {
      v19 = 138412290;
      v20 = identifierCopy;
      _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEBUG, "[AssetManager] Request for %@ - PK", &v19, 0xCu);
    }

    timeoutCopy = 3.0;
    if (timeout >= 3.0)
    {
      timeoutCopy = timeout;
    }

    [(MRUAssetManager *)self productKitImageForModelIdentifier:identifierCopy color:colorCopy allowFallback:fallbackCopy timeout:completionCopy completion:timeoutCopy];
  }

  else
  {
    if (v17)
    {
      v19 = 138412290;
      v20 = identifierCopy;
      _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEBUG, "[AssetManager] Request for %@ - SF", &v19, 0xCu);
    }

    [(MRUAssetManager *)self imageForModelIdentifier:identifierCopy color:colorCopy name:@"ProxCard_Setup" allowFallback:fallbackCopy timeout:completionCopy completion:timeout];
  }
}

- (void)productKitImageForModelIdentifier:(id)identifier color:(id)color allowFallback:(BOOL)fallback timeout:(double)timeout completion:(id)completion
{
  fallbackCopy = fallback;
  v32 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  colorCopy = color;
  completionCopy = completion;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v16 = MCLogCategoryDefault();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v23 = uUIDString;
    v24 = 2112;
    v25 = identifierCopy;
    v26 = 2112;
    v27 = colorCopy;
    v28 = 1024;
    v29 = fallbackCopy;
    v30 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEBUG, "[AssetManager] PK request<%@> for model: %@, color: %@, allow fallback? %{BOOL}u, timeout: %f", buf, 0x30u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__MRUAssetManager_productKitImageForModelIdentifier_color_allowFallback_timeout_completion___block_invoke;
  v19[3] = &unk_1E76649A0;
  v20 = uUIDString;
  v21 = completionCopy;
  v17 = completionCopy;
  v18 = uUIDString;
  [MRUProductKit assetHardwareModel:identifierCopy color:colorCopy allowFallback:fallbackCopy timeout:v19 completion:timeout];
}

void __92__MRUAssetManager_productKitImageForModelIdentifier_color_allowFallback_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MCLogCategoryDefault();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      v10 = "[AssetManager] PK response<%@> Asset found: %@";
LABEL_6:
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEBUG, v10, &v13, 0x16u);
    }
  }

  else if (v8)
  {
    v11 = *(a1 + 32);
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    v10 = "[AssetManager] PK response<%@> Failed to obtain asset: %@";
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v12);
}

- (void)imageForModelIdentifier:(id)identifier color:(id)color name:(id)name allowFallback:(BOOL)fallback timeout:(double)timeout completion:(id)completion
{
  fallbackCopy = fallback;
  v48 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  colorCopy = color;
  nameCopy = name;
  completionCopy = completion;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v20 = MCLogCategoryDefault();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v39 = uUIDString;
    v40 = 2112;
    v41 = identifierCopy;
    v42 = 2112;
    v43 = colorCopy;
    v44 = 1024;
    v45 = fallbackCopy;
    v46 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&dword_1A20FC000, v20, OS_LOG_TYPE_DEBUG, "[AssetManager] Request<%@> Bundle for model: %@, color: %@, allow fallback? %{BOOL}u, timeout: %f", buf, 0x30u);
  }

  if (colorCopy)
  {
    v21 = objc_alloc(MEMORY[0x1E69CDE98]);
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __87__MRUAssetManager_imageForModelIdentifier_color_name_allowFallback_timeout_completion___block_invoke;
    v31 = &unk_1E76649C8;
    v32 = uUIDString;
    v34 = completionCopy;
    v35 = fallbackCopy;
    v33 = nameCopy;
    v22 = [v21 initWithQueryResultHandler:&v28];
    [v22 setTimeout:{timeout, v28, v29, v30, v31}];
    v23 = objc_alloc(MEMORY[0x1E69CDE90]);
    v36 = *MEMORY[0x1E69CDEF0];
    v37 = colorCopy;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v25 = [v23 initWithProductType:identifierCopy additionalQueryParameters:v24];

    [(SFDeviceAssetManager *)self->_assetManager getAssetBundleForDeviceQuery:v25 withRequestConfiguration:v22];
    v26 = v32;
  }

  else
  {
    v27 = MCLogCategoryDefault();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v39 = uUIDString;
      _os_log_impl(&dword_1A20FC000, v27, OS_LOG_TYPE_DEBUG, "[AssetManager] Response<%@> No color provided, not requesting bundle", buf, 0xCu);
    }

    v26 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MRUAssetManagerErrorDomain" code:0 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v26);
  }
}

void __87__MRUAssetManager_imageForModelIdentifier_color_name_allowFallback_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = MCLogCategoryDefault();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v24 = 138413314;
    v25 = v13;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    v30 = 1024;
    v31 = a4;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&dword_1A20FC000, v12, OS_LOG_TYPE_DEBUG, "[AssetManager] Update<%@> Got bundle: %@, type: %@, fallback: %{BOOL}u, error: %@", &v24, 0x30u);
  }

  if (!v9)
  {
    v18 = MCLogCategoryDefault();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 32);
      v24 = 138412290;
      v25 = v19;
      _os_log_impl(&dword_1A20FC000, v18, OS_LOG_TYPE_DEBUG, "[AssetManager] Response<%@> Failed to obtain bundle", &v24, 0xCu);
    }

    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = 1;
    goto LABEL_15;
  }

  if (a4 && (*(a1 + 56) & 1) == 0)
  {
    v22 = MCLogCategoryDefault();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 32);
      v24 = 138412290;
      v25 = v23;
      _os_log_impl(&dword_1A20FC000, v22, OS_LOG_TYPE_DEBUG, "[AssetManager] Response<%@> Fallback bundle not allowed", &v24, 0xCu);
    }

    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = 2;
LABEL_15:
    v16 = [v20 initWithDomain:@"MRUAssetManagerErrorDomain" code:v21 userInfo:0];
    v17 = *(*(a1 + 48) + 16);
    goto LABEL_16;
  }

  v14 = MCLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    v24 = 138412290;
    v25 = v15;
    _os_log_impl(&dword_1A20FC000, v14, OS_LOG_TYPE_DEBUG, "[AssetManager] Response<%@> Bundle found", &v24, 0xCu);
  }

  v16 = [MEMORY[0x1E69DCAB8] imageNamed:*(a1 + 40) inBundle:v9 withConfiguration:0];
  v17 = *(*(a1 + 48) + 16);
LABEL_16:
  v17();
}

- (id)symbolImageForEndpointRoute:(id)route
{
  v3 = MEMORY[0x1E69B09B8];
  endpointObject = [route endpointObject];
  outputDevices = [endpointObject outputDevices];
  v6 = [v3 symbolNameForOutputDevices:outputDevices];

  v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v6];

  return v7;
}

- (BOOL)shouldLoadPhotorealisticAssetForRoute:(id)route
{
  endpointObject = [route endpointObject];
  outputDevices = [endpointObject outputDevices];

  firstObject = [outputDevices firstObject];
  v6 = [outputDevices count];
  deviceSubtype = [firstObject deviceSubtype];
  deviceEnclosureColor = [firstObject deviceEnclosureColor];

  v11 = v6 == 1 && deviceSubtype == 12 && deviceEnclosureColor != 0;
  return v11;
}

@end