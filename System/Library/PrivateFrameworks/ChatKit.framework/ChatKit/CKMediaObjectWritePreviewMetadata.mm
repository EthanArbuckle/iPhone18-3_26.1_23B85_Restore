@interface CKMediaObjectWritePreviewMetadata
@end

@implementation CKMediaObjectWritePreviewMetadata

void ___CKMediaObjectWritePreviewMetadata_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) fileURL];
  v4 = [*v2 previewMetadataFilenameExtension];
  v5 = IMAttachmentPreviewMetadataFileURL();

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Persisting preview metadata to URL %@", &v7, 0xCu);
    }
  }

  [*(a1 + 32) writePreviewMetadata:*(a1 + 40) toURL:v5 error:0];
}

@end