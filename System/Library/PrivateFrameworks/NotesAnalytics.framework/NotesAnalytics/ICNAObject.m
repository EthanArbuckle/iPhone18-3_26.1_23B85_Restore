@interface ICNAObject
- (ICNAEventReporter)eventReporter;
@end

@implementation ICNAObject

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && +[(ICNAOptedInObject *)ICNAEventReporter])
  {
    v3 = [ICNAEventReporter alloc];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(ICNAEventReporter *)v3 initWithSubTrackerName:v5];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v6;
  }

  v8 = self->_eventReporter;

  return v8;
}

@end