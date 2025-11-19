@interface CKRemoveParticipantAlertServiceViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (void)_dismissAndCleanup;
- (void)promptToRemoveParticipant:(id)a3 fromHighlight:(id)a4 usingPreferredStyle:(int64_t)a5;
- (void)viewDidLoad;
@end

@implementation CKRemoveParticipantAlertServiceViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CKRemoveParticipantAlertServiceViewController;
  [(CKRemoveParticipantAlertServiceViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(CKRemoveParticipantAlertServiceViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (void)promptToRemoveParticipant:(id)a3 fromHighlight:(id)a4 usingPreferredStyle:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "promptToRemoveParticipant", buf, 2u);
  }

  objc_initWeak(buf, self);
  v11 = [v8 displayName];
  v12 = [MEMORY[0x1E69A5C78] sharedController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke;
  v15[3] = &unk_1E72F6408;
  objc_copyWeak(v19, buf);
  v13 = v8;
  v16 = v13;
  v14 = v11;
  v19[1] = a5;
  v17 = v14;
  v18 = self;
  [v12 fetchAttributionsForHighlight:v9 completionHandler:v15];

  objc_destroyWeak(v19);
  objc_destroyWeak(buf);
}

void __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke(uint64_t a1, void *a2)
{
  v67[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 attributions];
  if ([v4 count] < 2)
  {
    v6 = [v4 firstObject];
    v7 = [v6 conversationIdentifier];
    v8 = [MEMORY[0x1E69A5AF8] sharedRegistryIfAvailable];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 existingChatWithGUID:v7];
      v11 = v10;
      if (v10)
      {
        if ([v10 isGroupChat])
        {
          v12 = [v11 account];
          v13 = [*(a1 + 32) handle];
          v55 = [v12 existingIMHandleWithID:v13];

          if (v55)
          {
            v53 = [[CKConversation alloc] initWithChat:v11];
            v14 = [(CKConversation *)v53 displayName];
            v15 = v14;
            if (v14)
            {
              v52 = v14;
            }

            else
            {
              v52 = [(CKConversation *)v53 name];
            }

            v67[0] = v55;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
            v21 = [v11 canRemoveParticipants:v20];

            if (v21)
            {
              v50 = MEMORY[0x1E696AEC0];
              v22 = CKFrameworkBundle();
              v23 = [v22 localizedStringForKey:@"REMOVE_PARTICIPANT_FROM_GROUP" value:&stru_1F04268F8 table:@"ChatKit"];
              v51 = [v50 stringWithFormat:v23, *(a1 + 40), v52];

              v48 = MEMORY[0x1E696AEC0];
              v24 = CKFrameworkBundle();
              v25 = [v24 localizedStringForKey:@"PARTICIPANT_REMOVED_FROM_COLLABORATIVE_DOCUMENT_SHARED_WITH_GROUP" value:&stru_1F04268F8 table:@"ChatKit"];
              v49 = [v48 stringWithFormat:v25, *(a1 + 40), v52];

              v46 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v51 message:v49 preferredStyle:*(a1 + 64)];
              v44 = MEMORY[0x1E69DC648];
              v26 = MEMORY[0x1E696AEC0];
              v27 = CKFrameworkBundle();
              v28 = [v27 localizedStringForKey:@"REMOVE_FROM_GROUP" value:&stru_1F04268F8 table:@"ChatKit"];
              v41 = [v26 stringWithFormat:v28, v52];
              v60[0] = MEMORY[0x1E69E9820];
              v60[1] = 3221225472;
              v60[2] = __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_2;
              v60[3] = &unk_1E72F63E0;
              v61 = v53;
              v62 = v55;
              objc_copyWeak(&v63, (a1 + 56));
              v45 = [v44 actionWithTitle:v41 style:0 handler:v60];

              v42 = MEMORY[0x1E69DC648];
              v29 = CKFrameworkBundle();
              v30 = [v29 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
              v58[0] = MEMORY[0x1E69E9820];
              v58[1] = 3221225472;
              v58[2] = __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_107;
              v58[3] = &unk_1E72EC698;
              objc_copyWeak(&v59, (a1 + 56));
              v43 = [v42 actionWithTitle:v30 style:1 handler:v58];

              [v46 addAction:v45];
              [v46 addAction:v43];
              [*(a1 + 48) presentViewController:v46 animated:1 completion:0];
              WeakRetained = objc_loadWeakRetained((a1 + 56));
              [WeakRetained _dismissAndCleanup];

              objc_destroyWeak(&v59);
              objc_destroyWeak(&v63);
            }

            else
            {
              v32 = IMLogHandleForCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Notifying that the participant is still a member of a 3-person group", buf, 2u);
              }

              v33 = MEMORY[0x1E696AEC0];
              v34 = CKFrameworkBundle();
              v35 = [v34 localizedStringForKey:@"PARTICIPANT_IS_STILL_IN_MESSAGES_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
              v51 = [v33 stringWithFormat:v35, *(a1 + 40), v52];

              v49 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v51 preferredStyle:*(a1 + 64)];
              v36 = MEMORY[0x1E69DC648];
              v37 = MEMORY[0x1E696AEC0];
              v38 = CKFrameworkBundle();
              v47 = [v38 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
              v39 = [v37 stringWithFormat:v47, v52];
              v64[0] = MEMORY[0x1E69E9820];
              v64[1] = 3221225472;
              v64[2] = __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_93;
              v64[3] = &unk_1E72EC698;
              objc_copyWeak(&v65, (a1 + 56));
              v40 = [v36 actionWithTitle:v39 style:0 handler:v64];

              [v49 addAction:v40];
              [*(a1 + 48) presentViewController:v49 animated:1 completion:0];

              objc_destroyWeak(&v65);
            }
          }

          else
          {
            v19 = IMLogHandleForCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Unable to find handle", buf, 2u);
            }

            v54 = objc_loadWeakRetained((a1 + 56));
            [v54 _dismissAndCleanup];
          }
        }

        else
        {
          v18 = IMLogHandleForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Removing a single person from a collaboration sent to a 1-1 chat.", buf, 2u);
          }

          v57 = objc_loadWeakRetained((a1 + 56));
          [v57 _dismissAndCleanup];
        }
      }

      else
      {
        v17 = IMLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_cold_1(v7, v17);
        }

        v56 = objc_loadWeakRetained((a1 + 56));
        [v56 _dismissAndCleanup];
      }
    }

    else
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_cold_2(v16);
      }

      v11 = objc_loadWeakRetained((a1 + 56));
      [v11 _dismissAndCleanup];
    }
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_cold_3(v5);
    }

    v6 = objc_loadWeakRetained((a1 + 56));
    [v6 _dismissAndCleanup];
  }
}

void __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_93(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissAndCleanup];
}

void __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Remove from the group selected by user", v6, 2u);
  }

  v3 = *(a1 + 32);
  v7[0] = *(a1 + 40);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 removeRecipientHandles:v4];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _dismissAndCleanup];
}

void __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_107(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Cancel selected by user", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissAndCleanup];
}

- (void)_dismissAndCleanup
{
  v2 = [(CKRemoveParticipantAlertServiceViewController *)self _remoteViewControllerProxy];
  [v2 dismissAlert];
}

+ (id)_remoteViewControllerInterface
{
  if (_remoteViewControllerInterface_onceToken != -1)
  {
    +[CKRemoveParticipantAlertServiceViewController _remoteViewControllerInterface];
  }

  v3 = _remoteViewControllerInterface_interface;

  return v3;
}

void __79__CKRemoveParticipantAlertServiceViewController__remoteViewControllerInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F8A78];
  v1 = _remoteViewControllerInterface_interface;
  _remoteViewControllerInterface_interface = v0;
}

+ (id)_exportedInterface
{
  if (_exportedInterface_onceToken != -1)
  {
    +[CKRemoveParticipantAlertServiceViewController _exportedInterface];
  }

  v3 = _exportedInterface_interface;

  return v3;
}

void __67__CKRemoveParticipantAlertServiceViewController__exportedInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06408C0];
  v1 = _exportedInterface_interface;
  _exportedInterface_interface = v0;

  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v2 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [_exportedInterface_interface setClasses:v3 forSelector:sel_promptToRemoveParticipant_fromHighlight_usingPreferredStyle_ argumentIndex:0 ofReply:0];
  [_exportedInterface_interface setClasses:v2 forSelector:sel_promptToRemoveParticipant_fromHighlight_usingPreferredStyle_ argumentIndex:1 ofReply:0];
}

void __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "No chat found %@", &v2, 0xCu);
}

@end