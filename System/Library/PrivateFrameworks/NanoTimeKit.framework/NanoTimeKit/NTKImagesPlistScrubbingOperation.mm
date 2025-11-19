@interface NTKImagesPlistScrubbingOperation
- (BOOL)scrubAssetAtURL:(id)a3 toDestinationURL:(id)a4 error:(id *)a5;
@end

@implementation NTKImagesPlistScrubbingOperation

- (BOOL)scrubAssetAtURL:(id)a3 toDestinationURL:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 URLByDeletingLastPathComponent];
  v10 = [v9 path];
  v11 = [(NTKBasePhotoResourcesManifest *)NTKPhotosFaceResourcesManifest manifestForResourceDirectory:v10];

  if (!v11)
  {
    if (a5)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.resourceDirectory" code:2003 userInfo:0];
      *a5 = v28 = 0;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_26;
  }

  v32 = v11;
  v12 = [v11 imageList];
  v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (!v14)
  {

    goto LABEL_22;
  }

  v15 = v14;
  v31 = a5;
  v16 = 0;
  v17 = *v35;
  do
  {
    v18 = 0;
    do
    {
      if (*v35 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v34 + 1) + 8 * v18);
      v20 = [v19 objectForKeyedSubscript:@"northAnalysis"];
      if (v20)
      {

LABEL_10:
        v22 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v19];
        [v22 removeObjectForKey:@"northAnalysis"];
        [v22 removeObjectForKey:@"southAnalysis"];
        [v33 addObject:v22];

        v16 = 1;
        goto LABEL_11;
      }

      v21 = [v19 objectForKeyedSubscript:@"southAnalysis"];

      if (v21)
      {
        goto LABEL_10;
      }

      [v33 addObject:v19];
LABEL_11:
      ++v18;
    }

    while (v15 != v18);
    v23 = [v13 countByEnumeratingWithState:&v34 objects:v40 count:16];
    v15 = v23;
  }

  while (v23);

  a5 = v31;
  if (v16)
  {
    v24 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v7;
      _os_log_impl(&dword_22D9C5000, v24, OS_LOG_TYPE_INFO, "[Resource Scrubber]: Extra analysis data found in plist: '%@'. Will scrub.", buf, 0xCu);
    }

    v11 = v32;
    v25 = [v32 assetCollectionIdentifier];
    v26 = [v8 URLByDeletingLastPathComponent];
    v27 = [v26 path];
    v28 = NTKPhotosWriteImageListForAssetCollection(v33, v25, v27);

    goto LABEL_25;
  }

LABEL_22:
  v29 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v39 = v7;
    _os_log_impl(&dword_22D9C5000, v29, OS_LOG_TYPE_INFO, "[Resource Scrubber]: Extra analysis data not found in plist: '%@'. Passing through", buf, 0xCu);
  }

  v25 = [MEMORY[0x277CCAA00] defaultManager];
  v28 = [v25 copyItemAtURL:v7 toURL:v8 error:a5];
  v11 = v32;
LABEL_25:

LABEL_26:
  return v28;
}

@end