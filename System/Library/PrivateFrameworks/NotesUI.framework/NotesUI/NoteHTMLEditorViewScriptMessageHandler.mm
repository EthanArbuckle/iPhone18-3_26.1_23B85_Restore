@interface NoteHTMLEditorViewScriptMessageHandler
- (NoteHTMLEditorView)noteHTMLEditorView;
- (NoteHTMLEditorViewScriptMessageHandler)initWithNoteHMLEditorView:(id)view;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
@end

@implementation NoteHTMLEditorViewScriptMessageHandler

- (NoteHTMLEditorViewScriptMessageHandler)initWithNoteHMLEditorView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = NoteHTMLEditorViewScriptMessageHandler;
  v5 = [(NoteHTMLEditorViewScriptMessageHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_noteHTMLEditorView, viewCopy);
  }

  return v6;
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  messageCopy = message;
  noteHTMLEditorView = [(NoteHTMLEditorViewScriptMessageHandler *)self noteHTMLEditorView];
  [noteHTMLEditorView didReceiveScriptMessage:messageCopy];
}

- (NoteHTMLEditorView)noteHTMLEditorView
{
  WeakRetained = objc_loadWeakRetained(&self->_noteHTMLEditorView);

  return WeakRetained;
}

@end