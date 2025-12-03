@interface NoteWKWebView
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (NoteHTMLEditorView)noteHTMLEditorView;
- (void)calloutOptionInvoked:(int64_t)invoked sender:(id)sender;
- (void)findInteraction:(id)interaction didBeginFindSession:(id)session;
- (void)findInteraction:(id)interaction didEndFindSession:(id)session;
- (void)ic_evaluateJavaScript:(id)script;
- (void)paste:(id)paste;
- (void)select:(id)select;
- (void)selectAll:(id)all;
- (void)strikethrough:(id)strikethrough;
- (void)toggleBoldface:(id)boldface;
- (void)toggleItalics:(id)italics;
- (void)toggleUnderline:(id)underline;
@end

@implementation NoteWKWebView

- (BOOL)canBecomeFirstResponder
{
  noteHTMLEditorView = [(NoteWKWebView *)self noteHTMLEditorView];
  isEditable = [noteHTMLEditorView isEditable];

  if (isEditable)
  {
    noteHTMLEditorView2 = [(NoteWKWebView *)self noteHTMLEditorView];
    delegate = [noteHTMLEditorView2 delegate];
    v7 = objc_opt_respondsToSelector();

    noteHTMLEditorView3 = [(NoteWKWebView *)self noteHTMLEditorView];
    v9 = noteHTMLEditorView3;
    if (v7)
    {
      delegate2 = [noteHTMLEditorView3 delegate];
      noteHTMLEditorView4 = [(NoteWKWebView *)self noteHTMLEditorView];
      v12 = [delegate2 noteHTMLEditorViewShouldBeginEditing:noteHTMLEditorView4 isUserInitiated:1];
    }

    else
    {
      if ([noteHTMLEditorView3 isEditable])
      {
        v12 = 1;
LABEL_9:

        return v12 & 1;
      }

      delegate2 = [(NoteWKWebView *)self noteHTMLEditorView];
      noteHTMLEditorView4 = [delegate2 layoutDelegate];
      noteHTMLEditorView5 = [(NoteWKWebView *)self noteHTMLEditorView];
      v12 = [noteHTMLEditorView4 isNoteHTMLEditorViewVisible:noteHTMLEditorView5];
    }

    goto LABEL_9;
  }

  v12 = 0;
  return v12 & 1;
}

- (BOOL)becomeFirstResponder
{
  canBecomeFirstResponder = [(NoteWKWebView *)self canBecomeFirstResponder];
  if (canBecomeFirstResponder)
  {
    v5.receiver = self;
    v5.super_class = NoteWKWebView;
    LOBYTE(canBecomeFirstResponder) = [(NoteWKWebView *)&v5 becomeFirstResponder];
  }

  return canBecomeFirstResponder;
}

- (void)toggleBoldface:(id)boldface
{
  v5.receiver = self;
  v5.super_class = NoteWKWebView;
  boldfaceCopy = boldface;
  [(NoteWKWebView *)&v5 toggleBoldface:boldfaceCopy];
  [(NoteWKWebView *)self calloutOptionInvoked:4 sender:boldfaceCopy, v5.receiver, v5.super_class];
}

- (void)toggleItalics:(id)italics
{
  v5.receiver = self;
  v5.super_class = NoteWKWebView;
  italicsCopy = italics;
  [(NoteWKWebView *)&v5 toggleItalics:italicsCopy];
  [(NoteWKWebView *)self calloutOptionInvoked:5 sender:italicsCopy, v5.receiver, v5.super_class];
}

- (void)toggleUnderline:(id)underline
{
  v5.receiver = self;
  v5.super_class = NoteWKWebView;
  underlineCopy = underline;
  [(NoteWKWebView *)&v5 toggleUnderline:underlineCopy];
  [(NoteWKWebView *)self calloutOptionInvoked:6 sender:underlineCopy, v5.receiver, v5.super_class];
}

- (void)select:(id)select
{
  selectCopy = select;
  [(NoteWKWebView *)self calloutOptionInvoked:0 sender:selectCopy];
  v5.receiver = self;
  v5.super_class = NoteWKWebView;
  [(NoteWKWebView *)&v5 select:selectCopy];
}

- (void)selectAll:(id)all
{
  allCopy = all;
  [(NoteWKWebView *)self calloutOptionInvoked:1 sender:allCopy];
  v5.receiver = self;
  v5.super_class = NoteWKWebView;
  [(NoteWKWebView *)&v5 selectAll:allCopy];
}

- (void)calloutOptionInvoked:(int64_t)invoked sender:(id)sender
{
  senderCopy = sender;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    noteHTMLEditorView = [(NoteWKWebView *)self noteHTMLEditorView];
    delegate = [noteHTMLEditorView delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      noteHTMLEditorView2 = [(NoteWKWebView *)self noteHTMLEditorView];
      delegate2 = [noteHTMLEditorView2 delegate];
      noteHTMLEditorView3 = [(NoteWKWebView *)self noteHTMLEditorView];
      [delegate2 noteHTMLEditorView:noteHTMLEditorView3 didInvokeFormattingCalloutOption:invoked];
    }
  }

  noteHTMLEditorView4 = [(NoteWKWebView *)self noteHTMLEditorView];
  delegate3 = [noteHTMLEditorView4 delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    noteHTMLEditorView5 = [(NoteWKWebView *)self noteHTMLEditorView];
    delegate4 = [noteHTMLEditorView5 delegate];
    noteHTMLEditorView6 = [(NoteWKWebView *)self noteHTMLEditorView];
    [delegate4 noteHTMLEditorView:noteHTMLEditorView6 didInvokeStyleFormattingOption:invoked];
  }
}

- (void)findInteraction:(id)interaction didBeginFindSession:(id)session
{
  v6.receiver = self;
  v6.super_class = NoteWKWebView;
  [(NoteWKWebView *)&v6 findInteraction:interaction didBeginFindSession:session];
  self->_hasActiveFindSession = 1;
  noteHTMLEditorView = [(NoteWKWebView *)self noteHTMLEditorView];
  [noteHTMLEditorView updateWebViewEditability];
}

- (void)findInteraction:(id)interaction didEndFindSession:(id)session
{
  v7.receiver = self;
  v7.super_class = NoteWKWebView;
  [(NoteWKWebView *)&v7 findInteraction:interaction didEndFindSession:session];
  if (self->_hasActiveFindSession)
  {
    noteHTMLEditorView = [(NoteWKWebView *)self noteHTMLEditorView];
    [noteHTMLEditorView setSelectionToEnd];

    self->_hasActiveFindSession = 0;
  }

  noteHTMLEditorView2 = [(NoteWKWebView *)self noteHTMLEditorView];
  [noteHTMLEditorView2 updateWebViewEditability];
}

- (void)strikethrough:(id)strikethrough
{
  strikethroughCopy = strikethrough;
  [(NoteWKWebView *)self ic_evaluateJavaScript:@"document.execCommand(strikethrough, false, null)"];
  [(NoteWKWebView *)self calloutOptionInvoked:7 sender:strikethroughCopy];
}

- (void)paste:(id)paste
{
  pasteCopy = paste;
  v5 = MEMORY[0x1E69DCD50];
  _dataOwnerForPaste = [(NoteWKWebView *)self _dataOwnerForPaste];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __23__NoteWKWebView_paste___block_invoke;
  v8[3] = &unk_1E8468F80;
  v8[4] = self;
  v9 = pasteCopy;
  v7 = pasteCopy;
  [v5 _performAsDataOwner:_dataOwnerForPaste block:v8];
}

uint64_t __23__NoteWKWebView_paste___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) noteHTMLEditorView];
  v3 = [v2 actionDelegate];

  if (!v3 || ([*(a1 + 32) noteHTMLEditorView], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "actionDelegate"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "noteHTMLEditorView"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "noteHTMLEditorViewShouldPaste:", v6), v6, v5, v4, v7))
  {
    v8 = *(a1 + 40);
    v10.receiver = *(a1 + 32);
    v10.super_class = NoteWKWebView;
    objc_msgSendSuper2(&v10, sel_paste_, v8);
  }

  return [*(a1 + 32) calloutOptionInvoked:2 sender:*(a1 + 40)];
}

- (void)ic_evaluateJavaScript:(id)script
{
  scriptCopy = script;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__NoteWKWebView_ic_evaluateJavaScript___block_invoke;
  v6[3] = &unk_1E846BC70;
  v7 = scriptCopy;
  v5 = scriptCopy;
  [(NoteWKWebView *)self evaluateJavaScript:v5 completionHandler:v6];
}

void __39__NoteWKWebView_ic_evaluateJavaScript___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__NoteWKWebView_ic_evaluateJavaScript___block_invoke_cold_1();
    }
  }
}

- (NoteHTMLEditorView)noteHTMLEditorView
{
  WeakRetained = objc_loadWeakRetained(&self->_noteHTMLEditorView);

  return WeakRetained;
}

@end