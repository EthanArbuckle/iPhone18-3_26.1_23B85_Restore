@interface WFDetectedDate
- (WFDetectedDate)initWithCoder:(id)coder;
- (WFDetectedDate)initWithDate:(id)date timeIsSignificant:(BOOL)significant;
- (WFDetectedDate)initWithDateCheckingResult:(id)result;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFDetectedDate

- (WFDetectedDate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [coderCopy decodeBoolForKey:@"timeIsSignificant"];

  v7 = [(WFDetectedDate *)self initWithDate:v5 timeIsSignificant:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = [(WFDetectedDate *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  [coderCopy encodeBool:-[WFDetectedDate timeIsSignificant](self forKey:{"timeIsSignificant"), @"timeIsSignificant"}];
}

- (WFDetectedDate)initWithDateCheckingResult:(id)result
{
  resultCopy = result;
  date = [resultCopy date];
  timeIsSignificant = [resultCopy timeIsSignificant];

  v7 = [(WFDetectedDate *)self initWithDate:date timeIsSignificant:timeIsSignificant];
  return v7;
}

- (WFDetectedDate)initWithDate:(id)date timeIsSignificant:(BOOL)significant
{
  dateCopy = date;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDateDetector.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  v14.receiver = self;
  v14.super_class = WFDetectedDate;
  v9 = [(WFDetectedDate *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_date, date);
    v10->_timeIsSignificant = significant;
    v11 = v10;
  }

  return v10;
}

@end