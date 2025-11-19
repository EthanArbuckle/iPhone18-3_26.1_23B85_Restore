@interface BLEduCloudContainer
+ (id)sharedEduCloudContainer;
- (BLEduCloudContainer)init;
- (BOOL)_addOrUpdateCloudEntryWithDictionary:(id)a3 error:(id *)a4;
- (BOOL)_coordinatedReadOfPromisesWithError:(id *)a3;
- (BOOL)_writePlist:(id)a3 toURL:(id)a4 error:(id *)a5;
- (BOOL)addBookItem:(id)a3 error:(id *)a4;
- (BOOL)removeBookItem:(id)a3 error:(id *)a4;
- (BOOL)updateBookItem:(id)a3 error:(id *)a4;
- (NSURL)documentsURL;
- (id)allBookItems;
- (id)bookItemForPermlink:(id)a3;
- (id)bookItemForURL:(id)a3;
- (id)bookItemsForPermlinks:(id)a3;
- (id)cloudUrlForPermlink:(id)a3;
- (id)dictionaryAsBookItem:(id)a3 path:(id)a4;
- (id)fileNameForPermlink:(id)a3;
- (id)performMetadataActionOnCloudURL:(id)a3 action:(id)a4;
@end

@implementation BLEduCloudContainer

+ (id)sharedEduCloudContainer
{
  if (qword_27EC71F80 != -1)
  {
    sub_241D76DC8();
  }

  v3 = qword_27EC71F88;

  return v3;
}

- (BLEduCloudContainer)init
{
  v19.receiver = self;
  v19.super_class = BLEduCloudContainer;
  v2 = [(BLEduCloudContainer *)&v19 init];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = dispatch_queue_create("com.apple.iBooks.BLEduCloudContainer.containerQueue", 0);
  containerQueue = v3->_containerQueue;
  v3->_containerQueue = v4;

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 ubiquityIdentityToken];
  cloudToken = v3->_cloudToken;
  v3->_cloudToken = v7;

  v9 = v3->_cloudToken;
  v10 = BLDefaultLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_DEBUG, "Obtained cloud token.", buf, 2u);
    }

    v12 = v3->_containerQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_241D2D1D0;
    v15[3] = &unk_278D17380;
    v13 = v3;
    v16 = v13;
    v17 = v6;
    dispatch_async(v12, v15);

    v3 = v16;
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_DEBUG, "Not signed in to iCloud. No edu cloud support available.", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (NSURL)documentsURL
{
  documentsURL = self->_documentsURL;
  if (!documentsURL)
  {
    v4 = [(BLEduCloudContainer *)self containerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241D2D2D8;
    block[3] = &unk_278D173A8;
    block[4] = self;
    dispatch_sync(v4, block);

    documentsURL = self->_documentsURL;
  }

  return documentsURL;
}

- (id)dictionaryAsBookItem:(id)a3 path:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = a4;
    v6 = v4;
    v4 = [[BLBookItem alloc] initWithEduCloudData:v6 path:v5];
  }

  return v4;
}

- (id)fileNameForPermlink:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 pathExtension];
  v5 = MEMORY[0x277CCACA8];
  v6 = [v3 identifierFromPermlink];
  v7 = [v5 stringWithFormat:@"%@", v6];

  if (v4)
  {
    v8 = [v7 stringByAppendingPathExtension:v4];

    v7 = v8;
  }

  else
  {
    v9 = BLDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_ERROR, "Warning. Unable to determine path extension from permlink {%@}", buf, 0xCu);
    }
  }

  v10 = [v7 stringByAppendingPathExtension:@"cloudItem"];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)cloudUrlForPermlink:(id)a3
{
  v4 = a3;
  v5 = [(BLEduCloudContainer *)self documentsURL];
  v6 = [(BLEduCloudContainer *)self fileNameForPermlink:v4];

  v7 = [v5 URLByAppendingPathComponent:v6];

  return v7;
}

- (BOOL)_writePlist:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:200 options:0 error:a5];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 writeToURL:v7 options:1 error:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_addOrUpdateCloudEntryWithDictionary:(id)a3 error:(id *)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_241D2DC2C;
  v53 = sub_241D2DC3C;
  v54 = 0;
  v7 = [v6 objectForKeyedSubscript:@"permlink"];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BLEduCloudContainer *)self cloudToken];
  if (!v9 || (([(BLEduCloudContainer *)self documentsURL], (v10 = objc_claimAutoreleasedReturnValue()) != 0) ? (v11 = v8 == 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), v10, v9, !v12))
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    v13 = v50[5];
    v50[5] = v20;
    goto LABEL_31;
  }

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [(BLEduCloudContainer *)self cloudUrlForPermlink:v8];
  if ([v13 isUbiquitousItemAtURL:v14])
  {
    v15 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
    v48 = 0;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_241D2DC44;
    v44[3] = &unk_278D173D0;
    v46 = &v55;
    v45 = v6;
    v47 = &v49;
    v41 = v15;
    [v15 coordinateWritingItemAtURL:v14 options:0 error:&v48 byAccessor:v44];
    v16 = v48;
    if ((v56[3] & 1) == 0)
    {
      v17 = BLDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = v50[5];
        *buf = 138412546;
        v62 = v14;
        v63 = 2112;
        v64 = v18;
        _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_ERROR, "Failed to write plist to %@. Error: %@", buf, 0x16u);
      }
    }

    v19 = v45;
    goto LABEL_26;
  }

  v41 = [(BLEduCloudContainer *)self fileNameForPermlink:v8];
  v21 = NSTemporaryDirectory();
  v16 = [v21 stringByAppendingPathComponent:v41];

  [v13 removeItemAtPath:v16 error:0];
  v22 = [MEMORY[0x277CBEBC0] fileURLWithPath:v16];
  v23 = (v50 + 5);
  obj = v50[5];
  v24 = [(BLEduCloudContainer *)self _writePlist:v6 toURL:v22 error:&obj];
  objc_storeStrong(v23, obj);

  if (v24)
  {
    v25 = [MEMORY[0x277CBEBC0] fileURLWithPath:v16];
    v26 = (v50 + 5);
    v42 = v50[5];
    v27 = [v13 setUbiquitous:1 itemAtURL:v25 destinationURL:v14 error:&v42];
    objc_storeStrong(v26, v42);
    *(v56 + 24) = v27;

    if (v56[3])
    {
      goto LABEL_27;
    }

    v19 = BLDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v28 = v50[5];
      *buf = 138412546;
      v62 = v14;
      v63 = 2112;
      v64 = v28;
      v29 = "Failed to add cloud item at %@. Error:  %@";
LABEL_25:
      _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);
    }
  }

  else
  {
    v19 = BLDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v30 = v50[5];
      *buf = 138412546;
      v62 = v14;
      v63 = 2112;
      v64 = v30;
      v29 = "Failed to write plist to %@. Error:  %@";
      goto LABEL_25;
    }
  }

LABEL_26:

LABEL_27:
  v31 = [v14 path];
  v32 = [v13 attributesOfItemAtPath:v31 error:0];

  if (v32)
  {
    v33 = [v32 fileOwnerAccountName];
    v34 = [v33 isEqualToString:@"mobile"];

    if ((v34 & 1) == 0)
    {
      v35 = *MEMORY[0x277CCA120];
      v59[0] = *MEMORY[0x277CCA160];
      v59[1] = v35;
      v60[0] = @"mobile";
      v60[1] = @"mobile";
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
      v37 = [v14 path];
      [v13 setAttributes:v36 ofItemAtPath:v37 error:0];
    }
  }

LABEL_31:
  if (a4)
  {
    *a4 = v50[5];
  }

  v38 = *(v56 + 24);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);

  v39 = *MEMORY[0x277D85DE8];
  return v38 & 1;
}

- (BOOL)_coordinatedReadOfPromisesWithError:(id *)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(BLEduCloudContainer *)self documentsURL];
  v7 = [v6 path];
  v49 = 0;
  v8 = [v5 contentsOfDirectoryAtPath:v7 error:&v49];
  v9 = v49;

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v10)
  {
    v35 = v11;
    v37 = v9;
    v38 = v5;
    v39 = a3;
    v12 = [MEMORY[0x277CBEB18] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v36 = v8;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v46;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v45 + 1) + 8 * i);
          v19 = [v18 pathExtension];
          v20 = [v19 isEqualToString:@"cloudItem"];

          if (v20)
          {
            v21 = [(BLEduCloudContainer *)self documentsURL];
            v22 = [v21 URLByAppendingPathComponent:v18];

            [v12 addObject:v22];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v15);
    }

    if ([v12 count])
    {
      v23 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v24 = v12;
      v25 = [v24 countByEnumeratingWithState:&v41 objects:v54 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v42;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v42 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v41 + 1) + 8 * j);
            v40 = 0;
            [v23 coordinateReadingItemAtURL:v29 options:1 error:&v40 byAccessor:&unk_2853E2808];
            v30 = v40;
            if (v30)
            {
              v31 = BLDefaultLog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v51 = v24;
                v52 = 2112;
                v53 = v30;
                _os_log_impl(&dword_241D1F000, v31, OS_LOG_TYPE_ERROR, "Encountered error doing a coordinated read of %@. Error:  %@", buf, 0x16u);
              }
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v41 objects:v54 count:16];
        }

        while (v26);
      }
    }

    v5 = v38;
    a3 = v39;
    v8 = v36;
    v9 = v37;
    v11 = v35;
  }

  if (a3)
  {
    v32 = v9;
    *a3 = v9;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)removeBookItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 fileURL];

  if (v7)
  {
    v8 = [v6 fileURL];
    v9 = deleteItemAtURLCoordinated(v8);
  }

  else
  {
    v10 = [v6 permlink];

    if (v10)
    {
      v11 = [v6 permlink];
      v12 = [(BLEduCloudContainer *)self cloudUrlForPermlink:v11];

      v9 = deleteItemAtURLCoordinated(v12);
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    }
  }

  [v6 _setCloudCoverImageData:0];
  if (a4)
  {
    v13 = v9;
    *a4 = v9;
  }

  return v9 == 0;
}

- (BOOL)addBookItem:(id)a3 error:(id *)a4
{
  v6 = [a3 _cloudDictionaryRepresentation];
  LOBYTE(a4) = [(BLEduCloudContainer *)self _addOrUpdateCloudEntryWithDictionary:v6 error:a4];

  return a4;
}

- (BOOL)updateBookItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(BLEduCloudContainer *)self _coordinatedReadOfPromisesWithError:0];
  v7 = [v6 _cloudDictionaryRepresentation];

  LOBYTE(a4) = [(BLEduCloudContainer *)self _addOrUpdateCloudEntryWithDictionary:v7 error:a4];
  return a4;
}

- (id)allBookItems
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v28 = [MEMORY[0x277CBEB18] array];
  v4 = [(BLEduCloudContainer *)self cloudToken];

  if (v4)
  {
    v34 = 0;
    v5 = [(BLEduCloudContainer *)self _coordinatedReadOfPromisesWithError:&v34];
    v6 = v34;
    if (!v5)
    {
      v7 = BLDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v6;
        _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "Failed to read cloud container with error:  %@", buf, 0xCu);
      }
    }

    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v9 = [(BLEduCloudContainer *)self documentsURL];
      v10 = [v9 path];
      v33 = 0;
      v8 = [v3 contentsOfDirectoryAtPath:v10 error:&v33];
      v6 = v33;

      if (!v6)
      {
        if (![v8 count])
        {
          goto LABEL_12;
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = v8;
        v15 = [v11 countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v15)
        {
          v16 = v15;
          v27 = v3;
          v17 = *v30;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v30 != v17)
              {
                objc_enumerationMutation(v11);
              }

              v19 = *(*(&v29 + 1) + 8 * i);
              if ([v19 hasSuffix:@"cloudItem"])
              {
                v20 = [(BLEduCloudContainer *)self documentsURL];
                v21 = [v20 URLByAppendingPathComponent:v19];

                v22 = MEMORY[0x277CBEAC0];
                v23 = [v21 path];
                v24 = [v22 dictionaryWithContentsOfFile:v23];

                v25 = [v21 path];
                v26 = [(BLEduCloudContainer *)self dictionaryAsBookItem:v24 path:v25];

                if (v26)
                {
                  [v28 addObject:v26];
                }
              }
            }

            v16 = [v11 countByEnumeratingWithState:&v29 objects:v35 count:16];
          }

          while (v16);
          v8 = v11;
          v6 = 0;
          v3 = v27;
        }

        else
        {
          v8 = v11;
        }

LABEL_11:

LABEL_12:
        goto LABEL_13;
      }
    }

    v11 = BLDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v6;
      _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_ERROR, "Failed to get contents of cloud documents directory. Error:  %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_13:
  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v28];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)performMetadataActionOnCloudURL:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v6 path];
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v11 = MEMORY[0x277CBEAC0];
    v12 = [v6 path];
    v13 = [v11 dictionaryWithContentsOfFile:v12];

    v14 = [v13 mutableCopy];
    v15 = [v14 hash];
    v7[2](v7, v14);
    if ([v14 hash] == v15)
    {
      v16 = 0;
    }

    else
    {
      v18 = 0;
      [(BLEduCloudContainer *)self _addOrUpdateCloudEntryWithDictionary:v14 error:&v18];
      v16 = v18;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
  }

  return v16;
}

- (id)bookItemForURL:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_241D2DC2C;
  v21 = sub_241D2DC3C;
  v22 = 0;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v24 = v4;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEBUG, "bookItemForURL: %@", buf, 0xCu);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_241D2EBA0;
  v16[3] = &unk_278D17468;
  v16[4] = self;
  v16[5] = &v17;
  v6 = MEMORY[0x245CFF560](v16);
  if ([v4 isUbiquitous])
  {
    v7 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
    v15 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_241D2ECE4;
    v12[3] = &unk_278D17490;
    v13 = 0;
    v14 = v6;
    [v7 coordinateReadingItemAtURL:v4 options:1 error:&v15 byAccessor:v12];
    v8 = v15;
  }

  else
  {
    v7 = BLDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v4;
      _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "Expected to have a ubiquitous URL but instead got %@", buf, 0xCu);
    }
  }

  v9 = v18[5];
  _Block_object_dispose(&v17, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)bookItemForPermlink:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_241D2DC2C;
  v21 = sub_241D2DC3C;
  v22 = 0;
  v5 = [(BLEduCloudContainer *)self cloudUrlForPermlink:v4];
  v6 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v16 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D2EFF0;
  v11[3] = &unk_278D174B8;
  v12 = 0;
  v13 = self;
  v7 = v5;
  v14 = v7;
  v15 = &v17;
  [v6 coordinateReadingItemAtURL:v7 options:1 error:&v16 byAccessor:v11];
  v8 = v16;
  v9 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v9;
}

- (id)bookItemsForPermlinks:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(BLEduCloudContainer *)self allBookItems];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 permlink];
        if ([v4 containsObject:v12])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

@end