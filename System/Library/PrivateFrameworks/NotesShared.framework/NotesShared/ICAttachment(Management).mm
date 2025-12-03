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
  account = [(ICAttachment *)self account];
  v4 = account;
  if (account)
  {
    account3 = account;
  }

  else
  {
    note = [(ICAttachment *)self note];
    account2 = [note account];
    v8 = account2;
    if (account2)
    {
      account3 = account2;
    }

    else
    {
      note2 = [(ICAttachment *)self note];
      folder = [note2 folder];
      account3 = [folder account];
    }
  }

  identifier = [(ICAttachment *)self identifier];

  v12 = 0;
  if (identifier && account3)
  {
    fallbackImageGenerationManager = self->_fallbackImageGenerationManager;
    if (!fallbackImageGenerationManager)
    {
      v14 = NSStringFromSelector(sel_fallbackImageGeneration);
      v15 = objc_opt_class();
      identifier2 = [(ICAttachment *)self identifier];
      v17 = [v15 fallbackImageContainerURLForIdentifier:identifier2 account:account3];

      v18 = [[ICAssetGenerationManager alloc] initWithObject:self generationKeyPath:v14 containerURL:v17];
      v19 = self->_fallbackImageGenerationManager;
      self->_fallbackImageGenerationManager = v18;

      v20 = objc_opt_class();
      identifier3 = [(ICAttachment *)self identifier];
      v22 = [v20 fallbackImageFallbackURLForIdentifier:identifier3 account:account3];
      v28[0] = v22;
      v23 = objc_opt_class();
      identifier4 = [(ICAttachment *)self identifier];
      v25 = [v23 fallbackImageEncryptedFallbackURLForIdentifier:identifier4 account:account3];
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
  account = [(ICAttachment *)self account];
  v4 = account;
  if (account)
  {
    account3 = account;
  }

  else
  {
    note = [(ICAttachment *)self note];
    account2 = [note account];
    v8 = account2;
    if (account2)
    {
      account3 = account2;
    }

    else
    {
      note2 = [(ICAttachment *)self note];
      folder = [note2 folder];
      account3 = [folder account];
    }
  }

  identifier = [(ICAttachment *)self identifier];

  v12 = 0;
  if (identifier && account3)
  {
    fallbackPDFGenerationManager = self->_fallbackPDFGenerationManager;
    if (!fallbackPDFGenerationManager)
    {
      v14 = NSStringFromSelector(sel_fallbackPDFGeneration);
      v15 = objc_opt_class();
      identifier2 = [(ICAttachment *)self identifier];
      v17 = [v15 fallbackPDFContainerURLForIdentifier:identifier2 account:account3];

      v18 = [[ICAssetGenerationManager alloc] initWithObject:self generationKeyPath:v14 containerURL:v17];
      v19 = self->_fallbackPDFGenerationManager;
      self->_fallbackPDFGenerationManager = v18;

      v20 = objc_opt_class();
      identifier3 = [(ICAttachment *)self identifier];
      v22 = [v20 fallbackPDFFallbackURLForIdentifier:identifier3 account:account3];
      v28[0] = v22;
      v23 = objc_opt_class();
      identifier4 = [(ICAttachment *)self identifier];
      v25 = [v23 fallbackPDFEncryptedFallbackURLForIdentifier:identifier4 account:account3];
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
  shortLoggingDescription = [self shortLoggingDescription];
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
  shortLoggingDescription = [self shortLoggingDescription];
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
  *(buf + 4) = self;
  *(buf + 6) = 2112;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Cannot remove temporary paper bundle {attachment: %@, error: %@}", buf, 0x16u);
}

@end