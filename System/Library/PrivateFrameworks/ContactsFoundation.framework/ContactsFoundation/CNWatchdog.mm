@interface CNWatchdog
+ (CNWatchdog)defaultWatchdog;
- (CNWatchdog)init;
- (unint64_t)statusForEvent:(id)event;
- (void)setStatus:(unint64_t)status forEvent:(id)event;
@end

@implementation CNWatchdog

- (CNWatchdog)init
{
  v7.receiver = self;
  v7.super_class = CNWatchdog;
  v2 = [(CNWatchdog *)&v7 init];
  if (v2)
  {
    v3 = +[CNCache atomicCache];
    events = v2->_events;
    v2->_events = v3;

    v5 = v2;
  }

  return v2;
}

+ (CNWatchdog)defaultWatchdog
{
  v2 = objc_alloc_init(CNWatchdog);

  return v2;
}

- (void)setStatus:(unint64_t)status forEvent:(id)event
{
  if (status)
  {
    v5 = MEMORY[0x1E696AD98];
    eventCopy = event;
    eventCopy2 = +[(CNEnvironmentBase *)CNEnvironment];
    timeProvider = [eventCopy2 timeProvider];
    [timeProvider timestamp];
    v8 = [v5 numberWithDouble:?];
    [(CNCache *)self->_events setObject:v8 forKeyedSubscript:eventCopy];
  }

  else
  {
    events = self->_events;
    eventCopy2 = event;
    [(CNCache *)events setObject:0 forKeyedSubscript:?];
  }
}

- (unint64_t)statusForEvent:(id)event
{
  v3 = [(CNCache *)self->_events objectForKeyedSubscript:event];
  v4 = v3;
  if (v3)
  {
    [v3 _cn_timeIntervalValue];
    v6 = v5;
    v7 = +[(CNEnvironmentBase *)CNEnvironment];
    timeProvider = [v7 timeProvider];
    [timeProvider timestamp];
    v10 = v9 - v6;

    v11 = v10 < 60.0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end