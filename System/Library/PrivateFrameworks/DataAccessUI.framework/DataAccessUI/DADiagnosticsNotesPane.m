@interface DADiagnosticsNotesPane
- (DADiagnosticsNotesPane)initWithFrame:(CGRect)a3;
@end

@implementation DADiagnosticsNotesPane

- (DADiagnosticsNotesPane)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = DADiagnosticsNotesPane;
  v7 = [(PSEditingPane *)&v13 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75C40]) initWithFrame:{x, y, width, height}];
    notesView = v7->_notesView;
    v7->_notesView = v8;

    [(UITextView *)v7->_notesView setAutoresizingMask:18];
    [(UITextView *)v7->_notesView setEditable:1];
    [(UITextView *)v7->_notesView setSelectedRange:0, 0];
    [(UITextView *)v7->_notesView setKeyboardType:0];
    v10 = v7->_notesView;
    v11 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
    [(UITextView *)v10 setFont:v11];

    [(UITextView *)v7->_notesView setBounces:1];
    [(DADiagnosticsNotesPane *)v7 addSubview:v7->_notesView];
  }

  return v7;
}

@end