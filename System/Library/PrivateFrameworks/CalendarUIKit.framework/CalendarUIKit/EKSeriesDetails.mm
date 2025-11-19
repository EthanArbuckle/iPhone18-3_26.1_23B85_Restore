@interface EKSeriesDetails
- (EKSeriesDetails)initWithEvent:(id)a3;
- (EKSeriesDetails)initWithMasterEvent:(id)a3 detachedEvents:(id)a4 exceptionDates:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation EKSeriesDetails

- (EKSeriesDetails)initWithMasterEvent:(id)a3 detachedEvents:(id)a4 exceptionDates:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = EKSeriesDetails;
  v12 = [(EKSeriesDetails *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_masterEvent, a3);
    objc_storeStrong(&v13->_detachedEvents, a4);
    objc_storeStrong(&v13->_exceptionDates, a5);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EKEvent *)self->_masterEvent copy];
  v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_detachedEvents copyItems:1];
  v7 = [v4 initWithMasterEvent:v5 detachedEvents:v6 exceptionDates:self->_exceptionDates];

  return v7;
}

- (EKSeriesDetails)initWithEvent:(id)a3
{
  v4 = [a3 masterEvent];
  v5 = [v4 detachedItems];
  v6 = [v5 allObjects];
  v7 = [v4 exceptionDates];
  v8 = [(EKSeriesDetails *)self initWithMasterEvent:v4 detachedEvents:v6 exceptionDates:v7];

  return v8;
}

@end