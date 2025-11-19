@interface HUEventUIFlow
- (BOOL)characteristicEditorAllowChangingCharacteristic:(id)a3;
- (BOOL)isFlowCompleteAfterStep:(id)a3;
- (BOOL)shouldSaveEventBuildersToTriggerBuilderForStep:(id)a3;
- (BOOL)shouldShowDoneButtonForStep:(id)a3;
- (BOOL)shouldShowNextButtonForStep:(id)a3;
- (Class)_viewControllerClassForStep:(id)a3;
- (HUEventUIFlow)initWithTriggerBuilder:(id)a3 eventBuilderItem:(id)a4;
- (HUEventUIFlowDelegate)delegate;
- (HUEventUIFlowPresentationController)presentationController;
- (id)_characteristicSelectionStepForEventType:(unint64_t)a3;
- (id)_createViewControllerWithClass:(Class)a3 step:(id)a4;
- (id)_initialEventBuilderItemForType:(unint64_t)a3;
- (id)_initialStepForEventType:(unint64_t)a3;
- (id)_stepFolowingStep:(id)a3;
- (id)_summaryStepForEventType:(unint64_t)a3;
- (id)_viewControllerForStep:(id)a3;
- (id)buildInitialViewController;
- (void)_presentViewControllerForStep:(id)a3;
- (void)_updateEventTypeFromBuilder;
- (void)characteristicEditorDidSelectToChangeCharacteristic:(id)a3;
- (void)viewController:(id)a3 didCancelStepWithIdentifier:(id)a4;
- (void)viewController:(id)a3 didFinishStepWithIdentifier:(id)a4;
- (void)viewController:(id)a3 didSelectEventType:(unint64_t)a4;
@end

@implementation HUEventUIFlow

- (HUEventUIFlow)initWithTriggerBuilder:(id)a3 eventBuilderItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUEventUIFlow;
  v9 = [(HUEventUIFlow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_triggerBuilder, a3);
    objc_storeStrong(&v10->_originalEventBuilderItem, a4);
    objc_storeStrong(&v10->_eventBuilderItem, a4);
    v10->_eventType = 0;
    v10->_isPresentedModally = 0;
    [(HUEventUIFlow *)v10 _updateEventTypeFromBuilder];
  }

  return v10;
}

- (void)viewController:(id)a3 didCancelStepWithIdentifier:(id)a4
{
  v5 = [(HUEventUIFlow *)self delegate:a3];
  [v5 eventFlowDidCancel:self];
}

- (void)viewController:(id)a3 didFinishStepWithIdentifier:(id)a4
{
  v5 = [(HUEventUIFlow *)self _stepFolowingStep:a4];
  v9 = v5;
  if (v5)
  {
    [(HUEventUIFlow *)self _presentViewControllerForStep:v5];
  }

  else
  {
    v6 = [(HUEventUIFlow *)self eventBuilderItem];

    if (!v6)
    {
      NSLog(&cfstr_EventBuilderSh.isa);
    }

    v7 = [(HUEventUIFlow *)self delegate];
    v8 = [(HUEventUIFlow *)self eventBuilderItem];
    [v7 eventFlow:self didFinishWithEventBuilderItem:v8];
  }
}

- (BOOL)shouldShowDoneButtonForStep:(id)a3
{
  v4 = [(HUEventUIFlow *)self isFlowCompleteAfterStep:a3];
  if (v4)
  {

    LOBYTE(v4) = [(HUEventUIFlow *)self isPresentedModally];
  }

  return v4;
}

- (BOOL)isFlowCompleteAfterStep:(id)a3
{
  v3 = [(HUEventUIFlow *)self _stepFolowingStep:a3];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)shouldShowNextButtonForStep:(id)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HUEventUIFlow *)self isFlowCompleteAfterStep:v4])
  {
    v5 = 0;
  }

  else
  {
    v9[0] = @"alarmPicker";
    v9[1] = @"accessoryPicker";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    if ([v6 containsObject:v4])
    {
      v7 = [(HUEventUIFlow *)self originalEventBuilderItem];
      v5 = v7 == 0;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)shouldSaveEventBuildersToTriggerBuilderForStep:(id)a3
{
  v3 = [(HUEventUIFlow *)self originalEventBuilderItem];
  v4 = v3 != 0;

  return v4;
}

- (id)buildInitialViewController
{
  [(HUEventUIFlow *)self _updateEventTypeFromBuilder];
  v3 = [(HUEventUIFlow *)self eventBuilderItem];

  v4 = [(HUEventUIFlow *)self eventType];
  if (v3)
  {
    v5 = [(HUEventUIFlow *)self _summaryStepForEventType:v4];
  }

  else
  {
    if (v4)
    {
      [(HUEventUIFlow *)self _initialStepForEventType:[(HUEventUIFlow *)self eventType]];
    }

    else
    {
      [(HUEventUIFlow *)self _emptyConfigurationInitialStep];
    }
    v5 = ;
  }

  v6 = v5;
  v7 = [(HUEventUIFlow *)self _viewControllerForStep:v5];

  return v7;
}

- (void)viewController:(id)a3 didSelectEventType:(unint64_t)a4
{
  [(HUEventUIFlow *)self setEventType:a4];
  v11 = [(HUEventUIFlow *)self _initialEventBuilderItemForType:a4];
  v6 = [(HUEventUIFlow *)self eventBuilderItem];
  if (!v6 || (v7 = v6, v8 = objc_opt_class(), -[HUEventUIFlow eventBuilderItem](self, "eventBuilderItem"), v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v8) = [v8 isEqual:objc_opt_class()], v9, v7, (v8 & 1) == 0))
  {
    [(HUEventUIFlow *)self setEventBuilderItem:v11];
  }

  v10 = [(HUEventUIFlow *)self _initialStepForEventType:a4];
  [(HUEventUIFlow *)self _presentViewControllerForStep:v10];
}

- (BOOL)characteristicEditorAllowChangingCharacteristic:(id)a3
{
  v3 = [(HUEventUIFlow *)self originalEventBuilderItem];
  v4 = v3 != 0;

  return v4;
}

- (void)characteristicEditorDidSelectToChangeCharacteristic:(id)a3
{
  [(HUEventUIFlow *)self _updateEventTypeFromBuilder];
  v6 = [(HUEventUIFlow *)self _characteristicSelectionStepForEventType:[(HUEventUIFlow *)self eventType]];
  v4 = [(HUEventUIFlow *)self _viewControllerForStep:v6];
  v5 = [(HUEventUIFlow *)self presentationController];
  [v5 transitionToViewController:v4];
}

- (id)_initialEventBuilderItemForType:(unint64_t)a3
{
  if (a3 <= 5)
  {
    v4 = objc_alloc(**(&unk_277DBE5C8 + a3));
    v5 = [MEMORY[0x277CBEB98] set];
    v3 = [v4 initWithEventBuilders:v5];
  }

  return v3;
}

- (void)_updateEventTypeFromBuilder
{
  v3 = [(HUEventUIFlow *)self eventBuilderItem];

  if (v3)
  {
    v4 = [(HUEventUIFlow *)self eventBuilderItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v6 = [(HUEventUIFlow *)self eventBuilderItem];
    v7 = v6;
    if (isKindOfClass)
    {
      v8 = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
      v9 = [v7 characteristics];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __44__HUEventUIFlow__updateEventTypeFromBuilder__block_invoke;
      v28[3] = &unk_277DB9538;
      v29 = v8;
      v10 = v8;
      v11 = [v9 na_any:v28];

      if (v11)
      {
        v12 = 5;
      }

      else
      {
        v12 = 4;
      }

      [(HUEventUIFlow *)self setEventType:v12];

LABEL_7:
      return;
    }

    v13 = [v6 eventBuilders];
    v14 = [v13 anyObject];
    v15 = [v14 conformsToProtocol:&unk_2825BD900];

    if (v15)
    {
      v16 = self;
      v17 = 3;
    }

    else
    {
      v18 = [(HUEventUIFlow *)self eventBuilderItem];
      v19 = [v18 eventBuilders];
      v20 = [v19 anyObject];
      v21 = [v20 conformsToProtocol:&unk_2825BD780];

      if (v21)
      {
        v22 = [(HUEventUIFlow *)self eventBuilderItem];
        v23 = [v22 eventBuilders];
        v24 = [v23 anyObject];

        v27 = MEMORY[0x277D85DD0];
        v7 = v24;
        v25 = [v7 locationEventType];
        if (v25 == 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2 * (v25 == 2);
        }

        [(HUEventUIFlow *)self setEventType:v26];

        goto LABEL_7;
      }

      v16 = self;
      v17 = 0;
    }

    [(HUEventUIFlow *)v16 setEventType:v17];
  }
}

uint64_t __44__HUEventUIFlow__updateEventTypeFromBuilder__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __44__HUEventUIFlow__updateEventTypeFromBuilder__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) locationEventType];
  if (v1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v1 == 2);
  }
}

- (id)_summaryStepForEventType:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"characteristicEventEditor";
  }

  else
  {
    return off_277DBE5F8[a3];
  }
}

- (id)_initialStepForEventType:(unint64_t)a3
{
  if (a3 == 4)
  {
    v5 = @"accessoryPicker";
  }

  else if (a3 == 5)
  {
    v5 = @"alarmPicker";
  }

  else
  {
    v5 = [(HUEventUIFlow *)self _summaryStepForEventType:v3];
  }

  return v5;
}

- (id)_characteristicSelectionStepForEventType:(unint64_t)a3
{
  v3 = @"alarmPicker";
  if (a3 != 5)
  {
    v3 = 0;
  }

  if (a3 == 4)
  {
    return @"accessoryPicker";
  }

  else
  {
    return v3;
  }
}

- (id)_stepFolowingStep:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"typePicker"])
  {
    v5 = [(HUEventUIFlow *)self _initialStepForEventType:[(HUEventUIFlow *)self eventType]];
LABEL_5:
    v8 = v5;
    goto LABEL_7;
  }

  v10[0] = @"accessoryPicker";
  v10[1] = @"alarmPicker";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v5 = [(HUEventUIFlow *)self _summaryStepForEventType:4];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)_presentViewControllerForStep:(id)a3
{
  v7 = a3;
  v4 = [(HUEventUIFlow *)self _viewControllerForStep:?];
  if (v4)
  {
    v5 = [(HUEventUIFlow *)self presentationController];
    [v5 transitionToViewController:v4];
  }

  else
  {
    v5 = [MEMORY[0x277D14640] sharedHandler];
    v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:36 descriptionFormat:@"View controller not yet implemented for step with identifier: %@", v7];
    [v5 handleError:v6];
  }
}

- (id)_viewControllerForStep:(id)a3
{
  v4 = a3;
  v5 = [(HUEventUIFlow *)self _createViewControllerWithClass:[(HUEventUIFlow *)self _viewControllerClassForStep:v4] step:v4];

  return v5;
}

- (Class)_viewControllerClassForStep:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"typePicker"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"locationEventEditor") & 1) != 0 || (v8[0] = @"alarmPicker", v8[1] = @"accessoryPicker", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v8, 2), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsObject:", v3), v4, (v5) || (objc_msgSend(v3, "isEqualToString:", @"characteristicEventEditor") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"timeEventEditor"))
  {
    v6 = objc_opt_class();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_createViewControllerWithClass:(Class)a3 step:(id)a4
{
  v6 = a4;
  v7 = [[a3 alloc] initWithFlow:self stepIdentifier:v6];

  return v7;
}

- (HUEventUIFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HUEventUIFlowPresentationController)presentationController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);

  return WeakRetained;
}

@end