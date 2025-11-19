@interface CFXTextEffectEditorView
+ (id)viewWithFrame:(CGRect)a3 textEditingProperties:(id)a4;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (CFXTextEffectEditorView)initWithFrame:(CGRect)a3 textEditingProperties:(id)a4;
- (CFXTextEffectEditorViewDelegate)delegate;
- (CGRect)textEditingFrameRelativeToView:(id)a3;
- (NSString)text;
- (void)CFX_setupTextField:(id)a3;
- (void)applyTextEditingProperties:(id)a3;
- (void)endTextEditing;
- (void)selectAll;
- (void)selectAtEnd;
- (void)textEffectEditorTextViewDidUnmarkText:(id)a3;
- (void)textViewDidChange:(id)a3;
@end

@implementation CFXTextEffectEditorView

+ (id)viewWithFrame:(CGRect)a3 textEditingProperties:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [[a1 alloc] initWithFrame:v9 textEditingProperties:{x, y, width, height}];

  return v10;
}

- (CFXTextEffectEditorView)initWithFrame:(CGRect)a3 textEditingProperties:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = CFXTextEffectEditorView;
  v10 = [(CFXTextEffectEditorView *)&v14 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [MEMORY[0x277D75348] clearColor];
    [(CFXTextEffectEditorView *)v10 setBackgroundColor:v11];

    [(CFXTextEffectEditorView *)v10 CFX_setupTextField:v9];
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v10 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76768] object:0];
  }

  return v10;
}

- (void)CFX_setupTextField:(id)a3
{
  v4 = a3;
  v5 = [JFXTextEffectEditorView alloc];
  [(CFXTextEffectEditorView *)self bounds];
  v6 = [(JFXTextEffectEditorView *)v5 initWithFrame:v4 textEditingProperties:?];

  [(CFXTextEffectEditorView *)self setEditorView:v6];
  v7 = [(CFXTextEffectEditorView *)self editorView];
  v9 = [v7 editField];

  [v9 setDelegate:self];
  [v9 setPasteDelegate:self];
  [v9 setTextDragDelegate:self];
  v8 = [(CFXTextEffectEditorView *)self editorView];
  [(CFXTextEffectEditorView *)self addSubview:v8];
}

- (void)selectAtEnd
{
  v2 = [(CFXTextEffectEditorView *)self editorView];
  v4 = [v2 editField];

  [v4 becomeFirstResponder];
  v3 = [v4 text];
  [v4 setSelectedRange:{objc_msgSend(v3, "length"), 0}];
}

- (void)selectAll
{
  v2 = [(CFXTextEffectEditorView *)self editorView];
  [v2 selectAll];
}

- (void)endTextEditing
{
  v2 = [(CFXTextEffectEditorView *)self editorView];
  [v2 endEditing];
}

- (NSString)text
{
  v2 = [(CFXTextEffectEditorView *)self editorView];
  v3 = [v2 text];

  return v3;
}

- (void)applyTextEditingProperties:(id)a3
{
  v4 = a3;
  v5 = [(CFXTextEffectEditorView *)self editorView];
  [v5 applyTextEditingProperties:v4];
}

- (CGRect)textEditingFrameRelativeToView:(id)a3
{
  v4 = a3;
  v5 = [(CFXTextEffectEditorView *)self editorView];
  v6 = [v5 editField];

  if (v6)
  {
    [v6 textEditingFrame];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    if (!CGRectIsNull(v23))
    {
      [v6 convertRect:v4 toView:{x, y, width, height}];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [v4 bounds];
      v27.origin.x = v12;
      v27.origin.y = v14;
      v27.size.width = v16;
      v27.size.height = v18;
      v25 = CGRectIntersection(v24, v27);
      x = v25.origin.x;
      y = v25.origin.y;
      width = v25.size.width;
      height = v25.size.height;
    }
  }

  else
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)textEffectEditorTextViewDidUnmarkText:(id)a3
{
  v4 = a3;
  v6 = [(CFXTextEffectEditorView *)self delegate];
  v5 = [v4 text];

  [v6 textEffectEditorView:self textChanged:v5 shouldUpdateTextEditingProperties:1];
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 markedTextRange];
  v6 = v5 == 0;

  v8 = [(CFXTextEffectEditorView *)self delegate];
  v7 = [v4 text];

  [v8 textEffectEditorView:self textChanged:v7 shouldUpdateTextEditingProperties:v6];
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a5;
  v9 = [(CFXTextEffectEditorView *)self delegate];
  LOBYTE(length) = [v9 textEffectEditorView:self shouldChangeTextInRange:location replacementText:{length, v8}];

  return length;
}

- (CFXTextEffectEditorViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end