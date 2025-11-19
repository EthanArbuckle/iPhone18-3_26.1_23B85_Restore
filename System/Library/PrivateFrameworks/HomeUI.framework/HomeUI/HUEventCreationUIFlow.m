@interface HUEventCreationUIFlow
- (HUEventCreationUIFlow)initWithTriggerBuilder:(id)a3 eventBuilderItem:(id)a4;
- (id)_initialStepForEventType:(unint64_t)a3;
- (id)_summaryStepForEventType:(unint64_t)a3;
- (id)_viewControllerForStep:(id)a3;
- (void)setupNavigationController;
- (void)transitionToViewController:(id)a3;
@end

@implementation HUEventCreationUIFlow

- (HUEventCreationUIFlow)initWithTriggerBuilder:(id)a3 eventBuilderItem:(id)a4
{
  v5.receiver = self;
  v5.super_class = HUEventCreationUIFlow;
  result = [(HUEventUIFlow *)&v5 initWithTriggerBuilder:a3 eventBuilderItem:a4];
  if (result)
  {
    result->_modalInPresentation = 0;
  }

  return result;
}

- (void)setupNavigationController
{
  [(HUEventUIFlow *)self _updateEventTypeFromBuilder];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HUEventCreationUIFlow_setupNavigationController__block_invoke;
  v7[3] = &unk_277DBA4B8;
  v7[4] = self;
  v3 = __50__HUEventCreationUIFlow_setupNavigationController__block_invoke(v7);
  v4 = [(HUEventCreationUIFlow *)self _viewControllerForStep:v3];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v4];
    [(HUEventCreationUIFlow *)self setNavigationController:v5];

    v6 = [(HUEventCreationUIFlow *)self navigationController];
    [v6 setModalPresentationStyle:2];
  }

  else
  {
    NSLog(&cfstr_TriedToSetupNa.isa, v3);
  }
}

id __50__HUEventCreationUIFlow_setupNavigationController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventBuilderItem];

  v3 = *(a1 + 32);
  v4 = [v3 eventType];
  if (v2)
  {
    v5 = [v3 _summaryStepForEventType:v4];
  }

  else
  {
    v6 = *(a1 + 32);
    if (v4)
    {
      [v6 _initialStepForEventType:{objc_msgSend(v6, "eventType", v4)}];
    }

    else
    {
      [v6 _emptyConfigurationInitialStep];
    }
    v5 = ;
  }

  return v5;
}

- (void)transitionToViewController:(id)a3
{
  v6 = a3;
  v4 = [(HUEventCreationUIFlow *)self navigationController];
  v5 = [v4 hu_pushPreloadableViewController:v6 animated:1];
}

- (id)_viewControllerForStep:(id)a3
{
  v8.receiver = self;
  v8.super_class = HUEventCreationUIFlow;
  v4 = a3;
  v5 = [(HUEventUIFlow *)&v8 _viewControllerForStep:v4];
  v6 = [v4 isEqualToString:{@"typePicker", v8.receiver, v8.super_class}];

  if ((v6 & 1) == 0)
  {
    [v5 setModalInPresentation:{-[HUEventCreationUIFlow modalInPresentation](self, "modalInPresentation")}];
  }

  return v5;
}

- (id)_summaryStepForEventType:(unint64_t)a3
{
  if (a3 <= 5)
  {
    self = *off_277DBDF50[a3];
  }

  return self;
}

- (id)_initialStepForEventType:(unint64_t)a3
{
  if (a3 == 5)
  {
    v3 = HUEventUIFlowStepAlarmPicker;
    goto LABEL_5;
  }

  if (a3 == 4)
  {
    v3 = HUEventUIFlowStepAccessoryPicker;
LABEL_5:
    v4 = *v3;
    goto LABEL_7;
  }

  v4 = [(HUEventCreationUIFlow *)self _summaryStepForEventType:?];
LABEL_7:

  return v4;
}

@end