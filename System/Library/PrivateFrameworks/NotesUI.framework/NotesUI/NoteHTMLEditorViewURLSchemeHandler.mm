@interface NoteHTMLEditorViewURLSchemeHandler
- (NoteHTMLEditorView)noteHTMLEditorView;
- (NoteHTMLEditorViewURLSchemeHandler)initWithNoteHMLEditorView:(id)a3;
- (void)webView:(id)a3 startURLSchemeTask:(id)a4;
- (void)webView:(id)a3 stopURLSchemeTask:(id)a4;
@end

@implementation NoteHTMLEditorViewURLSchemeHandler

- (NoteHTMLEditorViewURLSchemeHandler)initWithNoteHMLEditorView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NoteHTMLEditorViewURLSchemeHandler;
  v5 = [(NoteHTMLEditorViewURLSchemeHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_noteHTMLEditorView, v4);
  }

  return v6;
}

- (void)webView:(id)a3 startURLSchemeTask:(id)a4
{
  v5 = a4;
  v6 = [(NoteHTMLEditorViewURLSchemeHandler *)self noteHTMLEditorView];
  [v6 loadAttachmentContentForURLSchemeTask:v5];
}

- (void)webView:(id)a3 stopURLSchemeTask:(id)a4
{
  v5 = a4;
  v6 = [(NoteHTMLEditorViewURLSchemeHandler *)self noteHTMLEditorView];
  [v6 stopLoadingAttachmentContentForURLSchemeTask:v5];
}

- (NoteHTMLEditorView)noteHTMLEditorView
{
  WeakRetained = objc_loadWeakRetained(&self->_noteHTMLEditorView);

  return WeakRetained;
}

@end