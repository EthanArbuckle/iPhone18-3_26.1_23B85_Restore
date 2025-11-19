@interface PKPaymentHeroImageManifest
+ (BOOL)manifestFileExistsForRegion:(id)a3;
+ (id)manifestFileForRegion:(id)a3 planningToWrite:(BOOL)a4;
+ (id)manifestForRegion:(id)a3;
+ (void)downloadManifestForRegion:(id)a3 url:(id)a4 fileDownloader:(id)a5 completion:(id)a6;
+ (void)removeManifestFileForRegion:(id)a3;
+ (void)saveManifestDataToDeviceForRegion:(id)a3 data:(id)a4;
- (PKPaymentHeroImageManifest)initWithDictionary:(id)a3;
@end

@implementation PKPaymentHeroImageManifest

+ (BOOL)manifestFileExistsForRegion:(id)a3
{
  v3 = [a1 manifestFileForRegion:a3 planningToWrite:0];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  return v6;
}

+ (void)removeManifestFileForRegion:(id)a3
{
  v8 = [a1 manifestFileForRegion:a3 planningToWrite:1];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v8 path];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [v8 path];
    [v6 removeItemAtPath:v7 error:0];
  }
}

- (PKPaymentHeroImageManifest)initWithDictionary:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaymentHeroImageManifest *)self init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"cards"];

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v6)
    {
      v8 = [v4 PKArrayContaining:objc_opt_class() forKey:@"cards"];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v32;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [[PKPaymentHeroImage alloc] initWithDictionary:*(*(&v31 + 1) + 8 * i)];
            v14 = [(PKPaymentHeroImage *)v13 identifier];
            v15 = v14;
            if (v13)
            {
              v16 = v14 == 0;
            }

            else
            {
              v16 = 1;
            }

            if (!v16)
            {
              [v7 setValue:v13 forKey:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v8 = v4;
      v17 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v36;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v36 != v19)
            {
              objc_enumerationMutation(v8);
            }

            v21 = *(*(&v35 + 1) + 8 * j);
            v22 = [PKPaymentHeroImage alloc];
            v23 = [v8 PKDictionaryForKey:v21];
            v24 = [(PKPaymentHeroImage *)v22 initWithLegacyDictionary:v23 identifier:v21];

            v25 = [(PKPaymentHeroImage *)v24 identifier];
            v26 = v25;
            if (v24)
            {
              v27 = v25 == 0;
            }

            else
            {
              v27 = 1;
            }

            if (!v27)
            {
              [v7 setValue:v24 forKey:v25];
            }
          }

          v18 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v18);
      }
    }

    v28 = [v7 copy];
    images = v5->_images;
    v5->_images = v28;
  }

  return v5;
}

+ (id)manifestForRegion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 manifestFileForRegion:v4 planningToWrite:0];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:0 error:0];
    if (v9)
    {
      v16 = 0;
      v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:&v16];
      v11 = v16;
      v12 = v11;
      if (v10 && !v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v13 = [[PKPaymentHeroImageManifest alloc] initWithDictionary:v10];
      }

      else
      {
        v14 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v18 = v12;
          v19 = 2112;
          v20 = v4;
          _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Unable to parse hero manifest (%@) for region %@", buf, 0x16u);
        }

        v13 = 0;
      }
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v4;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Unable to read hero manifest file for region %@", buf, 0xCu);
      }

      v13 = 0;
    }
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Unable to find hero manifest file for region %@", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

+ (void)downloadManifestForRegion:(id)a3 url:(id)a4 fileDownloader:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__PKPaymentHeroImageManifest_downloadManifestForRegion_url_fileDownloader_completion___block_invoke;
  v14[3] = &unk_1E79CD798;
  v16 = v11;
  v17 = a1;
  v15 = v10;
  v12 = v10;
  v13 = v11;
  [a5 downloadFromUrl:a4 completionHandler:v14];
}

void __86__PKPaymentHeroImageManifest_downloadManifestForRegion_url_fileDownloader_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    if (!v9)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:0];
    }

    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Failed downloading hero manifest %@", buf, 0xCu);
    }

    v17 = *(a1 + 40);
    if (v17)
    {
      (*(v17 + 16))(v17, v10, 0);
    }
  }

  else
  {
    v20 = 0;
    v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v20];
    v12 = v20;
    v10 = v12;
    if (v11 && !v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v13 = [[PKPaymentHeroImageManifest alloc] initWithDictionary:v11]) != 0)
    {
      v14 = v13;
      [*(a1 + 48) saveManifestDataToDeviceForRegion:*(a1 + 32) data:v7];
      v15 = *(a1 + 40);
      if (v15)
      {
        (*(v15 + 16))(v15, 0, v14);
      }
    }

    else
    {
      v18 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v10;
        _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Unable to parse hero manifest %@", buf, 0xCu);
      }

      v19 = *(a1 + 40);
      if (v19)
      {
        (*(v19 + 16))(v19, v10, 0);
      }

      v14 = 0;
    }
  }
}

+ (void)saveManifestDataToDeviceForRegion:(id)a3 data:(id)a4
{
  v6 = a4;
  v7 = a3;
  PKPassAssetDownloadCacheCreateDirectory(0, &__block_literal_global_49);
  v8 = [a1 manifestFileForRegion:v7 planningToWrite:1];

  [v6 writeToURL:v8 atomically:1];
}

void __69__PKPaymentHeroImageManifest_saveManifestDataToDeviceForRegion_data___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && (a2 & 1) == 0)
  {
    v8 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Could not create download cache at %@", &v9, 0xCu);
    }
  }
}

+ (id)manifestFileForRegion:(id)a3 planningToWrite:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__16;
  v15 = __Block_byref_object_dispose__16;
  v16 = 0;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hero_image_manifest_%@.json", v5];
  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__PKPaymentHeroImageManifest_manifestFileForRegion_planningToWrite___block_invoke;
    v10[3] = &unk_1E79C88C0;
    v10[4] = &v11;
    PKPassAssetDownloadCacheCreateFileURLForWriting(0, v6, v10);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__PKPaymentHeroImageManifest_manifestFileForRegion_planningToWrite___block_invoke_2;
    v9[3] = &unk_1E79C88C0;
    v9[4] = &v11;
    PKPassAssetDownloadCacheCreateFileURLReadOnly(0, v6, v9);
  }

  v7 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v7;
}

@end