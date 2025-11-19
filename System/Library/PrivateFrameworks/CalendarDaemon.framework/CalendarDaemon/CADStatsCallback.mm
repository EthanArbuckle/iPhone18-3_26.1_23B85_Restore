@interface CADStatsCallback
- (CADStatsCallback)initWithEventName:(id)a3 callback:(id)a4;
- (id)eventDictionaries;
@end

@implementation CADStatsCallback

- (CADStatsCallback)initWithEventName:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CADStatsCallback;
  v8 = [(CADStatsCallback *)&v14 init];
  if (v8)
  {
    v9 = [@"cadstats." stringByAppendingString:v6];
    eventName = v8->_eventName;
    v8->_eventName = v9;

    v11 = MEMORY[0x22AA4DCD0](v7);
    callback = v8->_callback;
    v8->_callback = v11;
  }

  return v8;
}

- (id)eventDictionaries
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  (*(self->_callback + 2))();
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end