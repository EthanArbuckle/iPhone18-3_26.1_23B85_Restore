@interface CKTranscriptExtensionViewController
+ (void)initialize;
- (CKDetailsNavigationController)detailsNavigationController;
- (NSExtension)weakExtension;
- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)a3;
- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)a3;
- (void)chatControllerDidChangeBackground:(id)a3;
- (void)doneButtonPressedForChatController:(id)a3;
- (void)presentConversationWithMessageGUID:(id)a3 attachmentGUID:(id)a4;
- (void)viewDidLoad;
@end

@implementation CKTranscriptExtensionViewController

+ (void)initialize
{
  if (CKIsRunningInMessagesTranscriptExtension())
  {
    if (initialize_token != -1)
    {
      +[CKTranscriptExtensionViewController initialize];
    }

    v2 = dispatch_get_global_queue(2, 0);
    dispatch_async(v2, &__block_literal_global_189_0);

    v3 = MEMORY[0x1E69E96A0];

    dispatch_async(v3, &__block_literal_global_192_0);
  }
}

void __49__CKTranscriptExtensionViewController_initialize__block_invoke()
{
  v0 = [MEMORY[0x1E69A5B50] sharedController];
  [v0 addListenerID:@"com.apple.MobileSMS.MessagesTranscriptExtension" capabilities:*MEMORY[0x1E69A6290] | *MEMORY[0x1E69A6278] | *MEMORY[0x1E69A6260] | *MEMORY[0x1E69A6268] | *MEMORY[0x1E69A6270] | *MEMORY[0x1E69A6298] | *MEMORY[0x1E69A6280] | (*MEMORY[0x1E69A6288] | *MEMORY[0x1E69A62B0])];

  v1 = [MEMORY[0x1E69A5B50] sharedController];
  [v1 blockUntilConnected];

  v2 = [MEMORY[0x1E69A5B50] sharedController];
  [v2 _setBlocksConnectionAtResume:1];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = CKTranscriptExtensionViewController;
  [(CKTranscriptExtensionViewController *)&v12 viewDidLoad];
  v3 = [(CKTranscriptExtensionViewController *)self extensionContext];
  v4 = [v3 inputItems];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [v5 userInfo];
    v7 = [v6 valueForKey:@"messageGUID"];

    v8 = [v5 userInfo];
    v9 = [v8 valueForKey:@"attachmentGUID"];

    if (![v7 length])
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v11 = 0;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "chatGUID or messageGUID key not provided in extension context", v11, 2u);
        }
      }

      exit(0);
    }

    [(CKTranscriptExtensionViewController *)self presentConversationWithMessageGUID:v7 attachmentGUID:v9];
  }
}

- (void)presentConversationWithMessageGUID:(id)a3 attachmentGUID:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [CKSocialLayerChatController chatIdentifierForMessageWithGUID:v6];
  v9 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v10 = [v9 existingChatWithChatIdentifier:v8];

  if (!v10)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "The messageGUID %@ doesn't correspond to a chat. Nothing to present.", &v15, 0xCu);
      }
    }

    exit(0);
  }

  v11 = [[CKConversation alloc] initWithChat:v10];
  [(CKConversation *)v11 setLoadedMessageCount:50];
  v12 = [[CKSocialLayerChatController alloc] initWithConversation:v11];
  [(CKSocialLayerChatController *)v12 setMessageGUID:v6];
  [(CKSocialLayerChatController *)v12 setAttachmentGUID:v7];
  [(CKCoreChatController *)v12 setDelegate:self];
  v17[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [(CKTranscriptExtensionViewController *)self setViewControllers:v13];
}

- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)a3
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)a3
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)chatControllerDidChangeBackground:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 transcriptBackground];
  v6 = [(CKTranscriptExtensionViewController *)self viewIfLoaded];
  v7 = [v6 window];

  v8 = [v7 windowScene];
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Did change background on chat controller: %@", &v17, 0xCu);
  }

  if (v5)
  {
    v10 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [v5 luminance];
      v10 = v11;
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [v5 contentDerivedUserInterfaceStyle];
    }

    else
    {
      v12 = 1;
    }

    v15 = [v8 traitOverrides];
    [v15 setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E118] forTrait:{"integerValue"), objc_opt_class()}];

    v16 = [v8 traitOverrides];
    [v16 setCGFloatValue:objc_opt_class() forTrait:v10];

    [v7 setOverrideUserInterfaceStyle:v12];
  }

  else
  {
    v13 = [v8 traitOverrides];
    [v13 removeTrait:objc_opt_class()];

    v14 = [v8 traitOverrides];
    [v14 removeTrait:objc_opt_class()];
  }
}

- (void)doneButtonPressedForChatController:(id)a3
{
  v3 = [(CKTranscriptExtensionViewController *)self extensionContext];
  v4 = [v3 _auxiliaryConnection];
  v5 = [v4 remoteObjectProxy];

  [v5 requestDismissal];
}

- (NSExtension)weakExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_weakExtension);

  return WeakRetained;
}

- (CKDetailsNavigationController)detailsNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsNavigationController);

  return WeakRetained;
}

@end