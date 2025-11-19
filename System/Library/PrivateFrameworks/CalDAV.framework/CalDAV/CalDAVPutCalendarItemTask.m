@interface CalDAVPutCalendarItemTask
- (id)additionalHeaderValues;
- (id)description;
@end

@implementation CalDAVPutCalendarItemTask

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CalDAVPutCalendarItemTask;
  v4 = [(CoreDAVPutTask *)&v8 description];
  v5 = [(CalDAVPutCalendarItemTask *)self previousScheduleTag];
  v6 = [v3 stringWithFormat:@"[%@], previousScheduleTag: [%@]", v4, v5];

  return v6;
}

- (id)additionalHeaderValues
{
  v7.receiver = self;
  v7.super_class = CalDAVPutCalendarItemTask;
  v3 = [(CoreDAVPostOrPutTask *)&v7 additionalHeaderValues];
  if (![(CoreDAVPostOrPutTask *)self forceToServer])
  {
    v4 = [(CalDAVPutCalendarItemTask *)self previousScheduleTag];
    v5 = [CalDAVUtils headersFromHeaders:v3 replacingPreconditionsWithScheduleTag:v4];

    v3 = v5;
  }

  return v3;
}

@end