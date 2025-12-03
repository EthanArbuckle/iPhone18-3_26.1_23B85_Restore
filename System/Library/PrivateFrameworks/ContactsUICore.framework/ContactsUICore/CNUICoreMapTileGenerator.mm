@interface CNUICoreMapTileGenerator
+ (id)defaultImage;
+ (id)mapTileImagesForPlacemark:(id)placemark snapshotterProvider:(id)provider scheduler:(id)scheduler;
+ (id)placemarkForAddress:(id)address geocoderProvider:(id)provider scheduler:(id)scheduler;
- (CNUICoreMapTileGenerator)init;
- (CNUICoreMapTileGenerator)initWithGeocoderProvider:(id)provider snapshotterProvider:(id)snapshotterProvider schedulerProvider:(id)schedulerProvider;
- (id)tilesForAddress:(id)address;
@end

@implementation CNUICoreMapTileGenerator

+ (id)defaultImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = CNContactsUICoreBundle();
  v4 = [v2 imageNamed:@"MapTilePlaceholder" inBundle:v3];

  return v4;
}

- (CNUICoreMapTileGenerator)init
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  schedulerProvider = [currentEnvironment schedulerProvider];
  v5 = [(CNUICoreMapTileGenerator *)self initWithGeocoderProvider:&__block_literal_global_14 snapshotterProvider:&__block_literal_global_17 schedulerProvider:schedulerProvider];

  return v5;
}

id __32__CNUICoreMapTileGenerator_init__block_invoke()
{
  v0 = objc_alloc_init(getCLGeocoderClass());

  return v0;
}

id __32__CNUICoreMapTileGenerator_init__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = getMKMapSnapshotterClass;
  v3 = a2;
  v4 = [objc_alloc(v2()) initWithOptions:v3];

  return v4;
}

- (CNUICoreMapTileGenerator)initWithGeocoderProvider:(id)provider snapshotterProvider:(id)snapshotterProvider schedulerProvider:(id)schedulerProvider
{
  providerCopy = provider;
  snapshotterProviderCopy = snapshotterProvider;
  schedulerProviderCopy = schedulerProvider;
  v20.receiver = self;
  v20.super_class = CNUICoreMapTileGenerator;
  v11 = [(CNUICoreMapTileGenerator *)&v20 init];
  if (v11)
  {
    v12 = [providerCopy copy];
    geocoderProvider = v11->_geocoderProvider;
    v11->_geocoderProvider = v12;

    v14 = [snapshotterProviderCopy copy];
    snapshotterProvider = v11->_snapshotterProvider;
    v11->_snapshotterProvider = v14;

    v16 = [schedulerProviderCopy newSerialSchedulerWithName:@"com.apple.contacts.ContactsUI.CNUICoreMapTileGenerator"];
    workQueue = v11->_workQueue;
    v11->_workQueue = v16;

    objc_storeStrong(&v11->_schedulerProvider, schedulerProvider);
    v18 = v11;
  }

  return v11;
}

- (id)tilesForAddress:(id)address
{
  v29[1] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  geocoderProvider = [(CNUICoreMapTileGenerator *)self geocoderProvider];
  snapshotterProvider = [(CNUICoreMapTileGenerator *)self snapshotterProvider];
  workQueue = [(CNUICoreMapTileGenerator *)self workQueue];
  schedulerProvider = [(CNUICoreMapTileGenerator *)self schedulerProvider];
  v25 = geocoderProvider;
  v9 = [objc_opt_class() placemarkForAddress:addressCopy geocoderProvider:geocoderProvider scheduler:workQueue];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __44__CNUICoreMapTileGenerator_tilesForAddress___block_invoke;
  v26[3] = &unk_1E76E7E98;
  v26[4] = self;
  v10 = snapshotterProvider;
  v28 = v10;
  v11 = workQueue;
  v27 = v11;
  v12 = [v9 flatMap:v26 schedulerProvider:schedulerProvider];
  v13 = MEMORY[0x1E6996798];
  null = [MEMORY[0x1E695DFB0] null];
  v15 = [v13 observableWithResult:null];
  v16 = [v12 onError:v15];

  schedulerProvider2 = [(CNUICoreMapTileGenerator *)self schedulerProvider];
  backgroundScheduler = [schedulerProvider2 backgroundScheduler];
  v19 = [v16 subscribeOn:backgroundScheduler];

  defaultImage = [objc_opt_class() defaultImage];
  v29[0] = defaultImage;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v22 = [v19 startWith:v21];

  v23 = +[CNUICoreLogProvider contact_card_os_log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [(CNUICoreMapTileGenerator *)addressCopy tilesForAddress:v9, v23];
  }

  return v22;
}

id __44__CNUICoreMapTileGenerator_tilesForAddress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() mapTileImagesForPlacemark:v3 snapshotterProvider:*(a1 + 48) scheduler:*(a1 + 40)];

  return v4;
}

+ (id)placemarkForAddress:(id)address geocoderProvider:(id)provider scheduler:(id)scheduler
{
  addressCopy = address;
  providerCopy = provider;
  schedulerCopy = scheduler;
  v10 = MEMORY[0x1E6996798];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__CNUICoreMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke;
  v16[3] = &unk_1E76E7F38;
  v18 = addressCopy;
  v19 = providerCopy;
  v17 = schedulerCopy;
  v11 = addressCopy;
  v12 = providerCopy;
  v13 = schedulerCopy;
  v14 = [v10 observableWithBlock:v16];

  return v14;
}

id __75__CNUICoreMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__CNUICoreMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_2;
  v8[3] = &unk_1E76E7F10;
  v12 = a1[6];
  v9 = a1[5];
  v10 = a1[4];
  v11 = v3;
  v5 = v3;
  v6 = [v4 performCancelableBlock:v8];

  return v6;
}

void __75__CNUICoreMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 56) + 16))();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__CNUICoreMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_3;
  v19[3] = &unk_1E76E7D10;
  v5 = v4;
  v20 = v5;
  [v3 addCancelationBlock:v19];
  v6 = +[CNUICoreLogProvider contact_card_os_log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __75__CNUICoreMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_2_cold_1(a1, v6, v7, v8, v9, v10, v11, v12);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__CNUICoreMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_27;
  v15[3] = &unk_1E76E7EE8;
  v13 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = v3;
  v14 = v3;
  [v5 geocodePostalAddress:v13 completionHandler:v15];
}

void __75__CNUICoreMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__CNUICoreMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_2_28;
  v11[3] = &unk_1E76E7EC0;
  v12 = v5;
  v13 = v6;
  v7 = *(a1 + 32);
  v14 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  v10 = [v7 performCancelableBlock:v11];
  [*(a1 + 48) addCancelable:v10];
}

void __75__CNUICoreMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_2_28(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 40);
  if (!v2)
  {
    v4 = MEMORY[0x1E696ABC0];
    if (!v3)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsUIErrorDomain" code:501 userInfo:0];
      goto LABEL_6;
    }

LABEL_5:
    v15 = *MEMORY[0x1E696AA08];
    v16[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v6 = [v4 errorWithDomain:@"CNContactsUIErrorDomain" code:501 userInfo:v5];

LABEL_6:
    [*(a1 + 48) observerDidFailWithError:v6];
    goto LABEL_10;
  }

  if (v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    goto LABEL_5;
  }

  v6 = [*(a1 + 32) objectAtIndexedSubscript:0];
  v7 = +[CNUICoreLogProvider contact_card_os_log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __75__CNUICoreMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_2_28_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = [objc_alloc(getMKPlacemarkClass()) initWithPlacemark:v6];
  [*(a1 + 48) observerDidReceiveResult:v14];

LABEL_10:
}

+ (id)mapTileImagesForPlacemark:(id)placemark snapshotterProvider:(id)provider scheduler:(id)scheduler
{
  placemarkCopy = placemark;
  providerCopy = provider;
  schedulerCopy = scheduler;
  v10 = MEMORY[0x1E6996798];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__CNUICoreMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke;
  v16[3] = &unk_1E76E7FD8;
  v17 = schedulerCopy;
  v18 = placemarkCopy;
  v19 = providerCopy;
  v11 = providerCopy;
  v12 = placemarkCopy;
  v13 = schedulerCopy;
  v14 = [v10 observableWithBlock:v16];

  return v14;
}

id __84__CNUICoreMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__CNUICoreMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_2;
  v8[3] = &unk_1E76E7FB0;
  v4 = a1[4];
  v9 = a1[5];
  v12 = a1[6];
  v10 = a1[4];
  v11 = v3;
  v5 = v3;
  v6 = [v4 performCancelableBlock:v8];

  return v6;
}

void __84__CNUICoreMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) location];
  [v4 coordinate];
  v6 = v5;
  v8 = v7;

  v9 = objc_alloc_init(getMKMapSnapshotOptionsClass());
  [v9 setRegion:{v6, v8, 0.0075, 0.0075}];
  [v9 setSize:{91.0, 91.0}];
  v10 = objc_alloc(getMKMapSnapshotFeatureAnnotationClass());
  v11 = [*(a1 + 32) location];
  [v11 coordinate];
  v12 = [v10 initWithCoordinate:0 title:1 representation:?];

  v31[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [v9 _setCustomFeatureAnnotations:v13];

  v14 = (*(*(a1 + 56) + 16))();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __84__CNUICoreMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_3;
  v28[3] = &unk_1E76E7F60;
  v29 = *(a1 + 40);
  v15 = v14;
  v30 = v15;
  [v3 addCancelationBlock:v28];
  v16 = +[CNUICoreLogProvider contact_card_os_log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __84__CNUICoreMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_2_cold_1(a1 + 32, v16, v17, v18, v19, v20, v21, v22);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __84__CNUICoreMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_34;
  v24[3] = &unk_1E76E7F88;
  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  v27 = v3;
  v23 = v3;
  [v15 startWithCompletionHandler:v24];
}

void __84__CNUICoreMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __84__CNUICoreMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_4;
  v2[3] = &unk_1E76E7D10;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 performBlock:v2];
}

void __84__CNUICoreMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__CNUICoreMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_2_35;
  v11[3] = &unk_1E76E7EC0;
  v12 = v5;
  v13 = v6;
  v7 = *(a1 + 32);
  v14 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  v10 = [v7 performCancelableBlock:v11];
  [*(a1 + 48) addCancelable:v10];
}

void __84__CNUICoreMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_2_35(uint64_t a1)
{
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v3 = +[CNUICoreLogProvider contact_card_os_log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __84__CNUICoreMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_2_35_cold_1(v3);
    }

    v4 = *(a1 + 48);
    v2 = [*(a1 + 32) image];
    [v4 observerDidReceiveResult:v2];
  }

  else
  {
    v2 = +[CNUICoreLogProvider contact_card_os_log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __84__CNUICoreMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_2_35_cold_2(a1, v2);
    }
  }
}

- (void)tilesForAddress:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1A31E6000, log, OS_LOG_TYPE_DEBUG, "Geocoding tilesForAddress with %@ and placemark %@…", &v3, 0x16u);
}

void __84__CNUICoreMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_2_35_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_ERROR, "Error generating a snapshot: %@", &v3, 0xCu);
}

@end