@interface IMDCoreSpotlightMessageHighlightIndexer
+ (void)indexItem:(id)a3 withChat:(id)a4 context:(id)a5 metadataToUpdate:(id)a6 timingProfiler:(id)a7;
@end

@implementation IMDCoreSpotlightMessageHighlightIndexer

+ (void)indexItem:(id)a3 withChat:(id)a4 context:(id)a5 metadataToUpdate:(id)a6 timingProfiler:(id)a7
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc_init(IMDSharedWithYouMetadataManager);
  v18 = objc_msgSend_updateAttributesWithSharedWithYouMetadata_withItem_chat_(v16, v17, v14, v11, v12);
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v22 = objc_msgSend_identifier(v18, v20, v21);
      v24 = 138412290;
      v25 = v22;
      _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Message highlight indexer updating SearchableItem with identifier %@", &v24, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

@end