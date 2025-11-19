@interface NoteHTMLEditorViewScriptMessageHandler
- (NoteHTMLEditorView)noteHTMLEditorView;
- (NoteHTMLEditorViewScriptMessageHandler)initWithNoteHMLEditorView:(id)a3;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
@end

@implementation NoteHTMLEditorViewScriptMessageHandler

- (NoteHTMLEditorViewScriptMessageHandler)initWithNoteHMLEditorView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NoteHTMLEditorViewScriptMessageHandler;
  v5 = [(NoteHTMLEditorViewScriptMessageHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_noteHTMLEditorView, v4);
  }

  return v6;
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v5 = a4;
  v6 = [(NoteHTMLEditorViewScriptMessageHandler *)self noteHTMLEditorView];
  [v6 didReceiveScriptMessage:v5];
}

- (NoteHTMLEditorView)noteHTMLEditorView
{
  WeakRetained = objc_loadWeakRetained(&self->_noteHTMLEditorView);

  return WeakRetained;
}

@end