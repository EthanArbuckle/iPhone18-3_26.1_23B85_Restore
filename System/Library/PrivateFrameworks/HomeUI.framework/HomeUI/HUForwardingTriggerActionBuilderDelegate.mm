@interface HUForwardingTriggerActionBuilderDelegate
- (HUForwardingTriggerActionBuilderDelegate)initWithTriggerActionBuilderEditorDelegate:(id)delegate;
- (HUTriggerActionBuilderEditorDelegate)triggerActionBuilderEditorDelegate;
- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder;
@end

@implementation HUForwardingTriggerActionBuilderDelegate

- (HUForwardingTriggerActionBuilderDelegate)initWithTriggerActionBuilderEditorDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = HUForwardingTriggerActionBuilderDelegate;
  v5 = [(HUForwardingTriggerActionBuilderDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUForwardingTriggerActionBuilderDelegate *)v5 setTriggerActionBuilderEditorDelegate:delegateCopy];
  }

  return v6;
}

- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder
{
  editorCopy = editor;
  builderCopy = builder;
  v7 = builderCopy;
  if (builderCopy)
  {
    triggerActionSets = [builderCopy triggerActionSets];
  }

  else
  {
    triggerActionSets = 0;
  }

  triggerActionBuilderEditorDelegate = [(HUForwardingTriggerActionBuilderDelegate *)self triggerActionBuilderEditorDelegate];

  if (triggerActionBuilderEditorDelegate)
  {
    triggerActionBuilderEditorDelegate2 = [(HUForwardingTriggerActionBuilderDelegate *)self triggerActionBuilderEditorDelegate];
    [triggerActionBuilderEditorDelegate2 actionBuilderEditor:editorCopy didFinishWithTriggerActionSetBuilder:triggerActionSets];
  }
}

- (HUTriggerActionBuilderEditorDelegate)triggerActionBuilderEditorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_triggerActionBuilderEditorDelegate);

  return WeakRetained;
}

@end