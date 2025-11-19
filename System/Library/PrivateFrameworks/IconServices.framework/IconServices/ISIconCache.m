@interface ISIconCache
+ (id)defaultIconCache;
- (BOOL)findStoreUnitForIcon:(id)a3 descriptor:(id)a4 UUID:(id *)a5 validationToken:(id *)a6;
- (ISIconCache)initWithConfiguration:(id)a3;
- (ISIconCache)initWithURL:(id)a3 storeIndex:(id)a4 sandboxExtensionToken:(unint64_t)a5;
- (id)description;
- (id)storeUnitForUUID:(id)a3;
- (void)dealloc;
@end

@implementation ISIconCache

+ (id)defaultIconCache
{
  if (+[ISIconCache defaultIconCache]::onceToken != -1)
  {
    +[ISIconCache defaultIconCache];
  }

  v3 = +[ISIconCache defaultIconCache]::defaultIconCache;

  return v3;
}

void __31__ISIconCache_defaultIconCache__block_invoke()
{
  v4 = objc_alloc_init(ISIconCacheConfiguration);
  v0 = +[ISDefaults sharedInstance];
  v1 = [v0 cacheURL];
  [(ISIconCacheConfiguration *)v4 setUrl:v1];

  v2 = [[ISIconCache alloc] initWithConfiguration:v4];
  v3 = +[ISIconCache defaultIconCache]::defaultIconCache;
  +[ISIconCache defaultIconCache]::defaultIconCache = v2;
}

- (ISIconCache)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 sandboxExtension];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v4 sandboxExtension];
    [v7 UTF8String];
    v6 = sandbox_extension_consume();
  }

  v8 = [v4 url];
  v9 = [v8 URLByAppendingPathComponent:@"store.index" isDirectory:0];
  v10 = [[ISStoreIndex alloc] initWithStoreFileURL:v9];
  v11 = [(ISIconCache *)self initWithURL:v8 storeIndex:v10 sandboxExtensionToken:v6];

  return v11;
}

- (ISIconCache)initWithURL:(id)a3 storeIndex:(id)a4 sandboxExtensionToken:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = ISIconCache;
  v11 = [(ISIconCache *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_sandboxToken = a5;
    objc_storeStrong(&v11->_cacheURL, a3);
    objc_storeStrong(&v12->_storeIndex, a4);
    v13 = [[ISStore alloc] initWithURL:v9];
    store = v12->_store;
    v12->_store = v13;
  }

  return v12;
}

- (void)dealloc
{
  sandboxToken = self->_sandboxToken;
  sandbox_extension_release();
  v4.receiver = self;
  v4.super_class = ISIconCache;
  [(ISIconCache *)&v4 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(ISIconCache *)self cachePath];
  [v3 appendFormat:@"Cache path: %@\n", v4];

  [v3 appendFormat:@"%@", self->_storeIndex];
  v5 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  return v5;
}

- (BOOL)findStoreUnitForIcon:(id)a3 descriptor:(id)a4 UUID:(id *)a5 validationToken:(id *)a6
{
  v76[2] = *MEMORY[0x1E69E9840];
  v45 = a3;
  v46 = a4;
  v70 = 0;
  v76[0] = 0;
  v76[1] = 0;
  v8 = [v45 digest];
  v47 = self;
  [v8 _IF_getUUIDBytes:v76 hash64:&v70];

  [v46 scale];
  v10 = v9;
  [v46 size];
  v12 = v11;
  v13 = [v46 digest];
  v75[0] = 0;
  v75[1] = 0;
  v42 = v13;
  [v13 getUUIDBytes:v75];
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__2;
  v68 = __Block_byref_object_dispose__2;
  v69 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__2;
  v62 = __Block_byref_object_dispose__2;
  v63 = 0;
  if (v46)
  {
    v14 = _ISPrepareISIconSignpostLog();
    v15 = os_signpost_enabled(v14);

    if (v15)
    {
      [v45 _activeSignpostsForDescriptor:v46];
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v16 = v55 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v54 objects:v74 count:16];
      if (v17)
      {
        v18 = *v55;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v55 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v54 + 1) + 8 * i);
            if ([v20 unsignedLongLongValue])
            {
              v21 = _ISPrepareISIconSignpostLog();
              v22 = os_signpost_enabled(v21);

              if (v22)
              {
                v23 = _ISPrepareISIconSignpostLog();
                v24 = [v20 unsignedLongLongValue];
                if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_1A77B8000, v23, OS_SIGNPOST_EVENT, v24, "PrepareISIcon", "STORE_LOOKUP", buf, 2u);
                }
              }
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v54 objects:v74 count:16];
        }

        while (v17);
      }
    }
  }

  v25 = [(ISIconCache *)v47 storeIndex];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __76__ISIconCache_lookup__findStoreUnitForIcon_descriptor_UUID_validationToken___block_invoke;
  v52[3] = &unk_1E77C6D50;
  v53 = v10;
  v52[6] = v12;
  v52[7] = v75;
  v52[8] = v76;
  v52[4] = &v64;
  v52[5] = &v58;
  [v25 enumerateValuesForUUID:v76 bock:v52];

  v26 = v65[5];
  if (v26 && v59[5])
  {
    *a5 = [v26 copy];
    *a6 = [v59[5] copy];
    v44 = 1;
  }

  else
  {
    v44 = 0;
  }

  if (v46)
  {
    v27 = _ISPrepareISIconSignpostLog();
    v28 = os_signpost_enabled(v27);

    if (v28)
    {
      [v45 _activeSignpostsForDescriptor:v46];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v29 = v49 = 0u;
      v30 = [v29 countByEnumeratingWithState:&v48 objects:v73 count:16];
      if (v30)
      {
        v31 = *v49;
        if (v44)
        {
          v32 = "found";
        }

        else
        {
          v32 = "not-found";
        }

        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v49 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v48 + 1) + 8 * j);
            if ([v34 unsignedLongLongValue])
            {
              v35 = _ISPrepareISIconSignpostLog();
              v36 = os_signpost_enabled(v35);

              if (v36)
              {
                v37 = _ISPrepareISIconSignpostLog();
                v38 = [v34 unsignedLongLongValue];
                if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
                {
                  *buf = 136315138;
                  v72 = v32;
                  _os_signpost_emit_with_name_impl(&dword_1A77B8000, v37, OS_SIGNPOST_EVENT, v38, "PrepareISIcon", "STORE_LOOKUP_RESULT: %s", buf, 0xCu);
                }
              }
            }
          }

          v30 = [v29 countByEnumeratingWithState:&v48 objects:v73 count:16];
        }

        while (v30);
      }
    }
  }

  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
  v39 = *MEMORY[0x1E69E9840];
  return v44;
}

void __76__ISIconCache_lookup__findStoreUnitForIcon_descriptor_UUID_validationToken___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 72) != *(a2 + 40) || (v5 = *(a1 + 48), v5 < *(a2 + 16)) || v5 > *(a2 + 24))
  {
    v6 = _ISDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __76__ISIconCache_lookup__findStoreUnitForIcon_descriptor_UUID_validationToken___block_invoke_cold_3(v6, v7, v8, v9, v10, v11, v12, v13);
    }

LABEL_6:

    return;
  }

  if (uuid_compare((a2 + 44), *(a1 + 56)))
  {
    v6 = _ISDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __76__ISIconCache_lookup__findStoreUnitForIcon_descriptor_UUID_validationToken___block_invoke_cold_1(v6, v15, v16, v17, v18, v19, v20, v21);
    }

    goto LABEL_6;
  }

  if (uuid_compare(a2, *(a1 + 64)))
  {
    v6 = _ISDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __76__ISIconCache_lookup__findStoreUnitForIcon_descriptor_UUID_validationToken___block_invoke_cold_2(v6, v22, v23, v24, v25, v26, v27, v28);
    }

    goto LABEL_6;
  }

  v29 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a2 + 60];
  v30 = *(*(a1 + 32) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v29;

  v32 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 + 76 length:40];
  v33 = *(*(a1 + 40) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v32;

  *a3 = 1;
}

- (id)storeUnitForUUID:(id)a3
{
  v4 = a3;
  v5 = [(ISIconCache *)self store];
  v6 = [v5 unitForUUID:v4];

  return v6;
}

@end