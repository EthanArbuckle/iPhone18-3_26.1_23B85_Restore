@interface EKSeriesDetails
- (EKSeriesDetails)initWithEvent:(id)event;
- (EKSeriesDetails)initWithMasterEvent:(id)event detachedEvents:(id)events exceptionDates:(id)dates;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation EKSeriesDetails

- (EKSeriesDetails)initWithMasterEvent:(id)event detachedEvents:(id)events exceptionDates:(id)dates
{
  eventCopy = event;
  eventsCopy = events;
  datesCopy = dates;
  v15.receiver = self;
  v15.super_class = EKSeriesDetails;
  v12 = [(EKSeriesDetails *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_masterEvent, event);
    objc_storeStrong(&v13->_detachedEvents, events);
    objc_storeStrong(&v13->_exceptionDates, dates);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(EKEvent *)self->_masterEvent copy];
  v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_detachedEvents copyItems:1];
  v7 = [v4 initWithMasterEvent:v5 detachedEvents:v6 exceptionDates:self->_exceptionDates];

  return v7;
}

- (EKSeriesDetails)initWithEvent:(id)event
{
  masterEvent = [event masterEvent];
  detachedItems = [masterEvent detachedItems];
  allObjects = [detachedItems allObjects];
  exceptionDates = [masterEvent exceptionDates];
  v8 = [(EKSeriesDetails *)self initWithMasterEvent:masterEvent detachedEvents:allObjects exceptionDates:exceptionDates];

  return v8;
}

@end