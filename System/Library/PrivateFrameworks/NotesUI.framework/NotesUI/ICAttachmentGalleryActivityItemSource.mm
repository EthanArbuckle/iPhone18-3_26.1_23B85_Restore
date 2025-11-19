@interface ICAttachmentGalleryActivityItemSource
- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation ICAttachmentGalleryActivityItemSource

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [(ICAttachmentActivityItemSource *)self attachment];
  v5 = [ICDocCamPDFGenerator versionPDFPathForAttachment:v4];
  v6 = [v3 fileURLWithPath:v5];

  return v6;
}

- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4
{
  v4 = [(ICAttachmentActivityItemSource *)self attachment:a3];
  v5 = [v4 title];

  v6 = MEMORY[0x1E69B7680];
  v7 = [*MEMORY[0x1E6982F10] identifier];
  v8 = [v6 filenameExtensionForUTI:v7];

  if (v8)
  {
    v9 = [v5 pathExtension];
    v10 = [v9 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      v11 = [v5 stringByAppendingPathExtension:v8];

      v5 = v11;
    }
  }

  return v5;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__75;
  v21 = __Block_byref_object_dispose__75;
  v22 = 0;
  v8 = [MEMORY[0x1E69B7800] sharedContext];
  v9 = [v8 workerManagedObjectContext];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__ICAttachmentGalleryActivityItemSource_activityViewController_itemForActivityType___block_invoke;
  v14[3] = &unk_1E8469190;
  v14[4] = self;
  v10 = v9;
  v15 = v10;
  v16 = &v17;
  [v10 performBlockAndWait:v14];
  if ([v7 isEqualToString:*MEMORY[0x1E69CDA90]])
  {
    v11 = v18[5];
    v18[5] = 0;
  }

  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __84__ICAttachmentGalleryActivityItemSource_activityViewController_itemForActivityType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 objectID];

  objc_opt_class();
  v4 = *(a1 + 40);
  v14 = 0;
  v5 = [v4 existingObjectWithID:v3 error:&v14];
  v6 = v14;
  v7 = ICDynamicCast();

  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v10 = MEMORY[0x1E695DFF8];
    v9 = [ICDocCamPDFGenerator versionPDFPathForAttachment:v7];
    v11 = [v10 fileURLWithPath:v9];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __84__ICAttachmentGalleryActivityItemSource_activityViewController_itemForActivityType___block_invoke_cold_1(v6, v9);
    }
  }
}

void __84__ICAttachmentGalleryActivityItemSource_activityViewController_itemForActivityType___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "ICAttachmentGalleryActivityItemSource could not find attachment %@", &v2, 0xCu);
}

@end