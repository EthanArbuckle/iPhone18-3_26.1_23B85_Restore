@interface CLSTemporalClusterEvent
+ (unsigned)_categoryFromPortraitEventCategory:(unsigned __int8)category;
- (CLSTemporalClusterEvent)initWithName:(id)name category:(unsigned __int8)category;
- (CLSTemporalClusterEvent)initWithPortraitEvent:(id)event;
@end

@implementation CLSTemporalClusterEvent

- (CLSTemporalClusterEvent)initWithName:(id)name category:(unsigned __int8)category
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = CLSTemporalClusterEvent;
  v8 = [(CLSTemporalClusterEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_category = category;
  }

  return v9;
}

- (CLSTemporalClusterEvent)initWithPortraitEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = CLSTemporalClusterEvent;
  v5 = [(CLSTemporalClusterEvent *)&v9 init];
  if (v5)
  {
    title = [eventCopy title];
    name = v5->_name;
    v5->_name = title;

    v5->_category = [objc_opt_class() _categoryFromPortraitEventCategory:{objc_msgSend(eventCopy, "suggestedEventCategory")}];
  }

  return v5;
}

+ (unsigned)_categoryFromPortraitEventCategory:(unsigned __int8)category
{
  if (category == 8)
  {
    return 1;
  }

  else
  {
    return 2 * (category == 12);
  }
}

@end