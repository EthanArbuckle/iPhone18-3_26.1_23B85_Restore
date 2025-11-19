@interface SGSuggestionPresenter
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (NSArray)suggestions;
- (SGBannerProtocol)banner;
- (SGSuggestionPresenter)init;
- (SGSuggestionPresenterDelegate)delegate;
- (id)_presentedControllerCancelButtonItem;
- (id)_presentedControllerDoneButtonItem;
- (id)_presentingViewController;
- (id)_sortSuggestionByCategoryUsing:(id)a3;
- (id)_viewControllerForPresentingFromBanner;
- (id)icsPreviewControllerForData:(id)a3 andEventStore:(id)a4;
- (id)tableViewController;
- (int64_t)_bannerAccessoryType;
- (void)_bannerPrimaryAction;
- (void)_dismissViewControllerAnimated:(BOOL)a3;
- (void)_filterSuggestions;
- (void)_listDidChangeNotification:(id)a3;
- (void)_presentModalViewController:(id)a3 fromSourceView:(id)a4;
- (void)_presentModalViewControllerFromButton:(id)a3;
- (void)_removeBanner;
- (void)_restoreSuggestions;
- (void)_updateBanner;
- (void)addSuggestion:(id)a3;
- (void)dealloc;
- (void)dismissAllSuggestions;
- (void)dismissICSPreviewController:(id)a3;
- (void)dismissViewController:(id)a3;
- (void)presentViewController:(id)a3;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)reloadSuggestionsFromSearchableItems;
- (void)removeSuggestion:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setSuggestions:(id)a3;
- (void)setWantsToShowBanner:(BOOL)a3;
- (void)suggestion:(id)a3 actionFinished:(BOOL)a4;
- (void)suggestionBatchDismissal;
- (void)suggestionWasUpdated:(id)a3;
@end

@implementation SGSuggestionPresenter

- (SGSuggestionPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v8 = a3;
  v4 = [(SGSuggestionPresenter *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SGSuggestionPresenter *)self delegate];
    v7 = [v8 presentedViewController];
    [v6 suggestionPresenter:self didDismissViewController:v7];
  }
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v4 = a3;
  v5 = [(SGSuggestionPresenter *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SGSuggestionPresenter *)self delegate];
    v8 = [v4 presentedViewController];
    [v7 suggestionPresenter:self willDismissViewController:v8];
  }

  return 1;
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v10 = [a3 presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v10 topViewController];

    v10 = v7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4 == -1 || a4 == 7)
    {
      v8 = [v10 navigationItem];
      [v8 setRightBarButtonItem:0];
    }

    else
    {
      v8 = [(SGSuggestionPresenter *)self _presentedControllerDoneButtonItem];
      v9 = [v10 navigationItem];
      [v9 setRightBarButtonItem:v8];
    }
  }
}

- (id)_presentedControllerCancelButtonItem
{
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__dismissPresentedViewController_];

  return v2;
}

- (id)_presentedControllerDoneButtonItem
{
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismissPresentedViewController_];

  return v2;
}

- (void)_dismissViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIViewController *)self->_presentedViewController presentingViewController];
  if (v5)
  {
    v6 = [(SGSuggestionPresenter *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(SGSuggestionPresenter *)self delegate];
      [v8 suggestionPresenter:self willDismissViewController:self->_presentedViewController];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__SGSuggestionPresenter__dismissViewControllerAnimated___block_invoke;
    v9[3] = &unk_1E7CD96B8;
    v9[4] = self;
    [v5 dismissViewControllerAnimated:v3 completion:v9];
  }
}

void __56__SGSuggestionPresenter__dismissViewControllerAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 suggestionPresenter:*(a1 + 32) didDismissViewController:*(*(a1 + 32) + 32)];
  }
}

- (void)_presentModalViewController:(id)a3 fromSourceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
      v9 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
      v10 = [v8 view];
      [v10 setBackgroundColor:v9];

      v11 = NSClassFromString(&cfstr_Remremindercre.isa);
      v12 = NSClassFromString(&cfstr_Pkaddpassesvie.isa);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      if (v11 && (objc_opt_isKindOfClass() & 1) != 0 || v12 && (objc_opt_isKindOfClass() & 1) != 0 || [v14 containsString:@"SwiftUI"] && objc_msgSend(v14, "containsString:", @"FinanceKitUI") && objc_msgSend(v14, "containsString:", @"OrderImportPreview"))
      {
        [v8 setNavigationBarHidden:1];
      }

      v6 = v8;
    }

    [v8 setModalPresentationStyle:7];
  }

  objc_storeStrong(&self->_presentedViewController, v6);
  v15 = [v6 popoverPresentationController];
  [v15 setDelegate:self];
  if (!v7)
  {
    v7 = [(SGSuggestionPresenter *)self banner];
  }

  [v15 setSourceView:v7];
  v16 = [(SGSuggestionPresenter *)self banner];
  [v16 popoverSourceRect];
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v7 actionButtonLeadingEdgeOffset];
  [v15 setSourceRect:{v20 - v23, v18, v20, v22}];
  v24 = [(SGSuggestionPresenter *)self delegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = [(SGSuggestionPresenter *)self delegate];
    [v26 suggestionPresenter:self willPresentViewController:v6];
  }

  v27 = [(SGSuggestionPresenter *)self _presentingViewController];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __68__SGSuggestionPresenter__presentModalViewController_fromSourceView___block_invoke;
  v29[3] = &unk_1E7CD9668;
  v29[4] = self;
  v30 = v6;
  v28 = v6;
  [v27 presentViewController:v28 animated:1 completion:v29];
}

void __68__SGSuggestionPresenter__presentModalViewController_fromSourceView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 suggestionPresenter:*(a1 + 32) didPresentViewController:*(a1 + 40)];
  }
}

- (void)_presentModalViewControllerFromButton:(id)a3
{
  v4 = a3;
  v5 = [(SGSuggestionPresenter *)self banner];
  [(SGSuggestionPresenter *)self _presentModalViewController:v4 fromSourceView:v5];
}

- (id)_presentingViewController
{
  v3 = [(SGSuggestionPresenter *)self delegate];
  v4 = [v3 viewControllerForPresentingFromBannerByPresenter:self];

  return v4;
}

- (id)_viewControllerForPresentingFromBanner
{
  v3 = [(SGSuggestionPresenter *)self delegate];
  v4 = [v3 viewControllerForPresentingFromBannerByPresenter:self];

  return v4;
}

- (void)suggestionWasUpdated:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__SGSuggestionPresenter_suggestionWasUpdated___block_invoke;
  v6[3] = &unk_1E7CD9668;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  runOnMainThread(v6);
}

- (void)suggestion:(id)a3 actionFinished:(BOOL)a4
{
  if (a4)
  {
    [(SGSuggestionPresenter *)self removeSuggestion:a3];
  }
}

- (void)dismissViewController:(id)a3
{
  if (_suggestionViewControllerPresenter)
  {
    [_suggestionViewControllerPresenter dismissViewController:a3];
  }

  else
  {
    [(SGSuggestionPresenter *)self _dismissViewControllerAnimated:1];
  }
}

- (void)dismissICSPreviewController:(id)a3
{
  icsPreviewController = self->_icsPreviewController;
  if (icsPreviewController)
  {
    v5 = [(EKICSPreviewController *)icsPreviewController viewController];
    [(SGSuggestionPresenter *)self dismissViewController:v5];
  }
}

- (id)icsPreviewControllerForData:(id)a3 andEventStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v8 = getEKICSPreviewControllerClass_softClass;
  v19 = getEKICSPreviewControllerClass_softClass;
  if (!getEKICSPreviewControllerClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getEKICSPreviewControllerClass_block_invoke;
    v15[3] = &unk_1E7CD9710;
    v15[4] = &v16;
    __getEKICSPreviewControllerClass_block_invoke(v15);
    v8 = v17[3];
  }

  v9 = v8;
  _Block_object_dispose(&v16, 8);
  v10 = [[v8 alloc] initWithData:v6 eventStore:v7];
  icsPreviewController = self->_icsPreviewController;
  self->_icsPreviewController = v10;

  v12 = self->_icsPreviewController;
  v13 = v12;

  return v12;
}

- (void)presentViewController:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_suggestionViewControllerPresenter)
  {
    [_suggestionViewControllerPresenter presentViewController:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SGSuggestionPresenter *)self _presentedControllerCancelButtonItem];
      v8[0] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      v7 = [v4 navigationItem];
      [v7 setLeftBarButtonItems:v6];
    }

    [(SGSuggestionPresenter *)self _presentModalViewControllerFromButton:v4];
  }
}

- (void)_updateBanner
{
  v152 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  bannerPrimaryAction = self->_bannerPrimaryAction;
  self->_bannerPrimaryAction = 0;

  bannerDismissAction = self->_bannerDismissAction;
  self->_bannerDismissAction = 0;

  v7 = 0;
  if ([(SGList *)self->_suggestionStore count])
  {
    v8 = 0;
    do
    {
      v9 = [(SGList *)self->_suggestionStore objectAtIndexedSubscript:v8];
      v10 = [v9 count];

      if (v10)
      {
        ++v7;
      }

      ++v8;
    }

    while (v8 < [(SGList *)self->_suggestionStore count]);
  }

  v11 = sgLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349312;
    v149 = v7;
    v150 = 1024;
    v151 = v4 == 6;
    _os_log_impl(&dword_1B8182000, v11, OS_LOG_TYPE_DEFAULT, "SGSuggestionPresenter - Banner update initiated with %{public}lu item(s) Banner For Vision: %{BOOL}d", buf, 0x12u);
  }

  v12 = [(SGSuggestionPresenter *)self banner];
  [v12 setSuggestionStore:self->_suggestionStore];
  if (!v7)
  {
    goto LABEL_175;
  }

  v121 = v12;
  if (v7 != 1)
  {
    v20 = objc_opt_new();
    v21 = objc_opt_new();
    v22 = objc_opt_new();
    if ([(SGList *)self->_suggestionStore count])
    {
      v119 = v22;
      v122 = v21;
      v123 = 0;
      v23 = 0;
      v125 = 0;
      v127 = 0;
      v24 = 6;
      v129 = self;
      do
      {
        v25 = [(SGList *)self->_suggestionStore objectAtIndexedSubscript:v23];
        v26 = [v25 items];

        v27 = [(SGList *)self->_suggestionStore objectAtIndexedSubscript:v23];
        v28 = [v27 category];

        v29 = [v28 suggestionCategoryTitle];
        v30 = v20;
        [v20 addObject:v29];

        v31 = [v28 suggestionCategoryId];
        v32 = &unk_1F3016430;
        if (([v31 isEqualToString:@"com.apple.suggestions.SGContactSuggestion"] & 1) == 0)
        {
          v32 = &unk_1F3016448;
          if (([v31 isEqualToString:@"com.apple.suggestions.SGEventSuggestion"] & 1) == 0)
          {
            v32 = &unk_1F3016460;
            if (([v31 isEqualToString:@"com.apple.suggestions.SGReminderSuggestion"] & 1) == 0)
            {
              v32 = &unk_1F3016478;
              if (([v31 isEqualToString:@"com.apple.suggestions.SGRadarSuggestion"] & 1) == 0)
              {
                v33 = sgLogHandle();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_debug_impl(&dword_1B8182000, v33, OS_LOG_TYPE_DEBUG, "SGSuggestionPresenter: Encountered unknown suggestion type while determining banner subtitle", buf, 2u);
                }

                v32 = &unk_1F3016418;
              }
            }
          }
        }

        if (([v32 isEqual:&unk_1F3016418] & 1) == 0)
        {
          v34 = [v28 suggestionCategoryLocalizedCountOfItems:v26];
          [v122 setObject:v34 forKeyedSubscript:v32];

          v35 = [v28 suggestionCategoryImage];
          if (v35)
          {
            [v119 setObject:v35 forKeyedSubscript:v32];
          }

          if ((objc_opt_respondsToSelector() & 1) != 0 && !v125)
          {
            v125 = [v28 suggestionCategoryBackgroundVisualEffectView];
          }

          v36 = 0;
          if ((objc_opt_respondsToSelector() & 1) != 0 && v24 == 6)
          {
            v36 = [v28 suggestionCategoryActionButtonType];
          }

          if ((objc_opt_respondsToSelector() & 1) != 0 && !v123)
          {
            v123 = [v28 suggestionCategoryBackgroundColor];
          }

          if ((objc_opt_respondsToSelector() & 1) != 0 && !v127)
          {
            v127 = [v28 suggestionCategoryDivider];
          }

          if (objc_opt_respondsToSelector())
          {
            v37 = [v28 suggestionCategorySupportsBatchDismissal];
          }

          else
          {
            v37 = 0;
          }

          [v12 setSuggestionCategorySupportsBatchDismissal:v37];
          if ((objc_opt_respondsToSelector() & 1) != 0 && ([v28 suggestionCategoryIconSFSymbol], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v39 = v38;
            v138[0] = v38;
            v138[1] = v38;
            v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:2];
            [v121 setIconSFSymbols:v40];

            v12 = v121;
          }

          else
          {
            [v12 setIconSFSymbols:0];
          }

          v24 = v36;
        }

        ++v23;
        self = v129;
        v20 = v30;
      }

      while (v23 < [(SGList *)v129->_suggestionStore count]);
      if (v123)
      {
        [v12 setBackgroundColor:v123];
      }

      if (v127)
      {
        [v12 setBannerDivider:v127];
      }

      v21 = v122;
      if (v125)
      {
        [v12 setBackgroundVisualEffectView:?];
      }

      else
      {
        v125 = 0;
      }

      v22 = v119;
    }

    else
    {
      v125 = 0;
      v127 = 0;
      v123 = 0;
      v24 = 6;
    }

    v46 = [(SGSuggestionPresenter *)self _sortSuggestionByCategoryUsing:v22];
    [v12 setImages:v46];

    v47 = [(SGSuggestionPresenter *)self formatMixedCategoriesTitle:v20];
    [v12 setTitle:v47];

    [v12 setAttributedSubtitle:0];
    v48 = [(SGSuggestionPresenter *)self _sortSuggestionByCategoryUsing:v21];
    v49 = [(SGSuggestionPresenter *)self formatMixedCategoriesSubtitle:v48];
    [v12 setSubtitle:v49];

    [v12 setActionButtonType:v24];
    [v12 setAccessoryType:1];
    v50 = [(SGList *)self->_suggestionStore objectAtIndexedSubscript:0];
    v51 = [v50 items];
    v52 = [v51 firstObject];
    v53 = [v52 suggestionDelegate];
    [v121 setDelegate:v53];

    v12 = v121;
    v54 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
    v55 = [v54 localizedStringForKey:@"SuggestionsBannerButtonReview" value:&stru_1F3012140 table:0];
    [v121 setActionTitle:v55];

    v56 = v22;
    [v121 setSuggestion:0];
    v14 = v123;
    v57 = v125;
    goto LABEL_173;
  }

  v13 = [(SGList *)self->_suggestionStore objectAtIndexedSubscript:0];
  if ([v13 count])
  {
    if ([v13 count] == 1)
    {
      v14 = v13;
      v15 = [v13 objectAtIndexedSubscript:0];
      if (objc_opt_respondsToSelector())
      {
        v16 = [v15 suggestionBackgroundVisualEffectView];
        if (v16)
        {
          [v12 setBackgroundVisualEffectView:v16];
        }
      }

      if (objc_opt_respondsToSelector())
      {
        v17 = [v15 suggestionBackgroundColor];
        [v12 setBackgroundColor:v17];
      }

      if (objc_opt_respondsToSelector())
      {
        v18 = [v15 suggestionDivider];
        if (v18)
        {
          [v12 setBannerDivider:v18];
        }
      }

      if (objc_opt_respondsToSelector())
      {
        [v12 setActionButtonType:{objc_msgSend(v15, "suggestionActionButtonType")}];
        if ([v12 actionButtonType])
        {
          v19 = [v12 actionButtonType];
          if (v4 == 6)
          {
            goto LABEL_97;
          }

LABEL_94:
          if (v19 == 5)
          {
            goto LABEL_101;
          }

          goto LABEL_95;
        }

        if (v4 != 6)
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v4 != 6)
        {
          [v12 setActionButtonType:1];
          if (![v12 actionButtonType])
          {
            goto LABEL_101;
          }

          v19 = [v12 actionButtonType];
          goto LABEL_94;
        }

        [v12 setActionButtonType:2];
        if ([v12 actionButtonType])
        {
          [v12 actionButtonType];
        }
      }

LABEL_97:
      if (![v12 actionButtonType] || objc_msgSend(v12, "actionButtonType") == 5 || objc_msgSend(v12, "actionButtonType") == 3 || objc_msgSend(v12, "actionButtonType") == 4)
      {
LABEL_101:
        v70 = suggestionImage(v15);
        v71 = v70;
        if (v70)
        {
          v147 = v70;
          v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
          [v12 setImages:v72];
        }

        else
        {
          [v12 setImages:0];
        }

LABEL_105:
        v73 = suggestionImageSGView(v15);
        if (v73)
        {
          v74 = v73;
          v146 = v73;
          v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:1];
          [v12 setImageSGViews:v75];
        }

        else
        {
          v74 = 0;
          [v12 setImageSGViews:0];
        }

        v76 = [v15 suggestionTitle];
        [v12 setTitle:v76];

        v77 = v15;
        if (objc_opt_respondsToSelector())
        {
          v20 = [v77 suggestionAttributedSubtitle];

          if (v20)
          {
            [v12 setAttributedSubtitle:v20];
LABEL_116:
            v80 = [v77 suggestionPrimaryAction];
            v81 = self->_bannerPrimaryAction;
            self->_bannerPrimaryAction = v80;

            if (objc_opt_respondsToSelector())
            {
              v82 = [v77 suggestionDismissAction];
            }

            else
            {
              v82 = 0;
            }

            v83 = self->_bannerDismissAction;
            self->_bannerDismissAction = v82;

            if (objc_opt_respondsToSelector())
            {
              [v12 setProminentActionButton:{objc_msgSend(v77, "suggestionProminentActionButton")}];
            }

            if ((objc_opt_respondsToSelector() & 1) != 0 && ([v77 suggestionIconSFSymbol], (v84 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v21 = v84;
              v145 = v84;
              v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1];
              [v12 setIconSFSymbols:v85];
            }

            else
            {
              [v12 setIconSFSymbols:0];
              v21 = 0;
            }

            v86 = [(SGSuggestionAction *)self->_bannerPrimaryAction title];
            [v12 setActionTitle:v86];

            [v12 setAccessoryType:self->_bannerDismissAction != 0];
            [v12 setSuggestion:v77];
            v87 = [v77 suggestionDelegate];
            [v12 setDelegate:v87];

            v127 = v77;
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              v57 = v74;
LABEL_174:

LABEL_175:
              [v12 reload];
              [(SGSuggestionPresenter *)self setWantsToShowBanner:v7 != 0];
              goto LABEL_176;
            }

            v56 = [v77 suggestionFeedbackAction];
            [v12 setFeedbackAction:v56];
            v57 = v74;
LABEL_173:

            goto LABEL_174;
          }
        }

        else
        {
        }

        v78 = v77;
        if (objc_opt_respondsToSelector())
        {
          v79 = [v78 suggestionSubtitle];
        }

        else
        {
          v79 = 0;
        }

        [v12 setSubtitle:v79];
        v20 = 0;
        goto LABEL_116;
      }

LABEL_95:
      [v12 setImages:0];
      goto LABEL_105;
    }

    v41 = [v13 items];
    v124 = v13;
    v42 = [v13 category];
    v43 = objc_opt_new();
    v21 = objc_opt_new();
    v44 = v43;
    v126 = v42;
    if (objc_opt_respondsToSelector())
    {
      v128 = [v42 suggestionCategoryCoalesceImages];
      if (v128)
      {
        v45 = 1;
      }

      else
      {
        v45 = 2;
      }
    }

    else
    {
      LOBYTE(v128) = 0;
      v45 = 2;
    }

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v58 = v41;
    v59 = [v58 countByEnumeratingWithState:&v134 objects:v144 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v135;
LABEL_80:
      v62 = 0;
      while (1)
      {
        if (*v135 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v134 + 1) + 8 * v62);
        if ([v44 count] == v45)
        {
          break;
        }

        v64 = suggestionImage(v63);
        if (v64)
        {
          [v44 addObject:v64];
        }

        if (v60 == ++v62)
        {
          v60 = [v58 countByEnumeratingWithState:&v134 objects:v144 count:16];
          if (v60)
          {
            goto LABEL_80;
          }

          break;
        }
      }
    }

    if ([v44 count] >= v45)
    {
      v68 = v121;
      [v121 setImages:v44];
      v69 = v126;
    }

    else
    {
      v65 = [v126 suggestionCategoryImage];
      v66 = v65;
      if (v65)
      {
        v143[0] = v65;
        v143[1] = v65;
        v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:2];
        v68 = v121;
        [v121 setImages:v67];
      }

      else
      {
        v68 = v121;
        [v121 setImages:0];
      }

      v69 = v126;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v69 suggestionCategoryIconSFSymbol], (v88 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v142[0] = v88;
      v142[1] = v88;
      v120 = v88;
      v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:2];
      [v68 setIconSFSymbols:v89];
    }

    else
    {
      [v68 setIconSFSymbols:0];
      v120 = 0;
    }

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v90 = v58;
    v91 = [v90 countByEnumeratingWithState:&v130 objects:v141 count:16];
    if (v91)
    {
      v92 = v91;
      v93 = *v131;
LABEL_136:
      v94 = 0;
      while (1)
      {
        if (*v131 != v93)
        {
          objc_enumerationMutation(v90);
        }

        v95 = *(*(&v130 + 1) + 8 * v94);
        if ([v21 count] == v45)
        {
          break;
        }

        v96 = suggestionImageSGView(v95);
        if (v96)
        {
          [v21 addObject:v96];
        }

        if (v92 == ++v94)
        {
          v92 = [v90 countByEnumeratingWithState:&v130 objects:v141 count:16];
          if (v92)
          {
            goto LABEL_136;
          }

          break;
        }
      }
    }

    if ([v21 count] >= v45)
    {
      v12 = v121;
      [v121 setImageSGViews:v21];
      v97 = v126;
      goto LABEL_154;
    }

    v97 = v126;
    v12 = v121;
    if (objc_opt_respondsToSelector())
    {
      v98 = [v126 suggestionCategoryImageSGView];
      v99 = v98;
      if (v128)
      {
        if (v98)
        {
          v140 = v98;
          v100 = MEMORY[0x1E695DEC8];
          v101 = &v140;
          v102 = 1;
LABEL_153:
          v103 = [v100 arrayWithObjects:v101 count:v102];
          [v121 setImageSGViews:v103];

          v97 = v126;
LABEL_154:
          v104 = [v124 list];
          if (v104 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            suggestionCategoryList = self->_suggestionCategoryList;
            v106 = [v104 suggestionListTitle];
            [(SGSuggestionCategoryList *)suggestionCategoryList setListTitle:v106];

            v97 = v126;
          }

          v107 = [v97 suggestionCategoryTitleForItems:v90];
          [v12 setTitle:v107];

          [v12 setAttributedSubtitle:0];
          v108 = [v97 suggestionCategorySubtitleForItems:v90];
          [v12 setSubtitle:v108];

          [v12 setAccessoryType:{-[SGSuggestionPresenter _bannerAccessoryType](self, "_bannerAccessoryType")}];
          v127 = v90;
          v109 = [v90 firstObject];
          v110 = [v109 suggestionDelegate];
          [v12 setDelegate:v110];

          v111 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
          v112 = [v111 localizedStringForKey:@"SuggestionsBannerButtonReview" value:&stru_1F3012140 table:0];
          [v12 setActionTitle:v112];

          v57 = v126;
          [v12 setSuggestion:0];
          v113 = objc_opt_respondsToSelector();
          v114 = 0;
          v20 = v44;
          if (v113)
          {
            v114 = [v126 suggestionCategoryActionButtonType];
          }

          [v12 setActionButtonType:v114];
          v14 = v124;
          v56 = v120;
          if (objc_opt_respondsToSelector())
          {
            v115 = [v126 suggestionCategoryBackgroundVisualEffectView];
            if (v115)
            {
              [v12 setBackgroundVisualEffectView:v115];
            }
          }

          if (objc_opt_respondsToSelector())
          {
            v116 = [v126 suggestionCategoryBackgroundColor];
            [v12 setBackgroundColor:v116];
          }

          if (objc_opt_respondsToSelector())
          {
            v117 = [v126 suggestionCategoryDivider];
            if (v117)
            {
              [v12 setBannerDivider:v117];
            }
          }

          if (objc_opt_respondsToSelector())
          {
            v118 = [v126 suggestionCategorySupportsBatchDismissal];
          }

          else
          {
            v118 = 0;
          }

          [v12 setSuggestionCategorySupportsBatchDismissal:v118];

          goto LABEL_173;
        }
      }

      else if (v98)
      {
        v139[0] = v98;
        v139[1] = v98;
        v100 = MEMORY[0x1E695DEC8];
        v101 = v139;
        v102 = 2;
        goto LABEL_153;
      }
    }

    [v121 setImageSGViews:0];
    goto LABEL_154;
  }

LABEL_176:
}

- (int64_t)_bannerAccessoryType
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(SGSuggestionStore *)self->_suggestionStore suggestions];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 suggestionCategory];
        v9 = [v8 suggestionCategoryId];

        if ([v9 isEqualToString:@"com.apple.suggestions.SGEventSuggestion"])
        {
          v10 = getRealtimeSuggestion(v7);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_16;
          }

          v10 = v10;
          if ([v10 state] != 4 && objc_msgSend(v10, "state") != 5)
          {

LABEL_16:
LABEL_17:

            v11 = 1;
            goto LABEL_18;
          }
        }

        else if ([v9 isEqualToString:@"CKCollaborationNoticeSuggestion"])
        {
          goto LABEL_17;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (id)_sortSuggestionByCategoryUsing:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  for (i = 0; i != 5; ++i)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    v7 = [v3 objectForKey:v6];

    if (v7)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
      v9 = [v3 objectForKey:v8];
      [v4 addObject:v9];
    }
  }

  return v4;
}

- (void)_restoreSuggestions
{
  v13 = *MEMORY[0x1E69E9840];
  if (![(SGSuggestionStore *)self->_suggestionStore hostApp]&& ![(SGList *)self->_suggestionStore count]&& [(NSMutableArray *)self->_filteredSuggestions count])
  {
    [(SGSuggestionPresenter *)self _removeBanner];
    [(SGSuggestionPresenter *)self setWantsToShowBanner:0];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_filteredSuggestions;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(SGSuggestionPresenter *)self addSuggestion:*(*(&v8 + 1) + 8 * v7++), v8];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(NSMutableArray *)self->_filteredSuggestions removeAllObjects];
  }
}

- (void)_filterSuggestions
{
  v28 = *MEMORY[0x1E69E9840];
  if (![(SGSuggestionStore *)self->_suggestionStore hostApp])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = [(SGList *)self->_suggestionStore items];
    v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (!v4)
    {
LABEL_23:

      return;
    }

    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v22 + 1) + 8 * i) count])
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);

    if (v6 >= 2)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v3 = [(SGSuggestionStore *)self->_suggestionStore suggestions];
      v9 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          for (j = 0; j != v10; ++j)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v3);
            }

            v13 = *(*(&v18 + 1) + 8 * j);
            v14 = [v13 suggestionCategory];
            v15 = [v14 suggestionCategoryId];

            v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
            v17 = [v16 localizedStringForKey:@"SuggestionsCategorySubscriptions" value:&stru_1F3012140 table:0];

            if (v17 && ([v15 isEqualToString:v17] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"Subscriptions"))
            {
              [(SGSuggestionPresenter *)self _removeBanner];
              [(SGSuggestionPresenter *)self setWantsToShowBanner:0];
              [(SGSuggestionPresenter *)self removeSuggestion:v13];
            }
          }

          v10 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v10);
      }

      goto LABEL_23;
    }
  }
}

- (void)_removeBanner
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 suggestionPresenterWantsToHideBanner:self];
  }
}

- (void)reloadSuggestionsFromSearchableItems
{
  v3 = [(SGSuggestionPresenter *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SGSuggestionPresenter *)self delegate];
    [v5 reloadSuggestionsFromSearchableItems];
  }
}

- (id)tableViewController
{
  v3 = [_TtC17CoreSuggestionsUI27SGSuggestionTableController alloc];
  suggestionStore = self->_suggestionStore;
  v5 = [(SGSuggestionPresenter *)self delegate];
  v6 = [(SGSuggestionTableController *)v3 initWithStore:suggestionStore delegate:v5 suggestionPresenter:self suggestionList:self->_suggestionCategoryList];

  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  v8 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  v9 = [v7 view];
  [v9 setBackgroundColor:v8];

  [v7 setModalPresentationStyle:7];
  objc_storeStrong(&self->_presentedViewController, v7);

  return v7;
}

- (void)dismissAllSuggestions
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__SGSuggestionPresenter_dismissAllSuggestions__block_invoke;
  v2[3] = &unk_1E7CD96B8;
  v2[4] = self;
  runOnMainThread(v2);
}

- (void)suggestionBatchDismissal
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(SGSuggestionPresenter *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SGSuggestionPresenter *)self suggestions];
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = [v5 count];
      _os_log_impl(&dword_1B8182000, v6, OS_LOG_TYPE_DEFAULT, "SGSuggestionPresenter: Delegate method called to dismiss all suggestions (Suggestions to dismiss: %lu)", &v8, 0xCu);
    }

    v7 = [(SGSuggestionPresenter *)self delegate];
    [v7 suggestionPresenterDismissAllSuggestions:v5];
  }
}

- (void)_bannerPrimaryAction
{
  bannerPrimaryAction = self->_bannerPrimaryAction;
  if (bannerPrimaryAction)
  {
    [(SGSuggestionAction *)bannerPrimaryAction execute];
  }
}

- (void)setWantsToShowBanner:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"No";
    if (v3)
    {
      v6 = @"Yes";
    }

    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_1B8182000, v5, OS_LOG_TYPE_DEFAULT, "SGSuggestionPresenter - Show banner: (%{public}@)", buf, 0xCu);
  }

  if (self->_wantsToShowBanner != v3 || self->_forceUpdate)
  {
    self->_wantsToShowBanner = v3;
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = objc_loadWeakRetained(&self->_delegate);
        [v9 suggestionPresenterWantsToShowBanner:self];
      }
    }

    else
    {
      v10 = dispatch_time(0, 200000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46__SGSuggestionPresenter_setWantsToShowBanner___block_invoke;
      block[3] = &unk_1E7CD96B8;
      block[4] = self;
      dispatch_after(v10, MEMORY[0x1E69E96A0], block);
    }

    self->_forceUpdate = 0;
  }
}

uint64_t __46__SGSuggestionPresenter_setWantsToShowBanner___block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 88) & 1) == 0)
  {
    v3 = result;
    WeakRetained = objc_loadWeakRetained((v2 + 96));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(v3 + 32) + 96));
      [v6 suggestionPresenterWantsToHideBanner:*(v3 + 32)];
    }

    v7 = *(v3 + 32);

    return [v7 _dismissViewControllerAnimated:1];
  }

  return result;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != v4)
  {
    v6 = objc_storeWeak(&self->_delegate, v4);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      v9 = [v8 suggestionCategoryComparatorForManager:self];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __37__SGSuggestionPresenter_setDelegate___block_invoke;
      aBlock[3] = &unk_1E7CD9690;
      v13 = v9;
      v10 = v9;
      v11 = _Block_copy(aBlock);
    }

    else
    {
      v11 = 0;
    }

    [(SGList *)self->_suggestionStore setComparator:v11];
  }
}

uint64_t __37__SGSuggestionPresenter_setDelegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 category];
  v7 = [v5 category];

  v8 = (*(v4 + 16))(v4, v6, v7);
  return v8;
}

- (SGBannerProtocol)banner
{
  banner = self->_banner;
  if (!banner)
  {
    v4 = objc_opt_new();
    v5 = self->_banner;
    self->_banner = v4;

    banner = self->_banner;
  }

  return banner;
}

- (void)removeSuggestion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__SGSuggestionPresenter_removeSuggestion___block_invoke;
  v6[3] = &unk_1E7CD9668;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  runOnMainThread(v6);
}

- (void)addSuggestion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__SGSuggestionPresenter_addSuggestion___block_invoke;
  v6[3] = &unk_1E7CD9668;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  runOnMainThread(v6);
}

- (void)setSuggestions:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__SGSuggestionPresenter_setSuggestions___block_invoke;
    v5[3] = &unk_1E7CD9668;
    v5[4] = self;
    v6 = v4;
    runOnMainThread(v5);
  }

  else
  {
    [(SGList *)self->_suggestionStore removeAllItems];
  }
}

void __40__SGSuggestionPresenter_setSuggestions___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) setSuggestions:*(a1 + 40)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(*(a1 + 32) + 32);
    v2 = [v4 viewControllers];
    v3 = [v2 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 updateWithSuggestionStore:*(*(a1 + 32) + 40)];
    }
  }
}

- (NSArray)suggestions
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__994;
  v9 = __Block_byref_object_dispose__995;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__SGSuggestionPresenter_suggestions__block_invoke;
  v4[3] = &unk_1E7CD9640;
  v4[4] = self;
  v4[5] = &v5;
  runOnMainThreadSync(v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __36__SGSuggestionPresenter_suggestions__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 40) suggestions];

  return MEMORY[0x1EEE66BB8]();
}

- (void)_listDidChangeNotification:(id)a3
{
  v26 = a3;
  v4 = [v26 object];
  v5 = v4;
  suggestionStore = self->_suggestionStore;
  if (v4 == suggestionStore)
  {

    v9 = v26;
  }

  else
  {
    v7 = [v26 object];
    v8 = [(SGList *)suggestionStore indexOfItem:v7];

    v9 = v26;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_21;
    }
  }

  v10 = [v9 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"SGListNotificationKeyItemUpdated"];

  if (v11)
  {
    [(SGSuggestionPresenter *)self reloadSuggestionsFromSearchableItems];
  }

  v12 = [v26 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"SGListNotificationKeyItemAdded"];

  if (v13)
  {
    if ([(SGList *)self->_suggestionStore count]== 1)
    {
      banner = self->_banner;
      if (banner)
      {
        [(SGBannerProtocol *)banner invalidateBannerView];
      }
    }

    [(SGSuggestionPresenter *)self _filterSuggestions];
  }

  v15 = [v26 userInfo];
  v16 = [v15 objectForKeyedSubscript:@"SGListNotificationKeyItemRemoved"];

  if (v16)
  {
    [(SGSuggestionPresenter *)self _restoreSuggestions];
    if ([(SGList *)self->_suggestionStore count])
    {
      [(SGSuggestionPresenter *)self reloadSuggestionsFromSearchableItems];
      if ([(SGList *)self->_suggestionStore count]== 1)
      {
        v17 = self->_banner;
        if (v17)
        {
          [(SGBannerProtocol *)v17 invalidateBannerView];
        }
      }
    }
  }

  v18 = [(SGSuggestionStore *)self->_suggestionStore suggestions];
  v19 = [v18 count];
  currentSuggestionsCount = self->_currentSuggestionsCount;

  if (v19 != currentSuggestionsCount)
  {
    v21 = [(SGSuggestionStore *)self->_suggestionStore suggestions];
    self->_currentSuggestionsCount = [v21 count];

    self->_forceUpdate = 1;
    v22 = self->_banner;
    if (v22)
    {
      [(SGBannerProtocol *)v22 invalidateBannerView];
    }
  }

  [(SGSuggestionPresenter *)self _updateBanner];
  v9 = v26;
LABEL_21:
  v23 = [v9 object];
  if (v23)
  {
  }

  else
  {
    v24 = [v26 userInfo];
    v25 = [v24 objectForKeyedSubscript:@"SGListNotificationKeyChangedReorientation"];

    if (v25 && [(SGList *)self->_suggestionStore count])
    {
      self->_forceUpdate = 1;
      [(SGSuggestionPresenter *)self _updateBanner];
    }
  }
}

- (SGSuggestionPresenter)init
{
  v12.receiver = self;
  v12.super_class = SGSuggestionPresenter;
  v2 = [(SGSuggestionPresenter *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    suggestionStore = v2->_suggestionStore;
    v2->_suggestionStore = v3;

    [(SGSuggestionStore *)v2->_suggestionStore setSuggestionDelegate:v2];
    v5 = objc_opt_new();
    filteredSuggestions = v2->_filteredSuggestions;
    v2->_filteredSuggestions = v5;

    v7 = objc_opt_new();
    suggestionCategoryList = v2->_suggestionCategoryList;
    v2->_suggestionCategoryList = v7;

    v2->_currentSuggestionsCount = 0;
    v2->_forceUpdate = 0;
    icsPreviewController = v2->_icsPreviewController;
    v2->_icsPreviewController = 0;

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v2 selector:sel__listDidChangeNotification_ name:@"com.apple.coresuggestionsui.SGListDidChangeNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SGSuggestionPresenter;
  [(SGSuggestionPresenter *)&v4 dealloc];
}

@end