@interface CKShareSheetChatController
- (void)_beginInteractionSignPost;
- (void)_endInteractionSignPost;
- (void)insertInitialCompositionIfNeeded;
- (void)keyboardDidChangeFrame:(id)frame;
- (void)sendComposition:(id)composition;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation CKShareSheetChatController

- (void)keyboardDidChangeFrame:(id)frame
{
  v4.receiver = self;
  v4.super_class = CKShareSheetChatController;
  [(CKChatController *)&v4 keyboardDidChangeFrame:frame];
  [(CKChatController *)self _updateEntryViewFrameIfNeeded:0];
}

- (void)_beginInteractionSignPost
{
  if (!self->_interactionSignPost)
  {
    v3 = _chatControllerTelemetryLogHandle();
    v4 = os_signpost_id_make_with_pointer(v3, self);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v4;
      if (os_signpost_enabled(v3))
      {
        *v6 = 0;
        _os_signpost_emit_with_name_impl(&dword_19020E000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ShareSheetInteraction", " enableTelemetry=YES ", v6, 2u);
      }
    }

    self->_interactionSignPost = 1;
  }
}

- (void)_endInteractionSignPost
{
  if (self->_interactionSignPost == 1)
  {
    v3 = _chatControllerTelemetryLogHandle();
    v4 = os_signpost_id_make_with_pointer(v3, self);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v4;
      if (os_signpost_enabled(v3))
      {
        *v6 = 0;
        _os_signpost_emit_with_name_impl(&dword_19020E000, v3, OS_SIGNPOST_INTERVAL_END, v5, "ShareSheetInteraction", " enableTelemetry=YES ", v6, 2u);
      }
    }

    self->_interactionSignPost = 2;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(CKShareSheetChatController *)self _beginInteractionSignPost];
  v5.receiver = self;
  v5.super_class = CKShareSheetChatController;
  [(CKChatController *)&v5 viewDidAppear:appearCopy];
}

- (void)insertInitialCompositionIfNeeded
{
  initialComposition = [(CKChatController *)self initialComposition];
  if (initialComposition)
  {
    [(CKChatController *)self setInitialComposition:0];
    [(CKChatController *)self setComposition:initialComposition];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__CKShareSheetChatController_insertInitialCompositionIfNeeded__block_invoke;
    v8[3] = &unk_1E72EBA18;
    v8[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
    entryView = [(CKChatController *)self entryView];

    if (entryView)
    {
      delegate = [(CKCoreChatController *)self delegate];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        delegate2 = [(CKCoreChatController *)self delegate];
        [delegate2 composeChatController:self didLoadEntryViewContentWithCompletion:&__block_literal_global_21];
      }
    }
  }
}

void __62__CKShareSheetChatController_insertInitialCompositionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entryView];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) entryView];
  [v3 layoutIfNeeded];
}

- (void)sendComposition:(id)composition
{
  compositionCopy = composition;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Sending composition from share sheet.", buf, 2u);
    }
  }

  delegate = [(CKCoreChatController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CKCoreChatController *)self delegate];
    conversation = [(CKCoreChatController *)self conversation];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__CKShareSheetChatController_sendComposition___block_invoke;
    v11[3] = &unk_1E72ECCA8;
    v11[4] = self;
    v12 = compositionCopy;
    [delegate2 composeChatController:self shouldSendComposition:v12 inConversation:conversation completion:v11];
  }

  else
  {
    [(CKShareSheetChatController *)self _endInteractionSignPost];
    v10.receiver = self;
    v10.super_class = CKShareSheetChatController;
    [(CKComposeChatController *)&v10 sendComposition:compositionCopy];
  }
}

id *__46__CKShareSheetChatController_sendComposition___block_invoke(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    [result[4] _endInteractionSignPost];
    v3 = v2[5];
    v4.receiver = v2[4];
    v4.super_class = CKShareSheetChatController;
    return objc_msgSendSuper2(&v4, sel_sendComposition_, v3);
  }

  return result;
}

@end