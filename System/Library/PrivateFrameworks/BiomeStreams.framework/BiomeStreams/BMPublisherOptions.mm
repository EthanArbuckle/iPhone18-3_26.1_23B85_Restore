@interface BMPublisherOptions
+ (id)reversed;
- (BMPublisherOptions)initWithStartDate:(id)date endDate:(id)endDate indexSearch:(id)search maxEvents:(unint64_t)events lastN:(unint64_t)n reversed:(BOOL)reversed;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation BMPublisherOptions

- (BMPublisherOptions)initWithStartDate:(id)date endDate:(id)endDate indexSearch:(id)search maxEvents:(unint64_t)events lastN:(unint64_t)n reversed:(BOOL)reversed
{
  dateCopy = date;
  endDateCopy = endDate;
  searchCopy = search;
  v21.receiver = self;
  v21.super_class = BMPublisherOptions;
  v18 = [(BMPublisherOptions *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_startDate, date);
    objc_storeStrong(&v19->_endDate, endDate);
    objc_storeStrong(&v19->_indexSearch, search);
    v19->_maxEvents = events;
    v19->_lastN = n;
    v19->_reversed = reversed;
  }

  return v19;
}

+ (id)reversed
{
  v2 = [[self alloc] initWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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