@interface ICNote
@end

@implementation ICNote

void __91__ICNote_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = a1[4];
  v14 = 0;
  v5 = [v3 existingObjectWithID:v4 error:&v14];

  v6 = v14;
  v7 = ICDynamicCast();

  if (v7)
  {
    v8 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __91__ICNote_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(v7);
    }

    [v7 prepareForCopyingData];
    v9 = [v7 textStorage];
    v10 = [v9 length];

    v11 = [v7 textStorage];
    v12 = [v11 copyDataForUTI:a1[5] range:0 persistenceHelper:{v10, v7}];
  }

  else
  {
    v12 = 0;
  }

  v13 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __91__ICNote_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_2(v12);
  }

  (*(a1[6] + 16))();
}

void __104__ICNote_ItemProviderWriting___loadFileRepresentationOfTypeIdentifier_forItemProviderCompletionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = a1[4];
  v14 = 0;
  v5 = [v3 existingObjectWithID:v4 error:&v14];

  v6 = v14;
  v7 = ICDynamicCast();

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __104__ICNote_ItemProviderWriting___loadFileRepresentationOfTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(v7);
  }

  [v7 prepareForCopyingData];
  v9 = [v7 textStorage];
  v10 = [v9 length];

  v11 = [v7 textStorage];
  v12 = [v11 filteredAttributedStringForUTI:a1[5] range:{0, v10}];

  if (v12)
  {
    v13 = [v12 _loadFileRepresentationOfTypeIdentifier:a1[5] forItemProviderCompletionHandler:a1[6]];
  }

  else
  {
LABEL_6:
    (*(a1[6] + 16))();
  }
}

void __91__ICNote_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __91__ICNote_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_2(void *a1)
{
  [a1 length];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __104__ICNote_ItemProviderWriting___loadFileRepresentationOfTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end