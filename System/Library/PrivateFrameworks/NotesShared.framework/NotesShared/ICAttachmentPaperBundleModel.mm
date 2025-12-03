@interface ICAttachmentPaperBundleModel
+ (id)generateFallbackPDFDataForAttachment:(id)attachment;
+ (id)paperBundleURLForAttachmentIdentifier:(id)identifier inAccount:(id)account;
- (BOOL)paperHasEnhancedCanvas;
- (BOOL)paperHasMath;
- (BOOL)paperHasNewInks2022;
- (BOOL)paperHasNewInks2023;
- (BOOL)paperHasNewInks2025;
- (BOOL)paperHasNewInksSpring2024;
- (BOOL)restorePaperBundleFromArchiveURL:(id)l error:(id *)error;
- (BOOL)showThumbnailInNoteList;
- (NSURL)paperBundleAssetsSubdirectoryURL;
- (NSURL)paperBundleDatabaseSubdirectoryURL;
- (NSURL)paperBundleURL;
- (NSURL)paperCoherenceContextURL;
- (id)archivePaperBundleToDiskWithError:(id *)error;
- (id)standaloneTitleForNote;
- (void)removeStrokesFromStyleInventory;
- (void)setPaperHasEnhancedCanvas:(BOOL)canvas;
- (void)setPaperHasMath:(BOOL)math;
- (void)setPaperHasNewInks2022:(BOOL)inks2022;
- (void)setPaperHasNewInks2023:(BOOL)inks2023;
- (void)setPaperHasNewInks2025:(BOOL)inks2025;
- (void)setPaperHasNewInksSpring2024:(BOOL)spring2024;
- (void)updateMinimumSupportedVersionIfNeededWithCompletionHandler:(id)handler;
@end

@implementation ICAttachmentPaperBundleModel

- (BOOL)showThumbnailInNoteList
{
  if (![(ICAttachmentModel *)self hasThumbnailImage])
  {
    return 0;
  }

  attachment = [(ICAttachmentModel *)self attachment];
  previewImages = [attachment previewImages];
  v5 = [previewImages count] != 0;

  return v5;
}

- (NSURL)paperCoherenceContextURL
{
  attachment = [(ICAttachmentModel *)self attachment];
  paperCoherenceContextURL = [attachment paperCoherenceContextURL];

  return paperCoherenceContextURL;
}

- (NSURL)paperBundleURL
{
  attachment = [(ICAttachmentModel *)self attachment];
  paperBundleURL = [attachment paperBundleURL];

  return paperBundleURL;
}

+ (id)paperBundleURLForAttachmentIdentifier:(id)identifier inAccount:(id)account
{
  identifierCopy = identifier;
  accountCopy = account;
  v7 = [identifierCopy length];
  if (accountCopy && v7)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__44;
    v25 = __Block_byref_object_dispose__44;
    v26 = 0;
    managedObjectContext = [accountCopy managedObjectContext];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __80__ICAttachmentPaperBundleModel_paperBundleURLForAttachmentIdentifier_inAccount___block_invoke;
    v17[3] = &unk_2781961E0;
    v18 = accountCopy;
    v19 = identifierCopy;
    v20 = &v21;
    [managedObjectContext performBlockAndWait:v17];

    v9 = v22[5];
    _Block_object_dispose(&v21, 8);

    goto LABEL_7;
  }

  if (![identifierCopy length])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"identifier.length" functionName:"+[ICAttachmentPaperBundleModel paperBundleURLForAttachmentIdentifier:inAccount:]" simulateCrash:1 showAlert:1 format:@"PaperKit attachment identifier is empty"];
    if (accountCopy)
    {
      goto LABEL_6;
    }

LABEL_11:
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"account" functionName:"+[ICAttachmentPaperBundleModel paperBundleURLForAttachmentIdentifier:inAccount:]" simulateCrash:1 showAlert:1 format:@"PaperKit attachment account is nil"];
    goto LABEL_6;
  }

  if (!accountCopy)
  {
    goto LABEL_11;
  }

LABEL_6:
  v10 = MEMORY[0x277CBEBC0];
  v11 = NSTemporaryDirectory();
  v12 = [v10 fileURLWithPath:v11];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v15 = [v12 URLByAppendingPathComponent:uUIDString isDirectory:0];
  v9 = [v15 URLByAppendingPathExtension:@"bundle"];

LABEL_7:

  return v9;
}

void __80__ICAttachmentPaperBundleModel_paperBundleURLForAttachmentIdentifier_inAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) systemPaperBundlesDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:*(a1 + 40) isDirectory:1];
  v4 = [v3 URLByAppendingPathExtension:@"bundle"];
  v6 = *(a1 + 48);
  v5 = a1 + 48;
  v7 = *(v6 + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v3 path];
  if (([v9 fileExistsAtPath:v10] & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v11 = [*(*(*v5 + 8) + 40) path];
  v12 = [v9 fileExistsAtPath:v11];

  if ((v12 & 1) == 0)
  {
    v13 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __80__ICAttachmentPaperBundleModel_paperBundleURLForAttachmentIdentifier_inAccount___block_invoke_cold_1();
    }

    v10 = [ICFileUtilities coordinateMoveItemAt:v3 to:*(*(*v5 + 8) + 40)];
    if (v10)
    {
      v14 = os_log_create("com.apple.notes", "SystemPaper");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __80__ICAttachmentPaperBundleModel_paperBundleURLForAttachmentIdentifier_inAccount___block_invoke_cold_2();
      }
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (NSURL)paperBundleDatabaseSubdirectoryURL
{
  paperBundleURL = [(ICAttachmentPaperBundleModel *)self paperBundleURL];
  v3 = [_TtC11NotesShared21ICSystemPaperDocument databaseDirectoryAt:paperBundleURL];

  return v3;
}

- (NSURL)paperBundleAssetsSubdirectoryURL
{
  paperBundleURL = [(ICAttachmentPaperBundleModel *)self paperBundleURL];
  v3 = [_TtC11NotesShared21ICSystemPaperDocument assetsDirectoryAt:paperBundleURL];

  return v3;
}

- (id)archivePaperBundleToDiskWithError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  attachment = [(ICAttachmentModel *)self attachment];
  cloudAccount = [attachment cloudAccount];
  systemPaperTemporaryDirectoryURL = [cloudAccount systemPaperTemporaryDirectoryURL];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v10 = [systemPaperTemporaryDirectoryURL URLByAppendingPathComponent:uUIDString isDirectory:0];
  preferredFilenameExtension = [*MEMORY[0x277CE1EF8] preferredFilenameExtension];
  v12 = [v10 URLByAppendingPathExtension:preferredFilenameExtension];

  v13 = [_TtC11NotesShared21ICSystemPaperDocument alloc];
  attachment2 = [(ICAttachmentModel *)self attachment];
  v15 = [(ICSystemPaperDocument *)v13 initWithPaperAttachment:attachment2];

  v24 = 0;
  [(ICSystemPaperDocument *)v15 copyAndArchivePaperBundleTo:v12 error:&v24];
  v16 = v24;
  v17 = v16;
  if (v16)
  {
    if (error)
    {
      v18 = v16;
      *error = v17;
    }

    v19 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      attachment3 = [(ICAttachmentModel *)self attachment];
      ic_loggingIdentifier = [attachment3 ic_loggingIdentifier];
      *buf = 138412802;
      v26 = ic_loggingIdentifier;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v17;
      _os_log_error_impl(&dword_214D51000, v19, OS_LOG_TYPE_ERROR, "Failed to archive paper (%@) bundle to (%@): %@", buf, 0x20u);
    }

    v20 = 0;
  }

  else
  {
    v20 = v12;
  }

  return v20;
}

- (BOOL)restorePaperBundleFromArchiveURL:(id)l error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v7 = [_TtC11NotesShared21ICSystemPaperDocument alloc];
  attachment = [(ICAttachmentModel *)self attachment];
  v9 = [(ICSystemPaperDocument *)v7 initWithPaperAttachment:attachment];

  v17 = 0;
  [(ICSystemPaperDocument *)v9 restorePaperBundleFrom:lCopy error:&v17];
  v10 = v17;
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    v13 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      attachment2 = [(ICAttachmentModel *)self attachment];
      ic_loggingIdentifier = [attachment2 ic_loggingIdentifier];
      *buf = 138412802;
      v19 = ic_loggingIdentifier;
      v20 = 2112;
      v21 = lCopy;
      v22 = 2112;
      v23 = v11;
      _os_log_error_impl(&dword_214D51000, v13, OS_LOG_TYPE_ERROR, "Failed to restore paper (%@) bundle archive (%@): %@", buf, 0x20u);
    }
  }

  return v11 == 0;
}

- (BOOL)paperHasEnhancedCanvas
{
  attachment = [(ICAttachmentModel *)self attachment];
  metadata = [attachment metadata];
  v4 = [metadata objectForKeyedSubscript:@"hasEnhancedCanvasKey"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)setPaperHasEnhancedCanvas:(BOOL)canvas
{
  attachment = [(ICAttachmentModel *)self attachment];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__ICAttachmentPaperBundleModel_setPaperHasEnhancedCanvas___block_invoke;
  v5[3] = &__block_descriptor_33_e29_v16__0__NSMutableDictionary_8l;
  canvasCopy = canvas;
  [attachment updateAttachmentMetadataWithBlock:v5];
}

void __58__ICAttachmentPaperBundleModel_setPaperHasEnhancedCanvas___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithBool:v3];
  [v4 setObject:v5 forKeyedSubscript:@"hasEnhancedCanvasKey"];
}

- (BOOL)paperHasNewInks2022
{
  attachment = [(ICAttachmentModel *)self attachment];
  metadata = [attachment metadata];
  v4 = [metadata objectForKeyedSubscript:@"hasNewInksKey"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)setPaperHasNewInks2022:(BOOL)inks2022
{
  attachment = [(ICAttachmentModel *)self attachment];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__ICAttachmentPaperBundleModel_setPaperHasNewInks2022___block_invoke;
  v5[3] = &__block_descriptor_33_e29_v16__0__NSMutableDictionary_8l;
  inks2022Copy = inks2022;
  [attachment updateAttachmentMetadataWithBlock:v5];
}

void __55__ICAttachmentPaperBundleModel_setPaperHasNewInks2022___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithBool:v3];
  [v4 setObject:v5 forKeyedSubscript:@"hasNewInksKey"];
}

- (BOOL)paperHasNewInks2023
{
  attachment = [(ICAttachmentModel *)self attachment];
  metadata = [attachment metadata];
  v4 = [metadata objectForKeyedSubscript:@"hasNewInks2023Key"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)setPaperHasNewInks2023:(BOOL)inks2023
{
  attachment = [(ICAttachmentModel *)self attachment];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__ICAttachmentPaperBundleModel_setPaperHasNewInks2023___block_invoke;
  v5[3] = &__block_descriptor_33_e29_v16__0__NSMutableDictionary_8l;
  inks2023Copy = inks2023;
  [attachment updateAttachmentMetadataWithBlock:v5];
}

void __55__ICAttachmentPaperBundleModel_setPaperHasNewInks2023___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithBool:v3];
  [v4 setObject:v5 forKeyedSubscript:@"hasNewInks2023Key"];
}

- (BOOL)paperHasNewInksSpring2024
{
  attachment = [(ICAttachmentModel *)self attachment];
  metadata = [attachment metadata];
  v4 = [metadata objectForKeyedSubscript:@"hasNewInksSpring2024Key"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)setPaperHasNewInksSpring2024:(BOOL)spring2024
{
  attachment = [(ICAttachmentModel *)self attachment];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__ICAttachmentPaperBundleModel_setPaperHasNewInksSpring2024___block_invoke;
  v5[3] = &__block_descriptor_33_e29_v16__0__NSMutableDictionary_8l;
  spring2024Copy = spring2024;
  [attachment updateAttachmentMetadataWithBlock:v5];
}

void __61__ICAttachmentPaperBundleModel_setPaperHasNewInksSpring2024___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithBool:v3];
  [v4 setObject:v5 forKeyedSubscript:@"hasNewInksSpring2024Key"];
}

- (BOOL)paperHasMath
{
  attachment = [(ICAttachmentModel *)self attachment];
  metadata = [attachment metadata];
  v4 = [metadata objectForKeyedSubscript:@"hasMathKey"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)setPaperHasMath:(BOOL)math
{
  attachment = [(ICAttachmentModel *)self attachment];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__ICAttachmentPaperBundleModel_setPaperHasMath___block_invoke;
  v5[3] = &__block_descriptor_33_e29_v16__0__NSMutableDictionary_8l;
  mathCopy = math;
  [attachment updateAttachmentMetadataWithBlock:v5];
}

void __48__ICAttachmentPaperBundleModel_setPaperHasMath___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithBool:v3];
  [v4 setObject:v5 forKeyedSubscript:@"hasMathKey"];
}

- (BOOL)paperHasNewInks2025
{
  attachment = [(ICAttachmentModel *)self attachment];
  metadata = [attachment metadata];
  v4 = [metadata objectForKeyedSubscript:@"hasNewInks2025Key"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)setPaperHasNewInks2025:(BOOL)inks2025
{
  attachment = [(ICAttachmentModel *)self attachment];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__ICAttachmentPaperBundleModel_setPaperHasNewInks2025___block_invoke;
  v5[3] = &__block_descriptor_33_e29_v16__0__NSMutableDictionary_8l;
  inks2025Copy = inks2025;
  [attachment updateAttachmentMetadataWithBlock:v5];
}

void __55__ICAttachmentPaperBundleModel_setPaperHasNewInks2025___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithBool:v3];
  [v4 setObject:v5 forKeyedSubscript:@"hasNewInks2025Key"];
}

- (void)updateMinimumSupportedVersionIfNeededWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  attachment = [(ICAttachmentModel *)self attachment];
  if ([(ICAttachmentPaperBundleModel *)self paperHasNewInksSpring2024])
  {
LABEL_9:
    handlerCopy[2](handlerCopy);
    goto LABEL_10;
  }

  paperBundleURL = [(ICAttachmentPaperBundleModel *)self paperBundleURL];

  if (!paperBundleURL)
  {
    v8 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ICAttachmentPaperBundleModel *)attachment updateMinimumSupportedVersionIfNeededWithCompletionHandler:v8];
    }

    goto LABEL_9;
  }

  if (updateMinimumSupportedVersionIfNeededWithCompletionHandler__onceToken != -1)
  {
    [ICAttachmentPaperBundleModel updateMinimumSupportedVersionIfNeededWithCompletionHandler:];
  }

  v7 = updateMinimumSupportedVersionIfNeededWithCompletionHandler__queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__ICAttachmentPaperBundleModel_updateMinimumSupportedVersionIfNeededWithCompletionHandler___block_invoke_2;
  block[3] = &unk_278194E38;
  block[4] = self;
  v10 = attachment;
  v11 = handlerCopy;
  dispatch_async(v7, block);

LABEL_10:
}

void __91__ICAttachmentPaperBundleModel_updateMinimumSupportedVersionIfNeededWithCompletionHandler___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.notes.system-paper-version-check", v2);
  v1 = updateMinimumSupportedVersionIfNeededWithCompletionHandler__queue;
  updateMinimumSupportedVersionIfNeededWithCompletionHandler__queue = v0;
}

void __91__ICAttachmentPaperBundleModel_updateMinimumSupportedVersionIfNeededWithCompletionHandler___block_invoke_2(id *a1)
{
  v2 = [objc_opt_class() baseNotesVersion];
  v3 = [a1[4] paperBundleURL];
  v4 = [_TtC11NotesShared34ICAttachmentSystemPaperModelHelper minimumSupportedNotesVersionForPaperAtURL:v3 greaterOrEqualToVersion:v2];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__ICAttachmentPaperBundleModel_updateMinimumSupportedVersionIfNeededWithCompletionHandler___block_invoke_3;
  block[3] = &unk_278194E10;
  v11 = v2;
  v12 = v4;
  v5 = a1[5];
  v6 = a1[4];
  v8 = v5;
  v9 = v6;
  v10 = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __91__ICAttachmentPaperBundleModel_updateMinimumSupportedVersionIfNeededWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (v2 >= 9)
  {
    goto LABEL_6;
  }

  if (*(a1 + 64) >= 9)
  {
    v3 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [*(a1 + 32) ic_loggingIdentifier];
      v5 = [*(a1 + 32) minimumSupportedNotesVersion];
      v22 = 138412802;
      v23 = v4;
      v24 = 2048;
      v25 = v5;
      v26 = 2048;
      v27 = 9;
      _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_INFO, "Attachment (%@) was found to have contents which won't render properly pre-iOS 16.0. Bumping notes version for the attachment from %lld to %lld.", &v22, 0x20u);
    }

    [*(a1 + 40) setPaperHasEnhancedCanvas:1];
    v2 = *(a1 + 56);
LABEL_6:
    if (v2 > 9)
    {
      goto LABEL_11;
    }
  }

  if (*(a1 + 64) <= 9)
  {
    goto LABEL_12;
  }

  v6 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) ic_loggingIdentifier];
    v8 = [*(a1 + 32) minimumSupportedNotesVersion];
    v22 = 138412802;
    v23 = v7;
    v24 = 2048;
    v25 = v8;
    v26 = 2048;
    v27 = 10;
    _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Attachment (%@) was found to have contents which won't render properly pre-iOS 16.1. Bumping notes version for the attachment from %lld to %lld.", &v22, 0x20u);
  }

  [*(a1 + 40) setPaperHasNewInks2022:1];
  v2 = *(a1 + 56);
LABEL_11:
  if (v2 >= 13)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (*(a1 + 64) >= 13)
  {
    v9 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 32) ic_loggingIdentifier];
      v11 = [*(a1 + 32) minimumSupportedNotesVersion];
      v22 = 138412802;
      v23 = v10;
      v24 = 2048;
      v25 = v11;
      v26 = 2048;
      v27 = 13;
      _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_INFO, "Attachment (%@) was found to have contents which won't render properly pre-iOS 17.0. Bumping notes version for the attachment from %lld to %lld.", &v22, 0x20u);
    }

    [*(a1 + 40) setPaperHasNewInks2023:1];
    v2 = *(a1 + 56);
LABEL_16:
    if (v2 >= 14)
    {
      goto LABEL_21;
    }
  }

  if (*(a1 + 64) <= 13)
  {
    goto LABEL_22;
  }

  v12 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [*(a1 + 32) ic_loggingIdentifier];
    v14 = [*(a1 + 32) minimumSupportedNotesVersion];
    v22 = 138412802;
    v23 = v13;
    v24 = 2048;
    v25 = v14;
    v26 = 2048;
    v27 = 14;
    _os_log_impl(&dword_214D51000, v12, OS_LOG_TYPE_INFO, "Attachment (%@) was found to have contents which won't render properly pre-iOS 17.4. Bumping notes version for the attachment from %lld to %lld.", &v22, 0x20u);
  }

  [*(a1 + 40) setPaperHasNewInksSpring2024:1];
  v2 = *(a1 + 56);
LABEL_21:
  if (v2 > 14)
  {
    goto LABEL_26;
  }

LABEL_22:
  if (*(a1 + 64) >= 15)
  {
    v15 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [*(a1 + 32) ic_loggingIdentifier];
      v17 = [*(a1 + 32) minimumSupportedNotesVersion];
      v22 = 138412802;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      v26 = 2048;
      v27 = 15;
      _os_log_impl(&dword_214D51000, v15, OS_LOG_TYPE_INFO, "Attachment (%@) was found to have contents which won't render properly pre-iOS 18.0. Bumping notes version for the attachment from %lld to %lld.", &v22, 0x20u);
    }

    [*(a1 + 40) setPaperHasMath:1];
    v2 = *(a1 + 56);
LABEL_26:
    if (v2 > 16)
    {
      goto LABEL_31;
    }
  }

  if (*(a1 + 64) >= 17)
  {
    v18 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [*(a1 + 32) ic_loggingIdentifier];
      v20 = [*(a1 + 32) minimumSupportedNotesVersion];
      v22 = 138412802;
      v23 = v19;
      v24 = 2048;
      v25 = v20;
      v26 = 2048;
      v27 = 17;
      _os_log_impl(&dword_214D51000, v18, OS_LOG_TYPE_INFO, "Attachment (%@) was found to have contents which won't render properly pre-iOS 19.0. Bumping notes version for the attachment from %lld to %lld.", &v22, 0x20u);
    }

    [*(a1 + 40) setPaperHasNewInks2025:1];
  }

LABEL_31:
  [*(a1 + 32) resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  return (*(*(a1 + 48) + 16))();
}

- (void)removeStrokesFromStyleInventory
{
  attachment = [(ICAttachmentModel *)self attachment];
  ic_permanentObjectID = [attachment ic_permanentObjectID];

  attachment2 = [(ICAttachmentModel *)self attachment];
  workerManagedObjectContext = [attachment2 workerManagedObjectContext];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__ICAttachmentPaperBundleModel_removeStrokesFromStyleInventory__block_invoke;
  v9[3] = &unk_278194AD8;
  v10 = workerManagedObjectContext;
  v11 = ic_permanentObjectID;
  v7 = ic_permanentObjectID;
  v8 = workerManagedObjectContext;
  [v8 performBlock:v9];
}

void __63__ICAttachmentPaperBundleModel_removeStrokesFromStyleInventory__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_existingObjectWithID:*(a1 + 40)];
  v1 = [[_TtC11NotesShared21ICSystemPaperDocument alloc] initWithPaperAttachment:v2];
  [(ICSystemPaperDocument *)v1 removeStrokesFromStyleInventory];
}

+ (id)generateFallbackPDFDataForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v4 = [[_TtC11NotesShared21ICSystemPaperDocument alloc] initWithPaperAttachment:attachmentCopy];

  toFallbackPDFData = [(ICSystemPaperDocument *)v4 toFallbackPDFData];

  return toFallbackPDFData;
}

- (id)standaloneTitleForNote
{
  attachment = [(ICAttachmentModel *)self attachment];
  userTitle = [attachment userTitle];

  if (userTitle)
  {
    title = userTitle;
  }

  else
  {
    attachment2 = [(ICAttachmentModel *)self attachment];
    title = [attachment2 title];
  }

  if (![title length])
  {
    v7 = +[ICNote defaultTitleForEmptyNote];

    title = v7;
  }

  pathExtension = [title pathExtension];
  if ([pathExtension length])
  {
    v9 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:pathExtension];
    if ([v9 isEqual:*MEMORY[0x277CE1E08]])
    {
      stringByDeletingPathExtension = [title stringByDeletingPathExtension];

      title = stringByDeletingPathExtension;
    }
  }

  return title;
}

void __80__ICAttachmentPaperBundleModel_paperBundleURLForAttachmentIdentifier_inAccount___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(&dword_214D51000, v0, OS_LOG_TYPE_DEBUG, "Detected prerelease system paper bundle that has note been moved: %@. Moving to %@", v1, 0x16u);
}

void __80__ICAttachmentPaperBundleModel_paperBundleURLForAttachmentIdentifier_inAccount___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "Could note move prerelease system paper bundle from %@ to %@", v1, 0x16u);
}

- (void)updateMinimumSupportedVersionIfNeededWithCompletionHandler:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 ic_loggingIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Can't update minimum supported version for paper attachment (%@) because paperBundleURL was nil", &v4, 0xCu);
}

@end