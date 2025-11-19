@interface CLSTemporalClusterEvent
+ (unsigned)_categoryFromPortraitEventCategory:(unsigned __int8)a3;
- (CLSTemporalClusterEvent)initWithName:(id)a3 category:(unsigned __int8)a4;
- (CLSTemporalClusterEvent)initWithPortraitEvent:(id)a3;
@end

@implementation CLSTemporalClusterEvent

- (CLSTemporalClusterEvent)initWithName:(id)a3 category:(unsigned __int8)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CLSTemporalClusterEvent;
  v8 = [(CLSTemporalClusterEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_category = a4;
  }

  return v9;
}

- (CLSTemporalClusterEvent)initWithPortraitEvent:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CLSTemporalClusterEvent;
  v5 = [(CLSTemporalClusterEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 title];
    name = v5->_name;
    v5->_name = v6;

    v5->_category = [objc_opt_class() _categoryFromPortraitEventCategory:{objc_msgSend(v4, "suggestedEventCategory")}];
  }

  return v5;
}

+ (unsigned)_categoryFromPortraitEventCategory:(unsigned __int8)a3
{
  if (a3 == 8)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 12);
  }
}

@end