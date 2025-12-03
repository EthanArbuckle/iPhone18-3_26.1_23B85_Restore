@interface SGEventSuggestion
- (BOOL)_isSourceAccountManaged;
- (id)_icsDataEkEvent:(id)event;
- (id)suggestionAttributedSubtitle;
- (id)suggestionPrimaryAction;
- (void)_dismissViewController:(id)controller retainBanner:(BOOL)banner;
- (void)_previewControllerForICSEvent:(id)event eventStore:(id)store;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)icsPreviewControllerWantsDismissal:(id)dismissal;
@end

@implementation SGEventSuggestion

- (id)_icsDataEkEvent:(id)event
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(SGRealtimeEvent *)self->super._realtimeEvent event:event];
  tags = [v3 tags];

  icsAttachmentData = [tags countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (icsAttachmentData)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != icsAttachmentData; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(tags);
        }

        v8 = [MEMORY[0x1E6999208] resolveName:*(*(&v10 + 1) + 8 * i)];
        if ([v8 isIcsAttachmentData])
        {
          icsAttachmentData = [v8 icsAttachmentData];

          goto LABEL_11;
        }
      }

      icsAttachmentData = [tags countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (icsAttachmentData)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return icsAttachmentData;
}

- (void)_previewControllerForICSEvent:(id)event eventStore:(id)store
{
  v18 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v7 = [(SGEventSuggestion *)self _icsDataEkEvent:event];
  if (v7)
  {
    suggestionDelegate = [(SGEventSuggestionBase *)self suggestionDelegate];
    v9 = [suggestionDelegate icsPreviewControllerForData:v7 andEventStore:storeCopy];

    [v9 setAllowsImport:1];
    [v9 setAllowsEditing:1];
    [v9 setPreviewDelegate:self];
    viewController = [v9 viewController];
    [viewController setHidesBottomBarWhenPushed:0];

    suggestionDelegate2 = [(SGEventSuggestionBase *)self suggestionDelegate];
    [v9 setCancelButtonWithTarget:suggestionDelegate2 action:sel_dismissICSPreviewController_];

    icsPreviewController = self->_icsPreviewController;
    self->_icsPreviewController = v9;
  }

  else
  {
    v13 = sgEventsLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      event = [(SGRealtimeEvent *)self->super._realtimeEvent event];
      loggingIdentifier = [event loggingIdentifier];
      v16 = 138543362;
      v17 = loggingIdentifier;
      _os_log_impl(&dword_1B8182000, v13, OS_LOG_TYPE_DEFAULT, "No ICS Data found for event [SGEvent (%{public}@)]", &v16, 0xCu);
    }
  }
}

- (BOOL)_isSourceAccountManaged
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  event = [(SGRealtimeEvent *)self->super._realtimeEvent event];
  tags = [event tags];

  v4 = [tags countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(tags);
        }

        v8 = [MEMORY[0x1E6999208] resolveName:*(*(&v13 + 1) + 8 * i)];
        if ([v8 isManagedSourceAccount])
        {
          value = [v8 value];
          v10 = [value isEqualToString:@"MCAccountIsManaged"];

          if (v10)
          {

            v11 = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [tags countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)icsPreviewControllerWantsDismissal:(id)dismissal
{
  viewController = [dismissal viewController];
  [(SGEventSuggestion *)self _dismissViewController:viewController retainBanner:1];
}

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  v8 = controllerCopy;
  if (action)
  {
    [objc_opt_class() confirm:1 event:self->super._realtimeEvent completion:0];
    [(SGEventSuggestion *)self _dismissViewController:v8 retainBanner:action == 1];
    if (action == 1)
    {
      suggestionDelegate = [(SGEventSuggestionBase *)self suggestionDelegate];
      [suggestionDelegate suggestionWasUpdated:self];
    }
  }

  else
  {
    [(SGEventSuggestion *)self _dismissViewController:controllerCopy retainBanner:1];
  }
}

- (void)_dismissViewController:(id)controller retainBanner:(BOOL)banner
{
  bannerCopy = banner;
  v20 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v7 = sgEventsLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    event = [(SGRealtimeEvent *)self->super._realtimeEvent event];
    loggingIdentifier = [event loggingIdentifier];
    v10 = loggingIdentifier;
    v11 = @"not";
    if (bannerCopy)
    {
      v11 = @" ";
    }

    v16 = 138543618;
    v17 = loggingIdentifier;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_1B8182000, v7, OS_LOG_TYPE_DEFAULT, "SGEventSuggestion - SGEvent %{public}@ ViewController dismissed. Did %{public}@ add event to calendar", &v16, 0x16u);
  }

  suggestionDelegate = [(SGEventSuggestionBase *)self suggestionDelegate];
  v13 = suggestionDelegate;
  if (suggestionDelegate)
  {
    [suggestionDelegate dismissViewController:controllerCopy];
    [v13 suggestion:self actionFinished:!bannerCopy];
  }

  else
  {
    v14 = sgEventsLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_error_impl(&dword_1B8182000, v14, OS_LOG_TYPE_ERROR, "SGEventSuggestion - can't find suggestionDelegate", &v16, 2u);
    }

    presentingViewController = [controllerCopy presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:&__block_literal_global];
  }
}

- (id)suggestionPrimaryAction
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = sgEventsLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    event = [(SGRealtimeEvent *)self->super._realtimeEvent event];
    loggingIdentifier = [event loggingIdentifier];
    *buf = 138543362;
    v11 = loggingIdentifier;
    _os_log_debug_impl(&dword_1B8182000, v3, OS_LOG_TYPE_DEBUG, "SGEventSuggestion - SGEvent %{public}@ PrimaryAction initialized", buf, 0xCu);
  }

  primaryActionTitle = [(SGEventSuggestionBase *)self primaryActionTitle];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__SGEventSuggestion_suggestionPrimaryAction__block_invoke;
  v9[3] = &unk_1E7CD9340;
  v9[4] = self;
  v5 = [SGSuggestionAction actionWithTitle:primaryActionTitle handler:v9];

  return v5;
}

void __44__SGEventSuggestion_suggestionPrimaryAction__block_invoke(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(*(a1 + 32) + 8) state] == 1 || objc_msgSend(*(*(a1 + 32) + 8), "state") == 2)
  {
    v4 = objc_opt_new();
    if ([*(a1 + 32) _isSourceAccountManaged])
    {
      [v4 setSourceAccountManagement:2];
    }

    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    [v5 beginIgnoringInteractionEvents];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v64 = 0x2020000000;
    LOBYTE(v65) = 0;
    v6 = dispatch_time(0, 83333333);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__SGEventSuggestion_suggestionPrimaryAction__block_invoke_2;
    aBlock[3] = &unk_1E7CD9170;
    v7 = *(a1 + 32);
    p_buf = &buf;
    aBlock[4] = v7;
    v8 = v4;
    v57 = v8;
    v9 = _Block_copy(aBlock);
    v10 = [*(*(a1 + 32) + 8) event];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __44__SGEventSuggestion_suggestionPrimaryAction__block_invoke_19;
    v54[3] = &unk_1E7CD91C0;
    v11 = v9;
    v55 = v11;
    [v10 geocodeWithCallback:v54];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SGEventSuggestion_suggestionPrimaryAction__block_invoke_3;
    block[3] = &unk_1E7CD9198;
    block[4] = *(a1 + 32);
    v53 = v11;
    v12 = v11;
    dispatch_after(v6, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(&buf, 8);
  }

  else if ([*(*(a1 + 32) + 8) state] == 4 || objc_msgSend(*(*(a1 + 32) + 8), "state") == 5)
  {
    v8 = objc_opt_new();
    if ([*(a1 + 32) _isSourceAccountManaged])
    {
      [v8 setSourceAccountManagement:2];
    }

    v13 = [*(*(a1 + 32) + 8) eventIdentifier];
    v14 = [v8 eventWithIdentifier:v13];

    v15 = [*(*(a1 + 32) + 8) event];
    [v15 mergeIntoEKEvent:v14 withStore:v8];

    v59 = 0;
    v60 = &v59;
    v61 = 0x2050000000;
    v16 = getEKEventViewControllerClass_softClass;
    v62 = getEKEventViewControllerClass_softClass;
    if (!getEKEventViewControllerClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v64 = __getEKEventViewControllerClass_block_invoke;
      v65 = &unk_1E7CD9710;
      v66 = &v59;
      __getEKEventViewControllerClass_block_invoke(&buf);
      v16 = v60[3];
    }

    v17 = v16;
    _Block_object_dispose(&v59, 8);
    v18 = objc_opt_new();
    [v18 setEvent:v14];
    [v18 setAllowsEditing:0];
    [v18 setDelegate:*(a1 + 32)];
    [v18 setModalPresentationStyle:-1];
    v19 = sgEventsLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(*(a1 + 32) + 8) event];
      v21 = [v20 loggingIdentifier];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v21;
      _os_log_impl(&dword_1B8182000, v19, OS_LOG_TYPE_DEFAULT, "Presenting confirmed event (%{public}@) view controller", &buf, 0xCu);
    }

    v22 = [*(a1 + 32) suggestionDelegate];
    [v22 presentViewController:v18];
  }

  else
  {
    if ([*(*(a1 + 32) + 8) state] != 3)
    {
      goto LABEL_7;
    }

    v23 = objc_opt_new();
    if ([*(a1 + 32) _isSourceAccountManaged])
    {
      [v23 setSourceAccountManagement:2];
    }

    v25 = *(a1 + 32);
    v24 = (a1 + 32);
    v26 = [*(v25 + 8) eventIdentifier];
    v27 = [v23 eventWithIdentifier:v26];

    v28 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
    v29 = MEMORY[0x1E69DC648];
    v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
    v31 = [v30 localizedStringForKey:@"SuggestionsBannerAlertButtonDeleteEvent" value:&stru_1F3012140 table:0];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __44__SGEventSuggestion_suggestionPrimaryAction__block_invoke_34;
    v47[3] = &unk_1E7CD91E8;
    v48 = v27;
    v49 = v23;
    v50 = *v24;
    v32 = v28;
    v51 = v32;
    v33 = v23;
    v8 = v27;
    v34 = [v29 actionWithTitle:v31 style:2 handler:v47];
    [v32 addAction:v34];

    v35 = MEMORY[0x1E69DC648];
    v36 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
    v37 = [v36 localizedStringForKey:@"SuggestionsBannerAlertButtonCancel" value:&stru_1F3012140 table:0];
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __44__SGEventSuggestion_suggestionPrimaryAction__block_invoke_39;
    v44 = &unk_1E7CD9210;
    v45 = *v24;
    v46 = v32;
    v38 = v32;
    v39 = [v35 actionWithTitle:v37 style:1 handler:&v41];
    [v38 addAction:{v39, v41, v42, v43, v44, v45}];

    [v38 setModalPresentationStyle:7];
    v40 = [*v24 suggestionDelegate];
    [v40 presentViewController:v38];
  }

LABEL_7:
}

void __44__SGEventSuggestion_suggestionPrimaryAction__block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 48) + 8);
  if ((*(v4 + 24) & 1) == 0)
  {
    *(v4 + 24) = 1;
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    [v5 endIgnoringInteractionEvents];

    v6 = [*(*(a1 + 32) + 8) state];
    v7 = *(a1 + 40);
    if (v6 == 1)
    {
      v8 = [v3 toEKEventWithStore:*(a1 + 40)];
    }

    else
    {
      v9 = [*(*(a1 + 32) + 8) eventIdentifier];
      v8 = [v7 eventWithIdentifier:v9];

      [v3 mergeIntoEKEvent:v8 withStore:*(a1 + 40)];
    }

    [*(a1 + 32) _previewControllerForICSEvent:v8 eventStore:*(a1 + 40)];
    v10 = *(*(a1 + 32) + 48);
    if (v10)
    {
      v11 = [v10 viewController];
      v12 = sgEventsLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(*(a1 + 32) + 8) event];
        v14 = [v13 loggingIdentifier];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_1B8182000, v12, OS_LOG_TYPE_DEFAULT, "Presenting suggested ICS event (%{public}@) view controller", &buf, 0xCu);
      }

      [v11 setModalPresentationStyle:3];
    }

    else
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2050000000;
      v15 = getEKEventEditViewControllerClass_softClass;
      v24 = getEKEventEditViewControllerClass_softClass;
      if (!getEKEventEditViewControllerClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v26 = __getEKEventEditViewControllerClass_block_invoke;
        v27 = &unk_1E7CD9710;
        v28 = &v21;
        __getEKEventEditViewControllerClass_block_invoke(&buf);
        v15 = v22[3];
      }

      v16 = v15;
      _Block_object_dispose(&v21, 8);
      v11 = objc_opt_new();
      [v11 setEvent:{v8, v21}];
      [v11 setEventStore:*(a1 + 40)];
      [v11 setHidesBottomBarWhenPushed:1];
      [v11 setEditViewDelegate:*(a1 + 32)];
      [v11 setModalPresentationStyle:3];
      v17 = sgEventsLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(*(a1 + 32) + 8) event];
        v19 = [v18 loggingIdentifier];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_1B8182000, v17, OS_LOG_TYPE_DEFAULT, "Presenting suggested new event (%{public}@) view controller", &buf, 0xCu);
      }
    }

    v20 = [*(a1 + 32) suggestionDelegate];
    [v20 presentViewController:v11];
  }
}

void __44__SGEventSuggestion_suggestionPrimaryAction__block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  if (pthread_main_np())
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __44__SGEventSuggestion_suggestionPrimaryAction__block_invoke_2_20;
    v4[3] = &unk_1E7CD9198;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_sync(MEMORY[0x1E69E96A0], v4);
  }
}

void __44__SGEventSuggestion_suggestionPrimaryAction__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 8) event];
  (*(v1 + 16))(v1, v2);
}

void __44__SGEventSuggestion_suggestionPrimaryAction__block_invoke_34(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 40);
    v9 = 0;
    v6 = [v5 removeEvent:v4 span:0 error:&v9];
    v7 = v9;
    if ((v6 & 1) == 0)
    {
      v8 = sgLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v7;
        _os_log_error_impl(&dword_1B8182000, v8, OS_LOG_TYPE_ERROR, "Error: error removing event: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  [objc_opt_class() confirm:1 event:*(*(a1 + 48) + 8) completion:0];
  [*(a1 + 48) _dismissViewController:*(a1 + 56) retainBanner:0];
}

- (id)suggestionAttributedSubtitle
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(SGRealtimeEvent *)self->super._realtimeEvent state]== 3)
  {
    v3 = objc_alloc(MEMORY[0x1E696AAB0]);
    suggestionSubtitle = [(SGEventSuggestionBase *)self suggestionSubtitle];
    v8 = *MEMORY[0x1E69DB6B8];
    v9[0] = &unk_1F30163E8;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [v3 initWithString:suggestionSubtitle attributes:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end