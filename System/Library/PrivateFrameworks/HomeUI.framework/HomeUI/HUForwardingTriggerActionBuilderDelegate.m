@interface HUForwardingTriggerActionBuilderDelegate
- (HUForwardingTriggerActionBuilderDelegate)initWithTriggerActionBuilderEditorDelegate:(id)a3;
- (HUTriggerActionBuilderEditorDelegate)triggerActionBuilderEditorDelegate;
- (void)triggerEditor:(id)a3 didFinishWithTriggerBuilder:(id)a4;
@end

@implementation HUForwardingTriggerActionBuilderDelegate

- (HUForwardingTriggerActionBuilderDelegate)initWithTriggerActionBuilderEditorDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HUForwardingTriggerActionBuilderDelegate;
  v5 = [(HUForwardingTriggerActionBuilderDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUForwardingTriggerActionBuilderDelegate *)v5 setTriggerActionBuilderEditorDelegate:v4];
  }

  return v6;
}

- (void)triggerEditor:(id)a3 didFinishWithTriggerBuilder:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 triggerActionSets];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(HUForwardingTriggerActionBuilderDelegate *)self triggerActionBuilderEditorDelegate];

  if (v9)
  {
    v10 = [(HUForwardingTriggerActionBuilderDelegate *)self triggerActionBuilderEditorDelegate];
    [v10 actionBuilderEditor:v11 didFinishWithTriggerActionSetBuilder:v8];
  }
}

- (HUTriggerActionBuilderEditorDelegate)triggerActionBuilderEditorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_triggerActionBuilderEditorDelegate);

  return WeakRetained;
}

@end