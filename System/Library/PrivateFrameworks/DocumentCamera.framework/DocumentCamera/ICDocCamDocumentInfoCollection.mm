@interface ICDocCamDocumentInfoCollection
+ (ICDocCamDocumentInfoCollection)infoCollectionWithArchivedDocumentCameraScanData:(id)a3 imageCache:(id)a4 error:(id *)a5;
+ (id)infoCollectionFromArchiveSidecarItems:(id)a3 imageCache:(id)a4;
+ (void)infoCollectionFromImageSidecarItems:(id)a3 imageCache:(id)a4 completion:(id)a5;
+ (void)infoCollectionFromSidecarItems:(id)a3 imageCache:(id)a4 completion:(id)a5;
- (ICDocCamDocumentInfoCollection)init;
- (ICDocCamDocumentInfoCollection)initWithCoder:(id)a3;
- (int64_t)docCamPDFVersion;
- (void)bumpModificationDate;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICDocCamDocumentInfoCollection

- (int64_t)docCamPDFVersion
{
  v2 = [(ICDocCamDocumentInfoCollection *)self modificationDate];
  [v2 timeIntervalSince1970];
  v4 = v3;

  return v4;
}

- (ICDocCamDocumentInfoCollection)init
{
  v13.receiver = self;
  v13.super_class = ICDocCamDocumentInfoCollection;
  v2 = [(ICDocCamDocumentInfoCollection *)&v13 init];
  v3 = v2;
  if (v2)
  {
    title = v2->_title;
    v2->_title = 0;

    v5 = [MEMORY[0x277CBEAA8] date];
    creationDate = v3->_creationDate;
    v3->_creationDate = v5;

    objc_storeStrong(&v3->_modificationDate, v3->_creationDate);
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];
    uniqueIdentifier = v3->_uniqueIdentifier;
    v3->_uniqueIdentifier = v8;

    v10 = [MEMORY[0x277CBEB18] array];
    docInfos = v3->_docInfos;
    v3->_docInfos = v10;
  }

  return v3;
}

+ (ICDocCamDocumentInfoCollection)infoCollectionWithArchivedDocumentCameraScanData:(id)a3 imageCache:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[VNDocumentCameraScan alloc] initWithArchivedData:v8 error:a5];

  v10 = [(VNDocumentCameraScan *)v9 infoCollectionWithImageCache:v7 error:a5];

  return v10;
}

- (void)bumpModificationDate
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [(ICDocCamDocumentInfoCollection *)self setModificationDate:v3];
}

- (ICDocCamDocumentInfoCollection)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ICDocCamDocumentInfoCollection;
  v5 = [(ICDocCamDocumentInfoCollection *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTitleFieldCodingKey"];
    [(ICDocCamDocumentInfoCollection *)v5 setTitle:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCreationDateFieldCodingKey"];
    [(ICDocCamDocumentInfoCollection *)v5 setCreationDate:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kModificationDateFieldCodingKey"];
    [(ICDocCamDocumentInfoCollection *)v5 setModificationDate:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kUniqueIdentifierFieldCodingKey"];
    [(ICDocCamDocumentInfoCollection *)v5 setUniqueIdentifier:v9];

    v10 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"kDocInfosFieldCodingKey"];
    [(ICDocCamDocumentInfoCollection *)v5 setDocInfos:v13];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamDocumentInfoCollection *)self title];
  [v4 encodeObject:v5 forKey:@"kTitleFieldCodingKey"];

  v6 = [(ICDocCamDocumentInfoCollection *)self creationDate];
  [v4 encodeObject:v6 forKey:@"kCreationDateFieldCodingKey"];

  v7 = [(ICDocCamDocumentInfoCollection *)self modificationDate];
  [v4 encodeObject:v7 forKey:@"kModificationDateFieldCodingKey"];

  v8 = [(ICDocCamDocumentInfoCollection *)self uniqueIdentifier];
  [v4 encodeObject:v8 forKey:@"kUniqueIdentifierFieldCodingKey"];

  v10 = [(ICDocCamDocumentInfoCollection *)self docInfos];
  v9 = [v10 copy];
  [v4 encodeObject:v9 forKey:@"kDocInfosFieldCodingKey"];
}

+ (void)infoCollectionFromSidecarItems:(id)a3 imageCache:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 infoCollectionFromArchiveSidecarItems:v8 imageCache:v9];
  if (v11)
  {
    if (v10)
    {
      v10[2](v10, v11);
    }
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__ICDocCamDocumentInfoCollection_infoCollectionFromSidecarItems_imageCache_completion___block_invoke;
    v12[3] = &unk_278F939A0;
    v13 = v10;
    [a1 infoCollectionFromImageSidecarItems:v8 imageCache:v9 completion:v12];
  }
}

uint64_t __87__ICDocCamDocumentInfoCollection_infoCollectionFromSidecarItems_imageCache_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)infoCollectionFromArchiveSidecarItems:(id)a3 imageCache:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamDocumentInfoCollection infoCollectionFromArchiveSidecarItems:v5 imageCache:?];
  }

  v8 = [v5 dc_objectPassingTest:&__block_literal_global_15];
  v9 = [v8 data];

  if (v9)
  {
    v10 = [VNDocumentCameraScan alloc];
    v11 = [v8 data];
    v21 = 0;
    v12 = [(VNDocumentCameraScan *)v10 initWithArchivedData:v11 error:&v21];
    v13 = v21;

    if (v12)
    {
      v20 = v13;
      v14 = [(VNDocumentCameraScan *)v12 infoCollectionWithImageCache:v6 error:&v20];
      v15 = v20;

      v16 = os_log_create("com.apple.documentcamera", "");
      v17 = v16;
      if (v14)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          +[ICDocCamDocumentInfoCollection infoCollectionFromArchiveSidecarItems:imageCache:];
        }

        v14 = v14;
        v18 = v14;
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          +[ICDocCamDocumentInfoCollection infoCollectionFromArchiveSidecarItems:imageCache:];
        }

        v18 = 0;
      }
    }

    else
    {
      v14 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[ICDocCamDocumentInfoCollection infoCollectionFromArchiveSidecarItems:imageCache:];
      }

      v18 = 0;
      v15 = v13;
    }
  }

  else
  {
    v15 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[ICDocCamDocumentInfoCollection infoCollectionFromArchiveSidecarItems:imageCache:];
    }

    v18 = 0;
  }

  return v18;
}

+ (void)infoCollectionFromImageSidecarItems:(id)a3 imageCache:(id)a4 completion:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v35 = a4;
  v33 = a5;
  v8 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamDocumentInfoCollection infoCollectionFromImageSidecarItems:v7 imageCache:? completion:?];
  }

  v9 = dispatch_group_create();
  v34 = [MEMORY[0x277CBEB18] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    v14 = *MEMORY[0x277CE1DC0];
    do
    {
      v15 = 0;
      do
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v45 + 1) + 8 * v15);
        v17 = [v14 identifier];
        if ([v16 conformsToType:v17])
        {

LABEL_14:
          v22 = objc_alloc(MEMORY[0x277D755B8]);
          v23 = [v16 data];
          v21 = [v22 initWithData:v23];

          if (v21)
          {
            dispatch_group_enter(v9);
            v24 = objc_alloc_init(ICDocCamDocumentInfo);
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v39[2] = __92__ICDocCamDocumentInfoCollection_infoCollectionFromImageSidecarItems_imageCache_completion___block_invoke;
            v39[3] = &unk_278F939E8;
            v40 = v24;
            v41 = v34;
            v42 = v9;
            v20 = v24;
            v25 = [v35 setImage:v21 metaData:MEMORY[0x277CBEC10] addToMemoryCache:0 completion:v39];
            [v20 setFullImageUUID:v25];
          }

          else
          {
            v20 = os_log_create("com.apple.documentcamera", "");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              [ICDocCamDocumentInfoCollection infoCollectionFromImageSidecarItems:v44 imageCache:v20 completion:?];
            }
          }

          goto LABEL_18;
        }

        v18 = [v16 data];
        v19 = [v18 length];

        if (!v19)
        {
          goto LABEL_14;
        }

        v20 = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v26 = [v16 type];
          v27 = MEMORY[0x277CCABB0];
          v28 = [v16 data];
          v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v28, "length")}];
          *buf = 138412546;
          v50 = v26;
          v51 = 2112;
          v52 = v29;
          _os_log_debug_impl(&dword_249253000, v20, OS_LOG_TYPE_DEBUG, "Item data doesn't conform to JPEG — skipping {type: %@, data.length: %@}", buf, 0x16u);
        }

        v21 = v20;
LABEL_18:

        ++v15;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v12);
  }

  v30 = v10;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__ICDocCamDocumentInfoCollection_infoCollectionFromImageSidecarItems_imageCache_completion___block_invoke_201;
  block[3] = &unk_278F92D70;
  v37 = v34;
  v38 = v33;
  v31 = v33;
  v32 = v34;
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], block);
}

void __92__ICDocCamDocumentInfoCollection_infoCollectionFromImageSidecarItems_imageCache_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) fullImageUUID];
    [*(a1 + 32) setCroppedAndFilteredImageUUID:v3];

    [*(a1 + 40) addObject:*(a1 + 32)];
  }

  else
  {
    v4 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __92__ICDocCamDocumentInfoCollection_infoCollectionFromImageSidecarItems_imageCache_completion___block_invoke_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void __92__ICDocCamDocumentInfoCollection_infoCollectionFromImageSidecarItems_imageCache_completion___block_invoke_201(uint64_t a1)
{
  if (![*(a1 + 32) count])
  {
    v2 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __92__ICDocCamDocumentInfoCollection_infoCollectionFromImageSidecarItems_imageCache_completion___block_invoke_201_cold_1();
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }

  v4 = objc_alloc_init(ICDocCamDocumentInfoCollection);
  v5 = [*(a1 + 32) mutableCopy];
  [(ICDocCamDocumentInfoCollection *)v4 setDocInfos:v5];

  v6 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __92__ICDocCamDocumentInfoCollection_infoCollectionFromImageSidecarItems_imageCache_completion___block_invoke_201_cold_2();
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v4);
  }
}

+ (void)infoCollectionFromArchiveSidecarItems:(void *)a1 imageCache:.cold.1(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(&dword_249253000, v2, v3, "Collecting info collection for scan archive items… {#items: %@}", v4, v5, v6, v7, v8);
}

+ (void)infoCollectionFromArchiveSidecarItems:imageCache:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)infoCollectionFromArchiveSidecarItems:imageCache:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)infoCollectionFromArchiveSidecarItems:imageCache:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)infoCollectionFromImageSidecarItems:(void *)a1 imageCache:completion:.cold.1(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(&dword_249253000, v2, v3, "Collecting info collection for image sidecar items… {#items: %@}", v4, v5, v6, v7, v8);
}

+ (void)infoCollectionFromImageSidecarItems:(uint8_t *)buf imageCache:(_BYTE *)a2 completion:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_249253000, log, OS_LOG_TYPE_ERROR, "Item data cannot be converted to image — skipping", buf, 2u);
}

void __92__ICDocCamDocumentInfoCollection_infoCollectionFromImageSidecarItems_imageCache_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end