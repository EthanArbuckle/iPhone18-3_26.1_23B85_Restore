@interface NTKDigitalTimeNoSecondsComplicationDataSource
- (id)_templateWithShouldDisplayIdealizeState:(BOOL)a3;
@end

@implementation NTKDigitalTimeNoSecondsComplicationDataSource

- (id)_templateWithShouldDisplayIdealizeState:(BOOL)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"NTKTimerComplicationMetadataShouldDisplayIdealizedStateKey";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = [(CLKCComplicationDataSource *)self family];
  if (v6 == *MEMORY[0x277CBB680])
  {
    v7 = [MEMORY[0x277CBB7B8] templateWithMetadata:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end