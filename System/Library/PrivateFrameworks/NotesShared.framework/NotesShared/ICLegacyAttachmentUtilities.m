@interface ICLegacyAttachmentUtilities
+ (id)attachmentWithContentID:(id)a3 context:(id)a4;
+ (id)contentIDStringFromCIDURL:(id)a3;
+ (id)typeUTIFromFileURL:(id)a3 mimeType:(id)a4;
+ (void)importFileAtURL:(id)a3 toAttachment:(id)a4 attachmentPreviewGenerator:(id)a5;
+ (void)importLegacyAttachment:(id)a3 toNote:(id)a4 attachmentPreviewGenerator:(id)a5;
@end

@implementation ICLegacyAttachmentUtilities

+ (id)contentIDStringFromCIDURL:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  if ([v4 isEqualToString:@"cid"])
  {
    v5 = [v3 absoluteString];
    if ([v5 length] < 5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v5 substringFromIndex:4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)importLegacyAttachment:(id)a3 toNote:(id)a4 attachmentPreviewGenerator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v37 = 0;
  v38[0] = &v37;
  v38[1] = 0x3032000000;
  v38[2] = __Block_byref_object_copy__60;
  v38[3] = __Block_byref_object_dispose__60;
  v39 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__60;
  v35 = __Block_byref_object_dispose__60;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__60;
  v29 = __Block_byref_object_dispose__60;
  v30 = 0;
  v11 = [v8 managedObjectContext];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __88__ICLegacyAttachmentUtilities_importLegacyAttachment_toNote_attachmentPreviewGenerator___block_invoke;
  v20 = &unk_278198478;
  v22 = &v37;
  v12 = v8;
  v21 = v12;
  v23 = &v31;
  v24 = &v25;
  [v11 performBlockAndWait:&v17];

  v13 = *(v38[0] + 40);
  v14 = [v9 managedObjectContext];
  v15 = [(ICBaseAttachment *)ICAttachment attachmentWithIdentifier:v13 context:v14];

  if (!v15)
  {
    v16 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [ICLegacyAttachmentUtilities importLegacyAttachment:v38 toNote:v16 attachmentPreviewGenerator:?];
    }

    v15 = [v9 addAttachmentWithIdentifier:*(v38[0] + 40)];
    [v15 updateChangeCountWithReason:@"Imported HTML attachment"];
  }

  [v15 setIdentifier:*(v38[0] + 40)];
  [v15 setTypeUTI:v32[5]];
  [v15 setNote:v9];
  [v9 addAttachmentsObject:v15];
  [a1 importFileAtURL:v26[5] toAttachment:v15 attachmentPreviewGenerator:v10];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
}

void __88__ICLegacyAttachmentUtilities_importLegacyAttachment_toNote_attachmentPreviewGenerator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) typeUTI];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) fileURL];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

+ (void)importFileAtURL:(id)a3 toAttachment:(id)a4 attachmentPreviewGenerator:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    goto LABEL_9;
  }

  v25 = 0;
  v10 = [v7 checkResourceIsReachableAndReturnError:&v25];
  v11 = v25;
  v12 = v11;
  if (v10)
  {
    v24 = 0;
    v13 = *MEMORY[0x277CBE8D0];
    v23 = 0;
    v14 = [v7 getResourceValue:&v24 forKey:v13 error:&v23];
    v15 = v24;
    v16 = v23;
    if (v14)
    {
      [v8 setTitle:v15];
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v7 resolvingAgainstBaseURL:0];
      v18 = [v17 path];
      v19 = [v18 lastPathComponent];
      [v8 setTitle:v19];
    }

    v20 = [v8 media];

    if (!v20)
    {
      v21 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [ICLegacyAttachmentUtilities importFileAtURL:v8 toAttachment:? attachmentPreviewGenerator:?];
      }

      v22 = [v8 addMediaWithURL:v7 updateFileBasedAttributes:1];
      [v8 updateChangeCountWithReason:@"Imported HTML media"];
      [v22 updateChangeCountWithReason:@"Imported HTML media"];
      [v8 ic_postNotificationOnMainThreadWithName:@"ICAttachmentDidLoadNotification"];
    }

    goto LABEL_18;
  }

  if (v11)
  {
    v15 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ICLegacyAttachmentUtilities importFileAtURL:v8 toAttachment:v12 attachmentPreviewGenerator:v15];
    }
  }

  else
  {
LABEL_9:
    v15 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [ICLegacyAttachmentUtilities importFileAtURL:v8 toAttachment:? attachmentPreviewGenerator:?];
    }

    v12 = v15;
  }

LABEL_18:

  [v9 generatePreviewIfNeededForAttachment:v8];
}

+ (id)typeUTIFromFileURL:(id)a3 mimeType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v11 = 0;
    v10 = 0;
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v25 = 0;
  v8 = *MEMORY[0x277CBE918];
  v24 = 0;
  v9 = [v5 getResourceValue:&v25 forKey:v8 error:&v24];
  v10 = v25;
  v11 = v24;
  if ((v9 & 1) == 0)
  {
    v12 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[ICLegacyAttachmentUtilities typeUTIFromFileURL:mimeType:];
    }
  }

  if (v7)
  {
LABEL_9:
    if (!v10)
    {
      v13 = [MEMORY[0x277CE1CB8] typeWithMIMEType:v7];
      v10 = [v13 preferredMIMEType];
    }
  }

LABEL_11:
  if (v5)
  {
    if (v10)
    {
      v14 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v10];
      if ([v14 isEqual:*MEMORY[0x277CE1D48]])
      {
      }

      else
      {
        v15 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v10];
        v16 = [v15 isDynamic];

        if (!v16)
        {
          goto LABEL_22;
        }
      }
    }

    v17 = CGImageSourceCreateWithURL(v5, 0);
    if (v17)
    {
      v18 = v17;
      Type = CGImageSourceGetType(v17);
      CFRelease(v18);
      v20 = Type;
      v21 = v20;
      if (v20)
      {
        v22 = v20;

        v10 = v22;
      }
    }
  }

  if (!v10)
  {
    v10 = [*MEMORY[0x277CE1D48] identifier];
  }

LABEL_22:

  return v10;
}

+ (id)attachmentWithContentID:(id)a3 context:(id)a4
{
  v5 = MEMORY[0x277CBE428];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithEntityName:@"NoteAttachment"];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"contentID", v7];

  [v8 setPredicate:v9];
  v15 = 0;
  v10 = [v6 executeFetchRequest:v8 error:&v15];

  v11 = v15;
  if (v11)
  {
    v12 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[ICLegacyAttachmentUtilities attachmentWithContentID:context:];
    }
  }

  v13 = [v10 firstObject];

  return v13;
}

+ (void)importLegacyAttachment:(uint64_t)a1 toNote:(NSObject *)a2 attachmentPreviewGenerator:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Importing legacy attachment %@", &v3, 0xCu);
}

+ (void)importFileAtURL:(void *)a1 toAttachment:(uint64_t)a2 attachmentPreviewGenerator:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_214D51000, a3, OS_LOG_TYPE_ERROR, "No reachable file for legacy attachment %@: %@", v6, 0x16u);
}

+ (void)importFileAtURL:(void *)a1 toAttachment:attachmentPreviewGenerator:.cold.2(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "Importing media for legacy attachment %@", v4, v5, v6, v7, v8);
}

+ (void)importFileAtURL:(void *)a1 toAttachment:attachmentPreviewGenerator:.cold.3(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "No file URL for legacy attachment %@", v4, v5, v6, v7, v8);
}

+ (void)typeUTIFromFileURL:mimeType:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "Error getting type UTI for legacy attachment: %@", v1, 0xCu);
}

+ (void)attachmentWithContentID:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "Error fetching attachments: %@", v1, 0xCu);
}

@end