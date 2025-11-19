@interface _UIShareInvitationViewServiceViewController
+ (id)_exportedInterface;
+ (void)initialize;
- (BOOL)_getTitle:(id *)a3 getMessage:(id *)a4 forError:(id)a5;
- (BOOL)_setContainerFromID:(id)a3;
- (BOOL)_shouldPresentError:(id)a3;
- (BOOL)currentUserIsOwner;
- (BOOL)currentUserIsOwnerOrAdmin;
- (BOOL)isFolderShare;
- (BOOL)isPartOfCloudKitSharedFolder;
- (BOOL)isShowingSpinner;
- (BOOL)itemIsInsideFolderShare;
- (BOOL)itemIsShareRoot;
- (BOOL)shareViewControllerIsFolderShare:(id)a3;
- (BOOL)shareViewControllerIsNotesOrRemindersOrDocSharing:(id)a3;
- (BOOL)shareViewControllerShowFullSettingsControls;
- (_UIShareInvitationViewServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_alertControllerForLegacyApplication:(id)a3;
- (id)_fetchTopLevelSharedFolderURLWithError:(id *)a3;
- (id)editableParticipants;
- (id)fetchFPItemForID:(id)a3;
- (id)modifiedByStringForSharedByMe:(BOOL)a3 owner:(id)a4 modifiedByMe:(BOOL)a5 lastEditor:(id)a6;
- (id)ownerNameComponents;
- (id)ownerStringForPerson:(id)a3;
- (id)rootItemName;
- (id)shareViewControllerItemUTI:(id)a3;
- (id)shareViewControllerSubtitle:(id)a3;
- (id)sharingAppBundleIdentifier;
- (id)sharingAppBundleIdentifierOverride;
- (id)sharingAppName;
- (int64_t)_hostApplicationType;
- (int64_t)shareViewControllerCurrentParticipantsState;
- (void)_actuallyStopSharing;
- (void)_addParticipantsAndSaveForController:(id)a3 participants:(id)a4 permission:(int64_t)a5 completion:(id)a6;
- (void)_copyShareFromURLWithForceCreate:(BOOL)a3 completion:(id)a4;
- (void)_dismissForRecordWithError:(id)a3;
- (void)_enqueueCopyShareURLOperation:(id)a3 completion:(id)a4;
- (void)_getTitle:(id *)a3 getMessage:(id *)a4 forMAIDError:(id)a5;
- (void)_handleCopyShareURLError:(id)a3;
- (void)_loadInitialViewController;
- (void)_loadThumbnailForFileURL:(id)a3;
- (void)_makeExistingSubsharePreflightCheckWithCompletion:(id)a3;
- (void)_modifyAndSaveShare:(id)a3 existingError:(id)a4 controller:(id)a5 modifyBlock:(id)a6 completion:(id)a7;
- (void)_prepareForDisplayWithCompletion:(id)a3;
- (void)_prepareForFolderSharingIfNeeded;
- (void)_presentedURLChanged;
- (void)_processSubitemsWithProcessType:(unint64_t)a3 completion:(id)a4;
- (void)_refetchShareAndRetry:(id)a3;
- (void)_registerObserver;
- (void)_sanitizeForAvailablePermissions:(id)a3;
- (void)_saveShare:(id)a3 completion:(id)a4;
- (void)_setAppName:(id)a3;
- (void)_setAvailablePermissions:(unint64_t)a3;
- (void)_setCloudKitContainerSetupInfo:(id)a3;
- (void)_setCloudKitShare:(id)a3 containerID:(id)a4;
- (void)_setCloudKitThumbnail:(id)a3 title:(id)a4 type:(id)a5;
- (void)_setFolderSubitemName:(id)a3;
- (void)_setIsInPopoverMode:(BOOL)a3;
- (void)_setItemName:(id)a3;
- (void)_setMailSubject:(id)a3 template:(id)a4;
- (void)_setParticipantDetails:(id)a3;
- (void)_setRootFolderTitle:(id)a3;
- (void)_setSandboxingURLWrapper:(id)a3;
- (void)_setThumbnail:(id)a3;
- (void)_setTintColor:(id)a3;
- (void)_setupDocumentURL:(id)a3;
- (void)_setupViewControllerInContainedNavController;
- (void)_updateAllowInvitingFromShare;
- (void)_updateCloudDocsShare;
- (void)_updateCloudKitShare;
- (void)_willAppearInRemoteViewController:(id)a3;
- (void)changeToTopLevelSharedFolderURL;
- (void)createUnreachableViewControllerIfNecessary;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)didReceiveMessageNamed:(id)a3 userInfo:(id)a4 reply:(id)a5;
- (void)invalidate;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)performAfterFullscreenPresentation:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)preflightAndPrepareIfFolderShare:(id)a3 completion:(id)a4;
- (void)reachabilityMonitor:(id)a3 didChangeReachabilityStatusTo:(BOOL)a4;
- (void)shareViewController:(id)a3 activityType:(id)a4 waitForUploadWithProgress:(id)a5 completion:(id)a6;
- (void)shareViewController:(id)a3 addParticipants:(id)a4 activityType:(id)a5 permission:(int64_t)a6 completion:(id)a7;
- (void)shareViewController:(id)a3 modifyShare:(id)a4 completion:(id)a5;
- (void)shareViewController:(id)a3 prepareActivity:(id)a4 completion:(id)a5;
- (void)shareViewController:(id)a3 presentError:(id)a4;
- (void)shareViewController:(id)a3 willStartActivity:(id)a4 completion:(id)a5;
- (void)shareViewControllerCopyShareURL:(id)a3 completion:(id)a4;
- (void)shareViewControllerDidActivateShowSharedFolder;
- (void)shareViewControllerDidChooseTransport:(id)a3;
- (void)shareViewControllerDidFinishActivity:(id)a3;
- (void)shareViewControllerDismiss:(id)a3;
- (void)shareViewControllerLeaveShare:(id)a3;
- (void)shareViewControllerPerformAuxiliaryAction:(id)a3 completion:(id)a4;
- (void)shareViewControllerPerformHeaderAction:(id)a3 completion:(id)a4;
- (void)shareViewControllerStopSharing:(id)a3 overrideAlert:(BOOL)a4;
- (void)updateSharedOrModifiedByForURL:(id)a3;
- (void)updateTemplateStrings;
@end

@implementation _UIShareInvitationViewServiceViewController

+ (void)initialize
{
  v2 = +[BRUITestMessageCenter defaultCenter];
  [v2 startReceiver];
}

- (_UIShareInvitationViewServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v23.receiver = self;
  v23.super_class = _UIShareInvitationViewServiceViewController;
  v4 = [(_UIShareInvitationViewServiceViewController *)&v23 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[BRUITestMessageCenter defaultCenter];
    [v5 setHandler:v4 forMessageNamed:BRUITestSharingControllerUIValidationMessageName];
    v6 = +[_UIShareInvitationAddParticipantController contactStore];
    v4->_popoverPresentationMode = 0;
    if (!qword_100060308)
    {
      v7 = UTTypeCreatePreferredIdentifierForTag(&stru_10004DE38, &stru_10004DE38, kUTTypeContent);
      v8 = qword_100060308;
      qword_100060308 = v7;
    }

    CDAddLocalizedSuffixForType();
    CDAddLocalizedSuffixForType();
    CDAddLocalizedSuffixForType();
    CDAddLocalizedSuffixForType();
    CDAddLocalizedSuffixForType();
    CDAddLocalizedSuffixForType();
    CDAddLocalizedSuffixForType();
    CDAddLocalizedSuffixForType();
    CDAddLocalizedSuffixForType();
    v9 = objc_alloc_init(NSOperationQueue);
    [(_UIShareInvitationViewServiceViewController *)v4 setWorkerQueue:v9];

    v10 = [(_UIShareInvitationViewServiceViewController *)v4 workerQueue];
    [v10 setMaxConcurrentOperationCount:1];

    [(_UIShareInvitationViewServiceViewController *)v4 setAppName:@"Unknown app"];
    v11 = [(_UIShareInvitationViewServiceViewController *)v4 containedNavController];
    [v11 setDelegate:v4];

    v12 = [(_UIShareOverviewController *)[_UIWaitingForShareViewController alloc] initWithDelegate:v4];
    [(_UIShareInvitationViewServiceViewController *)v4 setViewController:v12];

    v13 = +[BRReachabilityMonitor sharedReachabilityMonitor];
    [(_UIShareInvitationViewServiceViewController *)v4 setReachabilityMonitor:v13];

    v14 = [(_UIShareInvitationViewServiceViewController *)v4 reachabilityMonitor];
    [v14 addObserver:v4];

    [(_UIShareInvitationViewServiceViewController *)v4 _setAvailablePermissions:0];
    v15 = dispatch_semaphore_create(0);
    [(_UIShareInvitationViewServiceViewController *)v4 setShareCreationSema:v15];

    v16 = dispatch_group_create();
    [(_UIShareInvitationViewServiceViewController *)v4 setFullscreenRepresentationGroup:v16];

    v17 = dispatch_group_create();
    [(_UIShareInvitationViewServiceViewController *)v4 setFolderSharingPreparationGroup:v17];

    [(_UIShareInvitationViewServiceViewController *)v4 setSharedByModifiedByText:&stru_10004DE38];
    v18 = +[UIShareFeature coOwners];
    v19 = [v18 isEnabled];

    if (v19)
    {
      [(_UIShareInvitationViewServiceViewController *)v4 setAllowInvitingOthers:1];
    }

    v20 = cdui_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[INFO] Cloud sharing invitation view controller is ready and waiting", v22, 2u);
    }
  }

  return v4;
}

- (void)didReceiveMessageNamed:(id)a3 userInfo:(id)a4 reply:(id)a5
{
  v6 = a5;
  v7 = [BRGeometry alloc];
  v8 = [(_UIShareInvitationViewServiceViewController *)self view];
  v9 = [v8 window];
  v10 = [v7 initWithView:v9];

  v11 = [NSKeyedArchiver archivedDataWithRootObject:v10];
  v17[0] = v11;
  v16[0] = BRUITestViewHierarchyRecursiveDescription;
  v16[1] = BRUITestViewHierarchyLayerSnapshot;
  v12 = [(_UIShareInvitationViewServiceViewController *)self view];
  v13 = [v12 window];
  v14 = BRLayerSnapshot();
  v17[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v6[2](v6, v15);
}

- (void)invalidate
{
  [self->_fileObserver finishObserving];
  fileObserver = self->_fileObserver;
  self->_fileObserver = 0;

  if (self->_itemURL)
  {
    v4 = _CFURLPromiseCopyPhysicalURL();
    [(NSURL *)self->_itemURL stopAccessingSecurityScopedResource];
    [v4 stopAccessingSecurityScopedResource];
    itemURL = self->_itemURL;
    self->_itemURL = 0;
  }

  [(BRReachabilityMonitor *)self->_reachabilityMonitor removeObserver:self];
  reachabilityMonitor = self->_reachabilityMonitor;
  self->_reachabilityMonitor = 0;
}

- (void)dealloc
{
  [(_UIShareInvitationViewServiceViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = _UIShareInvitationViewServiceViewController;
  [(_UIShareInvitationViewServiceViewController *)&v3 dealloc];
}

- (void)didMoveToParentViewController:(id)a3
{
  if (!a3)
  {
    v4 = [(_UIShareInvitationViewServiceViewController *)self hostingViewController];

    if (!v4)
    {

      [(_UIShareInvitationViewServiceViewController *)self invalidate];
    }
  }
}

- (void)shareViewControllerDismiss:(id)a3
{
  if ([(_UIShareInvitationViewServiceViewController *)self initialSharing])
  {
    v4 = [(_UIShareInvitationViewServiceViewController *)self workerQueue];
    [v4 cancelAllOperations];
  }

  v5 = [(_UIShareInvitationViewServiceViewController *)self hostingViewController];
  [v5 _dismissViewControllerWithError:0];
}

+ (id)_exportedInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____UIShareInvitationViewController];
  v3 = NSClassFromString(@"_UIShareParticipantDetails");
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v4, v5, objc_opt_class(), 0];
    [v2 setClasses:v6 forSelector:"_setParticipantDetails:" argumentIndex:0 ofReply:0];
  }

  return v2;
}

- (void)shareViewControllerPerformAuxiliaryAction:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(_UIShareInvitationViewServiceViewController *)self hostingViewController];
  [v6 _performAuxiliaryActionWithCompletion:v5];
}

- (void)shareViewControllerPerformHeaderAction:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(_UIShareInvitationViewServiceViewController *)self hostingViewController];
  [v6 _performHeaderActionWithCompletion:v5];
}

- (void)_setupDocumentURL:(id)a3
{
  v4 = a3;
  [(_UIShareInvitationViewServiceViewController *)self setItemURL:v4];
  v5 = cdui_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] Initializing for BR sharing with item %@", buf, 0xCu);
  }

  v6 = [(_UIShareInvitationViewServiceViewController *)self itemURL];
  v7 = _CFURLPromiseCopyPhysicalURL();

  v8 = [(_UIShareInvitationViewServiceViewController *)self itemURL];
  [v8 startAccessingSecurityScopedResource];

  [v7 startAccessingSecurityScopedResource];
  v19 = 0;
  [(NSString *)v4 getPromisedItemResourceValue:&v19 forKey:NSURLLocalizedNameKey error:0];
  v9 = v19;
  v18 = 0;
  v17 = 0;
  [(NSString *)v4 getPromisedItemResourceValue:&v18 forKey:NSURLTypeIdentifierKey error:&v17];
  v10 = v18;
  v11 = v17;
  [(_UIShareInvitationViewServiceViewController *)self setItemUTI:v10];
  if (v11)
  {
    v12 = [(_UIShareInvitationViewServiceViewController *)self viewController];
    [v12 presentError:v11];
  }

  else
  {
    [(_UIShareInvitationViewServiceViewController *)self setItemName:v9];
    v13 = [(_UIShareInvitationViewServiceViewController *)self viewController];
    [v13 setItemName:v9];

    v14 = cdui_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      itemName = self->_itemName;
      itemUTI = self->_itemUTI;
      *buf = 138412546;
      v21 = itemName;
      v22 = 2112;
      v23 = itemUTI;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[INFO] got item name %@, uti %@", buf, 0x16u);
    }

    [(_UIShareInvitationViewServiceViewController *)self _updateCloudDocsShare];
    [(_UIShareInvitationViewServiceViewController *)self _presentedURLChanged];
    [(_UIShareInvitationViewServiceViewController *)self _registerObserver];
    [(_UIShareInvitationViewServiceViewController *)self updateTemplateStrings];
  }
}

- (void)_setSandboxingURLWrapper:(id)a3
{
  v4 = a3;
  [(_UIShareInvitationViewServiceViewController *)self setMode:0];
  v5 = [v4 url];

  [(_UIShareInvitationViewServiceViewController *)self _setupDocumentURL:v5];
}

- (BOOL)isPartOfCloudKitSharedFolder
{
  v2 = [(_UIShareInvitationViewServiceViewController *)self _rootFolderTitle];
  v3 = v2 != 0;

  return v3;
}

- (void)changeToTopLevelSharedFolderURL
{
  if ([(_UIShareInvitationViewServiceViewController *)self isPartOfCloudKitSharedFolder])
  {
    [(_UIShareInvitationViewServiceViewController *)self shareViewControllerDidActivateShowSharedFolder];

    [(_UIShareInvitationViewServiceViewController *)self shareViewControllerDismiss:0];
  }

  else
  {
    v3 = [(_UIShareInvitationViewServiceViewController *)self shareRootItemURL];
    if (v3)
    {
      topLevelSharedFolderURL = self->_topLevelSharedFolderURL;
      self->_topLevelSharedFolderURL = 0;
      v8 = v3;

      share = self->_share;
      self->_share = 0;

      shareURL = self->_shareURL;
      self->_shareURL = 0;

      self->_shareURLUnreachable = 0;
      originalShare = self->_originalShare;
      self->_originalShare = 0;

      [(_UIShareInvitationViewServiceViewController *)self _setupDocumentURL:v8];
      v3 = v8;
    }
  }
}

- (void)_prepareForFolderSharingIfNeeded
{
  v3 = [(_UIShareInvitationViewServiceViewController *)self itemURL];
  if (v3)
  {
    v4 = v3;
    v5 = [(_UIShareInvitationViewServiceViewController *)self viewController];
    v6 = [v5 delegate];
    v7 = [(_UIShareInvitationViewServiceViewController *)self viewController];
    v8 = [v6 shareViewControllerIsFolderShare:v7];

    if (v8)
    {
      v9 = cdui_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] preparing for folder sharing", buf, 2u);
      }

      v10 = self;
      objc_sync_enter(v10);
      if ([(_UIShareInvitationViewServiceViewController *)v10 hasPreparedForFolderSharing]&& ([(_UIShareInvitationViewServiceViewController *)v10 folderSharingPreparationError], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
      {
        objc_sync_exit(v10);
      }

      else
      {
        [(_UIShareInvitationViewServiceViewController *)v10 setHasPreparedForFolderSharing:1];
        [(_UIShareInvitationViewServiceViewController *)v10 setFolderSharingPreparationError:0];
        objc_sync_exit(v10);

        v12 = [BRSharePrepFolderForSharing alloc];
        v13 = [(_UIShareInvitationViewServiceViewController *)v10 itemURL];
        v14 = [v12 initWithURL:v13];

        v15 = [(_UIShareInvitationViewServiceViewController *)v10 folderSharingPreparationGroup];
        dispatch_group_enter(v15);
        objc_initWeak(buf, v14);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100015344;
        v18[3] = &unk_10004CF60;
        v18[4] = v10;
        objc_copyWeak(&v20, buf);
        v16 = v15;
        v19 = v16;
        [(_UIShareInvitationViewServiceViewController *)v14 setPrepFolderSharingCompletionBlock:v18];
        v17 = [(_UIShareInvitationViewServiceViewController *)v10 workerQueue];
        [v17 addOperation:v14];

        objc_destroyWeak(&v20);
        objc_destroyWeak(buf);

        v10 = v14;
      }
    }
  }
}

- (void)_copyShareFromURLWithForceCreate:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [BRShareCopyOperation alloc];
  v7 = [(_UIShareInvitationViewServiceViewController *)self itemURL];
  v8 = [v6 initWithURL:v7];

  v9 = cdui_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] copying BR share", buf, 2u);
  }

  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100015608;
  v15 = &unk_10004CFB0;
  v16 = self;
  v17 = v5;
  v10 = v5;
  [v8 setRootShareCopyCompletionBlock:&v12];
  [v8 setQualityOfService:{25, v12, v13, v14, v15, v16}];
  v11 = [(_UIShareInvitationViewServiceViewController *)self workerQueue];
  [v11 addOperation:v8];
}

- (void)_updateCloudDocsShare
{
  v3 = [(_UIShareInvitationViewServiceViewController *)self unreachableViewController];

  if (v3)
  {
    self->_updateCloudDocsShareSkipped = 1;
  }

  else
  {
    self->_updateCloudDocsShareSkipped = 0;
    self->_refetchShareOnChange = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100015938;
    v8[3] = &unk_10004D000;
    v8[4] = self;
    v4 = objc_retainBlock(v8);
    [(_UIShareInvitationViewServiceViewController *)self useFileProviderFramework];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100015D28;
    v6[3] = &unk_10004D050;
    v6[4] = self;
    v7 = v4;
    v5 = v4;
    [(_UIShareInvitationViewServiceViewController *)self _copyShareFromURLWithForceCreate:0 completion:v6];
  }
}

- (void)preflightAndPrepareIfFolderShare:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate date];
  shareInvitationViewStartDate = self->_shareInvitationViewStartDate;
  self->_shareInvitationViewStartDate = v8;

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001628C;
  v12[3] = &unk_10004D0A0;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(_UIShareInvitationViewServiceViewController *)self _makeExistingSubsharePreflightCheckWithCompletion:v12];
}

- (id)fetchFPItemForID:(id)a3
{
  v3 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100016608;
  v16 = sub_100016618;
  v17 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = +[FPItemManager defaultManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100016620;
  v9[3] = &unk_10004D0C8;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [v5 fetchItemForItemID:v3 completionHandler:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_makeExistingSubsharePreflightCheckWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareInvitationViewServiceViewController *)self itemURL];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = [(_UIShareInvitationViewServiceViewController *)self viewController];
  v8 = [v7 delegate];
  v9 = [(_UIShareInvitationViewServiceViewController *)self viewController];
  v10 = [v8 shareViewControllerIsFolderShare:v9];

  if (v10)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000167B0;
    v11[3] = &unk_10004D168;
    v11[4] = self;
    v12 = v4;
    [(_UIShareInvitationViewServiceViewController *)self _processSubitemsWithProcessType:1 completion:v11];
  }

  else
  {
LABEL_4:
    (*(v4 + 2))(v4, 0);
  }
}

- (void)_processSubitemsWithProcessType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(_UIShareInvitationViewServiceViewController *)self itemURL];
  v8 = [[BRShareProcessSubitems alloc] initWithURL:v7 processType:a3];
  [v8 setMaxSharedSubitemsBeforeFailure:4];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100016FBC;
  v11[3] = &unk_10004D0F0;
  v12 = v6;
  v9 = v6;
  [v8 setProcessSubitemsCompletionBlock:v11];
  [v8 setQualityOfService:25];
  v10 = [(_UIShareInvitationViewServiceViewController *)self workerQueue];
  [v10 addOperation:v8];
}

- (int64_t)_hostApplicationType
{
  v2 = [(_UIShareInvitationViewServiceViewController *)self _hostApplicationBundleIdentifier];
  v3 = [v2 lowercaseString];

  if ([v3 isEqualToString:@"com.apple.pages"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"com.apple.numbers"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"com.apple.keynote"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_alertControllerForLegacyApplication:(id)a3
{
  v4 = [(_UIShareInvitationViewServiceViewController *)self _hostApplicationType];
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v6 = v5;
  switch(v4)
  {
    case 4:
      v7 = [v5 localizedStringForKey:@"IWORK_LEGACY_TEXT_KEYNOTE" value:@"To share this presentation table:{get the latest version of Keynote from the App Store.", @"Localizable"}];

      v8 = @"http://itunes.apple.com/app/keynote/id361285480?mt=8";
      goto LABEL_7;
    case 3:
      v7 = [v5 localizedStringForKey:@"IWORK_LEGACY_TEXT_NUMBERS" value:@"To share this spreadsheet table:{get the latest version of Numbers from the App Store.", @"Localizable"}];

      v8 = @"http://itunes.apple.com/app/numbers/id361304891?mt=8";
      goto LABEL_7;
    case 2:
      v7 = [v5 localizedStringForKey:@"IWORK_LEGACY_TEXT_PAGES" value:@"To share this document table:{get the latest version of Pages from the App Store.", @"Localizable"}];

      v8 = @"http://itunes.apple.com/app/pages/id361309726?mt=8";
LABEL_7:
      v9 = [NSURL URLWithString:v8];
      goto LABEL_9;
  }

  v7 = [v5 localizedStringForKey:@"LEGACY_TEXT_OTHER" value:@"This application is too old and does not support this type of sharing. An update may be available." table:@"Localizable"];

  v9 = 0;
LABEL_9:
  v10 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v11 = [v10 localizedStringForKey:@"IWORK_LEGACY_TITLE" value:@"Time to Update" table:@"Localizable"];
  v12 = [UIAlertController alertControllerWithTitle:v11 message:v7 preferredStyle:1];

  v13 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v14 = [v13 localizedStringForKey:@"ALERT_CANCEL_BUTTON_TITLE" value:@"Cancel" table:@"Localizable"];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100017518;
  v23[3] = &unk_10004D190;
  v23[4] = self;
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:v23];
  [v12 addAction:v15];

  if (v9)
  {
    v16 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v17 = [v16 localizedStringForKey:@"ALERT_APPSTORE_BUTTON_TITLE" value:@"App Store" table:@"Localizable"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100017524;
    v20[3] = &unk_10004CB70;
    v21 = v9;
    v22 = self;
    v18 = [UIAlertAction actionWithTitle:v17 style:0 handler:v20];
    [v12 addAction:v18];
  }

  return v12;
}

- (BOOL)isShowingSpinner
{
  v2 = [(_UIShareInvitationViewServiceViewController *)self viewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_setupViewControllerInContainedNavController
{
  v3 = [(_UIShareInvitationViewServiceViewController *)self containedNavController];
  if (v3)
  {
    v4 = v3;
    v5 = [(_UIShareInvitationViewServiceViewController *)self containedNavController];
    v6 = [v5 viewControllers];
    v7 = [v6 firstObject];
    v8 = [(_UIShareInvitationViewServiceViewController *)self viewController];

    if (v7 != v8)
    {
      v9 = [(_UIShareInvitationViewServiceViewController *)self containedNavController];
      v10 = [(_UIShareInvitationViewServiceViewController *)self viewController];
      v17 = v10;
      v11 = [NSArray arrayWithObjects:&v17 count:1];
      [v9 setViewControllers:v11 animated:0];

      v12 = [(_UIShareInvitationViewServiceViewController *)self unreachableViewController];
      if (![(_UIShareInvitationViewServiceViewController *)self isShowingSpinner]&& (v12 || ([(BRReachabilityMonitor *)self->_reachabilityMonitor isNetworkReachable]& 1) == 0))
      {
        v13 = [v12 presentingViewController];
        v14 = [(_UIShareInvitationViewServiceViewController *)self viewController];

        if (v13 != v14)
        {
          if (v12)
          {
            if (v13)
            {
              [v13 dismissViewControllerAnimated:0 completion:0];
            }
          }

          [(_UIShareInvitationViewServiceViewController *)self setUnreachableViewController:0];
          [(_UIShareInvitationViewServiceViewController *)self createUnreachableViewControllerIfNecessary];
          v15 = [(_UIShareInvitationViewServiceViewController *)self viewController];
          v16 = [(_UIShareInvitationViewServiceViewController *)self unreachableViewController];
          [v15 presentReachabilityViewController:v16 animated:0];
        }
      }
    }
  }
}

- (void)_updateAllowInvitingFromShare
{
  v3 = [(_UIShareInvitationViewServiceViewController *)self currentUserIsOwnerOrAdmin];

  [(_UIShareInvitationViewServiceViewController *)self setAllowInvitingOthers:v3];
}

- (void)_loadInitialViewController
{
  if (self->_legacyAppearance)
  {
    v3 = [(_UIShareOverviewController *)[_UIShareOverviewLegacyController alloc] initWithDelegate:self];
    [(_UIShareInvitationViewServiceViewController *)self setViewController:v3];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000179BC;
    v9[3] = &unk_10004C920;
    v9[4] = self;
    [(_UIShareInvitationViewServiceViewController *)self performAfterFullscreenPresentation:v9];
  }

  else
  {
    [(_UIShareInvitationViewServiceViewController *)self _updateAllowInvitingFromShare];
    v4 = [(_UIShareInvitationViewServiceViewController *)self initialSharing];
    v5 = off_10004C3C0;
    if ((v4 & 1) == 0 && !self->_showAddPeople)
    {
      v5 = &off_10004C3C8;
    }

    v6 = [objc_alloc(*v5) initWithDelegate:self];
    [(_UIShareInvitationViewServiceViewController *)self setViewController:v6];

    v7 = [(_UIShareInvitationViewServiceViewController *)self itemName];
    v8 = [(_UIShareInvitationViewServiceViewController *)self viewController];
    [v8 setItemName:v7];

    [(_UIShareInvitationViewServiceViewController *)self _setupViewControllerInContainedNavController];

    [(_UIShareInvitationViewServiceViewController *)self _updateReachabilityStatus:0];
  }
}

- (void)_presentedURLChanged
{
  v3 = [(_UIShareInvitationViewServiceViewController *)self itemURL];
  [(_UIShareInvitationViewServiceViewController *)self _loadThumbnailForFileURL:v3];

  if (self->_refetchShareOnChange)
  {
    v4 = [(_UIShareInvitationViewServiceViewController *)self itemURL];
    v6 = 0;
    [v4 getPromisedItemResourceValue:&v6 forKey:NSURLUbiquitousItemIsUploadedKey error:0];
    v5 = v6;

    LODWORD(v4) = [v5 BOOLValue];
    if (v4)
    {
      [(_UIShareInvitationViewServiceViewController *)self _updateCloudDocsShare];
    }
  }
}

- (void)_registerObserver
{
  if (!self->_mode && !self->_fileObserver)
  {
    objc_initWeak(&location, self);
    v3 = [BRObservableFile observerForKey:0 onFileURL:self->_itemURL];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100017C24;
    v6[3] = &unk_10004C9D8;
    objc_copyWeak(&v7, &location);
    v4 = [v3 addObserverBlock:v6];
    fileObserver = self->_fileObserver;
    self->_fileObserver = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_loadThumbnailForFileURL:(id)a3
{
  v4 = a3;
  v5 = [v4 startAccessingSecurityScopedResource];
  v6 = [(_UIShareInvitationViewServiceViewController *)self traitCollection];
  [v6 displayScale];
  v8 = v7;

  if (self->_legacyAppearance)
  {
    v9 = 72.0;
  }

  else
  {
    v9 = 160.0;
  }

  if (self->_legacyAppearance)
  {
    v10 = 72.0;
  }

  else
  {
    v10 = 128.0;
  }

  v11 = [[QLThumbnailGenerationRequest alloc] initWithFileAtURL:v4 size:-1 scale:v9 representationTypes:{v10, v8}];
  v12 = +[QLThumbnailGenerator sharedGenerator];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100017E54;
  v14[3] = &unk_10004D1B8;
  v15 = v4;
  v16 = self;
  v17 = v5;
  v13 = v4;
  [v12 generateBestRepresentationForRequest:v11 completionHandler:v14];
}

- (void)_setThumbnail:(id)a3
{
  [(_UIShareInvitationViewServiceViewController *)self setThumbnail:a3];
  v4 = [(_UIShareInvitationViewServiceViewController *)self viewController];
  [v4 updateThumbnail];
}

- (void)_setTintColor:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareInvitationViewServiceViewController *)self view];
  [v5 setTintColor:v4];
}

- (void)_setAppName:(id)a3
{
  [(_UIShareInvitationViewServiceViewController *)self setAppName:a3];

  [(_UIShareInvitationViewServiceViewController *)self _updateAllowInvitingFromShare];
}

- (void)_prepareForDisplayWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[UIColor systemGroupedBackgroundColor];
  v6 = [(_UIShareInvitationViewServiceViewController *)self viewController];
  v7 = [v6 view];
  [v7 setBackgroundColor:v5];

  v8 = [(_UIShareInvitationViewServiceViewController *)self viewController];
  [v8 setDelegate:self];

  [(_UIShareInvitationViewServiceViewController *)self _setupViewControllerInContainedNavController];
  v9 = [(_UIShareInvitationViewServiceViewController *)self viewController];
  [v9 preferredContentSize];
  v4[2](v4);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v10.receiver = self;
  v10.super_class = _UIShareInvitationViewServiceViewController;
  v4 = a3;
  [(_UIShareInvitationViewServiceViewController *)&v10 preferredContentSizeDidChangeForChildContentContainer:v4];
  v5 = [(_UIShareInvitationViewServiceViewController *)self hostingViewController:v10.receiver];
  [v4 preferredContentSize];
  v7 = v6;
  v9 = v8;

  [v5 _requestContentSize:{v7, v9}];
}

- (void)_setMailSubject:(id)a3 template:(id)a4
{
  v6 = a4;
  [(_UIShareInvitationViewServiceViewController *)self _setMailSubject:a3];
  [(_UIShareInvitationViewServiceViewController *)self _setMailTemplate:v6];
}

- (void)_setParticipantDetails:(id)a3
{
  v5 = a3;
  if (self->_participantDetails != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_participantDetails, a3);
    v5 = v6;
  }
}

- (void)_setIsInPopoverMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  self->_popoverPresentationMode = v3;
  v4 = [(_UIShareInvitationViewServiceViewController *)self viewController];
  [v4 setPopoverPresentationMode:v3];
}

- (void)_setCloudKitContainerSetupInfo:(id)a3
{
  if (a3)
  {
    [(_UIShareInvitationViewServiceViewController *)self setContainerSetupInfo:?];
  }
}

- (void)_willAppearInRemoteViewController:(id)a3
{
  v4 = [(_UIShareInvitationViewServiceViewController *)self view];
  v3 = [v4 window];
  [v3 makeKeyWindow];
}

- (void)_updateCloudKitShare
{
  self->_refetchShareOnChange = 0;
  v3 = [(CKShare *)self->_share participants];
  v4 = [v3 count];

  share = self->_share;
  if (v4 > 1)
  {
    if (share && self->_container)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v7 = self->_share;
      container = self->_container;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10001853C;
      v10[3] = &unk_10004D1E0;
      v10[4] = self;
      v11 = v4 < 2;
      [(CKShare *)v7 _getDecryptedShareInContainer:container completionHandler:v10];
    }
  }

  else
  {
    [(_UIShareInvitationViewServiceViewController *)self _sanitizeForAvailablePermissions:share];
    [(_UIShareInvitationViewServiceViewController *)self _setupWithShare:self->_share error:0 initialShare:1];
    v9 = [(_UIShareInvitationViewServiceViewController *)self itemName];
    v6 = [(_UIShareInvitationViewServiceViewController *)self viewController];
    [v6 setItemName:v9];
  }
}

- (BOOL)_setContainerFromID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_containerSetupInfo)
  {
    v6 = [[CKContainer alloc] initWithContainerSetupInfo:self->_containerSetupInfo];
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [[CKContainer alloc] initWithContainerID:v4];
LABEL_5:
    v7 = v6;
    [(_UIShareInvitationViewServiceViewController *)self setContainer:v6];

    v8 = [(_UIShareInvitationViewServiceViewController *)self _hostApplicationBundleIdentifier];
    v9 = [(_UIShareInvitationViewServiceViewController *)self container];
    [v9 setSourceApplicationBundleIdentifier:v8];

    v10 = cdui_default_log();
    v11 = 1;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [(_UIShareInvitationViewServiceViewController *)self container];
      v13 = [v12 sourceApplicationBundleIdentifier];
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[INFO] Set up container with ID %@, source app id %@", &v16, 0x16u);
    }

    goto LABEL_10;
  }

  v14 = cdui_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_10002CD10();
  }

  v10 = [NSError errorWithDomain:@"_UIShareErrorDomain" code:1 userInfo:0];
  [(_UIShareInvitationViewServiceViewController *)self shareViewController:0 presentError:v10];
  v11 = 0;
LABEL_10:

  return v11;
}

- (void)_setCloudKitThumbnail:(id)a3 title:(id)a4 type:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  [(_UIShareInvitationViewServiceViewController *)self setMode:1];
  if (v8)
  {
    [(_UIShareInvitationViewServiceViewController *)self setItemName:v8];
  }

  else
  {
    v10 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v11 = [v10 localizedStringForKey:@"Untitled" value:@"Untitled" table:@"Localizable"];
    [(_UIShareInvitationViewServiceViewController *)self setItemName:v11];
  }

  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = qword_100060308;
  }

  [(_UIShareInvitationViewServiceViewController *)self setItemUTI:v12];

  if (v16)
  {
    v13 = [UIImage imageWithData:v16];
    [(_UIShareInvitationViewServiceViewController *)self setThumbnail:v13];

    v14 = [(_UIShareInvitationViewServiceViewController *)self viewController];
    [v14 updateThumbnail];
  }

  if (v8)
  {
    [(_UIShareInvitationViewServiceViewController *)self setItemName:v8];
    v15 = [(_UIShareInvitationViewServiceViewController *)self viewController];
    [v15 setItemName:v8];
  }

  [(_UIShareInvitationViewServiceViewController *)self setInitialSharing:1];
  [(_UIShareInvitationViewServiceViewController *)self updateTemplateStrings];
  [(_UIShareInvitationViewServiceViewController *)self _loadInitialViewController];
}

- (void)_setCloudKitShare:(id)a3 containerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(_UIShareInvitationViewServiceViewController *)self setMode:1];
  v8 = [v6 valueForKey:CKShareTitleKey];
  if (v8)
  {
    [(_UIShareInvitationViewServiceViewController *)self setItemName:v8];
  }

  [(_UIShareInvitationViewServiceViewController *)self setItemUTI:qword_100060308];
  v9 = [v6 objectForKeyedSubscript:CKShareTypeKey];
  if (([v9 isEqualToString:@"com.apple.notes.note"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"com.apple.notes.folder"))
  {
    [(_UIShareInvitationViewServiceViewController *)self setItemUTI:v9];
  }

  v10 = [v6 valueForKey:CKShareThumbnailImageDataKey];
  v11 = [UIImage imageWithData:v10];

  if (v11)
  {
    [(_UIShareInvitationViewServiceViewController *)self setThumbnail:v11];
  }

  [(_UIShareInvitationViewServiceViewController *)self setShare:v6];
  v12 = [(_UIShareInvitationViewServiceViewController *)self _setContainerFromID:v7];

  if (v12)
  {
    v13 = cdui_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(_UIShareInvitationViewServiceViewController *)self itemName];
      share = self->_share;
      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = share;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[INFO] Initializing for CK sharing with item name %@, share %@", &v17, 0x16u);
    }

    [(_UIShareInvitationViewServiceViewController *)self _updateCloudKitShare];
    [(_UIShareInvitationViewServiceViewController *)self updateTemplateStrings];
  }

  v16 = [(_UIShareInvitationViewServiceViewController *)self shareCreationSema];
  dispatch_semaphore_signal(v16);
}

- (void)updateTemplateStrings
{
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v4 = [v3 localizedStringForKey:@"MAIL_TEMPLATE_BODY" value:@"<br><br>#LINK_FRAGMENT#" table:@"Localizable"];
  v5 = [(_UIShareInvitationViewServiceViewController *)self itemUTI];
  v6 = _CDAdaptLocalizedStringForItemType();
  [(_UIShareInvitationViewServiceViewController *)self _setMailTemplate:v6];

  v7 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v8 = [v7 localizedStringForKey:@"MAIL_TEMPLATE_SUBJECT" value:@"“#ITEM_NAME#”" table:@"Localizable"];
  v9 = [(_UIShareInvitationViewServiceViewController *)self itemUTI];
  v10 = _CDAdaptLocalizedStringForItemType();
  [(_UIShareInvitationViewServiceViewController *)self _setMailSubject:v10];

  [(_UIShareInvitationViewServiceViewController *)self _setMessageTemplate:&stru_10004DE38];
}

- (void)_setAvailablePermissions:(unint64_t)a3
{
  if ((~a3 & 3) != 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = a3 & 0xFFFFFFFFFFFFFFFCLL;
  }

  if ((~v4 & 0xC) == 0)
  {
    v4 &= 0xFFFFFFFFFFFFFFF3;
  }

  if (self->_hasValidPermissionOptions)
  {
    availablePermissions = self->_availablePermissions;
    self->_availablePermissions = v4;
    self->_hasValidPermissionOptions = 1;
    if (availablePermissions == v4)
    {
      return;
    }
  }

  else
  {
    self->_availablePermissions = v4;
    self->_hasValidPermissionOptions = 1;
  }

  v6 = [(_UIShareInvitationViewServiceViewController *)self viewController];
  [v6 updatePermissionOptions];
}

- (void)_sanitizeForAvailablePermissions:(id)a3
{
  v10 = a3;
  v4 = [v10 owner];
  v5 = [v4 isCurrentUser];

  v6 = v10;
  if (v5)
  {
    availablePermissions = self->_availablePermissions;
    if ((availablePermissions & 2) != 0)
    {
      v8 = [v10 publicPermission] == 1;
      v6 = v10;
      if (v8)
      {
        goto LABEL_15;
      }

      v9 = 1;
      goto LABEL_14;
    }

    if ((availablePermissions & 4) != 0)
    {
      if ([v10 publicPermission] == 3)
      {
        v8 = [v10 publicPermission] == 2;
        v6 = v10;
        if (v8)
        {
          goto LABEL_15;
        }

        v9 = 2;
        goto LABEL_14;
      }

      availablePermissions = self->_availablePermissions;
    }

    v6 = v10;
    if ((availablePermissions & 8) != 0)
    {
      v8 = [v10 publicPermission] == 2;
      v6 = v10;
      if (v8)
      {
        v9 = 3;
LABEL_14:
        [v10 setPublicPermission:v9];
        v6 = v10;
      }
    }
  }

LABEL_15:
}

- (void)_dismissForRecordWithError:(id)a3
{
  v4 = a3;
  if ([(_UIShareInvitationViewServiceViewController *)self initialSharing])
  {
    v5 = [(_UIShareInvitationViewServiceViewController *)self workerQueue];
    [v5 cancelAllOperations];
  }

  v6 = cdui_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] record: dismissing because of error (%@)", &v8, 0xCu);
  }

  v7 = [(_UIShareInvitationViewServiceViewController *)self hostingViewController];
  [v7 _dismissViewControllerWithError:v4];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v9 = a4;
  if ([v9 conformsToProtocol:&OBJC_PROTOCOL___BRShareInvitationNavigationStackController])
  {
    v6 = v9;
    v7 = [(_UIShareInvitationViewServiceViewController *)self containedNavController];
    v8 = [v7 disappearingViewController];
    [v6 willNavigateFromViewController:v8];
  }
}

- (void)reachabilityMonitor:(id)a3 didChangeReachabilityStatusTo:(BOOL)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019270;
  v4[3] = &unk_10004D208;
  v4[4] = self;
  v5 = a4;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)createUnreachableViewControllerIfNecessary
{
  v3 = [(_UIShareInvitationViewServiceViewController *)self unreachableViewController];

  if (!v3)
  {
    v7 = [[BRNetworkUnreachableViewController alloc] initForInitialSharing:[(_UIShareInvitationViewServiceViewController *)self initialSharing]];
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"dismissAction:"];
    v5 = [v7 topViewController];
    v6 = [v5 navigationItem];
    [v6 setRightBarButtonItem:v4];

    [v7 setModalTransitionStyle:2];
    [(_UIShareInvitationViewServiceViewController *)self setUnreachableViewController:v7];
  }
}

- (id)shareViewControllerSubtitle:(id)a3
{
  if ([(_UIShareInvitationViewServiceViewController *)self initialSharing])
  {
    [(_UIShareInvitationViewServiceViewController *)self _initialHeaderSubtitle];
  }

  else
  {
    [(_UIShareInvitationViewServiceViewController *)self _headerSubtitle];
  }
  v4 = ;

  return v4;
}

- (void)shareViewControllerDidActivateShowSharedFolder
{
  v2 = [(_UIShareInvitationViewServiceViewController *)self hostingViewController];
  [v2 _cloudSharingControllerDidActivateShowSharedFolder];
}

- (int64_t)shareViewControllerCurrentParticipantsState
{
  v3 = [(_UIShareInvitationViewServiceViewController *)self editableParticipants];
  v4 = v3;
  if (self->_share && [v3 count] > 1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v5 = 0;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (([v11 isCurrentUser] & 1) == 0)
          {
            if ([v11 role] == 2)
            {
              if (v5 == 2)
              {
                goto LABEL_21;
              }

              v5 = 1;
            }

            else if ([v11 role] == 3)
            {
              if (v5 == 1)
              {
LABEL_21:

                v5 = 3;
                goto LABEL_24;
              }

              v5 = 2;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else if ([(_UIShareInvitationViewServiceViewController *)self shareViewControllerAllowOthersToInvite])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

LABEL_24:

  return v5;
}

- (BOOL)shareViewControllerShowFullSettingsControls
{
  if (self->_initialSharing && !self->_share)
  {
    return 1;
  }

  v3 = [(_UIShareInvitationViewServiceViewController *)self share];
  v4 = [v3 publicPermission];

  if (v4 != 1)
  {
    return 0;
  }

  return [(_UIShareInvitationViewServiceViewController *)self currentUserIsOwner];
}

- (void)shareViewControllerDidChooseTransport:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareInvitationViewServiceViewController *)self hostingViewController];
  [v5 _cloudSharingControllerDidChooseTransport:v4];
}

- (void)performAfterFullscreenPresentation:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_hasBeenRepresentedInFullscreen)
  {
    v5 = dispatch_get_global_queue(25, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100019E18;
    v11[3] = &unk_10004D230;
    v6 = &v12;
    v11[4] = self;
    v12 = v4;
    v7 = v4;
    dispatch_async(v5, v11);
  }

  else
  {
    v8 = cdui_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] Requesting that the host app dissmisses us to be represented in fullscreen", buf, 2u);
    }

    self->_hasBeenRepresentedInFullscreen = 1;
    v9 = [(_UIShareInvitationViewServiceViewController *)self fullscreenRepresentationGroup];
    dispatch_group_enter(v9);

    v5 = [(_UIShareInvitationViewServiceViewController *)self hostingViewController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100019BD8;
    v13[3] = &unk_10004D230;
    v6 = &v14;
    v13[4] = self;
    v14 = v4;
    v10 = v4;
    [v5 _dismissForActivityRepresentation:v13];
  }
}

- (void)shareViewController:(id)a3 willStartActivity:(id)a4 completion:(id)a5
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100019F04;
  v6[3] = &unk_10004D258;
  v7 = self;
  v8 = a5;
  v5 = v8;
  [(_UIShareInvitationViewServiceViewController *)v7 performAfterFullscreenPresentation:v6];
}

- (id)sharingAppBundleIdentifierOverride
{
  v2 = [(_UIShareInvitationViewServiceViewController *)self share];
  v3 = [v2 objectForKeyedSubscript:CKShareTypeKey];

  if (v3)
  {
    if ([v3 isEqualToString:@"pages"])
    {
      v4 = @"com.apple.Pages";
    }

    else if ([v3 isEqualToString:@"numbers"])
    {
      v4 = @"com.apple.Numbers";
    }

    else if ([v3 isEqualToString:@"key"])
    {
      v4 = @"com.apple.Keynote";
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sharingAppBundleIdentifier
{
  v3 = [(_UIShareInvitationViewServiceViewController *)self sharingAppBundleIdentifierOverride];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_UIShareInvitationViewServiceViewController *)self _hostApplicationBundleIdentifier];
  }

  v6 = v5;

  return v6;
}

- (id)sharingAppName
{
  v3 = [(_UIShareInvitationViewServiceViewController *)self shareURL];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 path];
    v6 = [v5 componentsSeparatedByString:@"/"];

    if ([v6 count] < 2)
    {
      v8 = 0;
    }

    else
    {
      v7 = [v6 objectAtIndexedSubscript:1];
      v8 = [v7 capitalizedString];
    }

    if ([v8 isEqualToString:@"Iclouddrive"])
    {
      v9 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v10 = [v9 localizedStringForKey:@"MAIL_TEMPLATE_BRICK_ICLOUD_DRIVE" value:@"iCloud Drive" table:@"Localizable"];

      v8 = v10;
    }

    else if ([v8 isEqualToString:@"Share"])
    {
      v11 = [(_UIShareInvitationViewServiceViewController *)self appName];
LABEL_11:
      v12 = v11;

      goto LABEL_14;
    }

    if (v8)
    {
      v11 = v8;
      v8 = v11;
      goto LABEL_11;
    }
  }

  v12 = [(_UIShareInvitationViewServiceViewController *)self appName];
LABEL_14:

  return v12;
}

- (void)shareViewController:(id)a3 prepareActivity:(id)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001A270;
  v10[3] = &unk_10004D280;
  v11 = a4;
  v12 = a5;
  v10[4] = self;
  v8 = v11;
  v9 = v12;
  [(_UIShareInvitationViewServiceViewController *)self shareViewControllerCopyShareURL:a3 completion:v10];
}

- (void)shareViewControllerDidFinishActivity:(id)a3
{
  if (![(_UIShareInvitationViewServiceViewController *)self presentingError])
  {
    v4 = [(_UIShareInvitationViewServiceViewController *)self hostingViewController];
    [v4 _dismissViewControllerWithError:0];

    [(_UIShareInvitationViewServiceViewController *)self setViewController:0];
  }
}

- (void)_getTitle:(id *)a3 getMessage:(id *)a4 forMAIDError:(id)a5
{
  v12 = a5;
  if (a3)
  {
    v8 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    *a3 = [v8 localizedStringForKey:@"ERROR_TITLE_MAID" value:@"Couldn’t Complete Request" table:@"Localizable"];
  }

  if (a4)
  {
    v9 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v10 = [v9 localizedStringForKey:@"ERROR_MESSAGE_MAID" value:@"This account has restrictions on the people you can share with." table:@"Localizable"];
    v11 = [(_UIShareInvitationViewServiceViewController *)self itemUTI];
    *a4 = _CDAdaptLocalizedStringForItemType();
  }
}

- (BOOL)_getTitle:(id *)a3 getMessage:(id *)a4 forError:(id)a5
{
  v8 = a5;
  v9 = [v8 domain];
  if ([v9 isEqualToString:@"_UIShareErrorDomain"])
  {
    v10 = [v8 code];

    if (!v10)
    {
      v11 = [v8 userInfo];
      v12 = [v11 objectForKey:NSUnderlyingErrorKey];

      if (v12)
      {
        v64 = 0;
        v65 = 0;
        v13 = [(_UIShareInvitationViewServiceViewController *)self _getTitle:&v65 getMessage:&v64 forError:v12];
        v14 = v65;
        v15 = v64;
        if (v13)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v32 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v33 = [v32 localizedStringForKey:@"ERROR_TITLE_COULD_NOT_ADD_PARTICIPANTS" value:@"Couldn’t Add People" table:@"Localizable"];

      v34 = [v8 userInfo];
      v35 = [v34 objectForKeyedSubscript:@"addr"];

      v36 = [v35 count];
      if (v36 == 1)
      {
        v38 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        [v38 localizedStringForKey:@"ERROR_MESSAGE_COULD_NOT_ADD_PARTICIPANTS_WITH_SINGLE_ADDRESS" value:@"“%@” is not valid. Please enter a valid email address or phone number table:{then try sharing again.", @"Localizable"}];
        v41 = v59 = v33;
        v42 = [v35 firstObject];
        v43 = [NSString localizedStringWithFormat:v41, v42];

        v15 = v41;
        v33 = v59;
      }

      else
      {
        if (v36)
        {
          v37 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v38 = v37;
          v39 = @"ERROR_MESSAGE_COULD_NOT_ADD_PARTICIPANTS_WITH_ADDRESSES";
          v40 = @"Some email addresses or phone numbers you entered are not valid. Please enter valid email addresses or phone numbers, then try sharing again.";
        }

        else
        {
          v37 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v38 = v37;
          v39 = @"ERROR_MESSAGE_COULD_NOT_ADD_PARTICIPANTS";
          v40 = @"Your invitations weren’t sent.";
        }

        v43 = [v37 localizedStringForKey:v39 value:v40 table:@"Localizable"];
      }

      v15 = v43;
      v14 = v33;
LABEL_50:

      if (!a3)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }
  }

  else
  {
  }

  v16 = [v8 domain];
  v17 = [v16 isEqualToString:BRCloudDocsErrorDomain];

  if (v17)
  {
    if ([v8 code] == 17)
    {
      v18 = [v8 userInfo];
      v12 = [v18 objectForKey:NSUnderlyingErrorKey];

      v62 = 0;
      v63 = 0;
      [(_UIShareInvitationViewServiceViewController *)self _getTitle:&v63 getMessage:&v62 forError:v12];
      v14 = v63;
      v19 = v62;
LABEL_10:
      v15 = v19;
      goto LABEL_50;
    }

LABEL_26:
    v15 = 0;
    v14 = 0;
    if (!a3)
    {
      goto LABEL_52;
    }

LABEL_51:
    v54 = v14;
    *a3 = v14;
    goto LABEL_52;
  }

  v20 = [v8 domain];
  v21 = [v20 isEqualToString:CKErrorDomain];

  if (v21)
  {
    v12 = [(_UIShareInvitationViewServiceViewController *)self appName];
    v22 = [(_UIShareInvitationViewServiceViewController *)self initialSharing];
    v23 = [v8 code];
    v15 = 0;
    if (v23 > 28)
    {
      switch(v23)
      {
        case 29:
          v44 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v14 = [v44 localizedStringForKey:@"ERROR_TITLE_TOO_MANY_PARTICIPANTS" value:@"Maximum Invites Reached" table:@"Localizable"];

          v45 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v46 = v45;
          v47 = @"ERROR_MESSAGE_TOO_MANY_PARTICIPANTS";
          v48 = @"New invitations can’t be sent. Reduce the number of people you’re inviting or have previously invited, then try again.";
          break;
        case 30:
          v49 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v14 = [v49 localizedStringForKey:@"ERROR_TITLE_FILE_ALREADY_SHARED" value:@"Can’t Share Document" table:@"Localizable"];

          v45 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v46 = v45;
          v47 = @"ERROR_MESSAGE_FILE_ALREADY_SHARED";
          v48 = @"This file is inside a shared folder and cannot be shared on its own.";
          break;
        case 32:
          v60 = 0;
          v61 = 0;
          [(_UIShareInvitationViewServiceViewController *)self _getTitle:&v61 getMessage:&v60 forMAIDError:v8];
          v14 = v61;
          v19 = v60;
          goto LABEL_10;
        default:
LABEL_46:
          v14 = 0;
          goto LABEL_50;
      }

      v15 = [v45 localizedStringForKey:v47 value:v48 table:@"Localizable"];

      goto LABEL_50;
    }

    if (v23 == 3)
    {
      v50 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v51 = v50;
      if (!v22)
      {
        v14 = [v50 localizedStringForKey:@"ERROR_TITLE_NETWORK_UNAVAILABLE" value:@"Couldn’t Connect" table:@"Localizable"];

        v29 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v30 = v29;
        v31 = @"ERROR_MESSAGE_NETWORK_UNAVAILABLE";
        v52 = @"You can’t manage settings offline. There may be a problem with the server or network. Please try again later. ";
        goto LABEL_49;
      }

      v14 = [v50 localizedStringForKey:@"ERROR_TITLE_INITIAL_NETWORK_UNAVAILABLE" value:@"Couldn’t Connect" table:@"Localizable"];

      v29 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v30 = v29;
      v31 = @"ERROR_MESSAGE_INITIAL_NETWORK_UNAVAILABLE";
    }

    else
    {
      if (v23 != 4)
      {
        goto LABEL_46;
      }

      v27 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v28 = v27;
      if (!v22)
      {
        v14 = [v27 localizedStringForKey:@"ERROR_TITLE_NETWORK_FAILURE" value:@"Couldn’t Connect" table:@"Localizable"];

        v29 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v30 = v29;
        v31 = @"ERROR_MESSAGE_NETWORK_FAILURE";
        v52 = @"You can’t manage settings offline. There may be a problem with the server or network. Please try again later.";
        goto LABEL_49;
      }

      v14 = [v27 localizedStringForKey:@"ERROR_TITLE_INITIAL_NETWORK_FAILURE" value:@"Couldn’t Connect" table:@"Localizable"];

      v29 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v30 = v29;
      v31 = @"ERROR_MESSAGE_INITIAL_NETWORK_FAILURE";
    }

    v52 = @"%@ couldn’t connect to iCloud. There may be a problem with the server or network. Please try again later.";
LABEL_49:
    v53 = [v29 localizedStringForKey:v31 value:v52 table:@"Localizable"];
    v15 = [NSString localizedStringWithFormat:v53, v12];

    goto LABEL_50;
  }

  v24 = [v8 domain];
  v25 = [v24 isEqualToString:NSCocoaErrorDomain];

  if (!v25)
  {
    goto LABEL_26;
  }

  v26 = [v8 code];
  if (v26 == 3328)
  {
    v15 = @"This feature is not supported yet.";
  }

  else
  {
    v15 = 0;
  }

  if (v26 == 3328)
  {
    v14 = @"Not implemented yet";
  }

  else
  {
    v14 = 0;
  }

  if (a3)
  {
    goto LABEL_51;
  }

LABEL_52:
  if (a4)
  {
    v55 = v15;
    *a4 = v15;
  }

  if (v14)
  {
    v56 = v15 == 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = !v56;

  return v57;
}

- (BOOL)_shouldPresentError:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareInvitationViewServiceViewController *)self unreachableViewController];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 domain];
    if ([v7 isEqualToString:NSCocoaErrorDomain])
    {
      v6 = [v4 code] != 3072;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (void)shareViewController:(id)a3 presentError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(_UIShareInvitationViewServiceViewController *)self _shouldPresentError:v7])
  {
    if (!v6)
    {
      BRTelemetryReportShareInvitation();
    }

    [(_UIShareInvitationViewServiceViewController *)self setPresentingError:1];
    if (self->_mode == 1)
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10001B534;
      v33[3] = &unk_10004CA08;
      v33[4] = self;
      v34 = v7;
      [(_UIShareInvitationViewServiceViewController *)self performAfterFullscreenPresentation:v33];
    }

    else
    {
      v31 = 0;
      v32 = 0;
      v8 = [(_UIShareInvitationViewServiceViewController *)self _getTitle:&v32 getMessage:&v31 forError:v7];
      v9 = v32;
      v10 = v31;
      if ((v8 & 1) == 0)
      {
        v11 = [(_UIShareInvitationViewServiceViewController *)self initialSharing];
        v12 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v13 = v12;
        if (v11)
        {
          v14 = [v12 localizedStringForKey:@"ERROR_TITLE_INITIAL_DEFAULT" value:@"Sorry table:{this document can’t be shared right now.", @"Localizable"}];
          v15 = @"ERROR_MESSAGE_INITIAL_DEFAULT";
        }

        else
        {
          v14 = [v12 localizedStringForKey:@"ERROR_TITLE_DEFAULT" value:@"Sorry table:{you can’t manage settings right now", @"Localizable"}];
          v15 = @"ERROR_MESSAGE_DEFAULT";
        }

        v16 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v17 = [v16 localizedStringForKey:v15 value:@"Please try again later." table:@"Localizable"];

        v10 = v17;
        v9 = v14;
      }

      v18 = cdui_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_10002CD4C();
      }

      if (CPIsInternalDevice())
      {
        v19 = [v7 localizedDescription];
        v20 = [NSString stringWithFormat:@"%@ (INTERNAL: %@)", v10, v19];

        v10 = v20;
      }

      v21 = [UIAlertController alertControllerWithTitle:v9 message:v10 preferredStyle:1];
      v22 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v23 = [v22 localizedStringForKey:@"ERROR_ACTION_DEFAULT" value:@"OK" table:@"Localizable"];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10001B540;
      v29[3] = &unk_10004CB70;
      v29[4] = self;
      v30 = v6;
      v24 = [UIAlertAction actionWithTitle:v23 style:0 handler:v29];
      [v21 addAction:v24];

      v25 = [(_UIShareInvitationViewServiceViewController *)self presentedViewController];

      if (v25)
      {
        [(_UIShareInvitationViewServiceViewController *)self dismissViewControllerAnimated:0 completion:0];
      }

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10001B54C;
      v27[3] = &unk_10004CA08;
      v27[4] = self;
      v28 = v21;
      v26 = v21;
      [(_UIShareInvitationViewServiceViewController *)self performAfterFullscreenPresentation:v27];
    }
  }
}

- (BOOL)shareViewControllerIsFolderShare:(id)a3
{
  if (self->_mode)
  {
    v4 = [(_UIShareInvitationViewServiceViewController *)self _folderSubitemName];
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v6 = [(_UIShareInvitationViewServiceViewController *)self _rootFolderTitle];
      v5 = v6 != 0;
    }
  }

  else
  {
    if (!BRAllowFolderSharing())
    {
      return 0;
    }

    v4 = [(_UIShareInvitationViewServiceViewController *)self itemUTI];
    v5 = UTTypeConformsTo(kUTTypeFolder, v4) != 0;
  }

  return v5;
}

- (id)shareViewControllerItemUTI:(id)a3
{
  v4 = [(_UIShareInvitationViewServiceViewController *)self _hostApplicationBundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.reminders"];

  if (v5)
  {
    v6 = @"com.apple.reminders.list";
  }

  else
  {
    v6 = [(_UIShareInvitationViewServiceViewController *)self itemUTI];
  }

  return v6;
}

- (BOOL)shareViewControllerIsNotesOrRemindersOrDocSharing:(id)a3
{
  v4 = [(_UIShareInvitationViewServiceViewController *)self shareViewControllerItemUTI:0];
  v5 = v4;
  if (!self->_mode || ([v4 isEqualToString:@"com.apple.notes.note"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"com.apple.reminders.list") & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isEqualToString:@"com.apple.notes.folder"];
  }

  return v6;
}

- (id)ownerNameComponents
{
  share = self->_share;
  if (share)
  {
    v3 = [(CKShare *)share owner];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 userIdentity];

      if (v5)
      {
        v6 = [v4 userIdentity];
        v5 = [v6 nameComponents];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)ownerStringForPerson:(id)a3
{
  if (a3)
  {
    v4 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:a3 style:0 options:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)modifiedByStringForSharedByMe:(BOOL)a3 owner:(id)a4 modifiedByMe:(BOOL)a5 lastEditor:(id)a6
{
  v7 = a5;
  v8 = a3;
  v10 = a4;
  if (v7)
  {
    v11 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v12 = [v11 localizedStringForKey:@"MODIFIED_BY_ME_TEXT" value:@"Modified by Me" table:@"Localizable"];
    goto LABEL_10;
  }

  v11 = [(_UIShareInvitationViewServiceViewController *)self ownerStringForPerson:a6];
  if (v11)
  {
    v13 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v14 = [v13 localizedStringForKey:@"MODIFIED_BY_OTHER_TEXT" value:@"Modified by %@" table:@"Localizable"];
    v12 = [NSString localizedStringWithFormat:v14, v11];
LABEL_8:

    goto LABEL_9;
  }

  if (!v8)
  {
    v13 = [(_UIShareInvitationViewServiceViewController *)self ownerStringForPerson:v10];
    v14 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v15 = [v14 localizedStringForKey:@"SHARED_BY_OTHER_TEXT" value:@"Shared by %@" table:@"Localizable"];
    v12 = [NSString localizedStringWithFormat:v15, v13];

    goto LABEL_8;
  }

  v13 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v12 = [v13 localizedStringForKey:@"SHARED_BY_ME_TEXT" value:@"Shared by Me" table:@"Localizable"];
LABEL_9:

LABEL_10:

  return v12;
}

- (void)updateSharedOrModifiedByForURL:(id)a3
{
  v4 = a3;
  if ([(_UIShareInvitationViewServiceViewController *)self isFolderShare]|| !FPURLMightBeInFileProvider())
  {
    if ([(_UIShareInvitationViewServiceViewController *)self currentUserIsOwner])
    {
      v6 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v5 = [v6 localizedStringForKey:@"SHARED_BY_ME_TEXT" value:@"Shared by Me" table:@"Localizable"];
    }

    else
    {
      v7 = [(_UIShareInvitationViewServiceViewController *)self ownerNameComponents];
      v6 = [(_UIShareInvitationViewServiceViewController *)self ownerStringForPerson:v7];

      v8 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      if (v6)
      {
        v9 = [v8 localizedStringForKey:@"SHARED_BY_OTHER_TEXT" value:@"Shared by %@" table:@"Localizable"];
        v5 = [NSString localizedStringWithFormat:v9, v6];
      }

      else
      {
        v5 = [v8 localizedStringForKey:@"SHARED_BY_UNKNOWN_OTHER_TEXT" value:@"Shared" table:@"Localizable"];
      }
    }

    if (v5)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001BEF0;
      block[3] = &unk_10004CA08;
      block[4] = self;
      v5 = v5;
      v11 = v5;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    v5 = +[FPItemManager defaultManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001BCA4;
    v12[3] = &unk_10004D2A8;
    v12[4] = self;
    [v5 fetchItemForURL:v4 completionHandler:v12];
  }
}

- (id)editableParticipants
{
  v2 = [(_UIShareInvitationViewServiceViewController *)self share];
  v3 = [v2 allParticipants];
  v4 = [NSMutableArray arrayWithArray:v3];

  return v4;
}

- (id)_fetchTopLevelSharedFolderURLWithError:(id *)a3
{
  topLevelSharedFolderURL = self->_topLevelSharedFolderURL;
  if (topLevelSharedFolderURL)
  {
    v4 = topLevelSharedFolderURL;
  }

  else
  {
    v7 = +[NSFileManager defaultManager];
    itemURL = self->_itemURL;
    v16 = 0;
    v9 = [v7 br_topLevelSharedFolderForURL:itemURL error:&v16];
    v10 = v16;
    v11 = self->_topLevelSharedFolderURL;
    self->_topLevelSharedFolderURL = v9;

    if (self->_topLevelSharedFolderURL)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (!v12)
    {
      v13 = cdui_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_10002CDC0(&self->_itemURL);
      }

      if (a3)
      {
        v14 = v10;
        *a3 = v10;
      }
    }

    v4 = self->_topLevelSharedFolderURL;
  }

  return v4;
}

- (BOOL)itemIsShareRoot
{
  if (self->_itemURL)
  {
    v6 = 0;
    v2 = [(_UIShareInvitationViewServiceViewController *)self _fetchTopLevelSharedFolderURLWithError:&v6];
    v3 = (v2 | v6) == 0;
  }

  else
  {
    v2 = [(_UIShareInvitationViewServiceViewController *)self _folderSubitemName];
    v3 = v2 == 0;
  }

  v4 = v3;

  return v4;
}

- (BOOL)itemIsInsideFolderShare
{
  if ([(_UIShareInvitationViewServiceViewController *)self itemIsShareRoot])
  {
    return 0;
  }

  v4 = [(_UIShareInvitationViewServiceViewController *)self shareRootItemURL];
  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v5 = [(_UIShareInvitationViewServiceViewController *)self _rootFolderTitle];
    v3 = v5 != 0;
  }

  return v3;
}

- (id)rootItemName
{
  v3 = [(_UIShareInvitationViewServiceViewController *)self shareRootItemURL];
  v4 = v3;
  if (v3)
  {
    v8 = 0;
    [v3 getPromisedItemResourceValue:&v8 forKey:NSURLLocalizedNameKey error:0];
    v5 = v8;
  }

  else
  {
    v5 = [(_UIShareInvitationViewServiceViewController *)self _rootFolderTitle];
  }

  v6 = v5;

  return v6;
}

- (void)_setRootFolderTitle:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_ckRootFolderTitle, a3);
  v5 = v6;
  if (v6 && !self->_ckFolderSubitemName)
  {
    objc_storeStrong(&self->_itemName, a3);
    v5 = v6;
  }
}

- (void)_setFolderSubitemName:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_ckFolderSubitemName, a3);
  if (v5)
  {
    objc_storeStrong(&self->_itemName, a3);
  }
}

- (void)_setItemName:(id)a3
{
  v5 = a3;
  if (*&self->_ckRootFolderTitle == 0)
  {
    v6 = v5;
    objc_storeStrong(&self->_itemName, a3);
    v5 = v6;
  }
}

- (BOOL)isFolderShare
{
  v3 = [(_UIShareInvitationViewServiceViewController *)self _rootFolderTitle];

  if (v3)
  {
    v4 = [(_UIShareInvitationViewServiceViewController *)self _folderSubitemName];
    v5 = v4 == 0;
  }

  else
  {
    v4 = [(_UIShareInvitationViewServiceViewController *)self viewController];
    v6 = [v4 delegate];
    v7 = [(_UIShareInvitationViewServiceViewController *)self viewController];
    v5 = [v6 shareViewControllerIsFolderShare:v7];
  }

  return v5;
}

- (BOOL)currentUserIsOwner
{
  share = self->_share;
  if (!share)
  {
    return 0;
  }

  v4 = [(CKShare *)share currentUserParticipant];
  v5 = [(CKShare *)self->_share owner];
  if (v5)
  {
    v6 = [v4 isEqual:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)currentUserIsOwnerOrAdmin
{
  share = self->_share;
  if (share)
  {
    v4 = [(CKShare *)share currentUserParticipant];
    v5 = [(CKShare *)self->_share owner];
    if ([v4 role] == 2)
    {
      v6 = 1;
    }

    else if (v5)
    {
      v6 = [v4 isEqual:v5];
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  else
  {

    return [(_UIShareInvitationViewServiceViewController *)self initialSharing];
  }
}

- (void)shareViewController:(id)a3 activityType:(id)a4 waitForUploadWithProgress:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v36 = a5;
  v12 = a6;
  v13 = dispatch_group_create();
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_100016608;
  v58 = sub_100016618;
  v59 = 0;
  if (self->_mode)
  {
    v14 = [(_UIShareInvitationViewServiceViewController *)self container];
    v15 = v14 == 0;

    if (v15)
    {
      v28 = cdui_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        sub_10002CE68();
      }

      dispatch_group_enter(v13);
      v29 = [(_UIShareInvitationViewServiceViewController *)self hostingViewController];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_10001CD54;
      v46[3] = &unk_10004D348;
      v46[4] = self;
      v47 = v13;
      [v29 _requestSavedShareWithCompletion:v46];
    }

    else
    {
      v16 = cdui_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_10002CE34();
      }
    }

    v20 = 0;
  }

  else
  {
    v17 = cdui_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [(_UIShareInvitationViewServiceViewController *)self itemURL];
      *buf = 138412290;
      v61 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[INFO] subscribing for progress on %@", buf, 0xCu);
    }

    v19 = [(_UIShareInvitationViewServiceViewController *)self itemURL];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10001CB6C;
    v52[3] = &unk_10004D2F8;
    v53 = v36;
    v20 = [NSProgress _addSubscriberForFileURL:v19 withPublishingHandler:v52];

    v21 = [(_UIShareInvitationViewServiceViewController *)self itemURL];
    v51 = 0;
    [v21 getPromisedItemResourceValue:&v51 forKey:NSURLUbiquitousItemIsUploadedKey error:0];
    v22 = v51;

    if (([v22 BOOLValue] & 1) == 0)
    {
      dispatch_group_enter(v13);
      v23 = cdui_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        sub_10002CE9C();
      }

      v24 = [(_UIShareInvitationViewServiceViewController *)self itemURL];
      v25 = [BRObservableFile observerForKey:NSURLUbiquitousItemIsUploadedKey onFileURL:v24];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_10001CC8C;
      v48[3] = &unk_10004D320;
      v50 = &v54;
      v48[4] = self;
      v49 = v13;
      v26 = [v25 addObserverBlock:v48];
      v27 = v55[5];
      v55[5] = v26;
    }
  }

  v30 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CDF8;
  block[3] = &unk_10004C920;
  block[4] = self;
  dispatch_group_async(v13, v30, block);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10001CE40;
  v37[3] = &unk_10004D3E0;
  v38 = v13;
  v39 = self;
  v40 = v10;
  v41 = v11;
  v42 = v20;
  v43 = v12;
  v44 = &v54;
  v31 = v20;
  v32 = v12;
  v33 = v11;
  v34 = v10;
  v35 = v13;
  dispatch_async(v30, v37);

  _Block_object_dispose(&v54, 8);
}

- (void)shareViewControllerStopSharing:(id)a3 overrideAlert:(BOOL)a4
{
  if (a4)
  {

    [(_UIShareInvitationViewServiceViewController *)self _actuallyStopSharing];
  }

  else
  {
    v6[5] = v4;
    v6[6] = v5;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001D394;
    v6[3] = &unk_10004C920;
    v6[4] = self;
    [(_UIShareInvitationViewServiceViewController *)self performAfterFullscreenPresentation:v6];
  }
}

- (void)_actuallyStopSharing
{
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10001DA60;
  v32[3] = &unk_10004D408;
  v32[4] = self;
  v3 = objc_retainBlock(v32);
  v4 = cdui_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[INFO] stopping sharing", buf, 2u);
  }

  v5 = [(_UIShareInvitationViewServiceViewController *)self mode];
  v6 = cdui_default_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] record: destroying share", buf, 2u);
    }

    v8 = [CKModifyRecordsOperation alloc];
    v9 = [(_UIShareInvitationViewServiceViewController *)self share];
    v10 = [v9 recordID];
    v33 = v10;
    v11 = [NSArray arrayWithObjects:&v33 count:1];
    v12 = [v8 initWithRecordsToSave:&__NSArray0__struct recordIDsToDelete:v11];

    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_10001DC10;
    v27 = &unk_10004D430;
    v13 = &v28;
    v28 = v3;
    v14 = v3;
    [v12 setModifyRecordsCompletionBlock:&v24];
    [v12 setQualityOfService:{25, v24, v25, v26, v27}];
    v15 = [(_UIShareInvitationViewServiceViewController *)self share];
    v16 = [v15 currentUserParticipant];
    v17 = [v16 role];

    v18 = [(_UIShareInvitationViewServiceViewController *)self container];
    v19 = v18;
    if (v17 == 1)
    {
      [v18 privateCloudDatabase];
    }

    else
    {
      [v18 sharedCloudDatabase];
    }
    v23 = ;
    [v23 addOperation:v12];
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] document: unsharing", buf, 2u);
    }

    v20 = [BRShareUnshareOperation alloc];
    v21 = [(_UIShareInvitationViewServiceViewController *)self share];
    v12 = [v20 initWithShare:v21];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10001DC00;
    v29[3] = &unk_10004D0F0;
    v13 = &v30;
    v30 = v3;
    v22 = v3;
    [v12 setUnshareCompletionBlock:v29];
    [v12 setQualityOfService:25];
    v19 = [(_UIShareInvitationViewServiceViewController *)self workerQueue];
    [v19 addOperation:v12];
  }
}

- (void)shareViewControllerLeaveShare:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001DC90;
  v3[3] = &unk_10004C920;
  v3[4] = self;
  [(_UIShareInvitationViewServiceViewController *)self performAfterFullscreenPresentation:v3];
}

- (void)_refetchShareAndRetry:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareInvitationViewServiceViewController *)self mode];
  v6 = cdui_default_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] Refetching CK share after recoverable error", buf, 2u);
    }

    v8 = [CKFetchRecordsOperation alloc];
    v9 = [(_UIShareInvitationViewServiceViewController *)self share];
    v10 = [v9 recordID];
    v30 = v10;
    v11 = [NSArray arrayWithObjects:&v30 count:1];
    v12 = [v8 initWithRecordIDs:v11];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10001E34C;
    v25[3] = &unk_10004D480;
    v25[4] = self;
    v26 = v4;
    v13 = v4;
    [v12 setFetchRecordsCompletionBlock:v25];
    [v12 setQualityOfService:25];
    v14 = [(_UIShareInvitationViewServiceViewController *)self share];
    v15 = [v14 currentUserParticipant];
    v16 = [v15 role];

    v17 = [(_UIShareInvitationViewServiceViewController *)self container];
    v18 = v17;
    if (v16 == 1)
    {
      [v17 privateCloudDatabase];
    }

    else
    {
      [v17 sharedCloudDatabase];
    }
    v24 = ;
    [v24 addOperation:v12];

    v23 = v26;
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] Refetching document share after recoverable error", buf, 2u);
    }

    v19 = [BRShareCopyOperation alloc];
    v20 = [(_UIShareInvitationViewServiceViewController *)self itemURL];
    v12 = [v19 initWithURL:v20];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10001E330;
    v27[3] = &unk_10004D458;
    v28 = v4;
    v21 = v4;
    [v12 setRootShareCopyCompletionBlock:v27];
    [v12 setQualityOfService:25];
    v22 = [(_UIShareInvitationViewServiceViewController *)self workerQueue];
    [v22 addOperation:v12];

    v23 = v28;
  }
}

- (void)_modifyAndSaveShare:(id)a3 existingError:(id)a4 controller:(id)a5 modifyBlock:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (a4)
  {
    v16 = v14[2];
    v17 = a3;
    v16(v15, v17, a4);
  }

  else
  {
    v18 = v13[2];
    v19 = a3;
    v18(v13, v19);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001E550;
    v20[3] = &unk_10004D4A8;
    v20[4] = self;
    v21 = v12;
    v22 = v13;
    v23 = v15;
    [(_UIShareInvitationViewServiceViewController *)self _saveShare:v19 completion:v20];
  }
}

- (void)_saveShare:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = cdui_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] saving share", buf, 2u);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  if ([(_UIShareInvitationViewServiceViewController *)self mode])
  {
    v9 = [CKModifyRecordsOperation alloc];
    v31 = v6;
    v10 = [NSArray arrayWithObjects:&v31 count:1];
    v11 = [v9 initWithRecordsToSave:v10 recordIDsToDelete:&__NSArray0__struct];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10001ED28;
    v23[3] = &unk_10004D520;
    v12 = &v24;
    v23[4] = self;
    v24 = v7;
    v13 = v7;
    [v11 setModifyRecordsCompletionBlock:v23];
    [v11 setQualityOfService:25];
    v14 = [v6 currentUserParticipant];
    v15 = [v14 role];

    v16 = [(_UIShareInvitationViewServiceViewController *)self container];
    v17 = v16;
    if (v15 == 1)
    {
      [v16 privateCloudDatabase];
    }

    else
    {
      [v16 sharedCloudDatabase];
    }
    v22 = ;
    [v22 addOperation:v11];
  }

  else
  {
    v18 = [[BRShareSaveOperation alloc] initWithShare:v6];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10001EB48;
    v28[3] = &unk_10004D050;
    v28[4] = self;
    v12 = &v29;
    v19 = v7;
    v29 = v19;
    [v18 setShareSaveCompletionBlock:v28];
    [v18 setQualityOfService:25];
    v20 = [(_UIShareInvitationViewServiceViewController *)self folderSharingPreparationGroup];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001EC70;
    block[3] = &unk_10004D4F8;
    v26 = v18;
    v27 = v19;
    block[4] = self;
    v21 = v19;
    v11 = v18;
    dispatch_group_notify(v20, &_dispatch_main_q, block);
  }
}

- (void)shareViewController:(id)a3 modifyShare:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_UIShareInvitationViewServiceViewController *)self share];
  [(_UIShareInvitationViewServiceViewController *)self _modifyAndSaveShare:v11 existingError:0 controller:v10 modifyBlock:v9 completion:v8];
}

- (void)_handleCopyShareURLError:(id)a3
{
  v7 = a3;
  if (!self->_showAddPeople)
  {
    v4 = [v7 domain];
    if ([v4 isEqualToString:BRCloudDocsErrorDomain])
    {
      v5 = [v7 code];

      if (v5 == 8)
      {
        [(_UIShareInvitationViewServiceViewController *)self setShareURL:0];
        [(_UIShareInvitationViewServiceViewController *)self setShareURLUnreachable:1];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v6 = [(_UIShareInvitationViewServiceViewController *)self viewController];
  [v6 presentError:v7];

LABEL_7:
}

- (void)_enqueueCopyShareURLOperation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIShareInvitationViewServiceViewController *)self originalShare];

  v9 = [BRShareCopyShareURLOperation alloc];
  if (v8)
  {
    v10 = [(_UIShareInvitationViewServiceViewController *)self itemURL];
    v11 = [(_UIShareInvitationViewServiceViewController *)self itemUTI];
    v12 = [v9 initWithFileURL:v10 documentType:v11];

    [(_UIShareInvitationViewServiceViewController *)self originalShare];
    v6 = v13 = v6;
  }

  else
  {
    v13 = [(_UIShareInvitationViewServiceViewController *)self itemUTI];
    v12 = [v9 initWithShare:v6 documentType:v13];
  }

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10001F14C;
  v19 = &unk_10004D548;
  v20 = self;
  v21 = v7;
  v14 = v7;
  [v12 setCopyShareURLCompletionBlock:&v16];
  [v12 setQualityOfService:{33, v16, v17, v18, v19, v20}];
  v15 = [(_UIShareInvitationViewServiceViewController *)self workerQueue];
  [v15 addOperation:v12];
}

- (void)shareViewControllerCopyShareURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001F518;
  v21[3] = &unk_10004D548;
  v21[4] = self;
  v8 = v7;
  v22 = v8;
  v9 = objc_retainBlock(v21);
  v10 = [(_UIShareInvitationViewServiceViewController *)self shareURL];
  if (v10)
  {

LABEL_4:
    v11 = [(_UIShareInvitationViewServiceViewController *)self shareURL];
    (v9[2])(v9, v11, 0);
    goto LABEL_5;
  }

  if ([(_UIShareInvitationViewServiceViewController *)self shareURLUnreachable])
  {
    goto LABEL_4;
  }

  if ([(_UIShareInvitationViewServiceViewController *)self mode])
  {
    v12 = [(_UIShareInvitationViewServiceViewController *)self share];
    v13 = [v12 URL];

    if (v13)
    {
      v11 = [(_UIShareInvitationViewServiceViewController *)self share];
      v14 = [v11 URL];
      (v9[2])(v9, v14, 0);
    }

    else
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10001F758;
      v17[3] = &unk_10004D590;
      v17[4] = self;
      v18 = v9;
      [(_UIShareInvitationViewServiceViewController *)self shareViewController:v6 modifyShare:&stru_10004D568 completion:v17];
      v11 = v18;
    }
  }

  else
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10001F660;
    v19[3] = &unk_10004D258;
    v19[4] = self;
    v20 = v9;
    v15 = [NSBlockOperation blockOperationWithBlock:v19];
    [v15 setQualityOfService:33];
    v16 = [(_UIShareInvitationViewServiceViewController *)self workerQueue];
    [v16 addOperation:v15];

    v11 = v20;
  }

LABEL_5:
}

- (void)shareViewController:(id)a3 addParticipants:(id)a4 activityType:(id)a5 permission:(int64_t)a6 completion:(id)a7
{
  v40 = a3;
  v42 = a4;
  v12 = a5;
  v13 = a7;
  v14 = objc_alloc_init(BRModalProgressController);
  v15 = [(_UIShareInvitationViewServiceViewController *)self view];
  v16 = [v15 window];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v18 = [(_UIShareInvitationViewServiceViewController *)self presentedViewController];
    v19 = [v18 view];
    v17 = [v19 window];

    if (!v17)
    {
      v20 = cdui_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_10002D0D4();
      }

      v17 = 0;
    }
  }

  v21 = [(BRModalProgressController *)v14 view];
  [v17 addSubview:v21];

  v22 = [(BRModalProgressController *)v14 view];
  [v22 setAutoresizingMask:18];

  [v17 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [(BRModalProgressController *)v14 view];
  [v31 setFrame:{v24, v26, v28, v30}];

  v32 = [v12 pathExtension];
  shareInvitationViewStartDate = self->_shareInvitationViewStartDate;
  BRTelemetryReportShareInvitation();
  [(_UIShareInvitationViewServiceViewController *)self shareViewControllerDidChooseTransport:v12];
  +[NSDate timeIntervalSinceReferenceDate];
  v34 = self->_shareInvitationViewStartDate;
  objc_initWeak(&location, self);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10001FB08;
  v43[3] = &unk_10004D5B8;
  v35 = v14;
  v44 = v35;
  v36 = v13;
  v48 = v36;
  v37 = v32;
  v45 = v37;
  v38 = v34;
  v46 = v38;
  v49[1] = a6;
  objc_copyWeak(v49, &location);
  v39 = v41;
  v47 = v39;
  [(_UIShareInvitationViewServiceViewController *)self _addParticipantsAndSaveForController:v39 participants:v42 permission:a6 completion:v43];

  objc_destroyWeak(v49);
  objc_destroyWeak(&location);
}

- (void)_addParticipantsAndSaveForController:(id)a3 participants:(id)a4 permission:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
  v14 = objc_opt_new();
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10001FFA0;
  v41[3] = &unk_10004D5E0;
  v15 = v13;
  v42 = v15;
  v16 = v14;
  v43 = v16;
  [v12 enumerateObjectsUsingBlock:v41];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000201D4;
  v39[3] = &unk_10004D608;
  v17 = v11;
  v40 = v17;
  v18 = objc_retainBlock(v39);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000202C4;
  v35[3] = &unk_10004D680;
  v19 = v17;
  v37 = v19;
  v35[4] = self;
  v20 = v10;
  v36 = v20;
  v38 = a5;
  v21 = objc_retainBlock(v35);
  if ([v16 count])
  {
    (v18[2])(v18, 0, v16);
  }

  else if ([(_UIShareInvitationViewServiceViewController *)self mode])
  {
    v22 = [[CKFetchShareParticipantsOperation alloc] initWithUserIdentityLookupInfos:v15];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000209A0;
    v30[3] = &unk_10004D6D0;
    v32 = a5;
    v23 = objc_opt_new();
    v31 = v23;
    [v22 setShareParticipantFetchedBlock:v30];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100020A1C;
    v27[3] = &unk_10004D6F8;
    v28 = v23;
    v29 = v21;
    v24 = v23;
    [v22 setFetchShareParticipantsCompletionBlock:v27];
    [v22 setQualityOfService:25];
    [(CKContainer *)self->_container addOperation:v22];
  }

  else
  {
    v25 = [[BRShareLookupParticipantsOperation alloc] initWithUserIdentities:v15];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100020990;
    v33[3] = &unk_10004D6A8;
    v34 = v21;
    [v25 setLookupParticipantsCompletionBlock:v33];
    [v25 setQualityOfService:25];
    v26 = [(_UIShareInvitationViewServiceViewController *)self workerQueue];
    [v26 addOperation:v25];
  }
}

@end