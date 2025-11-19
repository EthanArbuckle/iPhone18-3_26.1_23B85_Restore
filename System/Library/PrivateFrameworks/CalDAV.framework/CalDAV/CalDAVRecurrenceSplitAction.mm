@interface CalDAVRecurrenceSplitAction
- (CalDAVRecurrenceSplitAction)initWithResourceURL:(id)a3 recurrenceDate:(id)a4 uidForCreatedSeries:(id)a5 floating:(BOOL)a6 allday:(BOOL)a7;
@end

@implementation CalDAVRecurrenceSplitAction

- (CalDAVRecurrenceSplitAction)initWithResourceURL:(id)a3 recurrenceDate:(id)a4 uidForCreatedSeries:(id)a5 floating:(BOOL)a6 allday:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = CalDAVRecurrenceSplitAction;
  v16 = [(CalDAVRecurrenceSplitAction *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_resourceURL, a3);
    objc_storeStrong(&v17->_recurrenceDate, a4);
    objc_storeStrong(&v17->_uidForCreatedSeries, a5);
    v17->_isFloating = a6;
    v17->_isAllDay = a7;
  }

  return v17;
}

@end