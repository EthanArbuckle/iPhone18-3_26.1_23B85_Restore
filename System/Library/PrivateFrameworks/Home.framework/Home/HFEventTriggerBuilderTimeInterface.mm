@interface HFEventTriggerBuilderTimeInterface
- (HFTimeEventBuilder)eventBuilder;
- (NSArray)recurrences;
- (NSString)name;
- (void)copyCurrentStateFromTriggerBuilder:(id)a3;
- (void)setEventBuilder:(id)a3;
- (void)setRecurrences:(id)a3;
- (void)triggerEnabledStateDidChange:(BOOL)a3;
@end

@implementation HFEventTriggerBuilderTimeInterface

- (NSString)name
{
  v2 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  v3 = [v2 name];

  return v3;
}

- (HFTimeEventBuilder)eventBuilder
{
  if (!self->_eventBuilder || (-[HFEventTriggerBuilderInterface triggerBuilder](self, "triggerBuilder"), v3 = objc_claimAutoreleasedReturnValue(), [v3 eventBuilders], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsObject:", self->_eventBuilder), v4, v3, (v5 & 1) == 0))
  {
    v6 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    v7 = [v6 eventBuilders];
    v8 = [v7 na_firstObjectPassingTest:&__block_literal_global_146];
    eventBuilder = self->_eventBuilder;
    self->_eventBuilder = v8;
  }

  v10 = self->_eventBuilder;

  return v10;
}

- (void)setEventBuilder:(id)a3
{
  v4 = a3;
  eventBuilder = self->_eventBuilder;
  v6 = v4;
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
    v9 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    [v9 removeEventBuilder:self->_eventBuilder];

    v10 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    [v10 addEventBuilder:v12];

    v11 = v12;
    eventBuilder = self->_eventBuilder;
    self->_eventBuilder = v11;
    goto LABEL_8;
  }

LABEL_9:
}

- (NSArray)recurrences
{
  v2 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  v3 = [v2 recurrences];

  return v3;
}

- (void)setRecurrences:(id)a3
{
  v4 = a3;
  v5 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  [v5 setRecurrences:v4];
}

- (void)copyCurrentStateFromTriggerBuilder:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  [v6 setName:v5];

  v7 = [v4 eventBuilder];
  [(HFEventTriggerBuilderTimeInterface *)self setEventBuilder:v7];

  v8 = [v4 recurrences];
  [(HFEventTriggerBuilderTimeInterface *)self setRecurrences:v8];

  v9 = [v4 timeZone];

  [(HFEventTriggerBuilderTimeInterface *)self setTimeZone:v9];
}

- (void)triggerEnabledStateDidChange:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  v5 = [(HFEventTriggerBuilderTimeInterface *)self eventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;

  v7 = v10;
  if (v3)
  {
    if (v10)
    {
      v8 = [(HFEventTriggerBuilderTimeInterface *)self recurrences];
      v9 = [v8 count];

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