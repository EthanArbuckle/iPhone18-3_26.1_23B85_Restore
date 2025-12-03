@interface HDAlarmEventChanges
- (BOOL)isEqual:(id)equal;
- (HDAlarmEventChanges)initWithOldEvents:(id)events scheduledEvents:(id)scheduledEvents;
- (NSSet)addedEvents;
- (NSSet)removedEvents;
@end

@implementation HDAlarmEventChanges

- (HDAlarmEventChanges)initWithOldEvents:(id)events scheduledEvents:(id)scheduledEvents
{
  eventsCopy = events;
  scheduledEventsCopy = scheduledEvents;
  v14.receiver = self;
  v14.super_class = HDAlarmEventChanges;
  v8 = [(HDAlarmEventChanges *)&v14 init];
  if (v8)
  {
    v9 = [eventsCopy copy];
    oldEvents = v8->_oldEvents;
    v8->_oldEvents = v9;

    v11 = [scheduledEventsCopy copy];
    scheduledEvents = v8->_scheduledEvents;
    v8->_scheduledEvents = v11;
  }

  return v8;
}

- (NSSet)removedEvents
{
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:self->_oldEvents];
  v4 = [MEMORY[0x277CBEB98] setWithArray:self->_scheduledEvents];
  [v3 minusSet:v4];

  v5 = [v3 copy];

  return v5;
}

- (NSSet)addedEvents
{
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:self->_scheduledEvents];
  v4 = [MEMORY[0x277CBEB98] setWithArray:self->_oldEvents];
  [v3 minusSet:v4];

  v5 = [v3 copy];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      oldEvents = self->_oldEvents;
      v7 = v5->_oldEvents;
      if (oldEvents != v7 && (!v7 || ![(NSArray *)oldEvents isEqual:?]))
      {
        goto LABEL_11;
      }

      scheduledEvents = self->_scheduledEvents;
      v9 = v5->_scheduledEvents;
      if (scheduledEvents == v9)
      {
        v10 = 1;
        goto LABEL_13;
      }

      if (v9)
      {
        v10 = [(NSArray *)scheduledEvents isEqual:?];
      }

      else
      {
LABEL_11:
        v10 = 0;
      }

LABEL_13:

      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

@end