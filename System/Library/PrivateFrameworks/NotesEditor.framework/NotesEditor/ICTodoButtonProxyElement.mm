@interface ICTodoButtonProxyElement
- (BOOL)accessibilityActivate;
- (CGRect)accessibilityFrame;
- (ICEditingTextView)textView;
- (ICTodoButton)todoButton;
- (ICTodoButtonProxyElement)initWithTodoButton:(id)button inTextRange:(_NSRange)range textView:(id)view;
- (_NSRange)textRange;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation ICTodoButtonProxyElement

- (ICTodoButtonProxyElement)initWithTodoButton:(id)button inTextRange:(_NSRange)range textView:(id)view
{
  length = range.length;
  location = range.location;
  buttonCopy = button;
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = ICTodoButtonProxyElement;
  v11 = [(ICTodoButtonProxyElement *)&v14 initWithAccessibilityContainer:viewCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_todoButton, buttonCopy);
    v12->_textRange.location = location;
    v12->_textRange.length = length;
    objc_storeWeak(&v12->_textView, viewCopy);
  }

  return v12;
}

- (id)accessibilityLabel
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"checklist button" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityValue
{
  todoButton = [(ICTodoButtonProxyElement *)self todoButton];
  isDone = [todoButton isDone];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = mainBundle;
  if (isDone)
  {
    v6 = @"completed";
  }

  else
  {
    v6 = @"incomplete";
  }

  v7 = [mainBundle localizedStringForKey:v6 value:&stru_282757698 table:0];

  return v7;
}

- (CGRect)accessibilityFrame
{
  todoButton = [(ICTodoButtonProxyElement *)self todoButton];
  [todoButton accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)accessibilityActivate
{
  textView = [(ICTodoButtonProxyElement *)self textView];
  editorController = [textView editorController];
  note = [editorController note];
  isDeletedOrInTrash = [note isDeletedOrInTrash];

  if (!isDeletedOrInTrash)
  {
    return 0;
  }

  todoButton = [(ICTodoButtonProxyElement *)self todoButton];
  accessibilityActivate = [todoButton accessibilityActivate];

  return accessibilityActivate;
}

- (ICTodoButton)todoButton
{
  WeakRetained = objc_loadWeakRetained(&self->_todoButton);

  return WeakRetained;
}

- (_NSRange)textRange
{
  p_textRange = &self->_textRange;
  location = self->_textRange.location;
  length = p_textRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (ICEditingTextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end