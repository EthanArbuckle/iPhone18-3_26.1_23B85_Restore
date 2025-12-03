@interface DOCFrecencyBasedEvent
- (double)frecencyScoreAtDate:(id)date;
- (void)updateFrecencyAtDate:(id)date;
@end

@implementation DOCFrecencyBasedEvent

- (double)frecencyScoreAtDate:(id)date
{
  dateCopy = date;
  lastUsedDate = [(DOCFrecencyBasedEvent *)self lastUsedDate];
  [dateCopy timeIntervalSinceDate:lastUsedDate];
  v7 = v6;

  [(DOCFrecencyBasedEvent *)self frecency];
  v9 = log(v8) + 1.0;
  return exp(v7 / -5184000.0) * v9;
}

- (void)updateFrecencyAtDate:(id)date
{
  dateCopy = date;
  [(DOCFrecencyBasedEvent *)self frecencyScoreAtDate:dateCopy];
  [(DOCFrecencyBasedEvent *)self setFrecency:v4 + 1.0];
  [(DOCFrecencyBasedEvent *)self setLastUsedDate:dateCopy];
}

@end