@interface _TriggerEditorDelegateWrapper
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)triggerEditor:(id)editor shouldCommitTriggerBuilder:(id)builder;
- (HUTriggerEditorDelegate)delegate;
- (void)triggerEditor:(id)editor didCommitTriggerBuilder:(id)builder withError:(id)error;
- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder;
@end

@implementation _TriggerEditorDelegateWrapper

- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder
{
  builderCopy = builder;
  editorCopy = editor;
  delegate = [(_TriggerEditorDelegateWrapper *)self delegate];
  [delegate triggerEditor:editorCopy didFinishWithTriggerBuilder:builderCopy];
}

- (BOOL)triggerEditor:(id)editor shouldCommitTriggerBuilder:(id)builder
{
  builderCopy = builder;
  editorCopy = editor;
  delegate = [(_TriggerEditorDelegateWrapper *)self delegate];
  v9 = [delegate triggerEditor:editorCopy shouldCommitTriggerBuilder:builderCopy];

  return v9;
}

- (void)triggerEditor:(id)editor didCommitTriggerBuilder:(id)builder withError:(id)error
{
  errorCopy = error;
  builderCopy = builder;
  editorCopy = editor;
  delegate = [(_TriggerEditorDelegateWrapper *)self delegate];
  [delegate triggerEditor:editorCopy didCommitTriggerBuilder:builderCopy withError:errorCopy];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  delegate = [(_TriggerEditorDelegateWrapper *)self delegate];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (HUTriggerEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end