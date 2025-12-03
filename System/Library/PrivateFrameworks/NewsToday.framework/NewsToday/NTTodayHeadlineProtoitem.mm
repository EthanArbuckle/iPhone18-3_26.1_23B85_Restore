@interface NTTodayHeadlineProtoitem
- (BOOL)isEqual:(id)equal;
- (NTTodayHeadlineProtoitem)init;
- (NTTodayHeadlineProtoitem)initWithIdentifier:(id)identifier headline:(id)headline actionURL:(id)l;
- (NTTodayHeadlineProtoitem)itemWithContentContext:(id)context operationInfo:(id)info sectionDescriptor:(id)descriptor todayData:(id)data assetFileURLsByRemoteURL:(id)l;
- (id)assetHandlesWithOperationInfo:(id)info;
- (unint64_t)hash;
@end

@implementation NTTodayHeadlineProtoitem

- (NTTodayHeadlineProtoitem)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTTodayHeadlineProtoitem init]";
    v10 = 2080;
    v11 = "NTTodayHeadlineProtoitem.m";
    v12 = 1024;
    v13 = 28;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTTodayHeadlineProtoitem init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTTodayHeadlineProtoitem)initWithIdentifier:(id)identifier headline:(id)headline actionURL:(id)l
{
  identifierCopy = identifier;
  headlineCopy = headline;
  lCopy = l;
  if (!identifierCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayHeadlineProtoitem initWithIdentifier:headline:actionURL:];
    if (headlineCopy)
    {
      goto LABEL_6;
    }
  }

  else if (headlineCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayHeadlineProtoitem initWithIdentifier:headline:actionURL:];
  }

LABEL_6:
  v19.receiver = self;
  v19.super_class = NTTodayHeadlineProtoitem;
  v11 = [(NTTodayHeadlineProtoitem *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [headlineCopy copy];
    headline = v11->_headline;
    v11->_headline = v14;

    v16 = [lCopy copy];
    actionURL = v11->_actionURL;
    v11->_actionURL = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    identifier = [(NTTodayHeadlineProtoitem *)self identifier];
    identifier2 = [v5 identifier];
    if ([identifier isEqual:identifier2])
    {
      headline = [(NTTodayHeadlineProtoitem *)self headline];
      headline2 = [v5 headline];
      v10 = [headline isEqual:headline2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  identifier = [(NTTodayHeadlineProtoitem *)self identifier];
  v4 = [identifier hash];
  headline = [(NTTodayHeadlineProtoitem *)self headline];
  v6 = [headline hash];

  return v6 ^ v4;
}

- (id)assetHandlesWithOperationInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayHeadlineProtoitem assetHandlesWithOperationInfo:];
  }

  headline = [(NTTodayHeadlineProtoitem *)self headline];
  v6 = MEMORY[0x277CBEA60];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__NTTodayHeadlineProtoitem_assetHandlesWithOperationInfo___block_invoke;
  v11[3] = &unk_2799826A0;
  v12 = infoCopy;
  v13 = headline;
  v7 = headline;
  v8 = infoCopy;
  v9 = [v6 fc_array:v11];

  return v9;
}

void __58__NTTodayHeadlineProtoitem_assetHandlesWithOperationInfo___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) thumbnailSizePreset];
  v5 = *(a1 + 40);
  [*(a1 + 32) dynamicThumbnailSizeMinimumSizeInPixels];
  v6 = NTHeadlineThumbnailFromFCHeadline(v5, v4);
  v7 = [v6 thumbnailAssetHandle];

  v8 = NTSharedLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 40);
      v18 = 138412290;
      v19 = v10;
      _os_log_impl(&dword_25BF21000, v8, OS_LOG_TYPE_INFO, "Including thumbnailAssetHandle for headline: %@", &v18, 0xCu);
    }

    [v3 addObject:v7];
  }

  else
  {
    if (v9)
    {
      v11 = *(a1 + 40);
      v18 = 138412290;
      v19 = v11;
      _os_log_impl(&dword_25BF21000, v8, OS_LOG_TYPE_INFO, "Missing thumbnailAssetHandle for headline: %@", &v18, 0xCu);
    }
  }

  v12 = NTHeadlineSourceNameImageMaskAssetHandleFromFCHeadline(*(a1 + 40), [*(a1 + 32) sourceNameImageSizePreset]);
  v13 = NTSharedLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      v15 = *(a1 + 40);
      v18 = 138412290;
      v19 = v15;
      _os_log_impl(&dword_25BF21000, v13, OS_LOG_TYPE_INFO, "Including nameImageMaskAssetHandle for headline: %@", &v18, 0xCu);
    }

    [v3 addObject:v12];
  }

  else
  {
    if (v14)
    {
      v16 = *(a1 + 40);
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&dword_25BF21000, v13, OS_LOG_TYPE_INFO, "Missing nameImageMaskAssetHandle for headline: %@", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (NTTodayHeadlineProtoitem)itemWithContentContext:(id)context operationInfo:(id)info sectionDescriptor:(id)descriptor todayData:(id)data assetFileURLsByRemoteURL:(id)l
{
  contextCopy = context;
  infoCopy = info;
  descriptorCopy = descriptor;
  dataCopy = data;
  lCopy = l;
  v16 = contextCopy;
  if (!contextCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayHeadlineProtoitem itemWithContentContext:operationInfo:sectionDescriptor:todayData:assetFileURLsByRemoteURL:];
    if (infoCopy)
    {
      goto LABEL_6;
    }
  }

  else if (infoCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayHeadlineProtoitem itemWithContentContext:operationInfo:sectionDescriptor:todayData:assetFileURLsByRemoteURL:];
  }

LABEL_6:
  if (!descriptorCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayHeadlineProtoitem itemWithContentContext:operationInfo:sectionDescriptor:todayData:assetFileURLsByRemoteURL:];
    if (lCopy)
    {
      goto LABEL_11;
    }
  }

  else if (lCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayHeadlineProtoitem itemWithContentContext:operationInfo:sectionDescriptor:todayData:assetFileURLsByRemoteURL:];
  }

LABEL_11:
  headline = [(NTTodayHeadlineProtoitem *)self headline];
  v27 = NTHeadlineAdElementFromFCHeadline(headline);
  v18 = NTHeadlineAnalyticsElementFromFCHeadline(headline, [descriptorCopy seenArticlesFilterMethod]);
  v19 = NTHeadlineBackingElementFromFCHeadline(headline);
  actionURL = [(NTTodayHeadlineProtoitem *)self actionURL];
  thumbnailSizePreset = [infoCopy thumbnailSizePreset];
  [infoCopy dynamicThumbnailSizeMinimumSizeInPixels];
  sourceNameImageSizePreset = [infoCopy sourceNameImageSizePreset];
  [infoCopy assetsDirectoryFileURL];
  v23 = v26 = descriptorCopy;
  v24 = NTHeadlineFromFCHeadline(headline, actionURL, v16, thumbnailSizePreset, sourceNameImageSizePreset, v27, v18, v19, dataCopy, v23, lCopy);

  return v24;
}

- (void)initWithIdentifier:headline:actionURL:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "identifier", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:headline:actionURL:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "headline", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)assetHandlesWithOperationInfo:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "operationInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)itemWithContentContext:operationInfo:sectionDescriptor:todayData:assetFileURLsByRemoteURL:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "contentContext", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)itemWithContentContext:operationInfo:sectionDescriptor:todayData:assetFileURLsByRemoteURL:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "operationInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)itemWithContentContext:operationInfo:sectionDescriptor:todayData:assetFileURLsByRemoteURL:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sectionDescriptor", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)itemWithContentContext:operationInfo:sectionDescriptor:todayData:assetFileURLsByRemoteURL:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetFileURLsByRemoteURL", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end