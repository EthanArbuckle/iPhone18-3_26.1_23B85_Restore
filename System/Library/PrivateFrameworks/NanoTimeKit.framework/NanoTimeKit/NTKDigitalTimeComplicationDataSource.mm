@interface NTKDigitalTimeComplicationDataSource
- (Class)richComplicationDisplayViewClassForDevice:(id)a3;
- (id)_templateWithShouldDisplayIdealizeState:(BOOL)a3;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
@end

@implementation NTKDigitalTimeComplicationDataSource

- (Class)richComplicationDisplayViewClassForDevice:(id)a3
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

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v4 = a3;
  v8 = [(NTKDigitalTimeComplicationDataSource *)self _templateWithShouldDisplayIdealizeState:0];
  v5 = MEMORY[0x277CBBAC8];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 entryWithDate:v6 complicationTemplate:v8];

  v4[2](v4, v7);
}

- (id)_templateWithShouldDisplayIdealizeState:(BOOL)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"NTKTimerComplicationMetadataShouldDisplayIdealizedStateKey";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
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

  v7 = [(CLKCComplicationDataSource *)self family];
  if (v7 == *MEMORY[0x277CBB680])
  {
    v6 = 0x277CBB7B0;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end