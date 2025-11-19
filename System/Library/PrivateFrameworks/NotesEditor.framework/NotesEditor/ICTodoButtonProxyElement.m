@interface ICTodoButtonProxyElement
- (BOOL)accessibilityActivate;
- (CGRect)accessibilityFrame;
- (ICEditingTextView)textView;
- (ICTodoButton)todoButton;
- (ICTodoButtonProxyElement)initWithTodoButton:(id)a3 inTextRange:(_NSRange)a4 textView:(id)a5;
- (_NSRange)textRange;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation ICTodoButtonProxyElement

- (ICTodoButtonProxyElement)initWithTodoButton:(id)a3 inTextRange:(_NSRange)a4 textView:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ICTodoButtonProxyElement;
  v11 = [(ICTodoButtonProxyElement *)&v14 initWithAccessibilityContainer:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_todoButton, v9);
    v12->_textRange.location = location;
    v12->_textRange.length = length;
    objc_storeWeak(&v12->_textView, v10);
  }

  return v12;
}

- (id)accessibilityLabel
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"checklist button" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(ICTodoButtonProxyElement *)self todoButton];
  v3 = [v2 isDone];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"completed";
  }

  else
  {
    v6 = @"incomplete";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_282757698 table:0];

  return v7;
}

- (CGRect)accessibilityFrame
{
  v2 = [(ICTodoButtonProxyElement *)self todoButton];
  [v2 accessibilityFrame];
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
  v3 = [(ICTodoButtonProxyElement *)self textView];
  v4 = [v3 editorController];
  v5 = [v4 note];
  v6 = [v5 isDeletedOrInTrash];

  if (!v6)
  {
    return 0;
  }

  v7 = [(ICTodoButtonProxyElement *)self todoButton];
  v8 = [v7 accessibilityActivate];

  return v8;
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