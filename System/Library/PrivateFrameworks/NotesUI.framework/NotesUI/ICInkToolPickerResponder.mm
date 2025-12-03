@interface ICInkToolPickerResponder
- (ICInkToolPickerResponderDelegate)delegate;
- (id)inputAssistantItem;
@end

@implementation ICInkToolPickerResponder

- (id)inputAssistantItem
{
  delegate = [(ICInkToolPickerResponder *)self delegate];
  responderToMatch = [delegate responderToMatch];
  inputAssistantItem = [responderToMatch inputAssistantItem];

  return inputAssistantItem;
}

- (ICInkToolPickerResponderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end