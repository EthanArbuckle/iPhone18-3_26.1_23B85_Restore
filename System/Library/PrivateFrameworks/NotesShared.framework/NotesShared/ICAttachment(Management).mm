@interface ICAttachment(Management)
- (ICAssetGenerationManager)fallbackImageGenerationManager;
- (ICAssetGenerationManager)fallbackPDFGenerationManager;
- (void)fallbackImageData;
- (void)fallbackPDFData;
- (void)removeTemporaryPaperBundle;
- (void)temporaryPaperBundleURL;
@end

@implementation ICAttachment(Management)

- (ICAssetGenerationManager)fallbackImageGenerationManager
{
  v28[2] = *MEMORY[0x277D85DE8];
  v3 = [(ICAttachment *)self account];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(ICAttachment *)self note];
    v7 = [v6 account];
    v8 = v7;
    if (v7)
    {
      v5 = v7;
    }

    else
    {
      v9 = [(ICAttachment *)self note];
      v10 = [v9 folder];
      v5 = [v10 account];
    }
  }

  v11 = [(ICAttachment *)self identifier];

  v12 = 0;
  if (v11 && v5)
  {
    fallbackImageGenerationManager = self->_fallbackImageGenerationManager;
    if (!fallbackImageGenerationManager)
    {
      v14 = NSStringFromSelector(sel_fallbackImageGeneration);
      v15 = objc_opt_class();
      v16 = [(ICAttachment *)self identifier];
      v17 = [v15 fallbackImageContainerURLForIdentifier:v16 account:v5];

      v18 = [[ICAssetGenerationManager alloc] initWithObject:self generationKeyPath:v14 containerURL:v17];
      v19 = self->_fallbackImageGenerationManager;
      self->_fallbackImageGenerationManager = v18;

      v20 = objc_opt_class();
      v21 = [(ICAttachment *)self identifier];
      v22 = [v20 fallbackImageFallbackURLForIdentifier:v21 account:v5];
      v28[0] = v22;
      v23 = objc_opt_class();
      v24 = [(ICAttachment *)self identifier];
      v25 = [v23 fallbackImageEncryptedFallbackURLForIdentifier:v24 account:v5];
      v28[1] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      [(ICAssetGenerationManager *)self->_fallbackImageGenerationManager setFallbackURLs:v26];

      fallbackImageGenerationManager = self->_fallbackImageGenerationManager;
    }

    v12 = fallbackImageGenerationManager;
  }

  return v12;
}

- (ICAssetGenerationManager)fallbackPDFGenerationManager
{
  v28[2] = *MEMORY[0x277D85DE8];
  v3 = [(ICAttachment *)self account];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(ICAttachment *)self note];
    v7 = [v6 account];
    v8 = v7;
    if (v7)
    {
      v5 = v7;
    }

    else
    {
      v9 = [(ICAttachment *)self note];
      v10 = [v9 folder];
      v5 = [v10 account];
    }
  }

  v11 = [(ICAttachment *)self identifier];

  v12 = 0;
  if (v11 && v5)
  {
    fallbackPDFGenerationManager = self->_fallbackPDFGenerationManager;
    if (!fallbackPDFGenerationManager)
    {
      v14 = NSStringFromSelector(sel_fallbackPDFGeneration);
      v15 = objc_opt_class();
      v16 = [(ICAttachment *)self identifier];
      v17 = [v15 fallbackPDFContainerURLForIdentifier:v16 account:v5];

      v18 = [[ICAssetGenerationManager alloc] initWithObject:self generationKeyPath:v14 containerURL:v17];
      v19 = self->_fallbackPDFGenerationManager;
      self->_fallbackPDFGenerationManager = v18;

      v20 = objc_opt_class();
      v21 = [(ICAttachment *)self identifier];
      v22 = [v20 fallbackPDFFallbackURLForIdentifier:v21 account:v5];
      v28[0] = v22;
      v23 = objc_opt_class();
      v24 = [(ICAttachment *)self identifier];
      v25 = [v23 fallbackPDFEncryptedFallbackURLForIdentifier:v24 account:v5];
      v28[1] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      [(ICAssetGenerationManager *)self->_fallbackPDFGenerationManager setFallbackURLs:v26];

      fallbackPDFGenerationManager = self->_fallbackPDFGenerationManager;
    }

    v12 = fallbackPDFGenerationManager;
  }

  return v12;
}

- (void)fallbackImageData
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)writeFallbackImageData:()Management .cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)writeFallbackImageData:()Management .cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)fallbackPDFData
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)writeFallbackPDFData:()Management .cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)writeFallbackPDFData:()Management .cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)temporaryPaperBundleURL
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_214D51000, v0, OS_LOG_TYPE_DEBUG, "No identifier or account when trying to get temporary paper bundle URL for %@", v1, 0xCu);
}

- (void)removeTemporaryPaperBundle
{
  v5 = *(*a2 + 40);
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Cannot remove temporary paper bundle {attachment: %@, error: %@}", buf, 0x16u);
}

@end