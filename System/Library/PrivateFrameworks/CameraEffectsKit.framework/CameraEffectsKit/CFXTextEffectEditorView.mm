@interface CFXTextEffectEditorView
+ (id)viewWithFrame:(CGRect)frame textEditingProperties:(id)properties;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (CFXTextEffectEditorView)initWithFrame:(CGRect)frame textEditingProperties:(id)properties;
- (CFXTextEffectEditorViewDelegate)delegate;
- (CGRect)textEditingFrameRelativeToView:(id)view;
- (NSString)text;
- (void)CFX_setupTextField:(id)field;
- (void)applyTextEditingProperties:(id)properties;
- (void)endTextEditing;
- (void)selectAll;
- (void)selectAtEnd;
- (void)textEffectEditorTextViewDidUnmarkText:(id)text;
- (void)textViewDidChange:(id)change;
@end

@implementation CFXTextEffectEditorView

+ (id)viewWithFrame:(CGRect)frame textEditingProperties:(id)properties
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  propertiesCopy = properties;
  v10 = [[self alloc] initWithFrame:propertiesCopy textEditingProperties:{x, y, width, height}];

  return v10;
}

- (CFXTextEffectEditorView)initWithFrame:(CGRect)frame textEditingProperties:(id)properties
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  propertiesCopy = properties;
  v14.receiver = self;
  v14.super_class = CFXTextEffectEditorView;
  height = [(CFXTextEffectEditorView *)&v14 initWithFrame:x, y, width, height];
  if (height)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CFXTextEffectEditorView *)height setBackgroundColor:clearColor];

    [(CFXTextEffectEditorView *)height CFX_setupTextField:propertiesCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:height selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76768] object:0];
  }

  return height;
}

- (void)CFX_setupTextField:(id)field
{
  fieldCopy = field;
  v5 = [JFXTextEffectEditorView alloc];
  [(CFXTextEffectEditorView *)self bounds];
  v6 = [(JFXTextEffectEditorView *)v5 initWithFrame:fieldCopy textEditingProperties:?];

  [(CFXTextEffectEditorView *)self setEditorView:v6];
  editorView = [(CFXTextEffectEditorView *)self editorView];
  editField = [editorView editField];

  [editField setDelegate:self];
  [editField setPasteDelegate:self];
  [editField setTextDragDelegate:self];
  editorView2 = [(CFXTextEffectEditorView *)self editorView];
  [(CFXTextEffectEditorView *)self addSubview:editorView2];
}

- (void)selectAtEnd
{
  editorView = [(CFXTextEffectEditorView *)self editorView];
  editField = [editorView editField];

  [editField becomeFirstResponder];
  text = [editField text];
  [editField setSelectedRange:{objc_msgSend(text, "length"), 0}];
}

- (void)selectAll
{
  editorView = [(CFXTextEffectEditorView *)self editorView];
  [editorView selectAll];
}

- (void)endTextEditing
{
  editorView = [(CFXTextEffectEditorView *)self editorView];
  [editorView endEditing];
}

- (NSString)text
{
  editorView = [(CFXTextEffectEditorView *)self editorView];
  text = [editorView text];

  return text;
}

- (void)applyTextEditingProperties:(id)properties
{
  propertiesCopy = properties;
  editorView = [(CFXTextEffectEditorView *)self editorView];
  [editorView applyTextEditingProperties:propertiesCopy];
}

- (CGRect)textEditingFrameRelativeToView:(id)view
{
  viewCopy = view;
  editorView = [(CFXTextEffectEditorView *)self editorView];
  editField = [editorView editField];

  if (editField)
  {
    [editField textEditingFrame];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    if (!CGRectIsNull(v23))
    {
      [editField convertRect:viewCopy toView:{x, y, width, height}];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [viewCopy bounds];
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

- (void)textEffectEditorTextViewDidUnmarkText:(id)text
{
  textCopy = text;
  delegate = [(CFXTextEffectEditorView *)self delegate];
  text = [textCopy text];

  [delegate textEffectEditorView:self textChanged:text shouldUpdateTextEditingProperties:1];
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  markedTextRange = [changeCopy markedTextRange];
  v6 = markedTextRange == 0;

  delegate = [(CFXTextEffectEditorView *)self delegate];
  text = [changeCopy text];

  [delegate textEffectEditorView:self textChanged:text shouldUpdateTextEditingProperties:v6];
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  textCopy = text;
  delegate = [(CFXTextEffectEditorView *)self delegate];
  LOBYTE(length) = [delegate textEffectEditorView:self shouldChangeTextInRange:location replacementText:{length, textCopy}];

  return length;
}

- (CFXTextEffectEditorViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end