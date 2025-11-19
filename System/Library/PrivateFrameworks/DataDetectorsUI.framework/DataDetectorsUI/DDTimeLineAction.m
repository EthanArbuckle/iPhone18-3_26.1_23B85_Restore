@interface DDTimeLineAction
- (CGSize)suggestedContentSize;
- (id)commitURL;
- (id)menuActionClasses;
- (id)platterTitle;
- (id)previewActions;
- (id)startDate;
@end

@implementation DDTimeLineAction

- (id)startDate
{
  if (self->_startDate)
  {
    startDate = self->_startDate;
  }

  else
  {
    v5 = beginDateOfEventResults([(DDAction *)self associatedResults], self->super.super.super._context, 0, 0, 0);
    v6 = self->_startDate;
    self->_startDate = v5;

    startDate = self->_startDate;
  }

  return startDate;
}

- (id)platterTitle
{
  v2 = [(DDTimeLineAction *)self startDate];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA968] localizedStringFromDate:v2 dateStyle:3 timeStyle:0];

    v4 = v3;
  }

  else
  {

    v4 = &stru_282C1E0A8;
  }

  return v4;
}

- (id)previewActions
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!self->super.super.super._ics)
  {
    if (self->super.super.super._result && [DDTimeZoneConversionAction actionAvailableForResult:?])
    {
      [v3 addObject:objc_opt_class()];
    }

    if (+[(DDAddEventAction *)DDCreateEventAction])
    {
      [v3 addObject:objc_opt_class()];
      if (!+[DDCreateReminderAction isAvailable])
      {
LABEL_14:
        v6 = off_278290100;
        if (!+[DDEventsAction isAvailable])
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if (!+[DDCreateReminderAction isAvailable])
    {
      goto LABEL_14;
    }

    [v3 addObject:objc_opt_class()];
    v6 = off_278290100;
    if (!+[DDEventsAction isAvailable])
    {
      goto LABEL_6;
    }

LABEL_5:
    v9 = *v6;
    [v3 addObject:objc_opt_class()];
    goto LABEL_6;
  }

  [v3 addObject:objc_opt_class()];
  v4 = [(NSDictionary *)self->super.super.super._context objectForKeyedSubscript:@"CachedEvent"];
  v5 = [DDOpenMapsAction actionAvailableForCachedEvent:v4];

  if (v5)
  {
    [v3 addObject:objc_opt_class()];
  }

  v6 = off_2782900F8;
  v7 = [(NSDictionary *)self->super.super.super._context objectForKeyedSubscript:@"CachedEvent"];
  v8 = [(DDOpenMapsAction *)DDDirectionsAction actionAvailableForCachedEvent:v7];

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_6:
  [v3 addObject:objc_opt_class()];
  [v3 addObject:objc_opt_class()];
  [v3 addObject:objc_opt_class()];

  return v3;
}

- (id)menuActionClasses
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(DDTimeLineAction *)self previewActions];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v16 = *(*(&v12 + 1) + 8 * i);
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)commitURL
{
  v2 = [(DDTimeLineAction *)self startDate];
  v3 = MEMORY[0x277CCACA8];
  [v2 timeIntervalSinceReferenceDate];
  v5 = [v3 stringWithFormat:@"calshow:%f", v4];
  v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];

  return v6;
}

- (CGSize)suggestedContentSize
{
  v2 = 375.0;
  v3 = 375.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end