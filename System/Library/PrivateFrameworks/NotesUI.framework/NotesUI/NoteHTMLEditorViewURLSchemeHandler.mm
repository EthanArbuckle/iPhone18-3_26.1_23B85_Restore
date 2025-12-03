@interface NoteHTMLEditorViewURLSchemeHandler
- (NoteHTMLEditorView)noteHTMLEditorView;
- (NoteHTMLEditorViewURLSchemeHandler)initWithNoteHMLEditorView:(id)view;
- (void)webView:(id)view startURLSchemeTask:(id)task;
- (void)webView:(id)view stopURLSchemeTask:(id)task;
@end

@implementation NoteHTMLEditorViewURLSchemeHandler

- (NoteHTMLEditorViewURLSchemeHandler)initWithNoteHMLEditorView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = NoteHTMLEditorViewURLSchemeHandler;
  v5 = [(NoteHTMLEditorViewURLSchemeHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_noteHTMLEditorView, viewCopy);
  }

  return v6;
}

- (void)webView:(id)view startURLSchemeTask:(id)task
{
  taskCopy = task;
  noteHTMLEditorView = [(NoteHTMLEditorViewURLSchemeHandler *)self noteHTMLEditorView];
  [noteHTMLEditorView loadAttachmentContentForURLSchemeTask:taskCopy];
}

- (void)webView:(id)view stopURLSchemeTask:(id)task
{
  taskCopy = task;
  noteHTMLEditorView = [(NoteHTMLEditorViewURLSchemeHandler *)self noteHTMLEditorView];
  [noteHTMLEditorView stopLoadingAttachmentContentForURLSchemeTask:taskCopy];
}

- (NoteHTMLEditorView)noteHTMLEditorView
{
  WeakRetained = objc_loadWeakRetained(&self->_noteHTMLEditorView);

  return WeakRetained;
}

@end