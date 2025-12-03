@interface ICLegacyAttachmentUtilities
+ (id)attachmentWithContentID:(id)d context:(id)context;
+ (id)contentIDStringFromCIDURL:(id)l;
+ (id)typeUTIFromFileURL:(id)l mimeType:(id)type;
+ (void)importFileAtURL:(id)l toAttachment:(id)attachment attachmentPreviewGenerator:(id)generator;
+ (void)importLegacyAttachment:(id)attachment toNote:(id)note attachmentPreviewGenerator:(id)generator;
@end

@implementation ICLegacyAttachmentUtilities

+ (id)contentIDStringFromCIDURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"cid"])
  {
    absoluteString = [lCopy absoluteString];
    if ([absoluteString length] < 5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [absoluteString substringFromIndex:4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)importLegacyAttachment:(id)attachment toNote:(id)note attachmentPreviewGenerator:(id)generator
{
  attachmentCopy = attachment;
  noteCopy = note;
  generatorCopy = generator;
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
  managedObjectContext = [attachmentCopy managedObjectContext];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __88__ICLegacyAttachmentUtilities_importLegacyAttachment_toNote_attachmentPreviewGenerator___block_invoke;
  v20 = &unk_278198478;
  v22 = &v37;
  v12 = attachmentCopy;
  v21 = v12;
  v23 = &v31;
  v24 = &v25;
  [managedObjectContext performBlockAndWait:&v17];

  v13 = *(v38[0] + 40);
  managedObjectContext2 = [noteCopy managedObjectContext];
  v15 = [(ICBaseAttachment *)ICAttachment attachmentWithIdentifier:v13 context:managedObjectContext2];

  if (!v15)
  {
    v16 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [ICLegacyAttachmentUtilities importLegacyAttachment:v38 toNote:v16 attachmentPreviewGenerator:?];
    }

    v15 = [noteCopy addAttachmentWithIdentifier:*(v38[0] + 40)];
    [v15 updateChangeCountWithReason:@"Imported HTML attachment"];
  }

  [v15 setIdentifier:*(v38[0] + 40)];
  [v15 setTypeUTI:v32[5]];
  [v15 setNote:noteCopy];
  [noteCopy addAttachmentsObject:v15];
  [self importFileAtURL:v26[5] toAttachment:v15 attachmentPreviewGenerator:generatorCopy];

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

+ (void)importFileAtURL:(id)l toAttachment:(id)attachment attachmentPreviewGenerator:(id)generator
{
  lCopy = l;
  attachmentCopy = attachment;
  generatorCopy = generator;
  if (!lCopy)
  {
    goto LABEL_9;
  }

  v25 = 0;
  v10 = [lCopy checkResourceIsReachableAndReturnError:&v25];
  v11 = v25;
  v12 = v11;
  if (v10)
  {
    v24 = 0;
    v13 = *MEMORY[0x277CBE8D0];
    v23 = 0;
    v14 = [lCopy getResourceValue:&v24 forKey:v13 error:&v23];
    v15 = v24;
    v16 = v23;
    if (v14)
    {
      [attachmentCopy setTitle:v15];
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
      path = [v17 path];
      lastPathComponent = [path lastPathComponent];
      [attachmentCopy setTitle:lastPathComponent];
    }

    media = [attachmentCopy media];

    if (!media)
    {
      v21 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [ICLegacyAttachmentUtilities importFileAtURL:attachmentCopy toAttachment:? attachmentPreviewGenerator:?];
      }

      v22 = [attachmentCopy addMediaWithURL:lCopy updateFileBasedAttributes:1];
      [attachmentCopy updateChangeCountWithReason:@"Imported HTML media"];
      [v22 updateChangeCountWithReason:@"Imported HTML media"];
      [attachmentCopy ic_postNotificationOnMainThreadWithName:@"ICAttachmentDidLoadNotification"];
    }

    goto LABEL_18;
  }

  if (v11)
  {
    v15 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ICLegacyAttachmentUtilities importFileAtURL:attachmentCopy toAttachment:v12 attachmentPreviewGenerator:v15];
    }
  }

  else
  {
LABEL_9:
    v15 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [ICLegacyAttachmentUtilities importFileAtURL:attachmentCopy toAttachment:? attachmentPreviewGenerator:?];
    }

    v12 = v15;
  }

LABEL_18:

  [generatorCopy generatePreviewIfNeededForAttachment:attachmentCopy];
}

+ (id)typeUTIFromFileURL:(id)l mimeType:(id)type
{
  lCopy = l;
  typeCopy = type;
  v7 = typeCopy;
  if (!lCopy)
  {
    v11 = 0;
    preferredMIMEType = 0;
    if (!typeCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v25 = 0;
  v8 = *MEMORY[0x277CBE918];
  v24 = 0;
  v9 = [lCopy getResourceValue:&v25 forKey:v8 error:&v24];
  preferredMIMEType = v25;
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
    if (!preferredMIMEType)
    {
      v13 = [MEMORY[0x277CE1CB8] typeWithMIMEType:v7];
      preferredMIMEType = [v13 preferredMIMEType];
    }
  }

LABEL_11:
  if (lCopy)
  {
    if (preferredMIMEType)
    {
      v14 = [MEMORY[0x277CE1CB8] typeWithIdentifier:preferredMIMEType];
      if ([v14 isEqual:*MEMORY[0x277CE1D48]])
      {
      }

      else
      {
        v15 = [MEMORY[0x277CE1CB8] typeWithIdentifier:preferredMIMEType];
        isDynamic = [v15 isDynamic];

        if (!isDynamic)
        {
          goto LABEL_22;
        }
      }
    }

    v17 = CGImageSourceCreateWithURL(lCopy, 0);
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

        preferredMIMEType = v22;
      }
    }
  }

  if (!preferredMIMEType)
  {
    preferredMIMEType = [*MEMORY[0x277CE1D48] identifier];
  }

LABEL_22:

  return preferredMIMEType;
}

+ (id)attachmentWithContentID:(id)d context:(id)context
{
  v5 = MEMORY[0x277CBE428];
  contextCopy = context;
  dCopy = d;
  v8 = [[v5 alloc] initWithEntityName:@"NoteAttachment"];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"contentID", dCopy];

  [v8 setPredicate:dCopy];
  v15 = 0;
  v10 = [contextCopy executeFetchRequest:v8 error:&v15];

  v11 = v15;
  if (v11)
  {
    v12 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[ICLegacyAttachmentUtilities attachmentWithContentID:context:];
    }
  }

  firstObject = [v10 firstObject];

  return firstObject;
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