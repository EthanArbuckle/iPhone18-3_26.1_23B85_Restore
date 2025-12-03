@interface SUUIComposeReviewViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (SUUIComposeReviewViewController)init;
- (SUUIReviewMetadata)editedReviewMetadata;
- (void)_attemptReviewSubmission;
- (void)_finishLoadWithOutput:(id)output error:(id)error;
- (void)_loadReviewWithURL:(id)l completionBlock:(id)block;
- (void)_promptForNickname;
- (void)_promptForNicknameWithAlert;
- (void)_sendDidCancel;
- (void)_sendDidSubmit;
- (void)_setNickname:(id)nickname;
- (void)_setNicknameShouldResetOnError:(BOOL)error;
- (void)composeReviewFormDidSubmit:(id)submit;
- (void)composeReviewNicknameDidCancel:(id)cancel;
- (void)composeReviewNicknameDidConfirm:(id)confirm nickname:(id)nickname;
- (void)dealloc;
- (void)loadReviewWithURL:(id)l completionBlock:(id)block;
- (void)submitReview;
@end

@implementation SUUIComposeReviewViewController

- (SUUIComposeReviewViewController)init
{
  v3 = objc_alloc_init(MEMORY[0x277D7FE40]);
  v4 = MEMORY[0x277D7FDD8];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  v6 = [v4 gradientWithColor:systemBackgroundColor];
  [v3 setBackgroundGradient:v6];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"WRITE_A_REVIEW" value:&stru_286AECDE0 table:0];
  [v3 setTitle:v8];

  v18.receiver = self;
  v18.super_class = SUUIComposeReviewViewController;
  v9 = [(SUNavigationController *)&v18 initWithRootViewController:v3];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placeholderViewController, v3);
    v11 = objc_alloc_init(MEMORY[0x277D751E0]);
    [v11 setAction:sel__cancelAction_];
    [v11 setTarget:v10];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_286AECDE0 table:0];
    [v11 setTitle:v13];

    navigationItem = [(SUPlaceholderViewController *)v10->_placeholderViewController navigationItem];
    [navigationItem setLeftBarButtonItem:v11];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [(SUUIComposeReviewViewController *)v10 setModalPresentationStyle:2];
    }
  }

  return v10;
}

- (void)dealloc
{
  [(SUUIComposeReviewFormViewController *)self->_formViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIComposeReviewViewController;
  [(SUNavigationController *)&v3 dealloc];
}

- (SUUIReviewMetadata)editedReviewMetadata
{
  editedReviewMetadata = [(SUUIComposeReviewFormViewController *)self->_formViewController editedReviewMetadata];
  v4 = editedReviewMetadata;
  if (self->_nickname)
  {
    [editedReviewMetadata setNickname:?];
  }

  return v4;
}

- (void)loadReviewWithURL:(id)l completionBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  v7 = blockCopy;
  if (lCopy)
  {
    [(SUUIComposeReviewViewController *)self _loadReviewWithURL:lCopy completionBlock:blockCopy];
  }

  else if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 0, 0);
  }
}

- (void)submitReview
{
  v3 = *MEMORY[0x277D767B0];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__SUUIComposeReviewViewController_submitReview__block_invoke;
  v20[3] = &__block_descriptor_40_e5_v8__0l;
  v20[4] = v3;
  v7 = [mEMORY[0x277D75128] beginBackgroundTaskWithName:v6 expirationHandler:v20];

  v8 = [SUUIPostReviewOperation alloc];
  editedReviewMetadata = [(SUUIComposeReviewViewController *)self editedReviewMetadata];
  v10 = [(SUUIPostReviewOperation *)v8 initWithReviewMetadata:editedReviewMetadata];

  objc_initWeak(&location, v10);
  objc_initWeak(&from, self);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __47__SUUIComposeReviewViewController_submitReview__block_invoke_2;
  v15 = &unk_2798F85B0;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(v17, &from);
  v17[1] = v7;
  [(SUUIPostReviewOperation *)v10 setCompletionBlock:&v12];
  mainQueue = [MEMORY[0x277D7FD20] mainQueue];
  [mainQueue addOperation:v10];

  objc_destroyWeak(v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __47__SUUIComposeReviewViewController_submitReview__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 endBackgroundTask:*(a1 + 32)];
}

void __47__SUUIComposeReviewViewController_submitReview__block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SUUIComposeReviewViewController_submitReview__block_invoke_3;
  block[3] = &unk_2798F8588;
  v5 = WeakRetained;
  v3 = WeakRetained;
  objc_copyWeak(v6, a1 + 5);
  v6[1] = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v6);
}

void __47__SUUIComposeReviewViewController_submitReview__block_invoke_3(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  v24 = [*(a1 + 32) responseDictionary];
  if (([*v1 success] & 1) == 0 && v24)
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = [objc_alloc(MEMORY[0x277D69A88]) initWithResponseDictionary:v24];
    obj = [v23 actions];
    v2 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v2)
    {
      v3 = *v35;
      v4 = *MEMORY[0x277D6A570];
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v35 != v3)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v34 + 1) + 8 * i);
          v7 = [v6 actionType];
          v8 = [v7 isEqualToString:v4];

          if (v8)
          {
            v22 = [v6 dialog];
            v9 = MEMORY[0x277D75110];
            v10 = [v22 title];
            v11 = [v22 message];
            v12 = [v9 alertControllerWithTitle:v10 message:v11 preferredStyle:1];

            [v22 buttons];
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v26 = v31 = 0u;
            v13 = [v26 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v13)
            {
              v14 = *v31;
              v15 = MEMORY[0x277D85DD0];
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v31 != v14)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v17 = MEMORY[0x277D750F8];
                  v18 = [*(*(&v30 + 1) + 8 * j) buttonTitle];
                  v28[0] = v15;
                  v28[1] = 3221225472;
                  v28[2] = __47__SUUIComposeReviewViewController_submitReview__block_invoke_4;
                  v28[3] = &unk_2798F6990;
                  objc_copyWeak(&v29, (a1 + 40));
                  v19 = [v17 actionWithTitle:v18 style:0 handler:v28];

                  [v12 addAction:v19];
                  objc_destroyWeak(&v29);
                }

                v13 = [v26 countByEnumeratingWithState:&v30 objects:v38 count:16];
              }

              while (v13);
            }

            WeakRetained = objc_loadWeakRetained((a1 + 40));
            [WeakRetained presentViewController:v12 animated:1 completion:0];

            goto LABEL_21;
          }
        }

        v2 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }
  }

  v23 = objc_loadWeakRetained((a1 + 40));
  [v23 _sendDidSubmit];
LABEL_21:

  if (*(a1 + 48) != *MEMORY[0x277D767B0])
  {
    v21 = [MEMORY[0x277D75128] sharedApplication];
    [v21 endBackgroundTask:*(a1 + 48)];
  }
}

void __47__SUUIComposeReviewViewController_submitReview__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setNicknameShouldResetOnError:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _setNickname:0];
}

- (void)composeReviewFormDidSubmit:(id)submit
{
  editedReviewMetadata = [(SUUIComposeReviewViewController *)self editedReviewMetadata];
  nickname = [editedReviewMetadata nickname];
  if (nickname && (v5 = nickname, [editedReviewMetadata nickname], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v5, v7))
  {
    [(SUUIComposeReviewViewController *)self _attemptReviewSubmission];
  }

  else
  {
    [(SUUIComposeReviewViewController *)self _promptForNickname];
  }
}

- (void)composeReviewNicknameDidCancel:(id)cancel
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self->_formViewController;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [(SUUIComposeReviewViewController *)self setViewControllers:v4 animated:1];
}

- (void)composeReviewNicknameDidConfirm:(id)confirm nickname:(id)nickname
{
  nicknameCopy = nickname;
  if ([nicknameCopy length])
  {
    [(SUUIComposeReviewViewController *)self _setNickname:nicknameCopy];
    [(SUUIComposeReviewViewController *)self _setNicknameShouldResetOnError:1];
    [(SUUIComposeReviewViewController *)self _attemptReviewSubmission];
  }

  else
  {
    [(SUUIComposeReviewViewController *)self _promptForNickname];
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  text = [field text];
  v11 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  -[UIAlertAction setEnabled:](self->_nicknameOKAction, "setEnabled:", [v11 length] != 0);
  return 1;
}

- (void)_attemptReviewSubmission
{
  editedReviewMetadata = [(SUUIComposeReviewViewController *)self editedReviewMetadata];
  delegate = [(SUUIComposeReviewViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [delegate composeReviewViewController:self shouldSubmitReview:editedReviewMetadata])
  {
    [(SUUIComposeReviewViewController *)self submitReview];
  }
}

- (void)_promptForNickname
{
  v7[2] = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v3 = objc_alloc_init(SUUIComposeReviewNicknameViewController);
    nicknameViewController = self->_nicknameViewController;
    self->_nicknameViewController = v3;

    [(SUUIComposeReviewNicknameViewController *)self->_nicknameViewController setDelegate:self];
    v5 = self->_nicknameViewController;
    v7[0] = self->_formViewController;
    v7[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
    [(SUUIComposeReviewViewController *)self setViewControllers:v6 animated:1];
  }

  else
  {

    [(SUUIComposeReviewViewController *)self _promptForNicknameWithAlert];
  }
}

- (void)_promptForNicknameWithAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"NICKNAME_ALERT_TITLE" value:&stru_286AECDE0 table:0];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"NICKNAME_ALERT_MESSAGE" value:&stru_286AECDE0 table:0];
  v8 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__SUUIComposeReviewViewController__promptForNicknameWithAlert__block_invoke;
  v25[3] = &unk_2798F85D8;
  v25[4] = self;
  [v8 addTextFieldWithConfigurationHandler:v25];
  v9 = MEMORY[0x277D750F8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CANCEL" value:&stru_286AECDE0 table:0];
  v12 = [v9 actionWithTitle:v11 style:1 handler:0];
  [v8 addAction:v12];

  objc_initWeak(&location, self);
  v13 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"OK" value:&stru_286AECDE0 table:0];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __62__SUUIComposeReviewViewController__promptForNicknameWithAlert__block_invoke_2;
  v21 = &unk_2798F8600;
  objc_copyWeak(&v23, &location);
  v16 = v8;
  v22 = v16;
  v17 = [v13 actionWithTitle:v15 style:0 handler:&v18];

  [v17 setEnabled:{0, v18, v19, v20, v21}];
  [v16 addAction:v17];
  [v16 setPreferredAction:v17];
  objc_storeStrong(&self->_nicknameOKAction, v17);
  [(SUUIComposeReviewViewController *)self presentViewController:v16 animated:1 completion:0];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __62__SUUIComposeReviewViewController__promptForNicknameWithAlert__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCA8D8];
  v6 = a2;
  v4 = [v3 bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"NICKNAME_ALERT_PLACEHOLDER" value:&stru_286AECDE0 table:0];
  [v6 setPlaceholder:v5];

  [v6 setDelegate:*(a1 + 32)];
}

void __62__SUUIComposeReviewViewController__promptForNicknameWithAlert__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 firstObject];
  v4 = [v3 text];

  if ([v4 length])
  {
    [WeakRetained _setNickname:v4];
    [WeakRetained _setNicknameShouldResetOnError:1];
    [WeakRetained _attemptReviewSubmission];
  }

  else
  {
    [WeakRetained _promptForNickname];
  }
}

- (void)_setNickname:(id)nickname
{
  nicknameCopy = nickname;
  if (![(NSString *)self->_nickname isEqualToString:?])
  {
    v4 = [nicknameCopy copy];
    nickname = self->_nickname;
    self->_nickname = v4;
  }
}

- (void)_setNicknameShouldResetOnError:(BOOL)error
{
  if (self->_nicknameShouldResetOnError != error)
  {
    self->_nicknameShouldResetOnError = error;
  }
}

- (void)_finishLoadWithOutput:(id)output error:(id)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  outputCopy = output;
  v6 = outputCopy;
  if (outputCopy)
  {
    v7 = [outputCopy objectForKey:*MEMORY[0x277D7FD78]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [objc_alloc(MEMORY[0x277D7FCE8]) initWithDialogDictionary:v7];
    }

    else
    {
      v8 = 0;
    }

    delegate = [(SUUIComposeReviewViewController *)self delegate];
    v10 = [v6 objectForKey:*MEMORY[0x277D7FD80]];
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate composeReviewViewController:self didFailWithDialog:v8];
LABEL_21:

        goto LABEL_22;
      }
    }

    else if (!v8)
    {
      v11 = [[SUUIReviewMetadata alloc] initWithReviewDictionary:v6];
      v12 = [[SUUIComposeReviewFormViewController alloc] initWithReviewMetadata:v11];
      formViewController = self->_formViewController;
      self->_formViewController = v12;

      [(SUUIComposeReviewFormViewController *)self->_formViewController setDelegate:self];
      v23 = v11;
      if (v11)
      {
        title = [(SUUIReviewMetadata *)v11 title];
        if ([title length])
        {
          [(SUUIComposeReviewViewController *)self setEdit:1];
        }

        else
        {
          body = [(SUUIReviewMetadata *)v11 body];
          -[SUUIComposeReviewViewController setEdit:](self, "setEdit:", [body length] != 0);
        }
      }

      else
      {
        [(SUUIComposeReviewViewController *)self setEdit:0];
      }

      v16 = self->_formViewController;
      isEdit = [(SUUIComposeReviewViewController *)self isEdit];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = v18;
      if (isEdit)
      {
        v20 = @"EDIT_REVIEW";
      }

      else
      {
        v20 = @"WRITE_A_REVIEW";
      }

      v21 = [v18 localizedStringForKey:v20 value:&stru_286AECDE0 table:0];
      [(SUViewController *)v16 setTitle:v21];

      v24[0] = self->_formViewController;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      [(SUNavigationController *)self setViewControllers:v22];

      goto LABEL_21;
    }

    [(SUUIComposeReviewViewController *)self _sendDidCancel];
    goto LABEL_21;
  }

  [(SUUIComposeReviewViewController *)self _sendDidCancel];
LABEL_22:
}

- (void)_loadReviewWithURL:(id)l completionBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  v8 = objc_alloc_init(MEMORY[0x277D7FD48]);
  provider = [MEMORY[0x277D7FD30] provider];
  [provider setShouldProcessDialogs:0];
  [v8 setDataProvider:provider];
  v10 = [objc_alloc(MEMORY[0x277D69CA0]) initWithURL:lCopy];
  [v8 setRequestProperties:v10];
  objc_initWeak(&location, self);
  v11 = v8;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __70__SUUIComposeReviewViewController__loadReviewWithURL_completionBlock___block_invoke;
  v18 = &unk_2798F8628;
  objc_copyWeak(&v21, &location);
  v12 = v11;
  v19 = v12;
  v13 = blockCopy;
  v20 = v13;
  [v12 setCompletionBlock:&v15];
  [(SUPlaceholderViewController *)self->_placeholderViewController setSkLoading:1, v15, v16, v17, v18];
  mainQueue = [MEMORY[0x277D7FD20] mainQueue];
  [mainQueue addOperation:v12];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __70__SUUIComposeReviewViewController__loadReviewWithURL_completionBlock___block_invoke(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SUUIComposeReviewViewController__loadReviewWithURL_completionBlock___block_invoke_2;
  block[3] = &unk_2798F8628;
  objc_copyWeak(&v5, a1 + 6);
  v3 = a1[4];
  v4 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], block);
  [a1[4] setCompletionBlock:0];

  objc_destroyWeak(&v5);
}

void __70__SUUIComposeReviewViewController__loadReviewWithURL_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 32) dataProvider];
  v4 = [v3 output];
  v5 = [*(a1 + 32) error];
  [WeakRetained _finishLoadWithOutput:v4 error:v5];

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [*(a1 + 32) error];
    (*(v6 + 16))(v6, 1, v7);
  }
}

- (void)_sendDidSubmit
{
  delegate = [(SUUIComposeReviewViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate composeReviewViewControllerDidSubmit:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate composeReviewViewController:self didSubmitWithEdit:{-[SUUIComposeReviewViewController isEdit](self, "isEdit")}];
  }
}

- (void)_sendDidCancel
{
  delegate = [(SUUIComposeReviewViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate composeReviewViewControllerDidCancel:self];
  }
}

@end