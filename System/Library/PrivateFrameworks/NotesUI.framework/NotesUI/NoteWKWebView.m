@interface NoteWKWebView
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (NoteHTMLEditorView)noteHTMLEditorView;
- (void)calloutOptionInvoked:(int64_t)a3 sender:(id)a4;
- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4;
- (void)findInteraction:(id)a3 didEndFindSession:(id)a4;
- (void)ic_evaluateJavaScript:(id)a3;
- (void)paste:(id)a3;
- (void)select:(id)a3;
- (void)selectAll:(id)a3;
- (void)strikethrough:(id)a3;
- (void)toggleBoldface:(id)a3;
- (void)toggleItalics:(id)a3;
- (void)toggleUnderline:(id)a3;
@end

@implementation NoteWKWebView

- (BOOL)canBecomeFirstResponder
{
  v3 = [(NoteWKWebView *)self noteHTMLEditorView];
  v4 = [v3 isEditable];

  if (v4)
  {
    v5 = [(NoteWKWebView *)self noteHTMLEditorView];
    v6 = [v5 delegate];
    v7 = objc_opt_respondsToSelector();

    v8 = [(NoteWKWebView *)self noteHTMLEditorView];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 delegate];
      v11 = [(NoteWKWebView *)self noteHTMLEditorView];
      v12 = [v10 noteHTMLEditorViewShouldBeginEditing:v11 isUserInitiated:1];
    }

    else
    {
      if ([v8 isEditable])
      {
        v12 = 1;
LABEL_9:

        return v12 & 1;
      }

      v10 = [(NoteWKWebView *)self noteHTMLEditorView];
      v11 = [v10 layoutDelegate];
      v13 = [(NoteWKWebView *)self noteHTMLEditorView];
      v12 = [v11 isNoteHTMLEditorViewVisible:v13];
    }

    goto LABEL_9;
  }

  v12 = 0;
  return v12 & 1;
}

- (BOOL)becomeFirstResponder
{
  v3 = [(NoteWKWebView *)self canBecomeFirstResponder];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = NoteWKWebView;
    LOBYTE(v3) = [(NoteWKWebView *)&v5 becomeFirstResponder];
  }

  return v3;
}

- (void)toggleBoldface:(id)a3
{
  v5.receiver = self;
  v5.super_class = NoteWKWebView;
  v4 = a3;
  [(NoteWKWebView *)&v5 toggleBoldface:v4];
  [(NoteWKWebView *)self calloutOptionInvoked:4 sender:v4, v5.receiver, v5.super_class];
}

- (void)toggleItalics:(id)a3
{
  v5.receiver = self;
  v5.super_class = NoteWKWebView;
  v4 = a3;
  [(NoteWKWebView *)&v5 toggleItalics:v4];
  [(NoteWKWebView *)self calloutOptionInvoked:5 sender:v4, v5.receiver, v5.super_class];
}

- (void)toggleUnderline:(id)a3
{
  v5.receiver = self;
  v5.super_class = NoteWKWebView;
  v4 = a3;
  [(NoteWKWebView *)&v5 toggleUnderline:v4];
  [(NoteWKWebView *)self calloutOptionInvoked:6 sender:v4, v5.receiver, v5.super_class];
}

- (void)select:(id)a3
{
  v4 = a3;
  [(NoteWKWebView *)self calloutOptionInvoked:0 sender:v4];
  v5.receiver = self;
  v5.super_class = NoteWKWebView;
  [(NoteWKWebView *)&v5 select:v4];
}

- (void)selectAll:(id)a3
{
  v4 = a3;
  [(NoteWKWebView *)self calloutOptionInvoked:1 sender:v4];
  v5.receiver = self;
  v5.super_class = NoteWKWebView;
  [(NoteWKWebView *)&v5 selectAll:v4];
}

- (void)calloutOptionInvoked:(int64_t)a3 sender:(id)a4
{
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(NoteWKWebView *)self noteHTMLEditorView];
    v9 = [v8 delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(NoteWKWebView *)self noteHTMLEditorView];
      v12 = [v11 delegate];
      v13 = [(NoteWKWebView *)self noteHTMLEditorView];
      [v12 noteHTMLEditorView:v13 didInvokeFormattingCalloutOption:a3];
    }
  }

  v14 = [(NoteWKWebView *)self noteHTMLEditorView];
  v15 = [v14 delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v19 = [(NoteWKWebView *)self noteHTMLEditorView];
    v17 = [v19 delegate];
    v18 = [(NoteWKWebView *)self noteHTMLEditorView];
    [v17 noteHTMLEditorView:v18 didInvokeStyleFormattingOption:a3];
  }
}

- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4
{
  v6.receiver = self;
  v6.super_class = NoteWKWebView;
  [(NoteWKWebView *)&v6 findInteraction:a3 didBeginFindSession:a4];
  self->_hasActiveFindSession = 1;
  v5 = [(NoteWKWebView *)self noteHTMLEditorView];
  [v5 updateWebViewEditability];
}

- (void)findInteraction:(id)a3 didEndFindSession:(id)a4
{
  v7.receiver = self;
  v7.super_class = NoteWKWebView;
  [(NoteWKWebView *)&v7 findInteraction:a3 didEndFindSession:a4];
  if (self->_hasActiveFindSession)
  {
    v5 = [(NoteWKWebView *)self noteHTMLEditorView];
    [v5 setSelectionToEnd];

    self->_hasActiveFindSession = 0;
  }

  v6 = [(NoteWKWebView *)self noteHTMLEditorView];
  [v6 updateWebViewEditability];
}

- (void)strikethrough:(id)a3
{
  v4 = a3;
  [(NoteWKWebView *)self ic_evaluateJavaScript:@"document.execCommand(strikethrough, false, null)"];
  [(NoteWKWebView *)self calloutOptionInvoked:7 sender:v4];
}

- (void)paste:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69DCD50];
  v6 = [(NoteWKWebView *)self _dataOwnerForPaste];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __23__NoteWKWebView_paste___block_invoke;
  v8[3] = &unk_1E8468F80;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 _performAsDataOwner:v6 block:v8];
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

- (void)ic_evaluateJavaScript:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__NoteWKWebView_ic_evaluateJavaScript___block_invoke;
  v6[3] = &unk_1E846BC70;
  v7 = v4;
  v5 = v4;
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