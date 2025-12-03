@interface ICDocCamDocumentInfoCollection
+ (ICDocCamDocumentInfoCollection)infoCollectionWithArchivedDocumentCameraScanData:(id)data imageCache:(id)cache error:(id *)error;
+ (id)infoCollectionFromArchiveSidecarItems:(id)items imageCache:(id)cache;
+ (void)infoCollectionFromImageSidecarItems:(id)items imageCache:(id)cache completion:(id)completion;
+ (void)infoCollectionFromSidecarItems:(id)items imageCache:(id)cache completion:(id)completion;
- (ICDocCamDocumentInfoCollection)init;
- (ICDocCamDocumentInfoCollection)initWithCoder:(id)coder;
- (int64_t)docCamPDFVersion;
- (void)bumpModificationDate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICDocCamDocumentInfoCollection

- (int64_t)docCamPDFVersion
{
  modificationDate = [(ICDocCamDocumentInfoCollection *)self modificationDate];
  [modificationDate timeIntervalSince1970];
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

    date = [MEMORY[0x277CBEAA8] date];
    creationDate = v3->_creationDate;
    v3->_creationDate = date;

    objc_storeStrong(&v3->_modificationDate, v3->_creationDate);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    uniqueIdentifier = v3->_uniqueIdentifier;
    v3->_uniqueIdentifier = uUIDString;

    array = [MEMORY[0x277CBEB18] array];
    docInfos = v3->_docInfos;
    v3->_docInfos = array;
  }

  return v3;
}

+ (ICDocCamDocumentInfoCollection)infoCollectionWithArchivedDocumentCameraScanData:(id)data imageCache:(id)cache error:(id *)error
{
  cacheCopy = cache;
  dataCopy = data;
  v9 = [[VNDocumentCameraScan alloc] initWithArchivedData:dataCopy error:error];

  v10 = [(VNDocumentCameraScan *)v9 infoCollectionWithImageCache:cacheCopy error:error];

  return v10;
}

- (void)bumpModificationDate
{
  date = [MEMORY[0x277CBEAA8] date];
  [(ICDocCamDocumentInfoCollection *)self setModificationDate:date];
}

- (ICDocCamDocumentInfoCollection)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ICDocCamDocumentInfoCollection;
  v5 = [(ICDocCamDocumentInfoCollection *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTitleFieldCodingKey"];
    [(ICDocCamDocumentInfoCollection *)v5 setTitle:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCreationDateFieldCodingKey"];
    [(ICDocCamDocumentInfoCollection *)v5 setCreationDate:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kModificationDateFieldCodingKey"];
    [(ICDocCamDocumentInfoCollection *)v5 setModificationDate:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kUniqueIdentifierFieldCodingKey"];
    [(ICDocCamDocumentInfoCollection *)v5 setUniqueIdentifier:v9];

    v10 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"kDocInfosFieldCodingKey"];
    [(ICDocCamDocumentInfoCollection *)v5 setDocInfos:v13];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(ICDocCamDocumentInfoCollection *)self title];
  [coderCopy encodeObject:title forKey:@"kTitleFieldCodingKey"];

  creationDate = [(ICDocCamDocumentInfoCollection *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"kCreationDateFieldCodingKey"];

  modificationDate = [(ICDocCamDocumentInfoCollection *)self modificationDate];
  [coderCopy encodeObject:modificationDate forKey:@"kModificationDateFieldCodingKey"];

  uniqueIdentifier = [(ICDocCamDocumentInfoCollection *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"kUniqueIdentifierFieldCodingKey"];

  docInfos = [(ICDocCamDocumentInfoCollection *)self docInfos];
  v9 = [docInfos copy];
  [coderCopy encodeObject:v9 forKey:@"kDocInfosFieldCodingKey"];
}

+ (void)infoCollectionFromSidecarItems:(id)items imageCache:(id)cache completion:(id)completion
{
  itemsCopy = items;
  cacheCopy = cache;
  completionCopy = completion;
  v11 = [self infoCollectionFromArchiveSidecarItems:itemsCopy imageCache:cacheCopy];
  if (v11)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v11);
    }
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__ICDocCamDocumentInfoCollection_infoCollectionFromSidecarItems_imageCache_completion___block_invoke;
    v12[3] = &unk_278F939A0;
    v13 = completionCopy;
    [self infoCollectionFromImageSidecarItems:itemsCopy imageCache:cacheCopy completion:v12];
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

+ (id)infoCollectionFromArchiveSidecarItems:(id)items imageCache:(id)cache
{
  itemsCopy = items;
  cacheCopy = cache;
  v7 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamDocumentInfoCollection infoCollectionFromArchiveSidecarItems:itemsCopy imageCache:?];
  }

  v8 = [itemsCopy dc_objectPassingTest:&__block_literal_global_15];
  data = [v8 data];

  if (data)
  {
    v10 = [VNDocumentCameraScan alloc];
    data2 = [v8 data];
    v21 = 0;
    v12 = [(VNDocumentCameraScan *)v10 initWithArchivedData:data2 error:&v21];
    v13 = v21;

    if (v12)
    {
      v20 = v13;
      v14 = [(VNDocumentCameraScan *)v12 infoCollectionWithImageCache:cacheCopy error:&v20];
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

+ (void)infoCollectionFromImageSidecarItems:(id)items imageCache:(id)cache completion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  cacheCopy = cache;
  completionCopy = completion;
  v8 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamDocumentInfoCollection infoCollectionFromImageSidecarItems:itemsCopy imageCache:? completion:?];
  }

  v9 = dispatch_group_create();
  array = [MEMORY[0x277CBEB18] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = itemsCopy;
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
        identifier = [v14 identifier];
        if ([v16 conformsToType:identifier])
        {

LABEL_14:
          v22 = objc_alloc(MEMORY[0x277D755B8]);
          data = [v16 data];
          v21 = [v22 initWithData:data];

          if (v21)
          {
            dispatch_group_enter(v9);
            v24 = objc_alloc_init(ICDocCamDocumentInfo);
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v39[2] = __92__ICDocCamDocumentInfoCollection_infoCollectionFromImageSidecarItems_imageCache_completion___block_invoke;
            v39[3] = &unk_278F939E8;
            v40 = v24;
            v41 = array;
            v42 = v9;
            v20 = v24;
            v25 = [cacheCopy setImage:v21 metaData:MEMORY[0x277CBEC10] addToMemoryCache:0 completion:v39];
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

        data2 = [v16 data];
        v19 = [data2 length];

        if (!v19)
        {
          goto LABEL_14;
        }

        v20 = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          type = [v16 type];
          v27 = MEMORY[0x277CCABB0];
          data3 = [v16 data];
          v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(data3, "length")}];
          *buf = 138412546;
          v50 = type;
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
  v37 = array;
  v38 = completionCopy;
  v31 = completionCopy;
  v32 = array;
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