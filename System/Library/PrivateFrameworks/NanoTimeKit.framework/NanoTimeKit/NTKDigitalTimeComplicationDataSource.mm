@interface NTKDigitalTimeComplicationDataSource
- (Class)richComplicationDisplayViewClassForDevice:(id)device;
- (id)_templateWithShouldDisplayIdealizeState:(BOOL)state;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
@end

@implementation NTKDigitalTimeComplicationDataSource

- (Class)richComplicationDisplayViewClassForDevice:(id)device
{
  if ([(CLKCComplicationDataSource *)self family]== 9 || [(CLKCComplicationDataSource *)self family]== 10)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [(NTKDigitalTimeComplicationDataSource *)self _templateWithShouldDisplayIdealizeState:0];
  v5 = MEMORY[0x277CBBAC8];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 entryWithDate:date complicationTemplate:v8];

  handlerCopy[2](handlerCopy, v7);
}

- (id)_templateWithShouldDisplayIdealizeState:(BOOL)state
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"NTKTimerComplicationMetadataShouldDisplayIdealizedStateKey";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:state];
  v11[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  if ([(CLKCComplicationDataSource *)self family]== 9)
  {
    v6 = 0x277CBB820;
LABEL_7:
    v8 = [*v6 templateWithMetadata:v5];
    goto LABEL_8;
  }

  if ([(CLKCComplicationDataSource *)self family]== 10)
  {
    v6 = 0x277CBB858;
    goto LABEL_7;
  }

  family = [(CLKCComplicationDataSource *)self family];
  if (family == *MEMORY[0x277CBB680])
  {
    v6 = 0x277CBB7B0;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end