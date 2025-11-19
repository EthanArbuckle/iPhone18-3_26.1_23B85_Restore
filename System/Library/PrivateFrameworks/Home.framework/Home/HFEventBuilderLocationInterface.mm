@interface HFEventBuilderLocationInterface
- (BOOL)isCustomLocationTrigger;
- (BOOL)locationCanBeEdited;
- (HFLocationEventBuilder)locationEventBuilder;
- (void)setLocationEventBuilder:(id)a3;
@end

@implementation HFEventBuilderLocationInterface

- (void)setLocationEventBuilder:(id)a3
{
  v4 = a3;
  locationEventBuilder = self->_locationEventBuilder;
  v6 = v4;
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
    v9 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    [v9 removeEventBuilder:self->_locationEventBuilder];

    v10 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    [v10 addEventBuilder:v12];

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
    v6 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    v7 = [v6 eventBuilders];
    v8 = [v7 na_firstObjectPassingTest:&__block_literal_global_123_1];
    locationEventBuilder = self->_locationEventBuilder;
    self->_locationEventBuilder = v8;
  }

  v10 = self->_locationEventBuilder;

  return v10;
}

- (BOOL)isCustomLocationTrigger
{
  objc_opt_class();
  v3 = [(HFEventBuilderLocationInterface *)self locationEventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
    v7 = [v6 home];
    v8 = [v5 isRegionAtHome:v7] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)locationCanBeEdited
{
  v2 = [(HFEventTriggerBuilderInterface *)self triggerBuilder];
  v3 = [v2 isShortcutOwned];

  return v3 ^ 1;
}

@end