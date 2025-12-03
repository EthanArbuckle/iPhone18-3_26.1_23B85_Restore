@interface HFEventBuilderLocationInterface
- (BOOL)isCustomLocationTrigger;
- (BOOL)locationCanBeEdited;
- (HFLocationEventBuilder)locationEventBuilder;
- (void)setLocationEventBuilder:(id)builder;
@end

@implementation HFEventBuilderLocationInterface

- (void)setLocationEventBuilder:(id)builder
{
  builderCopy = builder;
  locationEventBuilder = self->_locationEventBuilder;
  v6 = builderCopy;
  v12 = v6;
  if (locationEventBuilder == v6)
  {

LABEL_8:
    v8 = v12;
    goto LABEL_9;
  }

  if (!locationEventBuilder)
  {

    goto LABEL_7;
  }

  v7 = [(HFLocationEventBuilder *)locationEventBuilder isEqual:v6];

  v8 = v12;
  if ((v7 & 1) == 0)
  {
LABEL_7:
    triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    [triggerBuilder removeEventBuilder:self->_locationEventBuilder];

    triggerBuilder2 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    [triggerBuilder2 addEventBuilder:v12];

    v11 = v12;
    locationEventBuilder = self->_locationEventBuilder;
    self->_locationEventBuilder = v11;
    goto LABEL_8;
  }

LABEL_9:
}

- (HFLocationEventBuilder)locationEventBuilder
{
  if (!self->_locationEventBuilder || (-[HFEventTriggerBuilderInterface triggerBuilder](self, "triggerBuilder"), v3 = objc_claimAutoreleasedReturnValue(), [v3 eventBuilders], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsObject:", self->_locationEventBuilder), v4, v3, (v5 & 1) == 0))
  {
    triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    eventBuilders = [triggerBuilder eventBuilders];
    v8 = [eventBuilders na_firstObjectPassingTest:&__block_literal_global_123_1];
    locationEventBuilder = self->_locationEventBuilder;
    self->_locationEventBuilder = v8;
  }

  v10 = self->_locationEventBuilder;

  return v10;
}

- (BOOL)isCustomLocationTrigger
{
  objc_opt_class();
  locationEventBuilder = [(HFEventBuilderLocationInterface *)self locationEventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v4 = locationEventBuilder;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    home = [triggerBuilder home];
    v8 = [v5 isRegionAtHome:home] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)locationCanBeEdited
{
  triggerBuilder = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  isShortcutOwned = [triggerBuilder isShortcutOwned];

  return isShortcutOwned ^ 1;
}

@end