@interface NSFileManager(HealthContentDaemon)
- (uint64_t)hk_enumerateDirectoryAtURL:()HealthContentDaemon includingPropertiesForKeys:options:error:handler:;
@end

@implementation NSFileManager(HealthContentDaemon)

- (uint64_t)hk_enumerateDirectoryAtURL:()HealthContentDaemon includingPropertiesForKeys:options:error:handler:
{
  v47 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v28 = a7;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__10;
  v44 = __Block_byref_object_dispose__10;
  v45 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __114__NSFileManager_HealthContentDaemon__hk_enumerateDirectoryAtURL_includingPropertiesForKeys_options_error_handler___block_invoke;
  v39[3] = &unk_2796BA1B8;
  v39[4] = &v40;
  [a1 enumeratorAtURL:v12 includingPropertiesForKeys:v13 options:a5 errorHandler:v39];
  v26 = v12;
  v27 = v13;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 1;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = v34 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v46 count:16];
  if (v15)
  {
    v16 = *v32;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v29 = *(*(&v31 + 1) + 8 * i);
        v30 = v28;
        HKWithAutoreleasePool();
        v18 = v36[3];

        if (!v18)
        {
          v21 = v14;
          goto LABEL_16;
        }

        if (v18 == 2)
        {
          goto LABEL_10;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v31 objects:v46 count:{16, v26, v27}];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_10:

  v19 = v41[5];
  if (v19)
  {
    v20 = v19;
    v21 = v20;
    if (a6)
    {
      v22 = v20;
      *a6 = v21;
    }

    else
    {
      _HKLogDroppedError();
    }

LABEL_16:

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v40, 8);
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

@end