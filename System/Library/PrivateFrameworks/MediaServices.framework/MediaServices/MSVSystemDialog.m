@interface MSVSystemDialog
+ (id)systemDialogWithOptions:(id)a3;
- (MSVSystemDialog)initWithCFUserNotification:(__CFUserNotification *)a3;
- (MSVSystemDialog)initWithOptions:(id)a3;
- (id)pendingCompletion;
- (void)dealloc;
- (void)dismiss;
- (void)presentWithCompletion:(id)a3;
- (void)setActiveRunLoopSource:(__CFRunLoopSource *)a3;
- (void)setPendingCompletion:(id)a3;
- (void)setPresentedUserNotification:(__CFUserNotification *)a3;
@end

@implementation MSVSystemDialog

- (void)dismiss
{
  presentedUserNotification = self->_presentedUserNotification;
  if (presentedUserNotification)
  {
    CFUserNotificationCancel(presentedUserNotification);
  }
}

- (void)presentWithCompletion:(id)a3
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 3;
  preparedUserNotification = self->_preparedUserNotification;
  if (preparedUserNotification)
  {
    v6 = CFRetain(preparedUserNotification);
    goto LABEL_51;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [(MSVSystemDialogOptions *)self->_options alertHeader];

  if (v8)
  {
    v9 = [(MSVSystemDialogOptions *)self->_options alertHeader];
    [v7 setObject:v9 forKey:*MEMORY[0x1E695EE58]];
  }

  v10 = [(MSVSystemDialogOptions *)self->_options alertMessage];

  if (v10)
  {
    v11 = [(MSVSystemDialogOptions *)self->_options alertMessage];
    [v7 setObject:v11 forKey:*MEMORY[0x1E695EE60]];
  }

  v12 = [(MSVSystemDialogOptions *)self->_options alertIconURL];

  if (v12)
  {
    v13 = [(MSVSystemDialogOptions *)self->_options alertIconURL];
    [v7 setObject:v13 forKey:*MEMORY[0x1E695EE80]];
  }

  v14 = [(MSVSystemDialogOptions *)self->_options defaultButtonTitle];

  if (v14)
  {
    v15 = [(MSVSystemDialogOptions *)self->_options defaultButtonTitle];
    [v7 setObject:v15 forKey:*MEMORY[0x1E695EE78]];
  }

  v16 = [(MSVSystemDialogOptions *)self->_options alternateButtonTitle];

  if (v16)
  {
    v17 = [(MSVSystemDialogOptions *)self->_options alternateButtonTitle];
    [v7 setObject:v17 forKey:*MEMORY[0x1E695EE70]];
  }

  if ([(MSVSystemDialogOptions *)self->_options showAsTopmost])
  {
    [v7 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695EE68]];
  }

  if ([(MSVSystemDialogOptions *)self->_options forceModalAlertAppearance])
  {
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v18 = getSBUserNotificationForcesModalAlertAppearanceSymbolLoc_ptr;
    v75 = getSBUserNotificationForcesModalAlertAppearanceSymbolLoc_ptr;
    if (!getSBUserNotificationForcesModalAlertAppearanceSymbolLoc_ptr)
    {
      v67 = MEMORY[0x1E69E9820];
      v68 = 3221225472;
      v69 = __getSBUserNotificationForcesModalAlertAppearanceSymbolLoc_block_invoke;
      v70 = &unk_1E79828C0;
      v71 = &v72;
      v19 = SpringBoardServicesLibrary();
      v20 = dlsym(v19, "SBUserNotificationForcesModalAlertAppearance");
      *(v71[1] + 24) = v20;
      getSBUserNotificationForcesModalAlertAppearanceSymbolLoc_ptr = *(v71[1] + 24);
      v18 = v73[3];
    }

    _Block_object_dispose(&v72, 8);
    if (!v18)
    {
      v50 = [MEMORY[0x1E696AAA8] currentHandler];
      v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationForcesModalAlertAppearance(void)"];
      [v50 handleFailureInFunction:v51 file:@"MSVSystemDialog.m" lineNumber:19 description:{@"%s", dlerror()}];

      goto LABEL_60;
    }

    v21 = *v18;
    [v7 setObject:MEMORY[0x1E695E118] forKey:v21];
  }

  if ([(MSVSystemDialogOptions *)self->_options showOnLockscreen])
  {
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v22 = getSBUserNotificationDisplayActionButtonOnLockScreenSymbolLoc_ptr;
    v75 = getSBUserNotificationDisplayActionButtonOnLockScreenSymbolLoc_ptr;
    if (!getSBUserNotificationDisplayActionButtonOnLockScreenSymbolLoc_ptr)
    {
      v67 = MEMORY[0x1E69E9820];
      v68 = 3221225472;
      v69 = __getSBUserNotificationDisplayActionButtonOnLockScreenSymbolLoc_block_invoke;
      v70 = &unk_1E79828C0;
      v71 = &v72;
      v23 = SpringBoardServicesLibrary();
      v24 = dlsym(v23, "SBUserNotificationDisplayActionButtonOnLockScreen");
      *(v71[1] + 24) = v24;
      getSBUserNotificationDisplayActionButtonOnLockScreenSymbolLoc_ptr = *(v71[1] + 24);
      v22 = v73[3];
    }

    _Block_object_dispose(&v72, 8);
    if (!v22)
    {
      v52 = [MEMORY[0x1E696AAA8] currentHandler];
      v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationDisplayActionButtonOnLockScreen(void)"];
      [v52 handleFailureInFunction:v53 file:@"MSVSystemDialog.m" lineNumber:20 description:{@"%s", dlerror()}];

      goto LABEL_60;
    }

    v25 = *v22;
    [v7 setObject:MEMORY[0x1E695E118] forKey:v25];
  }

  if ([(MSVSystemDialogOptions *)self->_options dismissOverlaysOnLockscreen])
  {
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v26 = getSBUserNotificationDismissesOverlaysInLockScreenSymbolLoc_ptr;
    v75 = getSBUserNotificationDismissesOverlaysInLockScreenSymbolLoc_ptr;
    if (!getSBUserNotificationDismissesOverlaysInLockScreenSymbolLoc_ptr)
    {
      v67 = MEMORY[0x1E69E9820];
      v68 = 3221225472;
      v69 = __getSBUserNotificationDismissesOverlaysInLockScreenSymbolLoc_block_invoke;
      v70 = &unk_1E79828C0;
      v71 = &v72;
      v27 = SpringBoardServicesLibrary();
      v28 = dlsym(v27, "SBUserNotificationDismissesOverlaysInLockScreen");
      *(v71[1] + 24) = v28;
      getSBUserNotificationDismissesOverlaysInLockScreenSymbolLoc_ptr = *(v71[1] + 24);
      v26 = v73[3];
    }

    _Block_object_dispose(&v72, 8);
    if (!v26)
    {
      v54 = [MEMORY[0x1E696AAA8] currentHandler];
      v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationDismissesOverlaysInLockScreen(void)"];
      [v54 handleFailureInFunction:v55 file:@"MSVSystemDialog.m" lineNumber:21 description:{@"%s", dlerror()}];

      goto LABEL_60;
    }

    v29 = *v26;
    [v7 setObject:MEMORY[0x1E695E118] forKey:v29];
  }

  v30 = [(MSVSystemDialogOptions *)self->_options allowedApplicationBundleIDs];
  if ([v30 count])
  {
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v31 = getSBUserNotificationAllowedApplicationsKeySymbolLoc_ptr;
    v75 = getSBUserNotificationAllowedApplicationsKeySymbolLoc_ptr;
    if (!getSBUserNotificationAllowedApplicationsKeySymbolLoc_ptr)
    {
      v67 = MEMORY[0x1E69E9820];
      v68 = 3221225472;
      v69 = __getSBUserNotificationAllowedApplicationsKeySymbolLoc_block_invoke;
      v70 = &unk_1E79828C0;
      v71 = &v72;
      v32 = SpringBoardServicesLibrary();
      v33 = dlsym(v32, "SBUserNotificationAllowedApplicationsKey");
      *(v71[1] + 24) = v33;
      getSBUserNotificationAllowedApplicationsKeySymbolLoc_ptr = *(v71[1] + 24);
      v31 = v73[3];
    }

    _Block_object_dispose(&v72, 8);
    if (v31)
    {
      v34 = *v31;
      [v7 setObject:v30 forKey:v34];

      goto LABEL_35;
    }

    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationAllowedApplicationsKey(void)"];
    [v48 handleFailureInFunction:v49 file:@"MSVSystemDialog.m" lineNumber:22 description:{@"%s", dlerror()}];

LABEL_60:
    __break(1u);
  }

LABEL_35:
  if ([(NSMutableArray *)self->_textFields count])
  {
    v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_textFields, "count")}];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v36 = self->_textFields;
    v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v59 objects:v76 count:16];
    if (v37)
    {
      v38 = *v60;
      do
      {
        v39 = 0;
        do
        {
          if (*v60 != v38)
          {
            objc_enumerationMutation(v36);
          }

          v40 = [*(*(&v59 + 1) + 8 * v39) title];
          if (v40)
          {
            [v35 addObject:v40];
          }

          ++v39;
        }

        while (v37 != v39);
        v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v59 objects:v76 count:16];
      }

      while (v37);
    }

    if ([v35 count])
    {
      [v7 setObject:v35 forKey:*MEMORY[0x1E695EEA0]];
    }
  }

  if ([(NSMutableArray *)self->_textFields count])
  {
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    textFields = self->_textFields;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __41__MSVSystemDialog_presentWithCompletion___block_invoke;
    v56[3] = &unk_1E7982820;
    v58 = &v63;
    v43 = v41;
    v57 = v43;
    [(NSMutableArray *)textFields enumerateObjectsUsingBlock:v56];
    [v7 setObject:v43 forKey:*MEMORY[0x1E695EE88]];
  }

  v6 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, v64[3], 0, v7);

LABEL_51:
  if (v6)
  {
    v44 = +[MSVSystemDialogManager sharedManager];
    [v44 registerSystemDialog:self forUserNotification:v6];
    RunLoopSource = CFUserNotificationCreateRunLoopSource(*MEMORY[0x1E695E480], v6, _MSVSystemDialogUserNotificationCallback, 0);
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x1E695E8E0]);
    CFRelease(RunLoopSource);
    [(MSVSystemDialog *)self setPresentedUserNotification:v6];
    [(MSVSystemDialog *)self setPendingCompletion:v4];
    [(MSVSystemDialog *)self setActiveRunLoopSource:RunLoopSource];
    CFRelease(v6);
  }

  else if (v4)
  {
    v4[2](v4, 0);
  }

  _Block_object_dispose(&v63, 8);

  v47 = *MEMORY[0x1E69E9840];
}

void __41__MSVSystemDialog_presentWithCompletion___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if ([v5 isSecure])
  {
    *(*(*(a1 + 40) + 8) + 24) |= 1 << (a3 + 16);
  }

  v6 = [v5 keyboardType];

  if (v6 == 2)
  {
    v7 = 7;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == 3)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
  [v9 addObject:v10];
}

- (void)setPendingCompletion:(id)a3
{
  v4 = [a3 copy];
  pendingCompletion = self->_pendingCompletion;
  self->_pendingCompletion = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)pendingCompletion
{
  v2 = MEMORY[0x1B26EC6C0](self->_pendingCompletion, a2);

  return v2;
}

- (void)setActiveRunLoopSource:(__CFRunLoopSource *)a3
{
  activeRunLoopSource = self->_activeRunLoopSource;
  if (activeRunLoopSource)
  {
    CFRunLoopSourceInvalidate(activeRunLoopSource);
    CFRelease(self->_activeRunLoopSource);
  }

  self->_activeRunLoopSource = a3;
  if (a3)
  {

    CFRetain(a3);
  }
}

- (void)setPresentedUserNotification:(__CFUserNotification *)a3
{
  presentedUserNotification = self->_presentedUserNotification;
  if (presentedUserNotification)
  {
    CFRelease(presentedUserNotification);
  }

  self->_presentedUserNotification = a3;
  if (a3)
  {

    CFRetain(a3);
  }
}

- (void)dealloc
{
  presentedUserNotification = self->_presentedUserNotification;
  if (presentedUserNotification)
  {
    CFRelease(presentedUserNotification);
  }

  preparedUserNotification = self->_preparedUserNotification;
  if (preparedUserNotification)
  {
    CFRelease(preparedUserNotification);
  }

  activeRunLoopSource = self->_activeRunLoopSource;
  if (activeRunLoopSource)
  {
    CFRunLoopSourceInvalidate(activeRunLoopSource);
    CFRelease(self->_activeRunLoopSource);
  }

  v6.receiver = self;
  v6.super_class = MSVSystemDialog;
  [(MSVSystemDialog *)&v6 dealloc];
}

- (MSVSystemDialog)initWithCFUserNotification:(__CFUserNotification *)a3
{
  v6.receiver = self;
  v6.super_class = MSVSystemDialog;
  v4 = [(MSVSystemDialog *)&v6 init];
  if (v4)
  {
    v4->_preparedUserNotification = CFRetain(a3);
  }

  return v4;
}

- (MSVSystemDialog)initWithOptions:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MSVSystemDialog;
  v6 = [(MSVSystemDialog *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    textFields = v7->_textFields;
    v7->_textFields = v8;
  }

  return v7;
}

+ (id)systemDialogWithOptions:(id)a3
{
  v3 = a3;
  v4 = [[MSVSystemDialog alloc] initWithOptions:v3];

  return v4;
}

@end