@interface HUEventUIFlow
- (BOOL)characteristicEditorAllowChangingCharacteristic:(id)characteristic;
- (BOOL)isFlowCompleteAfterStep:(id)step;
- (BOOL)shouldSaveEventBuildersToTriggerBuilderForStep:(id)step;
- (BOOL)shouldShowDoneButtonForStep:(id)step;
- (BOOL)shouldShowNextButtonForStep:(id)step;
- (Class)_viewControllerClassForStep:(id)step;
- (HUEventUIFlow)initWithTriggerBuilder:(id)builder eventBuilderItem:(id)item;
- (HUEventUIFlowDelegate)delegate;
- (HUEventUIFlowPresentationController)presentationController;
- (id)_characteristicSelectionStepForEventType:(unint64_t)type;
- (id)_createViewControllerWithClass:(Class)class step:(id)step;
- (id)_initialEventBuilderItemForType:(unint64_t)type;
- (id)_initialStepForEventType:(unint64_t)type;
- (id)_stepFolowingStep:(id)step;
- (id)_summaryStepForEventType:(unint64_t)type;
- (id)_viewControllerForStep:(id)step;
- (id)buildInitialViewController;
- (void)_presentViewControllerForStep:(id)step;
- (void)_updateEventTypeFromBuilder;
- (void)characteristicEditorDidSelectToChangeCharacteristic:(id)characteristic;
- (void)viewController:(id)controller didCancelStepWithIdentifier:(id)identifier;
- (void)viewController:(id)controller didFinishStepWithIdentifier:(id)identifier;
- (void)viewController:(id)controller didSelectEventType:(unint64_t)type;
@end

@implementation HUEventUIFlow

- (HUEventUIFlow)initWithTriggerBuilder:(id)builder eventBuilderItem:(id)item
{
  builderCopy = builder;
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = HUEventUIFlow;
  v9 = [(HUEventUIFlow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_triggerBuilder, builder);
    objc_storeStrong(&v10->_originalEventBuilderItem, item);
    objc_storeStrong(&v10->_eventBuilderItem, item);
    v10->_eventType = 0;
    v10->_isPresentedModally = 0;
    [(HUEventUIFlow *)v10 _updateEventTypeFromBuilder];
  }

  return v10;
}

- (void)viewController:(id)controller didCancelStepWithIdentifier:(id)identifier
{
  v5 = [(HUEventUIFlow *)self delegate:controller];
  [v5 eventFlowDidCancel:self];
}

- (void)viewController:(id)controller didFinishStepWithIdentifier:(id)identifier
{
  v5 = [(HUEventUIFlow *)self _stepFolowingStep:identifier];
  v9 = v5;
  if (v5)
  {
    [(HUEventUIFlow *)self _presentViewControllerForStep:v5];
  }

  else
  {
    eventBuilderItem = [(HUEventUIFlow *)self eventBuilderItem];

    if (!eventBuilderItem)
    {
      NSLog(&cfstr_EventBuilderSh.isa);
    }

    delegate = [(HUEventUIFlow *)self delegate];
    eventBuilderItem2 = [(HUEventUIFlow *)self eventBuilderItem];
    [delegate eventFlow:self didFinishWithEventBuilderItem:eventBuilderItem2];
  }
}

- (BOOL)shouldShowDoneButtonForStep:(id)step
{
  v4 = [(HUEventUIFlow *)self isFlowCompleteAfterStep:step];
  if (v4)
  {

    LOBYTE(v4) = [(HUEventUIFlow *)self isPresentedModally];
  }

  return v4;
}

- (BOOL)isFlowCompleteAfterStep:(id)step
{
  v3 = [(HUEventUIFlow *)self _stepFolowingStep:step];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)shouldShowNextButtonForStep:(id)step
{
  v9[2] = *MEMORY[0x277D85DE8];
  stepCopy = step;
  if ([(HUEventUIFlow *)self isFlowCompleteAfterStep:stepCopy])
  {
    v5 = 0;
  }

  else
  {
    v9[0] = @"alarmPicker";
    v9[1] = @"accessoryPicker";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    if ([v6 containsObject:stepCopy])
    {
      originalEventBuilderItem = [(HUEventUIFlow *)self originalEventBuilderItem];
      v5 = originalEventBuilderItem == 0;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)shouldSaveEventBuildersToTriggerBuilderForStep:(id)step
{
  originalEventBuilderItem = [(HUEventUIFlow *)self originalEventBuilderItem];
  v4 = originalEventBuilderItem != 0;

  return v4;
}

- (id)buildInitialViewController
{
  [(HUEventUIFlow *)self _updateEventTypeFromBuilder];
  eventBuilderItem = [(HUEventUIFlow *)self eventBuilderItem];

  eventType = [(HUEventUIFlow *)self eventType];
  if (eventBuilderItem)
  {
    v5 = [(HUEventUIFlow *)self _summaryStepForEventType:eventType];
  }

  else
  {
    if (eventType)
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

- (void)viewController:(id)controller didSelectEventType:(unint64_t)type
{
  [(HUEventUIFlow *)self setEventType:type];
  v11 = [(HUEventUIFlow *)self _initialEventBuilderItemForType:type];
  eventBuilderItem = [(HUEventUIFlow *)self eventBuilderItem];
  if (!eventBuilderItem || (v7 = eventBuilderItem, v8 = objc_opt_class(), -[HUEventUIFlow eventBuilderItem](self, "eventBuilderItem"), v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v8) = [v8 isEqual:objc_opt_class()], v9, v7, (v8 & 1) == 0))
  {
    [(HUEventUIFlow *)self setEventBuilderItem:v11];
  }

  v10 = [(HUEventUIFlow *)self _initialStepForEventType:type];
  [(HUEventUIFlow *)self _presentViewControllerForStep:v10];
}

- (BOOL)characteristicEditorAllowChangingCharacteristic:(id)characteristic
{
  originalEventBuilderItem = [(HUEventUIFlow *)self originalEventBuilderItem];
  v4 = originalEventBuilderItem != 0;

  return v4;
}

- (void)characteristicEditorDidSelectToChangeCharacteristic:(id)characteristic
{
  [(HUEventUIFlow *)self _updateEventTypeFromBuilder];
  v6 = [(HUEventUIFlow *)self _characteristicSelectionStepForEventType:[(HUEventUIFlow *)self eventType]];
  v4 = [(HUEventUIFlow *)self _viewControllerForStep:v6];
  presentationController = [(HUEventUIFlow *)self presentationController];
  [presentationController transitionToViewController:v4];
}

- (id)_initialEventBuilderItemForType:(unint64_t)type
{
  if (type <= 5)
  {
    v4 = objc_alloc(**(&unk_277DBE5C8 + type));
    v5 = [MEMORY[0x277CBEB98] set];
    v3 = [v4 initWithEventBuilders:v5];
  }

  return v3;
}

- (void)_updateEventTypeFromBuilder
{
  eventBuilderItem = [(HUEventUIFlow *)self eventBuilderItem];

  if (eventBuilderItem)
  {
    eventBuilderItem2 = [(HUEventUIFlow *)self eventBuilderItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    eventBuilderItem3 = [(HUEventUIFlow *)self eventBuilderItem];
    v7 = eventBuilderItem3;
    if (isKindOfClass)
    {
      hf_sensingCharacteristicTypes = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
      characteristics = [v7 characteristics];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __44__HUEventUIFlow__updateEventTypeFromBuilder__block_invoke;
      v28[3] = &unk_277DB9538;
      v29 = hf_sensingCharacteristicTypes;
      v10 = hf_sensingCharacteristicTypes;
      v11 = [characteristics na_any:v28];

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

    eventBuilders = [eventBuilderItem3 eventBuilders];
    anyObject = [eventBuilders anyObject];
    v15 = [anyObject conformsToProtocol:&unk_2825BD900];

    if (v15)
    {
      selfCopy2 = self;
      v17 = 3;
    }

    else
    {
      eventBuilderItem4 = [(HUEventUIFlow *)self eventBuilderItem];
      eventBuilders2 = [eventBuilderItem4 eventBuilders];
      anyObject2 = [eventBuilders2 anyObject];
      v21 = [anyObject2 conformsToProtocol:&unk_2825BD780];

      if (v21)
      {
        eventBuilderItem5 = [(HUEventUIFlow *)self eventBuilderItem];
        eventBuilders3 = [eventBuilderItem5 eventBuilders];
        anyObject3 = [eventBuilders3 anyObject];

        v27 = MEMORY[0x277D85DD0];
        v7 = anyObject3;
        locationEventType = [v7 locationEventType];
        if (locationEventType == 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2 * (locationEventType == 2);
        }

        [(HUEventUIFlow *)self setEventType:v26];

        goto LABEL_7;
      }

      selfCopy2 = self;
      v17 = 0;
    }

    [(HUEventUIFlow *)selfCopy2 setEventType:v17];
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

- (id)_summaryStepForEventType:(unint64_t)type
{
  if (type > 3)
  {
    return @"characteristicEventEditor";
  }

  else
  {
    return off_277DBE5F8[type];
  }
}

- (id)_initialStepForEventType:(unint64_t)type
{
  if (type == 4)
  {
    v5 = @"accessoryPicker";
  }

  else if (type == 5)
  {
    v5 = @"alarmPicker";
  }

  else
  {
    v5 = [(HUEventUIFlow *)self _summaryStepForEventType:v3];
  }

  return v5;
}

- (id)_characteristicSelectionStepForEventType:(unint64_t)type
{
  v3 = @"alarmPicker";
  if (type != 5)
  {
    v3 = 0;
  }

  if (type == 4)
  {
    return @"accessoryPicker";
  }

  else
  {
    return v3;
  }
}

- (id)_stepFolowingStep:(id)step
{
  v10[2] = *MEMORY[0x277D85DE8];
  stepCopy = step;
  if ([stepCopy isEqualToString:@"typePicker"])
  {
    v5 = [(HUEventUIFlow *)self _initialStepForEventType:[(HUEventUIFlow *)self eventType]];
LABEL_5:
    v8 = v5;
    goto LABEL_7;
  }

  v10[0] = @"accessoryPicker";
  v10[1] = @"alarmPicker";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v6 containsObject:stepCopy];

  if (v7)
  {
    v5 = [(HUEventUIFlow *)self _summaryStepForEventType:4];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)_presentViewControllerForStep:(id)step
{
  stepCopy = step;
  v4 = [(HUEventUIFlow *)self _viewControllerForStep:?];
  if (v4)
  {
    presentationController = [(HUEventUIFlow *)self presentationController];
    [presentationController transitionToViewController:v4];
  }

  else
  {
    presentationController = [MEMORY[0x277D14640] sharedHandler];
    stepCopy = [MEMORY[0x277CCA9B8] hf_errorWithCode:36 descriptionFormat:@"View controller not yet implemented for step with identifier: %@", stepCopy];
    [presentationController handleError:stepCopy];
  }
}

- (id)_viewControllerForStep:(id)step
{
  stepCopy = step;
  v5 = [(HUEventUIFlow *)self _createViewControllerWithClass:[(HUEventUIFlow *)self _viewControllerClassForStep:stepCopy] step:stepCopy];

  return v5;
}

- (Class)_viewControllerClassForStep:(id)step
{
  v8[2] = *MEMORY[0x277D85DE8];
  stepCopy = step;
  if ([stepCopy isEqualToString:@"typePicker"] & 1) != 0 || (objc_msgSend(stepCopy, "isEqualToString:", @"locationEventEditor") & 1) != 0 || (v8[0] = @"alarmPicker", v8[1] = @"accessoryPicker", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v8, 2), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsObject:", stepCopy), v4, (v5) || (objc_msgSend(stepCopy, "isEqualToString:", @"characteristicEventEditor") & 1) != 0 || objc_msgSend(stepCopy, "isEqualToString:", @"timeEventEditor"))
  {
    v6 = objc_opt_class();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_createViewControllerWithClass:(Class)class step:(id)step
{
  stepCopy = step;
  v7 = [[class alloc] initWithFlow:self stepIdentifier:stepCopy];

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