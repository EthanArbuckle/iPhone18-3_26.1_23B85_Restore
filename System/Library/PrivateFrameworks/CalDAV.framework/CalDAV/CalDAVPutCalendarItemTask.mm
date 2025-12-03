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
  previousScheduleTag = [(CalDAVPutCalendarItemTask *)self previousScheduleTag];
  v6 = [v3 stringWithFormat:@"[%@], previousScheduleTag: [%@]", v4, previousScheduleTag];

  return v6;
}

- (id)additionalHeaderValues
{
  v7.receiver = self;
  v7.super_class = CalDAVPutCalendarItemTask;
  additionalHeaderValues = [(CoreDAVPostOrPutTask *)&v7 additionalHeaderValues];
  if (![(CoreDAVPostOrPutTask *)self forceToServer])
  {
    previousScheduleTag = [(CalDAVPutCalendarItemTask *)self previousScheduleTag];
    v5 = [CalDAVUtils headersFromHeaders:additionalHeaderValues replacingPreconditionsWithScheduleTag:previousScheduleTag];

    additionalHeaderValues = v5;
  }

  return additionalHeaderValues;
}

@end