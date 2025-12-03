@interface CalDAVRecurrenceSplitAction
- (CalDAVRecurrenceSplitAction)initWithResourceURL:(id)l recurrenceDate:(id)date uidForCreatedSeries:(id)series floating:(BOOL)floating allday:(BOOL)allday;
@end

@implementation CalDAVRecurrenceSplitAction

- (CalDAVRecurrenceSplitAction)initWithResourceURL:(id)l recurrenceDate:(id)date uidForCreatedSeries:(id)series floating:(BOOL)floating allday:(BOOL)allday
{
  lCopy = l;
  dateCopy = date;
  seriesCopy = series;
  v19.receiver = self;
  v19.super_class = CalDAVRecurrenceSplitAction;
  v16 = [(CalDAVRecurrenceSplitAction *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_resourceURL, l);
    objc_storeStrong(&v17->_recurrenceDate, date);
    objc_storeStrong(&v17->_uidForCreatedSeries, series);
    v17->_isFloating = floating;
    v17->_isAllDay = allday;
  }

  return v17;
}

@end