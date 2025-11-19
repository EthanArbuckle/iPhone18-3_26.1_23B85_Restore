@interface WFDetectedDate
- (WFDetectedDate)initWithCoder:(id)a3;
- (WFDetectedDate)initWithDate:(id)a3 timeIsSignificant:(BOOL)a4;
- (WFDetectedDate)initWithDateCheckingResult:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFDetectedDate

- (WFDetectedDate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [v4 decodeBoolForKey:@"timeIsSignificant"];

  v7 = [(WFDetectedDate *)self initWithDate:v5 timeIsSignificant:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(WFDetectedDate *)self date];
  [v5 encodeObject:v4 forKey:@"date"];

  [v5 encodeBool:-[WFDetectedDate timeIsSignificant](self forKey:{"timeIsSignificant"), @"timeIsSignificant"}];
}

- (WFDetectedDate)initWithDateCheckingResult:(id)a3
{
  v4 = a3;
  v5 = [v4 date];
  v6 = [v4 timeIsSignificant];

  v7 = [(WFDetectedDate *)self initWithDate:v5 timeIsSignificant:v6];
  return v7;
}

- (WFDetectedDate)initWithDate:(id)a3 timeIsSignificant:(BOOL)a4
{
  v8 = a3;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFDateDetector.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  v14.receiver = self;
  v14.super_class = WFDetectedDate;
  v9 = [(WFDetectedDate *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_date, a3);
    v10->_timeIsSignificant = a4;
    v11 = v10;
  }

  return v10;
}

@end