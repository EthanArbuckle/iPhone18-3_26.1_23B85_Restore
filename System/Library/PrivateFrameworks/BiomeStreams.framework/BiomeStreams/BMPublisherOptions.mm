@interface BMPublisherOptions
+ (id)reversed;
- (BMPublisherOptions)initWithStartDate:(id)a3 endDate:(id)a4 indexSearch:(id)a5 maxEvents:(unint64_t)a6 lastN:(unint64_t)a7 reversed:(BOOL)a8;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation BMPublisherOptions

- (BMPublisherOptions)initWithStartDate:(id)a3 endDate:(id)a4 indexSearch:(id)a5 maxEvents:(unint64_t)a6 lastN:(unint64_t)a7 reversed:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v21.receiver = self;
  v21.super_class = BMPublisherOptions;
  v18 = [(BMPublisherOptions *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_startDate, a3);
    objc_storeStrong(&v19->_endDate, a4);
    objc_storeStrong(&v19->_indexSearch, a5);
    v19->_maxEvents = a6;
    v19->_lastN = a7;
    v19->_reversed = a8;
  }

  return v19;
}

+ (id)reversed
{
  v2 = [[a1 alloc] initWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    startDate = self->_startDate;
    v8 = (startDate == v5[2] || [(NSDate *)startDate isEqual:?]) && ((endDate = self->_endDate, endDate == v5[3]) || [(NSDate *)endDate isEqual:?]) && self->_maxEvents == v5[4] && self->_lastN == v5[5] && self->_reversed == *(v5 + 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p> startDate: %@, endDate: %@, maxEvents: %lu, lastN: %lu, reversed: %d", objc_opt_class(), self, self->_startDate, self->_endDate, self->_maxEvents, self->_lastN, self->_reversed];

  return v2;
}

@end