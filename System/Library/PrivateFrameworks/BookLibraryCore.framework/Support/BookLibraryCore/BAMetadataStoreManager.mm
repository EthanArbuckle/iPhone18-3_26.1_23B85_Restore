@interface BAMetadataStoreManager
- (BAMetadataStoreManager)init;
- (BAMetadataStoreManager)initWithContainer:(id)a3;
- (void)deleteStoreWithCompletion:(id)a3;
@end

@implementation BAMetadataStoreManager

- (BAMetadataStoreManager)initWithContainer:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BAMetadataStoreManager;
  v6 = [(BAMetadataStoreManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, a3);
    [(NSPersistentContainer *)v7->_container loadPersistentStoresWithCompletionHandler:&stru_10011E748];
    v8 = [[BAMetadataStore alloc] initWithPersistentContainer:v7->_container];
    metadataStore = v7->_metadataStore;
    v7->_metadataStore = v8;
  }

  return v7;
}

- (BAMetadataStoreManager)init
{
  v3 = +[BAMetadataStorePersistentContainer persistentContainer];
  v4 = [(BAMetadataStoreManager *)self initWithContainer:v3];

  return v4;
}

- (void)deleteStoreWithCompletion:(id)a3
{
  v21 = a3;
  v23 = self;
  v4 = [(BAMetadataStoreManager *)self container];
  v5 = [v4 persistentStoreCoordinator];
  v6 = [v5 persistentStores];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v24 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v26 + 1) + 8 * i) URL];
        if (v11)
        {
          v12 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v11];
          v13 = [v12 options];
          v14 = BLServiceMetadataStoreLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v31 = v11;
            v32 = 2112;
            v33 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Attempt to remove metadata store, url: %@, options: %@", buf, 0x16u);
          }

          v15 = [(BAMetadataStoreManager *)v23 container];
          v16 = [v15 persistentStoreCoordinator];
          v17 = [v12 type];
          v25 = v9;
          [v16 destroyPersistentStoreAtURL:v11 withType:v17 options:v13 error:&v25];
          v18 = v25;

          v9 = v18;
        }

        else
        {
          v12 = BLServiceMetadataStoreLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unexpected nil metadataStore URL", buf, 2u);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v19 = objc_retainBlock(v21);
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19, v9);
  }
}

@end