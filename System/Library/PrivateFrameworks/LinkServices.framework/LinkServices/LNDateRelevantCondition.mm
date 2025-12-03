@interface LNDateRelevantCondition
- (LNDateRelevantCondition)initWithStartDate:(id)date endDate:(id)endDate;
@end

@implementation LNDateRelevantCondition

- (LNDateRelevantCondition)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNRelevantContext.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"startDate"}];
  }

  v15.receiver = self;
  v15.super_class = LNDateRelevantCondition;
  _init = [(LNRelevantCondition *)&v15 _init];
  v11 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, date);
    objc_storeStrong(&v11->_endDate, endDate);
    v12 = v11;
  }

  return v11;
}

@end