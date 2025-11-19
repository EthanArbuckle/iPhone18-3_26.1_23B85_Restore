@interface ICCollaborationController
+ (BOOL)showCloudKitShareAcceptancePartialFailureAlertForError:(id)a3 alertBlock:(id)a4;
+ (ICCollaborationController)sharedInstance;
+ (UIImage)shareSheetFolderThumbnailImage;
+ (UIImage)shareSheetNoteThumbnailImage;
+ (id)highlightColorForUserID:(id)a3 inNote:(id)a4 isDark:(BOOL)a5;
+ (id)newShareForObject:(id)a3;
+ (id)rootRecordForObject:(id)a3;
+ (id)updatedShareForObject:(id)a3 includeHierarchicalShare:(BOOL)a4 managedObjectContext:(id)a5;
+ (int64_t)shareStatusOfFolder:(id)a3 objectsForMakingDecision:(id)a4;
+ (void)didFailToUpdateShareWithError:(id)a3;
+ (void)genericShareErrorAlert:(id)a3;
+ (void)postDidUpdateShareNotificationForObject:(id)a3;
+ (void)saveActivityType:(id)a3 isCollaborationSelected:(BOOL)a4 error:(id)a5 completed:(BOOL)a6 forNote:(id)a7;
+ (void)showQuotaExceededAlertIfNeededWithRecordID:(id)a3 accountID:(id)a4;
+ (void)trackShare:(id)a3 forNote:(id)a4;
- (ICCollaborationAnalyticsDelegate)collaborationAnalyticsDelegate;
- (ICCollaborationController)initWithDelegate:(id)a3;
- (ICCollaborationControllerDelegate)collaborationControllerDelegate;
- (id)backgroundContext;
- (id)cloudContext;
- (id)containerForAccountID:(id)a3;
- (id)containerForUserRecordID:(id)a3;
- (id)objectForCKShareRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
- (id)objectForShare:(id)a3 accountID:(id)a4 context:(id)a5;
- (id)viewContext;
- (void)acceptShareWithMetadata:(id)a3 attemptNumber:(id)a4 container:(id)a5 accountID:(id)a6 fetchObjectWithCompletionHandler:(id)a7;
- (void)acceptShareWithMetadata:(id)a3 managedObjectContext:(id)a4 completionHandler:(id)a5;
- (void)didStopSharing:(id)a3 recordID:(id)a4 accountID:(id)a5;
- (void)fetchAndAcceptShareMetadataWithURL:(id)a3 managedObjectContext:(id)a4 alertBlock:(id)a5 showObjectBlock:(id)a6;
- (void)fetchShareIfNecessaryForObject:(id)a3 completionHandler:(id)a4;
- (void)managedObjectContextObjectsDidChange:(id)a3;
- (void)prepareShare:(id)a3 forObject:(id)a4 qualityOfService:(int64_t)a5 completionHandler:(id)a6;
- (void)processShareAcceptanceWithMetadata:(id)a3 managedObjectContext:(id)a4 alertBlock:(id)a5 showObjectBlock:(id)a6;
- (void)registerShareForObject:(id)a3 itemProvider:(id)a4 generateThumbnails:(BOOL)a5 sharePreparationHandler:(id)a6;
- (void)removeShareIfNeededWithOwnedObjectID:(id)a3 countParticipants:(BOOL)a4 completionHandler:(id)a5;
- (void)saveServerShare:(id)a3 persistParticipantEvents:(BOOL)a4 accountID:(id)a5;
- (void)saveShare:(id)a3 attemptNumber:(id)a4 forObject:(id)a5 accountID:(id)a6 container:(id)a7 qualityOfService:(int64_t)a8 retryPrepHandler:(id)a9 completionHandler:(id)a10;
- (void)saveShare:(id)a3 forObject:(id)a4 accountID:(id)a5 container:(id)a6 qualityOfService:(int64_t)a7 retryPrepHandler:(id)a8 completionHandler:(id)a9;
- (void)saveShare:(id)a3 withRootRecord:(id)a4 object:(id)a5 accountID:(id)a6 container:(id)a7 qualityOfService:(int64_t)a8 completionHandler:(id)a9;
- (void)setCollaborationAnalyticsDelegate:(id)a3;
- (void)updatePendingInvitationsInAccountWithID:(id)a3 receivedSince:(id)a4;
- (void)updateRootRecordMapWithShare:(id)a3;
- (void)updateShares;
@end

@implementation ICCollaborationController

+ (ICCollaborationController)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ICCollaborationController sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __43__ICCollaborationController_sharedInstance__block_invoke()
{
  sharedInstance_instance = [[ICCollaborationController alloc] initWithDelegate:0];

  return MEMORY[0x1EEE66BB8]();
}

- (ICCollaborationController)initWithDelegate:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ICCollaborationController;
  v5 = [(ICCollaborationController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_collaborationControllerDelegate, v4);
    v7 = [MEMORY[0x1E695DF90] dictionary];
    ckShareIDToRootRecordID = v6->_ckShareIDToRootRecordID;
    v6->_ckShareIDToRootRecordID = v7;

    v9 = [objc_alloc(MEMORY[0x1E69B7AB0]) initWithTarget:v6 selector:sel_updateShares delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:3.0];
    updateSharesDelayer = v6->_updateSharesDelayer;
    v6->_updateSharesDelayer = v9;

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v6 selector:sel_managedObjectContextObjectsDidChange_ name:*MEMORY[0x1E695D360] object:0];

    v12 = [(ICCollaborationController *)v6 updateSharesDelayer];
    [v12 requestFire];
  }

  return v6;
}

- (void)setCollaborationAnalyticsDelegate:(id)a3
{
  v6 = a3;
  objc_storeWeak(&self->_collaborationAnalyticsDelegate, v6);
  v4 = v6;
  if (v6)
  {
    v4 = [[ICCollaborationAnalyticsTracker alloc] initWithDelegate:v6];
  }

  collaborationAnalyticsTracker = self->_collaborationAnalyticsTracker;
  self->_collaborationAnalyticsTracker = v4;
}

- (id)viewContext
{
  v3 = [(ICCollaborationController *)self collaborationControllerDelegate];
  if (v3)
  {
    v4 = [(ICCollaborationController *)self collaborationControllerDelegate];
    [v4 viewContextForCollaborationController:self];
  }

  else
  {
    v4 = [MEMORY[0x1E69B7800] sharedContext];
    [v4 managedObjectContext];
  }
  v5 = ;

  return v5;
}

- (id)backgroundContext
{
  v3 = [(ICCollaborationController *)self collaborationControllerDelegate];
  if (v3)
  {
    v4 = [(ICCollaborationController *)self collaborationControllerDelegate];
    [v4 backgroundContextForCollaborationController:self];
  }

  else
  {
    v4 = [MEMORY[0x1E69B7800] sharedContext];
    [v4 workerManagedObjectContext];
  }
  v5 = ;

  return v5;
}

- (id)cloudContext
{
  v3 = [(ICCollaborationController *)self collaborationControllerDelegate];
  if (v3)
  {
    v4 = [(ICCollaborationController *)self collaborationControllerDelegate];
    v5 = [v4 cloudContextForCollaborationController:self];
  }

  else
  {
    v5 = [MEMORY[0x1E69B76F0] sharedContext];
  }

  return v5;
}

- (void)registerShareForObject:(id)a3 itemProvider:(id)a4 generateThumbnails:(BOOL)a5 sharePreparationHandler:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v10 shortLoggingDescription];
    *buf = 138412290;
    v32 = v14;
    _os_log_impl(&dword_1D4171000, v13, OS_LOG_TYPE_INFO, "Registering cloud sharing service for %@", buf, 0xCu);
  }

  v15 = os_log_create("com.apple.notes", "Collaboration");
  v16 = os_signpost_id_generate(v15);
  v17 = v15;
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "com.apple.notes.collaboration.registerShare", "", buf, 2u);
  }

  v19 = [v10 cloudAccount];
  if ([v19 accountType] == 1)
  {
    v20 = [v19 identifier];
    v21 = [v20 length];

    if (v21)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke;
      v23[3] = &unk_1E846C938;
      v23[4] = self;
      v24 = v19;
      v25 = v10;
      v26 = v11;
      v28 = v12;
      v30 = a5;
      v27 = v18;
      v29 = v16;
      [v24 performBlockInPersonaContext:v23];
    }

    else
    {
      v22 = os_log_create("com.apple.notes", "Collaboration");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ICCollaborationController registerShareForObject:itemProvider:generateThumbnails:sharePreparationHandler:];
      }
    }
  }
}

void __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 containerForAccountID:v3];

  if (v4)
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) managedObjectContext];
    v8 = [v5 serverShareCheckingParent:v6 managedObjectContext:v7];

    v9 = os_log_create("com.apple.notes", "Collaboration");
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_cold_1();
      }

      [*(a1 + 32) updateRootRecordMapWithShare:v8];
      v11 = *(a1 + 56);
      v12 = [MEMORY[0x1E695B868] standardOptions];
      [v11 registerCKShare:v8 container:v4 allowedSharingOptions:v12];
    }

    else
    {
      if (v10)
      {
        __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_cold_2((a1 + 48));
      }

      v13 = _Block_copy(*(a1 + 72));
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = &__block_literal_global_31;
      }

      if (*(a1 + 88) == 1)
      {
        [MEMORY[0x1E695BAC8] ic_cacheThumbnailsForObject:*(a1 + 48)];
      }

      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_2;
      v25 = &unk_1E846C910;
      v30 = v14;
      v15 = *(a1 + 40);
      v16 = *(a1 + 32);
      v26 = v15;
      v27 = v16;
      v28 = *(a1 + 48);
      v17 = *(a1 + 64);
      v18 = *(a1 + 80);
      v29 = v17;
      v31 = v18;
      v12 = v14;
      v19 = _Block_copy(&v22);
      v20 = *(a1 + 56);
      v21 = [MEMORY[0x1E695B868] standardOptions];
      [v20 registerCKShareWithContainer:v4 allowedSharingOptions:v21 preparationHandler:v19];
    }
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_cold_3();
    }
  }
}

void __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_3;
  v12[3] = &unk_1E846C8E8;
  *&v5 = *(a1 + 32);
  *(&v5 + 1) = *(a1 + 40);
  v11 = v5;
  v6 = *(a1 + 48);
  v15 = v3;
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v11;
  v14 = v8;
  v16 = *(a1 + 72);
  v9 = *(v4 + 16);
  v10 = v3;
  v9(v4, v12);
}

void __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_4;
  v8[3] = &unk_1E846C8E8;
  *&v3 = *(a1 + 32);
  *(&v3 + 1) = *(a1 + 40);
  v7 = v3;
  v4 = *(a1 + 48);
  v11 = *(a1 + 64);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v12 = *(a1 + 72);
  [v2 performBlock:v8];
}

void __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_5;
  v9[3] = &unk_1E846C8E8;
  v8 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v12 = *(a1 + 64);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v8;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  v13 = *(a1 + 72);
  [v2 performBlockInPersonaContext:v9];
}

void __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_5(uint64_t a1)
{
  v2 = [objc_opt_class() newShareForObject:*(a1 + 40)];
  v3 = [*(a1 + 48) identifier];
  [*(a1 + 32) updateRootRecordMapWithShare:v2];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_6;
  v10[3] = &unk_1E846C8C0;
  v11 = *(a1 + 48);
  v15 = *(a1 + 64);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  v12 = v6;
  v13 = v3;
  v8 = *(a1 + 32);
  v16 = v7;
  v14 = v8;
  v9 = v3;
  [v5 prepareShare:v2 forObject:v4 qualityOfService:25 completionHandler:v10];
}

void __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_7;
  v19[3] = &unk_1E846AFD0;
  v22 = *(a1 + 64);
  v8 = v5;
  v20 = v8;
  v9 = v6;
  v21 = v9;
  [v7 performBlockInPersonaContext:v19];
  v10 = *(a1 + 40);
  v11 = v10;
  v12 = *(a1 + 72);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v11, OS_SIGNPOST_INTERVAL_END, v12, "com.apple.notes.collaboration.registerShare", "", v18, 2u);
  }

  if (v8)
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    [v13 ic_setNonNilObject:v8 forNonNilKey:*MEMORY[0x1E69B7548]];
    [v13 ic_setNonNilObject:*(a1 + 48) forNonNilKey:*MEMORY[0x1E69B7540]];
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    v15 = *MEMORY[0x1E69B7538];
    v16 = *(a1 + 56);
    v17 = [v13 copy];
    [v14 postNotificationName:v15 object:v16 userInfo:v17];
  }
}

+ (int64_t)shareStatusOfFolder:(id)a3 objectsForMakingDecision:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = ICDynamicCast();

  if (v7)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    v8 = [v5 managedObjectContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__ICCollaborationController_shareStatusOfFolder_objectsForMakingDecision___block_invoke;
    v10[3] = &unk_1E8469AE0;
    v11 = v5;
    v13 = &v14;
    v12 = v6;
    [v8 performBlockAndWait:v10];

    v7 = v15[3];
    _Block_object_dispose(&v14, 8);
  }

  return v7;
}

uint64_t __74__ICCollaborationController_shareStatusOfFolder_objectsForMakingDecision___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isSharedViaICloud];
  if (result)
  {
    v3 = 2;
LABEL_7:
    *(*(*(a1 + 48) + 8) + 24) = v3;
    return result;
  }

  result = [*(a1 + 32) canBeSharedViaICloud];
  if (!result)
  {
    v3 = 3;
    goto LABEL_7;
  }

  v4 = *(a1 + 40);
  v5 = [ICMoveDecision objectsForMakingDecisionForNonSharedFolder:*(a1 + 32)];
  [v4 addObjectsFromArray:v5];

  result = [*(a1 + 40) ic_containsObjectPassingTest:&__block_literal_global_39];
  if (result)
  {
    v3 = 4;
    goto LABEL_7;
  }

  result = [*(a1 + 40) ic_containsObjectPassingTest:&__block_literal_global_41_0];
  if (result)
  {
    v3 = 5;
    goto LABEL_7;
  }

  return result;
}

uint64_t __74__ICCollaborationController_shareStatusOfFolder_objectsForMakingDecision___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isSharedRootObject] && !objc_msgSend(v2, "isOwnedByCurrentUser"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isPasswordProtected];
  }

  return v3;
}

uint64_t __74__ICCollaborationController_shareStatusOfFolder_objectsForMakingDecision___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isSharedRootObject])
  {
    v3 = [v2 isOwnedByCurrentUser];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (UIImage)shareSheetNoteThumbnailImage
{
  if (shareSheetNoteThumbnailImage_onceToken != -1)
  {
    +[ICCollaborationController shareSheetNoteThumbnailImage];
  }

  v3 = shareSheetNoteThumbnailImage_thumbnailImage;

  return v3;
}

void __57__ICCollaborationController_shareSheetNoteThumbnailImage__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v0 bundleIdentifier];

  v1 = v8;
  if (v8)
  {
    v2 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v8];
    v3 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A78]];
    v4 = [v2 imageForDescriptor:v3];
    if ([v4 placeholder])
    {
      v5 = [v2 prepareImageForDescriptor:v3];

      v4 = v5;
    }

    v6 = [MEMORY[0x1E69DCAB8] ic_imageWithCGImage:{objc_msgSend(v4, "CGImage")}];
    v7 = shareSheetNoteThumbnailImage_thumbnailImage;
    shareSheetNoteThumbnailImage_thumbnailImage = v6;

    v1 = v8;
  }
}

+ (UIImage)shareSheetFolderThumbnailImage
{
  if (shareSheetFolderThumbnailImage_onceToken != -1)
  {
    +[ICCollaborationController shareSheetFolderThumbnailImage];
  }

  v3 = shareSheetFolderThumbnailImage_thumbnailImage;

  return v3;
}

uint64_t __59__ICCollaborationController_shareSheetFolderThumbnailImage__block_invoke()
{
  v0 = [MEMORY[0x1E69DCAB8] imageNamed:@"ios_collaboration_share_sheet_folder_icon"];
  shareSheetFolderThumbnailImage_thumbnailImage = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

+ (id)rootRecordForObject:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__48;
  v15 = __Block_byref_object_dispose__48;
  v16 = 0;
  v4 = [v3 managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__ICCollaborationController_rootRecordForObject___block_invoke;
  v8[3] = &unk_1E8468FA8;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [v4 performBlockAndWait:v8];

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __49__ICCollaborationController_rootRecordForObject___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) serverRecord];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) shortLoggingDescription];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1D4171000, v6, OS_LOG_TYPE_DEFAULT, "Trying to get root record for %@, but we don't have a server record. This likely won't work.", &v11, 0xCu);
    }

    v8 = [*(a1 + 32) makeCloudKitRecordForApproach:0];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

+ (id)newShareForObject:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 rootRecordForObject:v4];
  v6 = [v4 serverRecord];
  v7 = [v6 share];

  v8 = objc_alloc(MEMORY[0x1E695BAC8]);
  v9 = v8;
  if (v7)
  {
    v10 = [v4 serverRecord];
    v11 = [v10 share];
    v12 = [v11 recordID];
    v13 = [v9 initWithRootRecord:v5 shareID:v12];

    v14 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v13 ic_loggingDescription];
      v16 = [v4 shortLoggingDescription];
      v19 = 138412546;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      v17 = "Created share %@ with existing share reference for %@";
LABEL_6:
      _os_log_impl(&dword_1D4171000, v14, OS_LOG_TYPE_INFO, v17, &v19, 0x16u);
    }
  }

  else
  {
    v13 = [v8 initWithRootRecord:v5];
    v14 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v13 ic_loggingDescription];
      v16 = [v4 shortLoggingDescription];
      v19 = 138412546;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      v17 = "Created share %@ for %@";
      goto LABEL_6;
    }
  }

  [v13 ic_updateFromObject:v4];
  return v13;
}

+ (id)updatedShareForObject:(id)a3 includeHierarchicalShare:(BOOL)a4 managedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
LABEL_4:
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__48;
    v22 = __Block_byref_object_dispose__48;
    v23 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __97__ICCollaborationController_updatedShareForObject_includeHierarchicalShare_managedObjectContext___block_invoke;
    v13[3] = &unk_1E846C960;
    v17 = a4;
    v14 = v7;
    v16 = &v18;
    v15 = v9;
    [v15 performBlockAndWait:v13];
    v11 = v19[5];

    _Block_object_dispose(&v18, 8);
    goto LABEL_5;
  }

  v10 = [v7 managedObjectContext];
  if (v10)
  {
    goto LABEL_4;
  }

  v11 = 0;
LABEL_5:

  return v11;
}

void __97__ICCollaborationController_updatedShareForObject_includeHierarchicalShare_managedObjectContext___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __97__ICCollaborationController_updatedShareForObject_includeHierarchicalShare_managedObjectContext___block_invoke_cold_1();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      if (([v4 shareMatchesRecord] & 1) == 0)
      {
        v6 = os_log_create("com.apple.notes", "Collaboration");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v8 = [v4 serverShare];
          v9 = [v8 ic_loggingDescription];
          v10 = [*(a1 + 32) shortLoggingDescription];
          *buf = 138412546;
          v20 = v9;
          v21 = 2112;
          v22 = v10;
          _os_log_error_impl(&dword_1D4171000, v6, OS_LOG_TYPE_ERROR, "Removing mismatched share for object. Share %@, object %@", buf, 0x16u);
        }

        [v4 setServerShare:0];
        v5 = 1;
        [v4 setNeedsToBeFetchedFromCloud:1];
      }

      v7 = [v4 parentCloudObject];

      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  v11 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    [v11 serverShareCheckingParent];
  }

  else
  {
    [v11 serverShare];
  }
  v12 = ;
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *(*(*(a1 + 48) + 8) + 40);
  if (v15)
  {
    [v15 ic_updateFromObject:*(a1 + 32)];
    v16 = [*(a1 + 32) invitation];
    [v16 updateFromShare:*(*(*(a1 + 48) + 8) + 40)];

    if (!((*(*(*(a1 + 48) + 8) + 40) != 0) | v5 & 1))
    {
      return;
    }
  }

  else if ((v5 & 1) == 0)
  {
    return;
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = v17;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [v17 addObject:@"Share updated from object metadata"];
  }

  if (v5)
  {
    [v18 addObject:@"Mismatched share removed from object"];
  }

  [*(a1 + 40) ic_saveWithLogDescription:{@"Reasons: %@", v18}];
}

- (void)prepareShare:(id)a3 forObject:(id)a4 qualityOfService:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__48;
  v46 = __Block_byref_object_dispose__48;
  v47 = 0;
  v13 = [v11 managedObjectContext];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __87__ICCollaborationController_prepareShare_forObject_qualityOfService_completionHandler___block_invoke;
  v38[3] = &unk_1E8469190;
  v14 = v10;
  v39 = v14;
  v15 = v11;
  v40 = v15;
  v41 = &v42;
  [v13 performBlockAndWait:v38];

  v16 = os_log_create("com.apple.notes", "Collaboration");
  v17 = os_signpost_id_generate(v16);
  v18 = v16;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "com.apple.notes.collaboration.prepareShare", "", buf, 2u);
  }

  if ((ICInternalSettingsIsAlexandriaDemoModeEnabled() & 1) == 0)
  {
    v20 = [v15 managedObjectContext];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __87__ICCollaborationController_prepareShare_forObject_qualityOfService_completionHandler___block_invoke_63;
    v35[3] = &unk_1E8468BA0;
    v36 = v15;
    [v20 performBlockAndWait:v35];
  }

  v21 = [(ICCollaborationController *)self cloudContext];
  v22 = v43[5];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __87__ICCollaborationController_prepareShare_forObject_qualityOfService_completionHandler___block_invoke_2;
  v27[3] = &unk_1E846C9B0;
  v23 = v15;
  v28 = v23;
  v29 = self;
  v24 = v14;
  v30 = v24;
  v33 = a5;
  v25 = v19;
  v31 = v25;
  v34 = v17;
  v26 = v12;
  v32 = v26;
  [v21 finishOperationsForRecordID:v22 qualityOfService:a5 completionHandler:v27];

  _Block_object_dispose(&v42, 8);
}

void __87__ICCollaborationController_prepareShare_forObject_qualityOfService_completionHandler___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __87__ICCollaborationController_prepareShare_forObject_qualityOfService_completionHandler___block_invoke_cold_1();
  }

  v3 = [*(a1 + 40) recordID];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __87__ICCollaborationController_prepareShare_forObject_qualityOfService_completionHandler___block_invoke_63(uint64_t a1)
{
  [*(a1 + 32) redactAuthorAttributionsToCurrentUser];
  [*(a1 + 32) updateChangeCountWithReason:@"Redacted author attributions"];
  v2 = [*(a1 + 32) managedObjectContext];
  [v2 ic_save];
}

void __87__ICCollaborationController_prepareShare_forObject_qualityOfService_completionHandler___block_invoke_2(id *a1)
{
  v5 = a1[4];
  v2 = a1[6];
  v3 = a1[7];
  *&v4 = v2;
  *(&v4 + 1) = v3;
  v6 = v4;
  v7 = a1[8];
  performBlockOnMainThread();
}

void __87__ICCollaborationController_prepareShare_forObject_qualityOfService_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__ICCollaborationController_prepareShare_forObject_qualityOfService_completionHandler___block_invoke_4;
  v13[3] = &unk_1E8468BA0;
  v14 = *(a1 + 32);
  [v2 performBlockAndWait:v13];

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 72);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__ICCollaborationController_prepareShare_forObject_qualityOfService_completionHandler___block_invoke_67;
  v9[3] = &unk_1E846C988;
  v7 = *(a1 + 56);
  v8 = *(a1 + 80);
  v10 = v7;
  v12 = v8;
  v11 = *(a1 + 64);
  [v4 saveShare:v3 forObject:v5 qualityOfService:v6 completionHandler:v9];
}

void __87__ICCollaborationController_prepareShare_forObject_qualityOfService_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __87__ICCollaborationController_prepareShare_forObject_qualityOfService_completionHandler___block_invoke_4_cold_1(a1);
  }
}

void __87__ICCollaborationController_prepareShare_forObject_qualityOfService_completionHandler___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v8, OS_SIGNPOST_INTERVAL_END, v9, "com.apple.notes.collaboration.prepareShare", "", v10, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)saveShare:(id)a3 attemptNumber:(id)a4 forObject:(id)a5 accountID:(id)a6 container:(id)a7 qualityOfService:(int64_t)a8 retryPrepHandler:(id)a9 completionHandler:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = a10;
  if (![v17 unsignedIntegerValue])
  {

    v17 = &unk_1F4FC3FD8;
  }

  if ([v17 unsignedIntegerValue] < 6)
  {
    v24 = dispatch_time(0, 1000000000 * [v17 unsignedIntegerValue] - 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __135__ICCollaborationController_saveShare_attemptNumber_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke;
    block[3] = &unk_1E846CA00;
    block[4] = self;
    v26 = v16;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v33 = a8;
    v31 = v21;
    v30 = v17;
    v32 = v22;
    dispatch_after(v24, MEMORY[0x1E69E96A0], block);
  }

  else if (v22)
  {
    v23 = ICGenericError();
    (*(v22 + 2))(v22, 0, v23);
  }
}

void __135__ICCollaborationController_saveShare_attemptNumber_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 96);
  v7 = *(a1 + 80);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __135__ICCollaborationController_saveShare_attemptNumber_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_2;
  v14[3] = &unk_1E846C9D8;
  v8 = *(a1 + 64);
  v15 = *(a1 + 72);
  v9 = *(a1 + 88);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v21 = v9;
  v16 = v10;
  v17 = v11;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 96);
  v20 = v12;
  v23 = v13;
  v22 = *(a1 + 80);
  [v2 saveShare:v3 forObject:v4 accountID:v5 container:v8 qualityOfService:v6 retryPrepHandler:v7 completionHandler:v14];
}

void __135__ICCollaborationController_saveShare_attemptNumber_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ((!v10 || v5) && [v5 ic_shouldRetryCloudKitError] && objc_msgSend(*(a1 + 32), "unsignedIntegerValue") < 5)
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "unsignedIntegerValue") + 1}];
    [v8 saveShare:v7 attemptNumber:v9 forObject:*(a1 + 56) accountID:*(a1 + 64) container:*(a1 + 72) qualityOfService:*(a1 + 96) retryPrepHandler:*(a1 + 88) completionHandler:*(a1 + 80)];
  }

  else
  {
    v6 = *(a1 + 80);
    if (v6)
    {
      (*(v6 + 16))(v6, v10, v5);
    }
  }
}

- (void)saveShare:(id)a3 forObject:(id)a4 accountID:(id)a5 container:(id)a6 qualityOfService:(int64_t)a7 retryPrepHandler:(id)a8 completionHandler:(id)a9
{
  v50 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v28 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  if (v16)
  {
    if (v15)
    {
LABEL_3:
      v42 = 0;
      v43 = &v42;
      v44 = 0x3032000000;
      v45 = __Block_byref_object_copy__48;
      v46 = __Block_byref_object_dispose__48;
      v47 = [objc_opt_class() rootRecordForObject:v16];
      if (v43[5])
      {
        v20 = [v16 managedObjectContext];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke;
        v39[3] = &unk_1E8468F80;
        v21 = v15;
        v40 = v21;
        v22 = v16;
        v41 = v22;
        [v20 performBlockAndWait:v39];

        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_2;
        v29[3] = &unk_1E846CAF0;
        v30 = v22;
        v31 = self;
        v32 = v21;
        v37 = &v42;
        v33 = v28;
        v34 = v17;
        v38 = a7;
        v35 = v18;
        v36 = v19;
        [v32 ic_updateThumbnailsFromObject:v30 completion:v29];

        v23 = v40;
      }

      else
      {
        v26 = os_log_create("com.apple.notes", "Collaboration");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v16 shortLoggingDescription];
          *buf = 138412290;
          v49 = v27;
          _os_log_impl(&dword_1D4171000, v26, OS_LOG_TYPE_DEFAULT, "No root record for %@", buf, 0xCu);
        }

        v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B79F0] code:208 userInfo:0];
        if (v19)
        {
          (*(v19 + 2))(v19, 0, v23);
        }
      }

      _Block_object_dispose(&v42, 8);
      goto LABEL_16;
    }
  }

  else
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((object) != nil)" functionName:"-[ICCollaborationController saveShare:forObject:accountID:container:qualityOfService:retryPrepHandler:completionHandler:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "object"}];
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v24 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [ICCollaborationController saveShare:forObject:accountID:container:qualityOfService:retryPrepHandler:completionHandler:];
  }

  v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B79F0] code:208 userInfo:0];
  if (v19)
  {
    (*(v19 + 2))(v19, 0, v25);
  }

LABEL_16:
}

void __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_3;
  v15[3] = &unk_1E846CAC8;
  v14 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 88);
  v6 = v4;
  v7 = *(a1 + 56);
  *&v8 = v4;
  *(&v8 + 1) = v7;
  *&v9 = v14;
  *(&v9 + 1) = v3;
  v16 = v9;
  v17 = v8;
  v10 = *(a1 + 64);
  v20 = *(a1 + 96);
  v11 = *(a1 + 72);
  *&v12 = *(a1 + 80);
  *(&v12 + 1) = v5;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  v18 = v13;
  v19 = v12;
  [v2 performBlock:v15];
}

void __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_3(uint64_t a1)
{
  v17 = *(a1 + 40);
  v18 = *(a1 + 32);
  v2 = *(a1 + 96);
  v3 = *(*(*(a1 + 88) + 8) + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_4;
  v19[3] = &unk_1E846CAA0;
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v16 = *(a1 + 32);
  v10 = *(a1 + 56);
  *&v11 = v16;
  *(&v11 + 1) = v10;
  *&v12 = v6;
  *(&v12 + 1) = v7;
  v20 = v12;
  v21 = v11;
  v13 = *(a1 + 64);
  v24 = *(a1 + 96);
  *&v14 = *(a1 + 80);
  *(&v14 + 1) = v9;
  *&v15 = v13;
  *(&v15 + 1) = v8;
  v22 = v15;
  v23 = v14;
  [v18 saveShare:v17 withRootRecord:v3 object:v6 accountID:v4 container:v5 qualityOfService:v2 completionHandler:v19];
}

void __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = [*(a1 + 32) managedObjectContext];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_5;
    v21[3] = &unk_1E846CA78;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v20 = v12;
    v13 = *(a1 + 72);
    v14 = *(a1 + 88);
    v19 = *(a1 + 48);
    v15 = *(&v19 + 1);
    v23 = v19;
    v22 = v20;
    v16 = *(a1 + 64);
    v26 = *(a1 + 96);
    *&v17 = *(a1 + 80);
    *(&v17 + 1) = v14;
    *&v18 = v16;
    *(&v18 + 1) = v13;
    v24 = v18;
    v25 = v17;
    [v9 performBlock:v21];
  }

  else
  {
    v8 = *(a1 + 80);
    if (v8)
    {
      (*(v8 + 16))(v8, v5, 0);
    }
  }
}

void __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_5(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortLoggingDescription];
    *buf = 138412290;
    v57 = v3;
    _os_log_impl(&dword_1D4171000, v2, OS_LOG_TYPE_DEFAULT, "Retrying to save share for %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) serverShare];
  if (v4)
  {
    v5 = v4;
    v6 = [*(a1 + 40) recordChangeTag];
    v7 = [*(a1 + 32) serverShare];
    v8 = [v7 recordChangeTag];
    v9 = *MEMORY[0x1E695E738];
    if (*MEMORY[0x1E695E738] == v6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v6;
    }

    v11 = v10;
    if (v9 == v8)
    {
      v12 = 0;
    }

    else
    {
      v12 = v8;
    }

    v13 = v12;
    if (v11 | v13)
    {
      v14 = v13;
      if (v11)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {

LABEL_22:
        v27 = os_log_create("com.apple.notes", "Collaboration");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [*(a1 + 32) serverShare];
          v29 = [v28 ic_loggingDescription];
          *buf = 138412290;
          v57 = v29;
          _os_log_impl(&dword_1D4171000, v27, OS_LOG_TYPE_DEFAULT, "Using updated server share when retrying %@", buf, 0xCu);
        }

        v30 = *(a1 + 72);
        if (v30)
        {
          (*(v30 + 16))();
        }

        v31 = [*(a1 + 32) serverShare];
        v32 = [v31 copy];

        [v32 ic_updateFromObject:*(a1 + 32)];
        v33 = *(a1 + 32);
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_78;
        v49[3] = &unk_1E846CA50;
        v34 = v33;
        v35 = *(a1 + 88);
        v36 = *(a1 + 48);
        v37 = *(a1 + 56);
        v50 = v34;
        v51 = v36;
        v52 = v32;
        v38 = v37;
        v39 = *(a1 + 64);
        v55 = *(a1 + 96);
        *&v40 = *(a1 + 80);
        *(&v40 + 1) = v35;
        *&v41 = v38;
        *(&v41 + 1) = v39;
        v53 = v41;
        v54 = v40;
        v25 = v32;
        [v25 ic_updateThumbnailsFromObject:v34 completion:v49];

        goto LABEL_27;
      }

      v26 = [v11 isEqual:v13];

      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    (*(v16 + 16))();
  }

  [*(a1 + 40) ic_updateFromObject:*(a1 + 32)];
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_3_80;
  v43[3] = &unk_1E846CA50;
  v44 = v17;
  v19 = *(a1 + 88);
  v42 = *(a1 + 40);
  v20 = v42.i64[0];
  v45 = vextq_s8(v42, v42, 8uLL);
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v48 = *(a1 + 96);
  *&v23 = *(a1 + 80);
  *(&v23 + 1) = v19;
  *&v24 = v21;
  *(&v24 + 1) = v22;
  v46 = v24;
  v47 = v23;
  [v18 ic_updateThumbnailsFromObject:v44 completion:v43];

  v25 = v44;
LABEL_27:
}

void __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_78(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_2_79;
  v11[3] = &unk_1E846CA28;
  v15 = *(a1 + 80);
  v10 = *(a1 + 32);
  v3 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v16 = *(a1 + 88);
  v7 = *(a1 + 72);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  [v2 performBlock:v11];
}

uint64_t __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_2_79(uint64_t a1)
{
  v2 = [objc_opt_class() rootRecordForObject:*(a1 + 40)];
  v3 = *(*(a1 + 80) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return [*(a1 + 32) saveShare:*(a1 + 48) withRootRecord:*(*(*(a1 + 80) + 8) + 40) object:*(a1 + 40) accountID:*(a1 + 56) container:*(a1 + 64) qualityOfService:*(a1 + 88) completionHandler:*(a1 + 72)];
}

void __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_3_80(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_4_81;
  v11[3] = &unk_1E846CA28;
  v15 = *(a1 + 80);
  v10 = *(a1 + 32);
  v3 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v16 = *(a1 + 88);
  v7 = *(a1 + 72);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  [v2 performBlock:v11];
}

uint64_t __121__ICCollaborationController_saveShare_forObject_accountID_container_qualityOfService_retryPrepHandler_completionHandler___block_invoke_4_81(uint64_t a1)
{
  v2 = [objc_opt_class() rootRecordForObject:*(a1 + 40)];
  v3 = *(*(a1 + 80) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return [*(a1 + 32) saveShare:*(a1 + 48) withRootRecord:*(*(*(a1 + 80) + 8) + 40) object:*(a1 + 40) accountID:*(a1 + 56) container:*(a1 + 64) qualityOfService:*(a1 + 88) completionHandler:*(a1 + 72)];
}

- (void)saveShare:(id)a3 withRootRecord:(id)a4 object:(id)a5 accountID:(id)a6 container:(id)a7 qualityOfService:(int64_t)a8 completionHandler:(id)a9
{
  v75 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v57 = a7;
  v19 = a9;
  if (v15 && v16)
  {
    if (!v18)
    {
      v20 = [v17 cloudAccount];
      v18 = [v20 identifier];
    }

    if ([v18 length])
    {
      if ([v17 isSharedReadOnly])
      {
        v21 = MEMORY[0x1E69B7A38];
        v22 = [v15 ic_loggingDescription];
        v23 = [v17 ic_loggingDescription];
        [v21 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCollaborationController saveShare:withRootRecord:object:accountID:container:qualityOfService:completionHandler:]" simulateCrash:1 showAlert:0 format:{@"Tried to save a read-only share (%@) for object: %@", v22, v23}];

        if (v19)
        {
LABEL_8:
          v24 = ICGenericError();
          v19[2](v19, 0, v24);
        }
      }

      else
      {
        v56 = self;
        v28 = [v15 rootRecordID];
        if (v28 && ([v15 rootRecordID], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "recordID"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v29, "isEqual:", v30), v30, v29, v28, (v31 & 1) == 0))
        {
          v49 = os_log_create("com.apple.notes", "Collaboration");
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            [ICCollaborationController saveShare:v15 withRootRecord:v17 object:? accountID:? container:? qualityOfService:? completionHandler:?];
          }

          [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCollaborationController saveShare:withRootRecord:object:accountID:container:qualityOfService:completionHandler:]" simulateCrash:1 showAlert:1 format:@"Tried to save a mismatched share"];
          if (v19)
          {
            (v19)[2](v19, v15, 0);
          }
        }

        else
        {
          v32 = os_log_create("com.apple.notes", "Collaboration");
          v33 = os_signpost_id_generate(v32);
          v34 = v32;
          v35 = v34;
          if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1D4171000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v33, "com.apple.notes.collaboration.saveShare", "", buf, 2u);
          }

          v54 = v35;
          v55 = v33;

          if (!v57)
          {
            v57 = [(ICCollaborationController *)v56 containerForAccountID:v18];
          }

          v36 = objc_alloc(MEMORY[0x1E695B9B8]);
          v68[0] = v15;
          v68[1] = v16;
          v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
          v38 = [v36 initWithRecordsToSave:v37 recordIDsToDelete:0];

          [v38 setQualityOfService:a8];
          v39 = [v38 configuration];
          [v39 setDiscretionaryNetworkBehavior:0];

          v40 = [v15 recordID];
          v41 = [v57 databaseWithDatabaseScope:{objc_msgSend(v40, "databaseScope")}];
          [v38 setDatabase:v41];

          objc_initWeak(&location, v38);
          v42 = os_log_create("com.apple.notes", "Collaboration");
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v53 = [v15 ic_loggingDescription];
            v43 = [v16 ic_loggingDescription];
            v44 = objc_loadWeakRetained(&location);
            v45 = [v44 ic_loggingDescription];
            *buf = 138412802;
            v70 = v53;
            v71 = 2112;
            v72 = v43;
            v73 = 2112;
            v74 = v45;
            _os_log_impl(&dword_1D4171000, v42, OS_LOG_TYPE_INFO, "Saving Share: %@ with root record: %@ %@", buf, 0x20u);
          }

          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke;
          v58[3] = &unk_1E846CBB0;
          objc_copyWeak(v66, &location);
          v59 = v17;
          v60 = v15;
          v61 = v56;
          v62 = v16;
          v18 = v18;
          v63 = v18;
          v46 = v54;
          v64 = v46;
          v66[1] = v55;
          v65 = v19;
          [v38 setModifyRecordsCompletionBlock:v58];
          v47 = objc_alloc_init(MEMORY[0x1E695BA08]);
          [v47 setName:@"SaveShare"];
          [v47 setQuantity:1];
          [v47 setExpectedSendSize:1];
          [v47 setExpectedReceiveSize:1];
          [v38 setGroup:v47];
          v48 = [v38 database];
          [v48 addOperation:v38];

          objc_destroyWeak(v66);
          objc_destroyWeak(&location);
        }
      }
    }

    else
    {
      v27 = os_log_create("com.apple.notes", "Collaboration");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [ICCollaborationController saveShare:v15 withRootRecord:v17 object:? accountID:? container:? qualityOfService:? completionHandler:?];
      }

      if (v19)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v25 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v50 = [v15 ic_loggingDescription];
      v51 = [v16 ic_loggingDescription];
      v52 = [v17 ic_loggingDescription];
      *buf = 138412802;
      v70 = v50;
      v71 = 2112;
      v72 = v51;
      v73 = 2112;
      v74 = v52;
      _os_log_error_impl(&dword_1D4171000, v25, OS_LOG_TYPE_ERROR, "Tried to save a nil share (%@) or a nil root record (%@) for object: %@", buf, 0x20u);
    }

    if (v19)
    {
      v26 = ICGenericError();
      v19[2](v19, 0, v26);
    }
  }
}

void __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke(id *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 11);
  v18 = v7;
  v19 = a1[4];
  v20 = a1[5];
  v21 = WeakRetained;
  v17 = *(a1 + 3);
  v9 = *(&v17 + 1);
  v10 = a1[8];
  v11 = a1[9];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v22 = v12;
  v23 = v6;
  v24 = a1[10];
  v13 = v6;
  v14 = WeakRetained;
  v15 = v7;
  performBlockOnMainThread();
  v16 = [a1[6] cloudContext];
  [v16 informCloudAnalyticsDelegateForOperationDidEnd:v14 recordsByRecordID:MEMORY[0x1E695E0F8] operationError:v15];
}

void __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_2(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) managedObjectContext];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_3;
    v45[3] = &unk_1E846A3A0;
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    *&v8 = v3;
    *(&v8 + 1) = v4;
    v46 = v8;
    v47 = v7;
    [v2 performBlockAndWait:v45];

    v9 = [*(a1 + 32) code];
    if (v9 == 2)
    {
      v19 = [*(a1 + 40) managedObjectContext];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_91;
      v42[3] = &unk_1E8468F80;
      v43 = *(a1 + 40);
      v44 = *(a1 + 56);
      [v19 performBlockAndWait:v42];

      v20 = [*(a1 + 32) userInfo];
      v21 = [v20 objectForKeyedSubscript:*MEMORY[0x1E695B798]];

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_92;
      v36[3] = &unk_1E846CB40;
      v37 = *(a1 + 40);
      v38 = *(a1 + 56);
      v39 = *(a1 + 72);
      v40 = *(a1 + 80);
      v41 = *(a1 + 48);
      [v21 enumerateKeysAndObjectsUsingBlock:v36];

      v11 = v43;
    }

    else
    {
      if (v9 != 25)
      {
        goto LABEL_13;
      }

      v10 = objc_opt_class();
      v11 = [*(a1 + 72) recordID];
      [v10 showQuotaExceededAlertIfNeededWithRecordID:v11 accountID:*(a1 + 80)];
    }

LABEL_13:
    v22 = *(a1 + 88);
    v23 = v22;
    v24 = *(a1 + 112);
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D4171000, v23, OS_SIGNPOST_INTERVAL_END, v24, "com.apple.notes.collaboration.saveShare", "", buf, 2u);
    }

    v25 = *(a1 + 104);
    if (v25)
    {
      (*(v25 + 16))(v25, 0, *(a1 + 32));
    }

    v17 = v46;
    goto LABEL_25;
  }

  v12 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [*(a1 + 48) ic_loggingDescription];
    v14 = [*(a1 + 56) ic_loggingDescription];
    *buf = 138412546;
    v49 = v13;
    v50 = 2112;
    v51 = v14;
    _os_log_impl(&dword_1D4171000, v12, OS_LOG_TYPE_INFO, "Saved share %@ %@", buf, 0x16u);
  }

  v15 = [*(a1 + 96) indexOfObjectPassingTest:&__block_literal_global_102];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_2_cold_1();
    }

    v17 = 0;
    v18 = v16;
  }

  else
  {
    v26 = [*(a1 + 96) objectAtIndex:v15];
    v27 = [*(a1 + 40) managedObjectContext];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_2_103;
    v32[3] = &unk_1E8468D98;
    v33 = *(a1 + 40);
    v17 = v26;
    v34 = v17;
    v35 = v27;
    v18 = v27;
    [v18 performBlockAndWait:v32];

    v16 = v33;
  }

  v28 = *(a1 + 88);
  v29 = v28;
  v30 = *(a1 + 112);
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v29, OS_SIGNPOST_INTERVAL_END, v30, "com.apple.notes.collaboration.saveShare", "", buf, 2u);
  }

  v31 = *(a1 + 104);
  if (v31)
  {
    (*(v31 + 16))(v31, v17, 0);
  }

LABEL_25:
}

void __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_3(id *a1)
{
  v2 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_3_cold_1(a1);
  }
}

void __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_91(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortLoggingDescription];
    v4 = [*(a1 + 40) ic_loggingDescription];
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1D4171000, v2, OS_LOG_TYPE_DEFAULT, "Partial failure saving share for %@ %@", &v5, 0x16u);
  }
}

void __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_92(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] managedObjectContext];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_2_93;
  v23[3] = &unk_1E846A3A0;
  v24 = a1[4];
  v8 = v5;
  v25 = v8;
  v26 = a1[5];
  v9 = v6;
  v27 = v9;
  [v7 performBlockAndWait:v23];

  if ([v9 code] == 14)
  {
    v10 = [a1[4] managedObjectContext];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_94;
    v17[3] = &unk_1E846CB18;
    v18 = v9;
    v19 = v8;
    v11 = a1[6];
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[7];
    *&v15 = v13;
    *(&v15 + 1) = v14;
    *&v16 = v11;
    *(&v16 + 1) = v12;
    v20 = v16;
    v21 = v15;
    v22 = a1[8];
    [v10 performBlockAndWait:v17];
  }
}

void __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_2_93(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortLoggingDescription];
    v4 = [*(a1 + 40) ic_loggingDescription];
    v5 = [*(a1 + 48) ic_loggingDescription];
    v6 = *(a1 + 56);
    v7 = 138413058;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1D4171000, v2, OS_LOG_TYPE_DEFAULT, "Error saving share for %@ when saving record ID %@ %@: %@", &v7, 0x2Au);
  }
}

void __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_94(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E695B7C0]];

  if (!v3)
  {
    v10 = os_log_create("com.apple.notes", "Collaboration");
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      goto LABEL_15;
    }

    v11 = [*(a1 + 40) ic_loggingDescription];
    v12 = [*(a1 + 56) shortLoggingDescription];
    v13 = [*(a1 + 64) ic_loggingDescription];
    v21 = 138412802;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_1D4171000, v10, OS_LOG_TYPE_DEFAULT, "No server record from error saving share for %@ %@ %@", &v21, 0x20u);

LABEL_8:
    goto LABEL_9;
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) recordID];
  LODWORD(v4) = [v4 isEqual:v5];

  if (!v4)
  {
    v14 = *(a1 + 40);
    v15 = [*(a1 + 80) recordID];
    LODWORD(v14) = [v14 isEqual:v15];

    if (!v14)
    {
      goto LABEL_15;
    }

    v16 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v3 ic_loggingDescription];
      v18 = [*(a1 + 56) shortLoggingDescription];
      v19 = [*(a1 + 64) ic_loggingDescription];
      v21 = 138412802;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_1D4171000, v16, OS_LOG_TYPE_DEFAULT, "Saving server share %@ for %@ %@", &v21, 0x20u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 56) setServerShareIfNewer:v3];
      goto LABEL_15;
    }

    v10 = os_log_create("com.apple.notes", "Collaboration");
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v11 = [v3 ic_loggingDescription];
    v12 = [*(a1 + 64) ic_loggingDescription];
    v21 = 138412546;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_1D4171000, v10, OS_LOG_TYPE_DEFAULT, "Server record %@ is not a share %@", &v21, 0x16u);
    goto LABEL_8;
  }

  v6 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 ic_loggingDescription];
    v8 = [*(a1 + 56) shortLoggingDescription];
    v9 = [*(a1 + 64) ic_loggingDescription];
    v21 = 138412802;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_1D4171000, v6, OS_LOG_TYPE_DEFAULT, "Saving server record %@ for %@ %@", &v21, 0x20u);
  }

  [*(a1 + 56) objectWasFetchedFromCloudWithRecord:v3 accountID:*(a1 + 72)];
LABEL_15:
  v20 = [*(a1 + 56) managedObjectContext];
  [v20 ic_saveWithLogDescription:@"Saving Share"];
}

uint64_t __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_99(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_2_103(uint64_t a1)
{
  [*(a1 + 32) setServerShareIfNewer:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 ic_save];
}

- (void)fetchShareIfNecessaryForObject:(id)a3 completionHandler:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 cloudAccount];
  v8 = [v7 identifier];

  v9 = [v8 length];
  v10 = os_log_create("com.apple.notes", "Collaboration");
  v11 = v10;
  if (v9)
  {
    v12 = os_signpost_id_generate(v10);
    v13 = v11;
    v14 = v13;
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D4171000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "com.apple.notes.collaboration.fetchShare", "", buf, 2u);
    }

    v15 = [v5 serverRecord];
    v16 = [v15 share];
    v17 = [v16 recordID];

    if (v17 && ([v5 serverShare], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v19))
    {
      v22 = os_log_create("com.apple.notes", "Collaboration");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v37 = [v5 serverRecord];
        v23 = [v37 share];
        v24 = [v23 recordID];
        v36 = [v24 ic_loggingDescription];
        v25 = [v5 shortLoggingDescription];
        *buf = 138412546;
        v49 = v36;
        v50 = 2112;
        v51 = v25;
        _os_log_impl(&dword_1D4171000, v22, OS_LOG_TYPE_INFO, "Need to fetch share %@ for %@", buf, 0x16u);
      }

      v26 = [(ICCollaborationController *)self containerForAccountID:v8];
      v27 = objc_alloc(MEMORY[0x1E695B938]);
      v47 = v17;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      v29 = [v27 initWithRecordIDs:v28];

      v30 = [v26 databaseWithDatabaseScope:{objc_msgSend(v17, "databaseScope")}];
      [v29 setDatabase:v30];

      [v29 setQueuePriority:8];
      [v29 setQualityOfService:17];
      v31 = [v29 configuration];
      [v31 setDiscretionaryNetworkBehavior:0];

      objc_initWeak(&location, v29);
      v32 = os_log_create("com.apple.notes", "Collaboration");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = [v17 ic_loggingDescription];
        [v29 ic_loggingDescription];
        objc_claimAutoreleasedReturnValue();
        [ICCollaborationController fetchShareIfNecessaryForObject:completionHandler:];
      }

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __78__ICCollaborationController_fetchShareIfNecessaryForObject_completionHandler___block_invoke;
      v39[3] = &unk_1E846CBD8;
      v40 = v17;
      objc_copyWeak(v45, &location);
      v41 = self;
      v42 = v8;
      v43 = v14;
      v45[1] = v12;
      v44 = v6;
      [v29 setFetchRecordsCompletionBlock:v39];
      v34 = objc_alloc_init(MEMORY[0x1E695BA08]);
      [v34 setName:@"FetchShare"];
      [v34 setQuantity:1];
      [v34 setExpectedSendSize:1];
      [v34 setExpectedReceiveSize:1];
      [v29 setGroup:v34];
      v35 = [v29 database];
      [v35 addOperation:v29];

      objc_destroyWeak(v45);
      objc_destroyWeak(&location);
    }

    else
    {
      v20 = v14;
      v21 = v20;
      if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1D4171000, v21, OS_SIGNPOST_INTERVAL_END, v12, "com.apple.notes.collaboration.fetchShare", "", buf, 2u);
      }

      v6[2](v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ICCollaborationController fetchShareIfNecessaryForObject:completionHandler:];
    }

    if (v6)
    {
      v6[2](v6);
    }
  }
}

void __78__ICCollaborationController_fetchShareIfNecessaryForObject_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = [v5 objectForKeyedSubscript:*(a1 + 32)];
  v8 = ICDynamicCast();

  v9 = os_log_create("com.apple.notes", "Collaboration");
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __78__ICCollaborationController_fetchShareIfNecessaryForObject_completionHandler___block_invoke_cold_1();
    }

    [*(a1 + 40) saveServerShare:v8 persistParticipantEvents:0 accountID:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = [*(a1 + 32) ic_loggingDescription];
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v18 = [WeakRetained ic_loggingDescription];
      v19 = 138412802;
      v20 = v16;
      v21 = 2112;
      v22 = v18;
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&dword_1D4171000, v10, OS_LOG_TYPE_ERROR, "Error fetching share %@ %@: %@", &v19, 0x20u);
    }
  }

  v11 = *(a1 + 56);
  v12 = v11;
  v13 = *(a1 + 80);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v12, OS_SIGNPOST_INTERVAL_END, v13, "com.apple.notes.collaboration.fetchShare", "", &v19, 2u);
  }

  (*(*(a1 + 64) + 16))();
  v14 = [*(a1 + 40) cloudContext];
  v15 = objc_loadWeakRetained((a1 + 72));
  [v14 informCloudAnalyticsDelegateForOperationDidEnd:v15 recordsByRecordID:v5 operationError:v6];
}

- (void)saveServerShare:(id)a3 persistParticipantEvents:(BOOL)a4 accountID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(ICCollaborationController *)self viewContext];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__ICCollaborationController_saveServerShare_persistParticipantEvents_accountID___block_invoke;
  v14[3] = &unk_1E846A350;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = a4;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [v11 performBlock:v14];
}

void __80__ICCollaborationController_saveServerShare_persistParticipantEvents_accountID___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForShare:*(a1 + 40) accountID:*(a1 + 48) context:*(a1 + 56)];
  v3 = os_log_create("com.apple.notes", "Collaboration");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = v5;
      v7 = [v2 identifier];
      v8 = [*(a1 + 40) ic_loggingDescription];
      *buf = 138412802;
      v28 = v5;
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_1D4171000, v4, OS_LOG_TYPE_INFO, "Setting server share on %@ %@ %@", buf, 0x20u);
    }

    v9 = [v2 serverShare];
    [v2 setServerShareIfNewer:*(a1 + 40)];
    if (*(a1 + 64) == 1)
    {
      v10 = [*(a1 + 32) collaborationControllerDelegate];
      [v10 collaborationController:*(a1 + 32) persistParticipantActivityEventsOnObject:v2 oldShare:v9 newShare:*(a1 + 40)];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [v2 associatedNoteParticipants];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(a1 + 56) deleteObject:*(*(&v22 + 1) + 8 * v15++)];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    [*(a1 + 56) ic_save];
    v16 = objc_alloc(MEMORY[0x1E69B7848]);
    v17 = [*(a1 + 32) backgroundContext];
    v4 = [v16 initWithManagedObjectContext:v17];

    [v4 updateWithCompletion:0];
    [objc_opt_class() postDidUpdateShareNotificationForObject:v2];
    objc_opt_class();
    v18 = ICDynamicCast();
    if (v18 && *(a1 + 40))
    {
      v19 = [*(a1 + 32) collaborationAnalyticsTracker];
      [v19 saveNewShare:*(a1 + 40) forNote:v18];
    }

    v20 = [*(a1 + 32) collaborationAnalyticsDelegate];
    [v20 trackCollaborationActionSecondShareForObject:v2 share:*(a1 + 40) isInviting:1];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(a1 + 40) ic_loggingDescription];
      *buf = 138412290;
      v28 = v21;
      _os_log_impl(&dword_1D4171000, v4, OS_LOG_TYPE_DEFAULT, "Couldn't find cloud object for share %@", buf, 0xCu);
    }

    v9 = v4;
  }
}

+ (void)postDidUpdateShareNotificationForObject:(id)a3
{
  v3 = a3;
  v10 = [v3 serverShareCheckingParent];
  v4 = [v10 recordID];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithObject:v4 forKey:@"ICCloudSyncingObjectShareRecordID"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E695BAC8] ic_systemFieldsValueTransformer];
  v7 = [v6 transformedValue:v10];
  [v5 setObject:v7 forKeyedSubscript:@"ICCloudSyncingObjectShareData"];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = [v5 copy];
  [v8 postNotificationName:@"ICCloudSyncingObjectDidUpdateShare" object:v3 userInfo:v9];
}

- (id)objectForShare:(id)a3 accountID:(id)a4 context:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B7598]];
  v12 = [v11 recordID];
  if (v12)
  {
    v13 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B75A0]];
    if (!v13)
    {
      v14 = os_log_create("com.apple.notes", "Collaboration");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [ICCollaborationController objectForShare:v8 accountID:? context:?];
      }
    }

    v15 = [(ICCollaborationController *)self cloudContext];
    v16 = [v15 existingCloudObjectForRecordID:v12 recordType:v13 accountID:v9 context:v10];
  }

  else
  {
    v15 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v8 ic_loggingDescription];
      v19 = 138412290;
      v20 = v17;
      _os_log_impl(&dword_1D4171000, v15, OS_LOG_TYPE_DEFAULT, "No root record reference for share %@", &v19, 0xCu);
    }

    v16 = 0;
    v13 = v15;
  }

  return v16;
}

- (void)removeShareIfNeededWithOwnedObjectID:(id)a3 countParticipants:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    v11 = [(ICCollaborationController *)self viewContext];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __102__ICCollaborationController_removeShareIfNeededWithOwnedObjectID_countParticipants_completionHandler___block_invoke;
    v13[3] = &unk_1E846CC50;
    v14 = v11;
    v15 = v8;
    v18 = a4;
    v16 = self;
    v17 = v10;
    v12 = v11;
    [v12 performBlock:v13];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

void __102__ICCollaborationController_removeShareIfNeededWithOwnedObjectID_countParticipants_completionHandler___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v2 = [*(a1 + 32) ic_existingObjectWithID:*(a1 + 40)];
  v3 = ICDynamicCast();

  if (!v3 || ![v3 isOwnedByCurrentUser] || (objc_msgSend(v3, "serverShare"), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_6:
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, 0);
    }

    goto LABEL_12;
  }

  v5 = v4;
  if (*(a1 + 64))
  {
    v6 = [v3 isPubliclySharedOrHasInvitees];

    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  objc_opt_class();
  v8 = ICDynamicCast();
  if (v8)
  {
    v9 = [*(a1 + 48) collaborationAnalyticsTracker];
    [v9 unshareNote:v8];
  }

  v10 = [*(a1 + 48) cloudContext];
  v20[0] = v3;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __102__ICCollaborationController_removeShareIfNeededWithOwnedObjectID_countParticipants_completionHandler___block_invoke_2;
  v17[3] = &unk_1E846CC28;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  *&v15 = *(a1 + 48);
  *(&v15 + 1) = v14;
  *&v16 = v12;
  *(&v16 + 1) = v13;
  v18 = v16;
  v19 = v15;
  [v10 deleteSharesForObjects:v11 completionHandler:v17];

LABEL_12:
}

void __102__ICCollaborationController_removeShareIfNeededWithOwnedObjectID_countParticipants_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__ICCollaborationController_removeShareIfNeededWithOwnedObjectID_countParticipants_completionHandler___block_invoke_3;
  v11[3] = &unk_1E846CC00;
  v12 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v6;
  *&v9 = v5;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  [v4 performBlock:v11];
}

void __102__ICCollaborationController_removeShareIfNeededWithOwnedObjectID_countParticipants_completionHandler___block_invoke_3(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __102__ICCollaborationController_removeShareIfNeededWithOwnedObjectID_countParticipants_completionHandler___block_invoke_3_cold_1();
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, *v2);
    }
  }

  else
  {
    objc_opt_class();
    v5 = [*(a1 + 48) ic_existingObjectWithID:*(a1 + 40)];
    v6 = ICDynamicCast();

    [v6 setNeedsToBeFetchedFromCloud:1];
    [v6 setServerShare:0];
    [v6 removeAllCloudSyncingObjectActivityEvents];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [v6 allChildCloudObjects];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        v11 = 0;
        do
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v25 + 1) + 8 * v11++) removeAllCloudSyncingObjectActivityEvents];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [v6 associatedNoteParticipants];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(a1 + 48) deleteObject:*(*(&v21 + 1) + 8 * v16++)];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v14);
    }

    [*(a1 + 48) ic_save];
    v17 = [*(a1 + 56) backgroundContext];
    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x1E69B7848]) initWithManagedObjectContext:v17];
      [v18 updateWithCompletion:0];
    }

    [objc_opt_class() postDidUpdateShareNotificationForObject:v6];
    v19 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __102__ICCollaborationController_removeShareIfNeededWithOwnedObjectID_countParticipants_completionHandler___block_invoke_3_cold_2();
    }

    v20 = *(a1 + 64);
    if (v20)
    {
      (*(v20 + 16))(v20, 1, 0);
    }
  }
}

- (void)didStopSharing:(id)a3 recordID:(id)a4 accountID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICCollaborationController *)self viewContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__ICCollaborationController_didStopSharing_recordID_accountID___block_invoke;
  v16[3] = &unk_1E846CC78;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v21 = v9;
  v12 = v9;
  v13 = v11;
  v14 = v10;
  v15 = v8;
  [v13 performBlock:v16];
}

void __63__ICCollaborationController_didStopSharing_recordID_accountID___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 objectForShare:v3 accountID:*(a1 + 48) context:*(a1 + 56)];
  }

  else
  {
    [v2 objectForCKShareRecordID:*(a1 + 64) accountID:*(a1 + 48) context:*(a1 + 56)];
  }
  v4 = ;
  v5 = os_log_create("com.apple.notes", "Collaboration");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [*(a1 + 32) ic_loggingDescription];
      v8 = *(a1 + 64);
      v9 = *(a1 + 48);
      *buf = 138412802;
      v29 = v7;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_1D4171000, v5, OS_LOG_TYPE_DEFAULT, "Successfully fetched cloudObject for share %@ recordID %@ accountID %@", buf, 0x20u);
    }

    v10 = [v4 isOwnedByCurrentUser];
    v11 = os_log_create("com.apple.notes", "Collaboration");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = [v4 shortLoggingDescription];
        v14 = [*(a1 + 32) ic_loggingDescription];
        v15 = *(a1 + 64);
        *buf = 138412802;
        v29 = v13;
        v30 = 2112;
        v31 = v14;
        v32 = 2112;
        v33 = v15;
        _os_log_impl(&dword_1D4171000, v11, OS_LOG_TYPE_DEFAULT, "User stopped sharing %@ share %@ recordID %@", buf, 0x20u);
      }

      v16 = *(a1 + 40);
      v17 = [v4 objectID];
      [v16 removeShareIfNeededWithOwnedObjectID:v17 countParticipants:0 completionHandler:0];
    }

    else
    {
      if (v12)
      {
        v20 = [v4 shortLoggingDescription];
        v21 = [*(a1 + 32) ic_loggingDescription];
        v22 = *(a1 + 64);
        *buf = 138412802;
        v29 = v20;
        v30 = 2112;
        v31 = v21;
        v32 = 2112;
        v33 = v22;
        _os_log_impl(&dword_1D4171000, v11, OS_LOG_TYPE_DEFAULT, "User removed themselves from shared %@ share %@ recordID %@", buf, 0x20u);
      }

      v23 = [*(a1 + 40) collaborationControllerDelegate];
      [v23 collaborationController:*(a1 + 40) persistLeaveActivityEventOnObject:v4];

      v24 = [*(a1 + 40) cloudContext];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __63__ICCollaborationController_didStopSharing_recordID_accountID___block_invoke_121;
      v25[3] = &unk_1E846BD80;
      v26 = *(a1 + 56);
      v27 = v4;
      [v24 syncWithReason:@"SyncAfterDidStopSharing" completionHandler:v25];

      v17 = v26;
    }

    v5 = [*(a1 + 40) collaborationAnalyticsDelegate];
    [v5 trackCollaborationActionSecondCancelForObject:v4 share:*(a1 + 32) isInviting:0];
  }

  else
  {
    if (v6)
    {
      v18 = [*(a1 + 32) ic_loggingDescription];
      v19 = *(a1 + 64);
      *buf = 138412546;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_1D4171000, v5, OS_LOG_TYPE_DEFAULT, "Couldn't find cloud object for share %@ recordID %@", buf, 0x16u);
    }
  }
}

void __63__ICCollaborationController_didStopSharing_recordID_accountID___block_invoke_121(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__ICCollaborationController_didStopSharing_recordID_accountID___block_invoke_121_cold_1();
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__ICCollaborationController_didStopSharing_recordID_accountID___block_invoke_2;
    v6[3] = &unk_1E8468F80;
    v7 = v5;
    v8 = *(a1 + 40);
    [v7 performBlock:v6];

    v4 = v7;
  }
}

void __63__ICCollaborationController_didStopSharing_recordID_accountID___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectID];
  v4 = [v2 ic_existingObjectWithID:v3];
  v5 = ICDynamicCast();

  if (v5)
  {
    [v5 markForDeletion];
    [v5 deleteFromLocalDatabase];
    [*(a1 + 32) ic_save];
  }
}

- (void)managedObjectContextObjectsDidChange:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];
  v6 = ICCheckedDynamicCast();

  if ([v6 concurrencyType] == 2)
  {
    objc_opt_class();
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E695D328]];
    v9 = ICCheckedDynamicCast();
    v10 = [v9 ic_objectsOfClass:objc_opt_class()];

    objc_opt_class();
    v35 = v4;
    v11 = [v4 userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695D4D0]];
    v13 = ICCheckedDynamicCast();
    v14 = [v13 ic_objectsOfClass:objc_opt_class()];

    v33 = [v14 ic_objectsPassingTest:&__block_literal_global_126_0];
    if ([v33 count])
    {
      v15 = [(ICCollaborationController *)self updateSharesDelayer];
      [v15 requestFire];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v34 = v14;
    v16 = [v10 setByAddingObjectsFromSet:v14];
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v37 + 1) + 8 * i);
          v22 = [v21 serverShare];
          if (v22)
          {
            v23 = v22;
            v24 = [v21 invitation];

            if (!v24)
            {
              v25 = MEMORY[0x1E69B7790];
              v26 = [v21 serverShare];
              v27 = [v26 URL];
              v28 = [v25 invitationWithShareURL:v27 context:v6];

              if (v28)
              {
                [v28 setRootObject:v21];
                v29 = [v21 serverShare];
                [v28 updateFromShare:v29];

                v30 = os_log_create("com.apple.notes", "Collaboration");
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  v36 = [v21 serverShare];
                  v31 = [v36 ic_loggingDescription];
                  v32 = [v21 objectID];
                  *buf = 138412546;
                  v42 = v31;
                  v43 = 2112;
                  v44 = v32;
                  _os_log_debug_impl(&dword_1D4171000, v30, OS_LOG_TYPE_DEBUG, "Updated invitation and associated it with object {share: %@, objectID: %@}", buf, 0x16u);
                }
              }
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v18);
    }

    v4 = v35;
  }
}

uint64_t __66__ICCollaborationController_managedObjectContextObjectsDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 changedValues];
  v3 = [v2 allKeys];
  v4 = NSStringFromSelector(sel_isShareDirty);
  v5 = [v3 containsObject:v4];

  return v5;
}

+ (void)didFailToUpdateShareWithError:(id)a3
{
  v4 = a3;
  v7 = [a1 sharedInstance];
  v5 = [v7 collaborationControllerDelegate];
  v6 = [a1 sharedInstance];
  [v5 collaborationController:v6 didFailToSaveShareWithError:v4];
}

- (void)acceptShareWithMetadata:(id)a3 managedObjectContext:(id)a4 completionHandler:(id)a5
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 share];
    v13 = [v12 ic_loggingDescription];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1D4171000, v11, OS_LOG_TYPE_DEFAULT, "Accepting share metadata for share %@", &buf, 0xCu);
  }

  v14 = [v8 callingParticipant];
  v15 = [v14 userIdentity];
  v16 = [v15 userRecordID];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__48;
  v63 = __Block_byref_object_dispose__48;
  v64 = [v8 selectedAccountID];
  if (*(*(&buf + 1) + 40))
  {
    v17 = [(ICCollaborationController *)self containerForAccountID:?];
    v18 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(&buf + 1) + 40);
      *v56 = 138412546;
      v57 = v17;
      v58 = 2112;
      v59 = v19;
      _os_log_impl(&dword_1D4171000, v18, OS_LOG_TYPE_DEFAULT, "Using container %@ for metadata selected accountID %@", v56, 0x16u);
    }

    goto LABEL_25;
  }

  v20 = [v16 recordName];
  v21 = [v20 isEqualToString:*MEMORY[0x1E695B728]];

  if (v21)
  {
    v22 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [ICCollaborationController acceptShareWithMetadata:managedObjectContext:completionHandler:];
    }

    v23 = [MEMORY[0x1E69B7A28] sharedInstance];
    v24 = [v23 primaryICloudACAccount];
    v25 = [v24 identifier];
    v26 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v25;

    if (![*(*(&buf + 1) + 40) length])
    {
      goto LABEL_16;
    }

    v17 = [(ICCollaborationController *)self containerForAccountID:*(*(&buf + 1) + 40)];
  }

  else
  {
    v27 = [(ICCollaborationController *)self cloudContext];
    v28 = [v27 containersByAccountID];
    v29 = [v28 count] > 1;

    if (!v29)
    {
      goto LABEL_16;
    }

    v30 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [ICCollaborationController acceptShareWithMetadata:managedObjectContext:completionHandler:];
    }

    v17 = [(ICCollaborationController *)self containerForUserRecordID:v16];
    v31 = [v17 options];
    v32 = [v31 accountOverrideInfo];
    v33 = [v32 accountID];
    v34 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v33;
  }

  if (!v17)
  {
LABEL_16:
    v35 = [v8 containerIdentifier];
    v36 = v35 == 0;

    if (v36)
    {
      v17 = 0;
    }

    else
    {
      v37 = os_log_create("com.apple.notes", "Collaboration");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        [ICCollaborationController acceptShareWithMetadata:managedObjectContext:completionHandler:];
      }

      v38 = MEMORY[0x1E695B888];
      v39 = [v8 containerIdentifier];
      v17 = [v38 containerWithIdentifier:v39];
    }
  }

  if ([*(*(&buf + 1) + 40) length])
  {
    goto LABEL_26;
  }

  v40 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    [ICCollaborationController acceptShareWithMetadata:managedObjectContext:completionHandler:];
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __92__ICCollaborationController_acceptShareWithMetadata_managedObjectContext_completionHandler___block_invoke;
  v53[3] = &unk_1E8468FA8;
  p_buf = &buf;
  v54 = v9;
  [v54 performBlockAndWait:v53];
  v18 = v54;
LABEL_25:

LABEL_26:
  if (v17)
  {
    if ([*(*(&buf + 1) + 40) length])
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __92__ICCollaborationController_acceptShareWithMetadata_managedObjectContext_completionHandler___block_invoke_133;
      v47[3] = &unk_1E846CCE8;
      v47[4] = self;
      v48 = v8;
      v52 = &buf;
      v49 = v9;
      v51 = v10;
      v50 = v17;
      [v49 performBlock:v47];
    }

    else
    {
      v45 = os_log_create("com.apple.notes", "Collaboration");
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [ICCollaborationController acceptShareWithMetadata:managedObjectContext:completionHandler:];
      }

      v46 = ICGenericError();
      (*(v10 + 2))(v10, v46, 0, 0);
    }
  }

  else
  {
    v41 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [v8 share];
      v43 = [v42 ic_loggingDescription];
      [(ICCollaborationController *)v43 acceptShareWithMetadata:v56 managedObjectContext:v41 completionHandler:v42];
    }

    v44 = ICGenericError();
    (*(v10 + 2))(v10, v44, 0, 0);
  }

  _Block_object_dispose(&buf, 8);
}

void __92__ICCollaborationController_acceptShareWithMetadata_managedObjectContext_completionHandler___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E69B7658] cloudKitAccountInContext:*(a1 + 32)];
  v2 = [v5 identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __92__ICCollaborationController_acceptShareWithMetadata_managedObjectContext_completionHandler___block_invoke_133(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) share];
  v4 = [v2 objectForShare:v3 accountID:*(*(*(a1 + 72) + 8) + 40) context:*(a1 + 48)];

  if (v4 && ([v4 serverShare], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, v7 = objc_msgSend(v4, "markedForDeletion"), v6, (v7 & 1) == 0))
  {
    v14 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 shortLoggingDescription];
      v16 = [*(a1 + 40) share];
      v17 = [v16 ic_loggingDescription];
      *buf = 138412546;
      v25 = v15;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_1D4171000, v14, OS_LOG_TYPE_DEFAULT, "Found existing object %@ for share metadata %@", buf, 0x16u);
    }

    v18 = [*(a1 + 40) share];
    [v4 didAcceptShare:v18];

    [*(a1 + 48) ic_save];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 40) share];
      v10 = [v9 ic_loggingDescription];
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_1D4171000, v8, OS_LOG_TYPE_INFO, "No existing object for share metadata %@", buf, 0xCu);
    }

    v11 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__ICCollaborationController_acceptShareWithMetadata_managedObjectContext_completionHandler___block_invoke_134;
    block[3] = &unk_1E846CCC0;
    v12 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v21 = v12;
    v22 = *(a1 + 56);
    v19 = *(a1 + 64);
    v13 = v19;
    v23 = v19;
    dispatch_async(v11, block);
  }
}

- (id)containerForUserRecordID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [a3 recordName];
  v5 = [(ICCollaborationController *)self cloudContext];
  v6 = [v5 containersByAccountID];
  v7 = [v6 allValues];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [MEMORY[0x1E69B76F0] userRecordNameForContainer:{v12, v15}];
        if ([v13 isEqualToString:v4])
        {
          v9 = v12;

          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (id)containerForAccountID:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"accountID.length > 0" functionName:"-[ICCollaborationController containerForAccountID:]" simulateCrash:1 showAlert:0 format:@"Must have an account ID to get container."];
  }

  if ([v4 length])
  {
    v5 = [(ICCollaborationController *)self cloudContext];
    v6 = [v5 containersByAccountID];
    v7 = [v6 objectForKeyedSubscript:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)acceptShareWithMetadata:(id)a3 attemptNumber:(id)a4 container:(id)a5 accountID:(id)a6 fetchObjectWithCompletionHandler:(id)a7
{
  v62 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v38 = a5;
  v39 = a6;
  v41 = a7;
  v13 = [v11 share];
  v40 = [v13 URL];

  if (!v40)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((shareURL) != nil)" functionName:"-[ICCollaborationController acceptShareWithMetadata:attemptNumber:container:accountID:fetchObjectWithCompletionHandler:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "shareURL"}];
  }

  v14 = os_log_create("com.apple.notes", "Collaboration");
  v15 = os_signpost_id_generate(v14);
  v16 = v14;
  v17 = v16;
  if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "com.apple.notes.collaboration.acceptShare", "", buf, 2u);
  }

  if (![v12 unsignedIntegerValue])
  {

    v12 = &unk_1F4FC3FD8;
  }

  if ([v12 unsignedIntegerValue] < 6)
  {
    v21 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v57 = v40;
      v58 = 2112;
      v59 = v39;
      v60 = 2112;
      v61 = v12;
      _os_log_impl(&dword_1D4171000, v21, OS_LOG_TYPE_DEFAULT, "Accepting shared object at URL: %@, account ID = %@, attemptNumber = %@", buf, 0x20u);
    }

    v22 = objc_alloc(MEMORY[0x1E695B848]);
    v55 = v11;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    v20 = [v22 initWithShareMetadatas:v23];

    [v20 setQualityOfService:25];
    [v20 setQueuePriority:8];
    v24 = [v20 configuration];
    [v24 setContainer:v38];

    v25 = [v20 configuration];
    [v25 setDiscretionaryNetworkBehavior:0];

    objc_initWeak(&location, v20);
    v26 = [MEMORY[0x1E695DF90] dictionary];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke;
    v52[3] = &unk_1E846CD10;
    v27 = v26;
    v53 = v27;
    [v20 setPerShareCompletionBlock:v52];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_2;
    v42[3] = &unk_1E846CDB0;
    v28 = v11;
    v43 = v28;
    objc_copyWeak(v51, &location);
    v44 = v12;
    v45 = self;
    v46 = v38;
    v47 = v39;
    v50 = v41;
    v48 = v17;
    v51[1] = v15;
    v29 = v27;
    v49 = v29;
    [v20 setAcceptSharesCompletionBlock:v42];
    v30 = objc_alloc_init(MEMORY[0x1E695BA08]);
    [v30 setName:@"AcceptShare"];
    [v30 setQuantity:1];
    [v30 setExpectedSendSize:1];
    [v30 setExpectedReceiveSize:1];
    [v20 setGroup:v30];
    v31 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v28 share];
      v33 = [v32 ic_loggingDescription];
      v34 = [v20 ic_loggingDescription];
      *buf = 138412546;
      v57 = v33;
      v58 = 2112;
      v59 = v34;
      _os_log_impl(&dword_1D4171000, v31, OS_LOG_TYPE_DEFAULT, "Accepting %@ with %@", buf, 0x16u);
    }

    v35 = [(ICCollaborationController *)self cloudContext];
    v36 = [v35 operationQueue];
    [v36 addOperation:v20];

    objc_destroyWeak(v51);
    objc_destroyWeak(&location);
    goto LABEL_19;
  }

  v18 = v17;
  v19 = v18;
  if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v19, OS_SIGNPOST_INTERVAL_END, v15, "com.apple.notes.collaboration.acceptShare", "", buf, 2u);
  }

  if (v41)
  {
    v20 = ICGenericError();
    (*(v41 + 2))(v41, v20, 0, v39);
LABEL_19:
  }
}

void __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = a3;
    v5 = [v4 recordID];
    [v3 setObject:v4 forKeyedSubscript:v5];
  }
}

void __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Collaboration");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_2_cold_1(a1);
    }

    if ([v3 ic_shouldRetryCloudKitError] && objc_msgSend(*(a1 + 40), "unsignedIntegerValue") <= 4)
    {
      v6 = dispatch_time(0, 1000000000 * [*(a1 + 40) unsignedIntegerValue]);
      v7 = os_log_create("com.apple.notes", "Collaboration");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_2_cold_2(a1);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_143;
      block[3] = &unk_1E846CD38;
      v40 = *(a1 + 48);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 56);
      *&v11 = v9;
      *(&v11 + 1) = v10;
      *&v12 = v40;
      *(&v12 + 1) = v8;
      v52 = v12;
      v53 = v11;
      v54 = *(a1 + 64);
      v55 = *(a1 + 88);
      dispatch_after(v6, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v13 = *(a1 + 72);
      v14 = v13;
      v15 = *(a1 + 104);
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1D4171000, v14, OS_SIGNPOST_INTERVAL_END, v15, "com.apple.notes.collaboration.acceptShare", "", buf, 2u);
      }

      v16 = *(a1 + 88);
      if (v16)
      {
        (*(v16 + 16))(v16, v3, 0, *(a1 + 64));
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v17 = [*(a1 + 32) share];
      v18 = [v17 URL];
      WeakRetained = objc_loadWeakRetained((a1 + 96));
      v20 = [WeakRetained ic_loggingDescription];
      *buf = 138412546;
      v58 = v18;
      v59 = 2112;
      v60 = v20;
      _os_log_impl(&dword_1D4171000, v5, OS_LOG_TYPE_INFO, "Share accepted for URL %@ %@", buf, 0x16u);
    }

    v21 = [*(a1 + 32) hierarchicalRootRecordID];
    v22 = os_log_create("com.apple.notes", "Collaboration");
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      if (v23)
      {
        v24 = [v21 ic_loggingDescription];
        v25 = *(a1 + 64);
        *buf = 138412546;
        v58 = v24;
        v59 = 2112;
        v60 = v25;
        _os_log_impl(&dword_1D4171000, v22, OS_LOG_TYPE_DEFAULT, "Fetching record from share %@, account ID = %@", buf, 0x16u);
      }

      v26 = [*(a1 + 48) cloudContext];
      v56 = v21;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
      v28 = *(a1 + 64);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_147;
      v41[3] = &unk_1E846CD88;
      v29 = v21;
      v30 = *(a1 + 48);
      v42 = v29;
      v43 = v30;
      v44 = *(a1 + 32);
      v45 = *(a1 + 80);
      objc_copyWeak(v50, (a1 + 96));
      v46 = *(a1 + 64);
      v31 = *(a1 + 72);
      v32 = *(a1 + 104);
      v47 = v31;
      v50[1] = v32;
      v33 = *(a1 + 88);
      v48 = 0;
      v49 = v33;
      [v26 fetchRecordIDs:v27 accountID:v28 operationGroupName:@"FetchRecordForAcceptedShare" completionHandler:v41];

      objc_destroyWeak(v50);
    }

    else
    {
      if (v23)
      {
        v34 = [*(a1 + 32) share];
        v35 = [v34 ic_loggingDescription];
        *buf = 138412290;
        v58 = v35;
        _os_log_impl(&dword_1D4171000, v22, OS_LOG_TYPE_DEFAULT, "No root record when accepting share: %@", buf, 0xCu);
      }

      v36 = *(a1 + 72);
      v37 = v36;
      v38 = *(a1 + 104);
      if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1D4171000, v37, OS_SIGNPOST_INTERVAL_END, v38, "com.apple.notes.collaboration.acceptShare", "", buf, 2u);
      }

      v39 = *(a1 + 88);
      if (v39)
      {
        (*(v39 + 16))(v39, 0, 0, *(a1 + 64));
      }
    }
  }
}

void __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_143(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "unsignedIntegerValue") + 1}];
  [v2 acceptShareWithMetadata:v3 attemptNumber:v4 container:*(a1 + 56) accountID:*(a1 + 64) fetchObjectWithCompletionHandler:*(a1 + 72)];
}

void __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_147(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Collaboration");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_147_cold_1(a1);
    }

    v6 = v5;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) ic_loggingDescription];
      *buf = 138412290;
      v24 = v7;
      _os_log_impl(&dword_1D4171000, v5, OS_LOG_TYPE_DEFAULT, "Fetched record from share %@", buf, 0xCu);
    }

    v8 = [*(a1 + 40) backgroundContext];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_148;
    v15[3] = &unk_1E846CD60;
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    objc_copyWeak(&v22, (a1 + 96));
    v18 = *(a1 + 32);
    v19 = *(a1 + 64);
    v6 = v8;
    v9 = *(a1 + 40);
    v20 = v6;
    v21 = v9;
    [v6 performBlockAndWait:v15];

    objc_destroyWeak(&v22);
    v5 = v16;
  }

  v10 = *(a1 + 72);
  v11 = v10;
  v12 = *(a1 + 104);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v11, OS_SIGNPOST_INTERVAL_END, v12, "com.apple.notes.collaboration.acceptShare", "", buf, 2u);
  }

  v13 = *(a1 + 88);
  if (v13)
  {
    (*(v13 + 16))(v13, *(a1 + 80), 0, *(a1 + 64));
  }

  v14 = [*(a1 + 40) cloudContext];
  [v14 syncWithReason:@"SyncAfterAcceptShare" uploadUnsyncedChanges:0 completionHandler:0];
}

void __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_148(uint64_t a1)
{
  v2 = [*(a1 + 32) share];
  v3 = [v2 recordID];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) share];
  v6 = [v5 recordID];
  v7 = [v4 objectForKeyedSubscript:v6];

  v8 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_148_cold_1();
  }

  if (!v7)
  {
LABEL_5:
    v7 = [*(a1 + 32) share];
    v9 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_148_cold_2();
    }
  }

  v10 = [MEMORY[0x1E69B7700] objectWithRecordID:*(a1 + 48) accountID:*(a1 + 56) context:*(a1 + 64)];
  [v10 didAcceptShare:v7];
  v11 = [*(a1 + 72) collaborationAnalyticsDelegate];
  v12 = [v7 URL];
  [v11 trackCollaborationNotificationAcceptanceForObject:v10 shareURL:v12];

  v13 = [*(a1 + 72) collaborationControllerDelegate];
  [v13 collaborationController:*(a1 + 72) persistJoinActivityEventOnObject:v10];

  [*(a1 + 64) ic_save];
}

- (void)fetchAndAcceptShareMetadataWithURL:(id)a3 managedObjectContext:(id)a4 alertBlock:(id)a5 showObjectBlock:(id)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = [(ICCollaborationController *)self collaborationControllerDelegate];
    v22[0] = v10;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __112__ICCollaborationController_fetchAndAcceptShareMetadataWithURL_managedObjectContext_alertBlock_showObjectBlock___block_invoke;
    v17[3] = &unk_1E846CE28;
    v17[4] = self;
    v20 = v12;
    v18 = v10;
    v19 = v11;
    v21 = v13;
    [v14 collaborationController:self fetchShareMetadataWithURLs:v15 completion:v17];
  }

  else
  {
    v16 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ICCollaborationController fetchAndAcceptShareMetadataWithURL:managedObjectContext:alertBlock:showObjectBlock:];
    }
  }
}

void __112__ICCollaborationController_fetchAndAcceptShareMetadataWithURL_managedObjectContext_alertBlock_showObjectBlock___block_invoke(id *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v15 = a4;
  v7 = a1[7];
  v16 = v6;
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[8];
  *&v11 = v7;
  *(&v11 + 1) = v10;
  *&v12 = v8;
  *(&v12 + 1) = v9;
  v17 = v12;
  v18 = v11;
  v13 = v6;
  v14 = v15;
  performBlockOnMainThread();
}

void __112__ICCollaborationController_fetchAndAcceptShareMetadataWithURL_managedObjectContext_alertBlock_showObjectBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __112__ICCollaborationController_fetchAndAcceptShareMetadataWithURL_managedObjectContext_alertBlock_showObjectBlock___block_invoke_2_cold_1();
    }

    [objc_opt_class() genericShareErrorAlert:*(a1 + 72)];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 56)];
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __112__ICCollaborationController_fetchAndAcceptShareMetadataWithURL_managedObjectContext_alertBlock_showObjectBlock___block_invoke_155;
    v8[3] = &unk_1E846CDD8;
    v7 = *(a1 + 48);
    v8[4] = *(a1 + 40);
    v9 = v7;
    v10 = *(a1 + 56);
    v11 = *(a1 + 80);
    [v3 processShareAcceptanceWithMetadata:v4 managedObjectContext:v5 alertBlock:v6 showObjectBlock:v8];
  }
}

void __112__ICCollaborationController_fetchAndAcceptShareMetadataWithURL_managedObjectContext_alertBlock_showObjectBlock___block_invoke_155(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v3 collaborationControllerDelegate];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  [v4 collaborationController:v5 userAcceptedInvitationWithShareMetadata:v6 associatedObjectID:v7];

  (*(*(a1 + 56) + 16))();
}

- (void)processShareAcceptanceWithMetadata:(id)a3 managedObjectContext:(id)a4 alertBlock:(id)a5 showObjectBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __112__ICCollaborationController_processShareAcceptanceWithMetadata_managedObjectContext_alertBlock_showObjectBlock___block_invoke;
  v18[3] = &unk_1E846CE78;
  v19 = v10;
  v20 = self;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v14 = v13;
  v15 = v11;
  v16 = v12;
  v17 = v10;
  [(ICCollaborationController *)self acceptShareWithMetadata:v17 managedObjectContext:v15 completionHandler:v18];
}

void __112__ICCollaborationController_processShareAcceptanceWithMetadata_managedObjectContext_alertBlock_showObjectBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) hierarchicalRootRecordID];
  v10 = v9;
  if (v7)
  {
    v11 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __112__ICCollaborationController_processShareAcceptanceWithMetadata_managedObjectContext_alertBlock_showObjectBlock___block_invoke_cold_1();
    }

    if (([objc_opt_class() showCloudKitShareAcceptancePartialFailureAlertForError:v7 alertBlock:*(a1 + 56)] & 1) == 0)
    {
      [objc_opt_class() genericShareErrorAlert:*(a1 + 56)];
    }
  }

  else
  {
    if (v8)
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = !v12;
    v14 = os_log_create("com.apple.notes", "Collaboration");
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        v16 = [v10 ic_loggingDescription];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v16;
        _os_log_impl(&dword_1D4171000, v14, OS_LOG_TYPE_DEFAULT, "Trying to show shared object %@", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v58 = 0x3032000000;
      v59 = __Block_byref_object_copy__48;
      v60 = __Block_byref_object_dispose__48;
      v61 = 0;
      v49 = 0;
      v50 = &v49;
      v51 = 0x3032000000;
      v52 = __Block_byref_object_copy__48;
      v53 = __Block_byref_object_dispose__48;
      v54 = 0;
      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v48 = 0;
      v17 = *(a1 + 48);
      v35 = MEMORY[0x1E69E9820];
      v36 = 3221225472;
      v37 = __112__ICCollaborationController_processShareAcceptanceWithMetadata_managedObjectContext_alertBlock_showObjectBlock___block_invoke_158;
      v38 = &unk_1E846CE50;
      p_buf = &buf;
      v39 = v10;
      v40 = v8;
      v41 = *(a1 + 48);
      v43 = &v49;
      v44 = &v45;
      [v17 performBlockAndWait:&v35];
      if (*(*(&buf + 1) + 40))
      {
        v18 = *(v46 + 24);
        v19 = os_log_create("com.apple.notes", "Collaboration");
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        if (v18 == 1)
        {
          if (v20)
          {
            v21 = v50[5];
            *v55 = 138412290;
            v56 = v21;
            _os_log_impl(&dword_1D4171000, v19, OS_LOG_TYPE_DEFAULT, "Showing shared object %@", v55, 0xCu);
          }

          v22 = *(a1 + 64);
          v23 = [*(*(&buf + 1) + 40) objectID];
          (*(v22 + 16))(v22, v23, a3);
        }

        else
        {
          if (v20)
          {
            v29 = v50[5];
            *v55 = 138412290;
            v56 = v29;
            _os_log_impl(&dword_1D4171000, v19, OS_LOG_TYPE_DEFAULT, "Found shared %@, but doing nothing", v55, 0xCu);
          }

          v23 = __ICLocalizedFrameworkString_impl(@"Item Unavailable", @"Item Unavailable", 0, 1);
          v30 = [MEMORY[0x1E69DC938] currentDevice];
          v31 = [v30 userInterfaceIdiom];

          if ((v31 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            v32 = @"To view this item, update to the latest version of iPadOS.";
          }

          else
          {
            v32 = @"To view this item, update to the latest version of iOS.";
          }

          v33 = __ICLocalizedFrameworkString_impl(v32, v32, 0, 1);
          v34 = v33;
          if (v23 && v33)
          {
            (*(*(a1 + 56) + 16))();
          }
        }
      }

      else
      {
        v26 = os_log_create("com.apple.notes", "Collaboration");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [*(a1 + 32) share];
          v28 = [v27 ic_loggingDescription];
          *v55 = 138412290;
          v56 = v28;
          _os_log_impl(&dword_1D4171000, v26, OS_LOG_TYPE_DEFAULT, "Unable to find note after accepting share %@", v55, 0xCu);
        }

        [objc_opt_class() genericShareErrorAlert:*(a1 + 56)];
      }

      _Block_object_dispose(&v45, 8);
      _Block_object_dispose(&v49, 8);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (v15)
      {
        v24 = [*(a1 + 32) share];
        v25 = [v24 ic_loggingDescription];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_1D4171000, v14, OS_LOG_TYPE_DEFAULT, "No root record or no accountID when accepting share: %@", &buf, 0xCu);
      }
    }
  }
}

uint64_t __112__ICCollaborationController_processShareAcceptanceWithMetadata_managedObjectContext_alertBlock_showObjectBlock___block_invoke_158(void *a1)
{
  v2 = [MEMORY[0x1E69B7700] objectWithRecordID:a1[4] accountID:a1[5] context:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = *(*(a1[7] + 8) + 40);
  if (result)
  {
    v6 = [result shortLoggingDescription];
    v7 = *(a1[8] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), result = objc_opt_isKindOfClass(), (result))
    {
      result = [*(*(a1[7] + 8) + 40) isUnsupported];
      v9 = result ^ 1;
    }

    else
    {
      v9 = 0;
    }

    *(*(a1[9] + 8) + 24) = v9;
  }

  return result;
}

+ (void)genericShareErrorAlert:(id)a3
{
  v4 = a3;
  v6 = __ICLocalizedFrameworkString_impl(@"Can’t Open Note", @"Can’t Open Note", 0, 1);
  v5 = __ICLocalizedFrameworkString_impl(@"Sorry, this note can’t be opened right now. Please try again later.", @"Sorry, this note can’t be opened right now. Please try again later.", 0, 1);
  (*(a3 + 2))(v4, v6, v5);
}

+ (BOOL)showCloudKitShareAcceptancePartialFailureAlertForError:(id)a3 alertBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_6;
  }

  v7 = [v5 domain];
  if (([v7 isEqualToString:*MEMORY[0x1E695B740]] & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = [v5 code];

  if (v8 != 2)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v9 = [v5 userInfo];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E695B798]];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__ICCollaborationController_showCloudKitShareAcceptancePartialFailureAlertForError_alertBlock___block_invoke;
  v13[3] = &unk_1E846CEA0;
  v14 = v6;
  v15 = &v16;
  [v10 enumerateKeysAndObjectsUsingBlock:v13];
  v11 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
LABEL_7:

  return v11 & 1;
}

void __95__ICCollaborationController_showCloudKitShareAcceptancePartialFailureAlertForError_alertBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 code] == 29)
  {
    v7 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1D4171000, v7, OS_LOG_TYPE_DEFAULT, "Share is at maximum capacity, showing alert for error: %@", &v11, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = __ICLocalizedFrameworkString_impl(@"Note at Capacity", @"Note at Capacity", 0, 1);
    v10 = __ICLocalizedFrameworkString_impl(@"This note is at maximum capacity right now. Try again soon.", @"This note is at maximum capacity right now. Try again soon.", 0, 1);
    (*(v8 + 16))(v8, v9, v10);

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (id)highlightColorForUserID:(id)a3 inNote:(id)a4 isDark:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [v7 collaborationColorManager];
  v10 = [v9 highlightColorForUserID:v8 note:v7];

  v11 = 0.8;
  if (!v5)
  {
    v11 = 1.0;
  }

  v12 = [v10 colorWithAlphaComponent:v11];

  return v12;
}

- (void)updateShares
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1D4171000, log, OS_LOG_TYPE_ERROR, "Cannot find share for object — skipping", buf, 2u);
}

void __41__ICCollaborationController_updateShares__block_invoke(int8x16_t *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1[2].i64[0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__ICCollaborationController_updateShares__block_invoke_2;
  v9[3] = &unk_1E8468D98;
  v10 = v4;
  v8 = a1[2];
  v6 = v8.i64[0];
  v11 = vextq_s8(v8, v8, 8uLL);
  v7 = v4;
  [v5 performBlock:v9];
}

void __41__ICCollaborationController_updateShares__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __41__ICCollaborationController_updateShares__block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) setIsShareDirty:0];
    v3 = *(a1 + 48);

    [v3 ic_saveWithLogDescription:@"Finished updating share"];
  }
}

- (void)updatePendingInvitationsInAccountWithID:(id)a3 receivedSince:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((updatePendingInvitationsInAccountWithID_receivedSince__isUpdatingPendingInvitations & 1) == 0)
  {
    v8 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v17 = v6;
      v18 = 2112;
      v20 = 2080;
      v19 = v7;
      v21 = "[ICCollaborationController updatePendingInvitationsInAccountWithID:receivedSince:]";
      v22 = 1024;
      v23 = 1526;
      _os_log_impl(&dword_1D4171000, v8, OS_LOG_TYPE_DEFAULT, "Updating pending invitations… {accountID: %@, receivedSince: %@}%s:%d", buf, 0x26u);
    }

    updatePendingInvitationsInAccountWithID_receivedSince__isUpdatingPendingInvitations = 1;
    v9 = [(ICCollaborationController *)self viewContext];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83__ICCollaborationController_updatePendingInvitationsInAccountWithID_receivedSince___block_invoke;
    v11[3] = &unk_1E846A3A0;
    v12 = v6;
    v13 = v9;
    v14 = v7;
    v15 = self;
    v10 = v9;
    [v10 performBlock:v11];
  }
}

void __83__ICCollaborationController_updatePendingInvitationsInAccountWithID_receivedSince___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    objc_opt_class();
    v2 = [*(a1 + 40) objectWithID:*(a1 + 32)];
    v3 = ICCheckedDynamicCast();
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E69B7790] predicateForPendingInvitationsInAccount:v3 receivedSince:*(a1 + 48)];
  v5 = [MEMORY[0x1E69B7790] invitationsMatchingPredicate:v4 context:*(a1 + 40)];
  v6 = [v5 ic_map:&__block_literal_global_191];
  v7 = [*(a1 + 56) collaborationControllerDelegate];
  v8 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__ICCollaborationController_updatePendingInvitationsInAccountWithID_receivedSince___block_invoke_3;
  v10[3] = &unk_1E846CF10;
  v11 = v3;
  v12 = *(a1 + 40);
  v9 = v3;
  [v7 collaborationController:v8 fetchShareMetadataWithURLs:v6 completion:v10];
}

void __83__ICCollaborationController_updatePendingInvitationsInAccountWithID_receivedSince___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v7 = v6;
  v8 = v9;
  performBlockOnMainThread();
}

void __83__ICCollaborationController_updatePendingInvitationsInAccountWithID_receivedSince___block_invoke_4(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) objectID];
      v4 = *(a1 + 32);
      *buf = 138413058;
      v28 = v3;
      v29 = 2112;
      v30 = v4;
      v31 = 2080;
      v32 = "[ICCollaborationController updatePendingInvitationsInAccountWithID:receivedSince:]_block_invoke_4";
      v33 = 1024;
      v34 = 1547;
      _os_log_impl(&dword_1D4171000, v2, OS_LOG_TYPE_DEFAULT, "Error updating pending invitations {accountID: %@, error: %@}%s:%d", buf, 0x26u);
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [*(a1 + 48) allKeys];
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v23;
      v10 = 0x1E69B7000uLL;
      *&v7 = 138412546;
      v20 = v7;
      v21 = v5;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [*(a1 + 48) objectForKeyedSubscript:{v12, v20}];
          v14 = [v13 share];

          v15 = [*(v10 + 1936) invitationWithShareURL:v12 context:*(a1 + 56)];
          [v15 updateFromShare:v14];
          v16 = os_log_create("com.apple.notes", "Collaboration");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = [v14 ic_loggingDescription];
            v18 = [v15 objectID];
            *buf = v20;
            v28 = v17;
            v29 = 2112;
            v30 = v18;
            _os_log_debug_impl(&dword_1D4171000, v16, OS_LOG_TYPE_DEBUG, "Updated invitation {share: %@, objectID: %@}", buf, 0x16u);

            v10 = 0x1E69B7000;
            v5 = v21;
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    [*(a1 + 56) ic_save];
    v2 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 40) objectID];
      *buf = 138412802;
      v28 = v19;
      v29 = 2080;
      v30 = "[ICCollaborationController updatePendingInvitationsInAccountWithID:receivedSince:]_block_invoke";
      v31 = 1024;
      LODWORD(v32) = 1564;
      _os_log_impl(&dword_1D4171000, v2, OS_LOG_TYPE_DEFAULT, "Updated pending invitations {accountID: %@}%s:%d", buf, 0x1Cu);
    }
  }

  updatePendingInvitationsInAccountWithID_receivedSince__isUpdatingPendingInvitations = 0;
}

+ (void)showQuotaExceededAlertIfNeededWithRecordID:(id)a3 accountID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [a1 sharedInstance];
  v8 = [v10 collaborationControllerDelegate];
  v9 = [a1 sharedInstance];
  [v8 collaborationController:v9 showQuotaExceededAlertIfNeededWithRecordID:v7 accountID:v6];
}

- (id)objectForCKShareRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    v10 = a3;
    v11 = [(ICCollaborationController *)self ckShareIDToRootRecordID];
    v12 = [v11 objectForKeyedSubscript:v10];

    if (v12)
    {
      v13 = [(ICCollaborationController *)self cloudContext];
      v14 = [v13 existingCloudObjectForRecordID:v12 recordType:0 accountID:v8 context:v9];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)updateRootRecordMapWithShare:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B7598]];
    v6 = [v5 recordID];
    v7 = [v13 recordID];
    if (v7 && v6)
    {
      v8 = [(ICCollaborationController *)self ckShareIDToRootRecordID];
      v9 = [v8 allKeys];
      v10 = [v13 recordID];
      v11 = [v9 containsObject:v10];

      if (v11)
      {
LABEL_7:

        v4 = v13;
        goto LABEL_8;
      }

      v7 = [(ICCollaborationController *)self ckShareIDToRootRecordID];
      v12 = [v13 recordID];
      [v7 setObject:v6 forKeyedSubscript:v12];
    }

    goto LABEL_7;
  }

LABEL_8:
}

+ (void)saveActivityType:(id)a3 isCollaborationSelected:(BOOL)a4 error:(id)a5 completed:(BOOL)a6 forNote:(id)a7
{
  v7 = a6;
  v9 = a4;
  v12 = a7;
  v13 = a5;
  v14 = a3;
  v16 = [a1 sharedInstance];
  v15 = [v16 collaborationAnalyticsTracker];
  [v15 saveActivityType:v14 isCollaborationSelected:v9 error:v13 completed:v7 forNote:v12];
}

+ (void)trackShare:(id)a3 forNote:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [a1 sharedInstance];
  v8 = [v9 collaborationAnalyticsTracker];
  [v8 trackShare:v7 forNote:v6];
}

- (ICCollaborationControllerDelegate)collaborationControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_collaborationControllerDelegate);

  return WeakRetained;
}

- (ICCollaborationAnalyticsDelegate)collaborationAnalyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_collaborationAnalyticsDelegate);

  return WeakRetained;
}

- (void)registerShareForObject:itemProvider:generateThumbnails:sharePreparationHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v2 = [v1 ic_loggingDescription];
  v3 = [*v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_cold_2(id *a1)
{
  v1 = [*a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __108__ICCollaborationController_registerShareForObject_itemProvider_generateThumbnails_sharePreparationHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __97__ICCollaborationController_updatedShareForObject_includeHierarchicalShare_managedObjectContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = [OUTLINED_FUNCTION_8(v1) shortLoggingDescription];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(v0 + 56)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __87__ICCollaborationController_prepareShare_forObject_qualityOfService_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = [OUTLINED_FUNCTION_8(v1) ic_loggingDescription];
  v3 = [*(v0 + 40) shortLoggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __87__ICCollaborationController_prepareShare_forObject_qualityOfService_completionHandler___block_invoke_4_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_8(a1) shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)saveShare:forObject:accountID:container:qualityOfService:retryPrepHandler:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveShare:(void *)a1 withRootRecord:(void *)a2 object:accountID:container:qualityOfService:completionHandler:.cold.1(void *a1, void *a2)
{
  v3 = [a1 ic_loggingDescription];
  v4 = [a2 ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)saveShare:(void *)a1 withRootRecord:(void *)a2 object:accountID:container:qualityOfService:completionHandler:.cold.2(void *a1, void *a2)
{
  v3 = [a1 ic_loggingDescription];
  v4 = [a2 ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = [*(v1 + 40) shortLoggingDescription];
  v3 = [*(v0 + 56) ic_loggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1D4171000, v4, v5, "No CKShare or error returned for %@ %@", v6, v7, v8, v9, v10);
}

void __116__ICCollaborationController_saveShare_withRootRecord_object_accountID_container_qualityOfService_completionHandler___block_invoke_3_cold_1(id *a1)
{
  v2 = [a1[4] ic_loggingDescription];
  v3 = [a1[5] shortLoggingDescription];
  v9 = [a1[6] ic_loggingDescription];
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

- (void)fetchShareIfNecessaryForObject:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_11();
  *v2 = 138412546;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2112;
  *(v2 + 14) = v4;
  _os_log_debug_impl(&dword_1D4171000, v6, OS_LOG_TYPE_DEBUG, "Fetching share %@ with %@", v5, 0x16u);
}

- (void)fetchShareIfNecessaryForObject:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__ICCollaborationController_fetchShareIfNecessaryForObject_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v2 = [v1 ic_loggingDescription];
  WeakRetained = objc_loadWeakRetained((v0 + 72));
  v4 = [WeakRetained ic_loggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)objectForShare:(void *)a1 accountID:context:.cold.1(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __102__ICCollaborationController_removeShareIfNeededWithOwnedObjectID_countParticipants_completionHandler___block_invoke_3_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1D4171000, v1, OS_LOG_TYPE_ERROR, "removeShareIfNeededWithOwnedObjectID :: Deleting share for objectID %@ failed with error %@", v2, 0x16u);
}

void __102__ICCollaborationController_removeShareIfNeededWithOwnedObjectID_countParticipants_completionHandler___block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __63__ICCollaborationController_didStopSharing_recordID_accountID___block_invoke_121_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)acceptShareWithMetadata:managedObjectContext:completionHandler:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)acceptShareWithMetadata:(os_log_t)log managedObjectContext:(void *)a4 completionHandler:.cold.6(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1D4171000, log, OS_LOG_TYPE_ERROR, "Couldn't find container for metadata for share %@", buf, 0xCu);
}

void __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) share];
  v3 = [v2 URL];
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v5 = [WeakRetained ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_2_cold_2(uint64_t a1)
{
  v2 = [OUTLINED_FUNCTION_8(a1) share];
  v3 = [v2 URL];
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v5 = [WeakRetained ic_loggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_147_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_8(a1) ic_loggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_1D4171000, v2, v3, "Error fetching record from share %@: %@", v4, v5, v6, v7, v8);
}

void __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_148_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v2 = [v1 ic_loggingDescription];
  WeakRetained = objc_loadWeakRetained((v0 + 80));
  v4 = [WeakRetained ic_loggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __120__ICCollaborationController_acceptShareWithMetadata_attemptNumber_container_accountID_fetchObjectWithCompletionHandler___block_invoke_148_cold_2()
{
  OUTLINED_FUNCTION_2_1();
  v2 = [v1 ic_loggingDescription];
  WeakRetained = objc_loadWeakRetained((v0 + 80));
  v4 = [WeakRetained ic_loggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)fetchAndAcceptShareMetadataWithURL:managedObjectContext:alertBlock:showObjectBlock:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __112__ICCollaborationController_fetchAndAcceptShareMetadataWithURL_managedObjectContext_alertBlock_showObjectBlock___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __112__ICCollaborationController_processShareAcceptanceWithMetadata_managedObjectContext_alertBlock_showObjectBlock___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __41__ICCollaborationController_updateShares__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end