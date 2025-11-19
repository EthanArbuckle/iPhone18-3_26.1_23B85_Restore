@interface MRUAssetManager
+ (MRUAssetManager)sharedManager;
- (BOOL)shouldLoadPhotorealisticAssetForRoute:(id)a3;
- (MRUAssetManager)init;
- (id)symbolImageForEndpointRoute:(id)a3;
- (void)imageForEndpointRoute:(id)a3 completion:(id)a4;
- (void)imageForModelIdentifier:(id)a3 color:(id)a4 allowFallback:(BOOL)a5 timeout:(double)a6 completion:(id)a7;
- (void)imageForModelIdentifier:(id)a3 color:(id)a4 name:(id)a5 allowFallback:(BOOL)a6 timeout:(double)a7 completion:(id)a8;
- (void)imageForOutputDevice:(id)a3 completion:(id)a4;
- (void)productKitImageForModelIdentifier:(id)a3 color:(id)a4 allowFallback:(BOOL)a5 timeout:(double)a6 completion:(id)a7;
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

- (void)imageForEndpointRoute:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRUAssetManager *)self symbolImageForEndpointRoute:v6];
  if ([(MRUAssetManager *)self shouldLoadPhotorealisticAssetForRoute:v6])
  {
    v9 = [v6 endpointObject];
    v10 = [v9 outputDevices];
    v11 = [v10 firstObject];

    v12 = [v11 modelID];
    v13 = [v11 deviceEnclosureColor];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__MRUAssetManager_imageForEndpointRoute_completion___block_invoke;
    v14[3] = &unk_1E7664978;
    v16 = v7;
    v15 = v8;
    [(MRUAssetManager *)self imageForModelIdentifier:v12 color:v13 allowFallback:0 completion:v14];
  }

  else
  {
    (*(v7 + 2))(v7, v8);
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

- (void)imageForOutputDevice:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [v7 modelID];
  v8 = [v7 deviceEnclosureColor];

  [(MRUAssetManager *)self imageForModelIdentifier:v9 color:v8 completion:v6];
}

- (void)imageForModelIdentifier:(id)a3 color:(id)a4 allowFallback:(BOOL)a5 timeout:(double)a6 completion:(id)a7
{
  v9 = a5;
  v21 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a7;
  v14 = a4;
  v15 = [(MRUAssetManager *)self shouldUseProductKitFor:v12];
  v16 = MCLogCategoryDefault();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (v15)
  {
    if (v17)
    {
      v19 = 138412290;
      v20 = v12;
      _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEBUG, "[AssetManager] Request for %@ - PK", &v19, 0xCu);
    }

    v18 = 3.0;
    if (a6 >= 3.0)
    {
      v18 = a6;
    }

    [(MRUAssetManager *)self productKitImageForModelIdentifier:v12 color:v14 allowFallback:v9 timeout:v13 completion:v18];
  }

  else
  {
    if (v17)
    {
      v19 = 138412290;
      v20 = v12;
      _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEBUG, "[AssetManager] Request for %@ - SF", &v19, 0xCu);
    }

    [(MRUAssetManager *)self imageForModelIdentifier:v12 color:v14 name:@"ProxCard_Setup" allowFallback:v9 timeout:v13 completion:a6];
  }
}

- (void)productKitImageForModelIdentifier:(id)a3 color:(id)a4 allowFallback:(BOOL)a5 timeout:(double)a6 completion:(id)a7
{
  v9 = a5;
  v32 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = [MEMORY[0x1E696AFB0] UUID];
  v15 = [v14 UUIDString];

  v16 = MCLogCategoryDefault();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v23 = v15;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    v28 = 1024;
    v29 = v9;
    v30 = 2048;
    v31 = a6;
    _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEBUG, "[AssetManager] PK request<%@> for model: %@, color: %@, allow fallback? %{BOOL}u, timeout: %f", buf, 0x30u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__MRUAssetManager_productKitImageForModelIdentifier_color_allowFallback_timeout_completion___block_invoke;
  v19[3] = &unk_1E76649A0;
  v20 = v15;
  v21 = v13;
  v17 = v13;
  v18 = v15;
  [MRUProductKit assetHardwareModel:v11 color:v12 allowFallback:v9 timeout:v19 completion:a6];
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

- (void)imageForModelIdentifier:(id)a3 color:(id)a4 name:(id)a5 allowFallback:(BOOL)a6 timeout:(double)a7 completion:(id)a8
{
  v10 = a6;
  v48 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = [MEMORY[0x1E696AFB0] UUID];
  v19 = [v18 UUIDString];

  v20 = MCLogCategoryDefault();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v39 = v19;
    v40 = 2112;
    v41 = v14;
    v42 = 2112;
    v43 = v15;
    v44 = 1024;
    v45 = v10;
    v46 = 2048;
    v47 = a7;
    _os_log_impl(&dword_1A20FC000, v20, OS_LOG_TYPE_DEBUG, "[AssetManager] Request<%@> Bundle for model: %@, color: %@, allow fallback? %{BOOL}u, timeout: %f", buf, 0x30u);
  }

  if (v15)
  {
    v21 = objc_alloc(MEMORY[0x1E69CDE98]);
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __87__MRUAssetManager_imageForModelIdentifier_color_name_allowFallback_timeout_completion___block_invoke;
    v31 = &unk_1E76649C8;
    v32 = v19;
    v34 = v17;
    v35 = v10;
    v33 = v16;
    v22 = [v21 initWithQueryResultHandler:&v28];
    [v22 setTimeout:{a7, v28, v29, v30, v31}];
    v23 = objc_alloc(MEMORY[0x1E69CDE90]);
    v36 = *MEMORY[0x1E69CDEF0];
    v37 = v15;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v25 = [v23 initWithProductType:v14 additionalQueryParameters:v24];

    [(SFDeviceAssetManager *)self->_assetManager getAssetBundleForDeviceQuery:v25 withRequestConfiguration:v22];
    v26 = v32;
  }

  else
  {
    v27 = MCLogCategoryDefault();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v39 = v19;
      _os_log_impl(&dword_1A20FC000, v27, OS_LOG_TYPE_DEBUG, "[AssetManager] Response<%@> No color provided, not requesting bundle", buf, 0xCu);
    }

    v26 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MRUAssetManagerErrorDomain" code:0 userInfo:0];
    (*(v17 + 2))(v17, 0, v26);
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

- (id)symbolImageForEndpointRoute:(id)a3
{
  v3 = MEMORY[0x1E69B09B8];
  v4 = [a3 endpointObject];
  v5 = [v4 outputDevices];
  v6 = [v3 symbolNameForOutputDevices:v5];

  v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v6];

  return v7;
}

- (BOOL)shouldLoadPhotorealisticAssetForRoute:(id)a3
{
  v3 = [a3 endpointObject];
  v4 = [v3 outputDevices];

  v5 = [v4 firstObject];
  v6 = [v4 count];
  v7 = [v5 deviceSubtype];
  v8 = [v5 deviceEnclosureColor];

  v11 = v6 == 1 && v7 == 12 && v8 != 0;
  return v11;
}

@end