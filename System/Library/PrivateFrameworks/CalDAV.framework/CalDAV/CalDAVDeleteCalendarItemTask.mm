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
  previousScheduleTag = [(CalDAVDeleteCalendarItemTask *)self previousScheduleTag];
  v6 = [v3 stringWithFormat:@"[%@], previousScheduleTag: [%@]", v4, previousScheduleTag];

  return v6;
}

- (id)additionalHeaderValues
{
  v7.receiver = self;
  v7.super_class = CalDAVDeleteCalendarItemTask;
  additionalHeaderValues = [(CoreDAVDeleteTask *)&v7 additionalHeaderValues];
  previousScheduleTag = [(CalDAVDeleteCalendarItemTask *)self previousScheduleTag];
  v5 = [CalDAVUtils headersFromHeaders:additionalHeaderValues replacingPreconditionsWithScheduleTag:previousScheduleTag];

  return v5;
}

@end