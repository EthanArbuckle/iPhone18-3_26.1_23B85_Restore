@interface CKTranscriptExtensionViewController
+ (void)initialize;
- (CKDetailsNavigationController)detailsNavigationController;
- (NSExtension)weakExtension;
- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)controller;
- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)controller;
- (void)chatControllerDidChangeBackground:(id)background;
- (void)doneButtonPressedForChatController:(id)controller;
- (void)presentConversationWithMessageGUID:(id)d attachmentGUID:(id)iD;
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
  extensionContext = [(CKTranscriptExtensionViewController *)self extensionContext];
  inputItems = [extensionContext inputItems];
  firstObject = [inputItems firstObject];

  if (firstObject)
  {
    userInfo = [firstObject userInfo];
    v7 = [userInfo valueForKey:@"messageGUID"];

    userInfo2 = [firstObject userInfo];
    v9 = [userInfo2 valueForKey:@"attachmentGUID"];

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

- (void)presentConversationWithMessageGUID:(id)d attachmentGUID:(id)iD
{
  v17[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  v8 = [CKSocialLayerChatController chatIdentifierForMessageWithGUID:dCopy];
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v10 = [mEMORY[0x1E69A5AF8] existingChatWithChatIdentifier:v8];

  if (!v10)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = dCopy;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "The messageGUID %@ doesn't correspond to a chat. Nothing to present.", &v15, 0xCu);
      }
    }

    exit(0);
  }

  v11 = [[CKConversation alloc] initWithChat:v10];
  [(CKConversation *)v11 setLoadedMessageCount:50];
  v12 = [[CKSocialLayerChatController alloc] initWithConversation:v11];
  [(CKSocialLayerChatController *)v12 setMessageGUID:dCopy];
  [(CKSocialLayerChatController *)v12 setAttachmentGUID:iDCopy];
  [(CKCoreChatController *)v12 setDelegate:self];
  v17[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [(CKTranscriptExtensionViewController *)self setViewControllers:v13];
}

- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)controller
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

- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)controller
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

- (void)chatControllerDidChangeBackground:(id)background
{
  v19 = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  transcriptBackground = [backgroundCopy transcriptBackground];
  viewIfLoaded = [(CKTranscriptExtensionViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  windowScene = [window windowScene];
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = backgroundCopy;
    _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Did change background on chat controller: %@", &v17, 0xCu);
  }

  if (transcriptBackground)
  {
    v10 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [transcriptBackground luminance];
      v10 = v11;
    }

    if (objc_opt_respondsToSelector())
    {
      contentDerivedUserInterfaceStyle = [transcriptBackground contentDerivedUserInterfaceStyle];
    }

    else
    {
      contentDerivedUserInterfaceStyle = 1;
    }

    traitOverrides = [windowScene traitOverrides];
    [traitOverrides setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E118] forTrait:{"integerValue"), objc_opt_class()}];

    traitOverrides2 = [windowScene traitOverrides];
    [traitOverrides2 setCGFloatValue:objc_opt_class() forTrait:v10];

    [window setOverrideUserInterfaceStyle:contentDerivedUserInterfaceStyle];
  }

  else
  {
    traitOverrides3 = [windowScene traitOverrides];
    [traitOverrides3 removeTrait:objc_opt_class()];

    traitOverrides4 = [windowScene traitOverrides];
    [traitOverrides4 removeTrait:objc_opt_class()];
  }
}

- (void)doneButtonPressedForChatController:(id)controller
{
  extensionContext = [(CKTranscriptExtensionViewController *)self extensionContext];
  _auxiliaryConnection = [extensionContext _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  [remoteObjectProxy requestDismissal];
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