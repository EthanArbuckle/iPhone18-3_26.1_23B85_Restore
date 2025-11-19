@interface ICInkToolPickerResponder
- (ICInkToolPickerResponderDelegate)delegate;
- (id)inputAssistantItem;
@end

@implementation ICInkToolPickerResponder

- (id)inputAssistantItem
{
  v2 = [(ICInkToolPickerResponder *)self delegate];
  v3 = [v2 responderToMatch];
  v4 = [v3 inputAssistantItem];

  return v4;
}

- (ICInkToolPickerResponderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end