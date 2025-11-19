@interface CKReviewLargeUnsyncedConversationsViewController
- (id)modelObjectAtIndex:(unint64_t)a3;
- (id)navigationBarTitle;
- (unint64_t)numberOfModelObjects;
- (void)_populateConversationsIfNeeded;
- (void)dealloc;
- (void)deleteModelObjectAndUnderlyingData:(id)a3;
- (void)didSelectModelObjectAtIndex:(unint64_t)a3;
@end

@implementation CKReviewLargeUnsyncedConversationsViewController

- (void)dealloc
{
  v3 = [(CKReviewLargeUnsyncedConversationsViewController *)self daemonConnection];
  [v3 invalidate];

  [(CKReviewLargeUnsyncedConversationsViewController *)self setDaemonConnection:0];
  v4.receiver = self;
  v4.super_class = CKReviewLargeUnsyncedConversationsViewController;
  [(CKAbstractReviewViewController *)&v4 dealloc];
}

- (id)navigationBarTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CONVERSATIONS" value:&stru_1F04268F8 table:@"General"];

  return v3;
}

- (unint64_t)numberOfModelObjects
{
  v3 = [(CKReviewLargeUnsyncedConversationsViewController *)self conversations];

  if (v3)
  {
    v4 = [(CKReviewLargeUnsyncedConversationsViewController *)self conversations];
    v5 = [v4 count];

    return v5;
  }

  else
  {
    [(CKReviewLargeUnsyncedConversationsViewController *)self _populateConversationsIfNeeded];
    return 1;
  }
}

- (id)modelObjectAtIndex:(unint64_t)a3
{
  v5 = [(CKReviewLargeUnsyncedConversationsViewController *)self conversations];

  if (v5)
  {
    v6 = [(CKReviewLargeUnsyncedConversationsViewController *)self conversations];
    v7 = [v6 objectAtIndexedSubscript:a3];
  }

  else
  {
    [(CKReviewLargeUnsyncedConversationsViewController *)self _populateConversationsIfNeeded];
    v7 = +[CKStorageLoadingCell reuseIdentifier];
  }

  return v7;
}

- (void)deleteModelObjectAndUnderlyingData:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"chat"];
  [v5 remove];

  v6 = [(CKReviewLargeUnsyncedConversationsViewController *)self conversations];
  v9[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v8 = [v6 arrayByExcludingObjectsInArray:v7];
  [(CKReviewLargeUnsyncedConversationsViewController *)self setConversations:v8];
}

- (void)didSelectModelObjectAtIndex:(unint64_t)a3
{
  v5 = [(CKReviewLargeUnsyncedConversationsViewController *)self conversations];
  v6 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 objectForKeyedSubscript:@"chat"];

  v8 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v9 = [v8 messagesURLWithChat:v7 orHandles:0 withMessageText:0];

  v10 = [MEMORY[0x1E69DC668] sharedApplication];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__CKReviewLargeUnsyncedConversationsViewController_didSelectModelObjectAtIndex___block_invoke;
  v11[3] = &unk_1E72EB9C8;
  v11[4] = self;
  [v10 openURL:v9 withCompletionHandler:v11];
}

void __80__CKReviewLargeUnsyncedConversationsViewController_didSelectModelObjectAtIndex___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) tableView];
  v2 = [*(a1 + 32) tableView];
  v3 = [v2 indexPathForSelectedRow];
  [v4 deselectRowAtIndexPath:v3 animated:0];
}

- (void)_populateConversationsIfNeeded
{
  v3 = [(CKReviewLargeUnsyncedConversationsViewController *)self conversations];

  if (!v3)
  {
    v4 = [(CKReviewLargeUnsyncedConversationsViewController *)self daemonConnection];

    if (!v4)
    {
      v5 = [MEMORY[0x1E69A5B50] sharedController];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v5 multiplexedConnectionWithLabel:v7 capabilities:4485383 context:0];
      [(CKReviewLargeUnsyncedConversationsViewController *)self setDaemonConnection:v8];
    }

    v9 = [(CKReviewLargeUnsyncedConversationsViewController *)self daemonConnection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__CKReviewLargeUnsyncedConversationsViewController__populateConversationsIfNeeded__block_invoke;
    v10[3] = &unk_1E72EBA18;
    v10[4] = self;
    [v9 connectWithCompletion:v10];
  }
}

void __82__CKReviewLargeUnsyncedConversationsViewController__populateConversationsIfNeeded__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__CKReviewLargeUnsyncedConversationsViewController__populateConversationsIfNeeded__block_invoke_2;
  block[3] = &unk_1E72EBA18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __82__CKReviewLargeUnsyncedConversationsViewController__populateConversationsIfNeeded__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E69A5B20] sharedInstance];
  v4 = [v3 isEnabled];

  if (v4)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Loading synced conversations", buf, 2u);
        }
      }

      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__CKReviewLargeUnsyncedConversationsViewController__populateConversationsIfNeeded__block_invoke_61;
  v12[3] = &unk_1E72EB9F0;
  v13 = v2;
  v9 = v2;
  [v8 enumerateAllChatsAndAttachmentSizesWithOptions:v6 usingBlock:v12];

  v10 = [v9 copy];
  [*(a1 + 32) setConversations:v10];

  v11 = [*(a1 + 32) tableView];
  [v11 reloadData];
}

void __82__CKReviewLargeUnsyncedConversationsViewController__populateConversationsIfNeeded__block_invoke_61(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v14[0] = @"chat";
  v14[1] = @"size";
  v15[0] = a2;
  v9 = MEMORY[0x1E696AD98];
  v10 = a2;
  v11 = [v9 numberWithUnsignedLongLong:a3];
  v15[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v8 addObject:v12];

  v13 = [*(a1 + 32) count];
  if (v13 >= 0x14)
  {
    *a5 = 1;
  }
}

@end