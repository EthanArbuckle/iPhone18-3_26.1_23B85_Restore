@interface BLTImageAttachmentInfo
+ (id)imageAttachmentInfoForImageURL:(id)a3;
- (CGSize)size;
@end

@implementation BLTImageAttachmentInfo

+ (id)imageAttachmentInfoForImageURL:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [*MEMORY[0x277CE1E10] identifier];
  [v4 setContentType:v5];

  v6 = CGImageSourceCreateWithURL(v3, 0);
  if (v6)
  {
    v7 = v6;
    v18 = *MEMORY[0x277CD3618];
    v19[0] = MEMORY[0x277CBEC28];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = CGImageSourceCopyPropertiesAtIndex(v7, 0, v8);
    if (v9)
    {
      v10 = v9;
      v11 = CFDictionaryGetValue(v9, *MEMORY[0x277CD3368]);
      if (([v11 BOOLValue]& 1) == 0)
      {
        v12 = [*MEMORY[0x277CE1DC0] identifier];
        [v4 setContentType:v12];
      }

      v13 = CFDictionaryGetValue(v10, *MEMORY[0x277CD3448]);
      v14 = CFDictionaryGetValue(v10, *MEMORY[0x277CD3450]);
      [v4 setSize:{objc_msgSend(v14, "intValue"), objc_msgSend(v13, "intValue")}];
      CFRelease(v10);
      CFRelease(v7);
      v15 = v4;
    }

    else
    {
      v11 = blt_ids_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(BLTImageAttachmentInfo *)v3 imageAttachmentInfoForImageURL:v11];
      }

      v15 = 0;
    }
  }

  else
  {
    v8 = blt_ids_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BLTImageAttachmentInfo *)v3 imageAttachmentInfoForImageURL:v8];
    }

    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (void)imageAttachmentInfoForImageURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "BLTImageAttachmentInfo CGImageSourceCopyPropertiesAtIndex failed for: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)imageAttachmentInfoForImageURL:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "BLTImageAttachmentInfo CGImageSourceCreateWithURL failed for: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end