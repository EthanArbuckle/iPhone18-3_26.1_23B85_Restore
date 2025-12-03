@interface IMDCoreSpotlightMessageHighlightIndexer
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightMessageHighlightIndexer

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  v26 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  chatCopy = chat;
  contextCopy = context;
  updateCopy = update;
  profilerCopy = profiler;
  v16 = objc_alloc_init(IMDSharedWithYouMetadataManager);
  v18 = objc_msgSend_updateAttributesWithSharedWithYouMetadata_withItem_chat_(v16, v17, updateCopy, itemCopy, chatCopy);
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