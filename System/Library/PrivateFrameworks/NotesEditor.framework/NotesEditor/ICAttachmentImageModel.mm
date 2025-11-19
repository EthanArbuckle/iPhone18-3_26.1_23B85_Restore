@interface ICAttachmentImageModel
@end

@implementation ICAttachmentImageModel

void __107__ICAttachmentImageModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D35E00] ic_existingObjectWithID:*(a1 + 32) context:a2];
  v4 = v3;
  if (v3)
  {
    if ([v3 isChildOfDocumentGallery])
    {
      v5 = os_log_create("com.apple.notes", "DragAndDrop");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __107__ICAttachmentImageModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(v4);
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __107__ICAttachmentImageModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_76;
      v11[3] = &unk_2781ABDC0;
      v12 = *(a1 + 56);
      v6 = [v4 loadImage:v11 aboutToLoadHandler:0 forceFullSizeImage:1];
    }

    else
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 56);
      v10.receiver = *(a1 + 48);
      v10.super_class = &off_28280A3A8;
      v9 = objc_msgSendSuper2(&v10, sel_loadDataWithTypeIdentifier_forItemProviderCompletionHandler_, v7, v8);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __107__ICAttachmentImageModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_76(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 ic_JPEGData];
  (*(v2 + 16))(v2, v3, 0);
}

void __107__ICAttachmentImageModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(void *a1)
{
  [a1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() attachmentModel];
  v3 = [v2 itemProviderWritingURL];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

@end