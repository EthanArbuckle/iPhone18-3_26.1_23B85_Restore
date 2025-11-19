@interface CalDAVDeleteCalendarItemTask
- (id)additionalHeaderValues;
- (id)description;
@end

@implementation CalDAVDeleteCalendarItemTask

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CalDAVDeleteCalendarItemTask;
  v4 = [(CoreDAVDeleteTask *)&v8 description];
  v5 = [(CalDAVDeleteCalendarItemTask *)self previousScheduleTag];
  v6 = [v3 stringWithFormat:@"[%@], previousScheduleTag: [%@]", v4, v5];

  return v6;
}

- (id)additionalHeaderValues
{
  v7.receiver = self;
  v7.super_class = CalDAVDeleteCalendarItemTask;
  v3 = [(CoreDAVDeleteTask *)&v7 additionalHeaderValues];
  v4 = [(CalDAVDeleteCalendarItemTask *)self previousScheduleTag];
  v5 = [CalDAVUtils headersFromHeaders:v3 replacingPreconditionsWithScheduleTag:v4];

  return v5;
}

@end