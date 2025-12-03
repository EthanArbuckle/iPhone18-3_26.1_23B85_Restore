@interface HFEventTriggerBuilderTimeInterface
- (HFTimeEventBuilder)eventBuilder;
- (NSArray)recurrences;
- (NSString)name;
- (void)copyCurrentStateFromTriggerBuilder:(id)builder;
- (void)setEventBuilder:(id)builder;
- (void)setRecurrences:(id)recurrences;
- (void)triggerEnabledStateDidChange:(BOOL)change;
@end

@implementation HFEventTriggerBuilderTimeInterface

- (NSString)name
{
  triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  name = [triggerBuilder name];

  return name;
}

- (HFTimeEventBuilder)eventBuilder
{
  if (!self->_eventBuilder || (-[HFEventTriggerBuilderInterface triggerBuilder](self, "triggerBuilder"), v3 = objc_claimAutoreleasedReturnValue(), [v3 eventBuilders], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsObject:", self->_eventBuilder), v4, v3, (v5 & 1) == 0))
  {
    triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    eventBuilders = [triggerBuilder eventBuilders];
    v8 = [eventBuilders na_firstObjectPassingTest:&__block_literal_global_146];
    eventBuilder = self->_eventBuilder;
    self->_eventBuilder = v8;
  }

  v10 = self->_eventBuilder;

  return v10;
}

- (void)setEventBuilder:(id)builder
{
  builderCopy = builder;
  eventBuilder = self->_eventBuilder;
  v6 = builderCopy;
  v12 = v6;
  if (eventBuilder == v6)
  {

LABEL_8:
    v8 = v12;
    goto LABEL_9;
  }

  if (!eventBuilder)
  {

    goto LABEL_7;
  }

  v7 = [(HFTimeEventBuilder *)eventBuilder isEqual:v6];

  v8 = v12;
  if ((v7 & 1) == 0)
  {
LABEL_7:
    triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    [triggerBuilder removeEventBuilder:self->_eventBuilder];

    triggerBuilder2 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    [triggerBuilder2 addEventBuilder:v12];

    v11 = v12;
    eventBuilder = self->_eventBuilder;
    self->_eventBuilder = v11;
    goto LABEL_8;
  }

LABEL_9:
}

- (NSArray)recurrences
{
  triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  recurrences = [triggerBuilder recurrences];

  return recurrences;
}

- (void)setRecurrences:(id)recurrences
{
  recurrencesCopy = recurrences;
  triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  [triggerBuilder setRecurrences:recurrencesCopy];
}

- (void)copyCurrentStateFromTriggerBuilder:(id)builder
{
  builderCopy = builder;
  name = [builderCopy name];
  triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  [triggerBuilder setName:name];

  eventBuilder = [builderCopy eventBuilder];
  [(HFEventTriggerBuilderTimeInterface *)self setEventBuilder:eventBuilder];

  recurrences = [builderCopy recurrences];
  [(HFEventTriggerBuilderTimeInterface *)self setRecurrences:recurrences];

  timeZone = [builderCopy timeZone];

  [(HFEventTriggerBuilderTimeInterface *)self setTimeZone:timeZone];
}

- (void)triggerEnabledStateDidChange:(BOOL)change
{
  changeCopy = change;
  objc_opt_class();
  eventBuilder = [(HFEventTriggerBuilderTimeInterface *)self eventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v6 = eventBuilder;
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;

  v7 = v10;
  if (changeCopy)
  {
    if (v10)
    {
      recurrences = [(HFEventTriggerBuilderTimeInterface *)self recurrences];
      v9 = [recurrences count];

      v7 = v10;
      if (!v9)
      {
        [v10 updateBaseFireDateForTrigger];
        v7 = v10;
      }
    }
  }
}

@end