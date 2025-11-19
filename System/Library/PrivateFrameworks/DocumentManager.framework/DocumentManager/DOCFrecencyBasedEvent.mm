@interface DOCFrecencyBasedEvent
- (double)frecencyScoreAtDate:(id)a3;
- (void)updateFrecencyAtDate:(id)a3;
@end

@implementation DOCFrecencyBasedEvent

- (double)frecencyScoreAtDate:(id)a3
{
  v4 = a3;
  v5 = [(DOCFrecencyBasedEvent *)self lastUsedDate];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  [(DOCFrecencyBasedEvent *)self frecency];
  v9 = log(v8) + 1.0;
  return exp(v7 / -5184000.0) * v9;
}

- (void)updateFrecencyAtDate:(id)a3
{
  v5 = a3;
  [(DOCFrecencyBasedEvent *)self frecencyScoreAtDate:v5];
  [(DOCFrecencyBasedEvent *)self setFrecency:v4 + 1.0];
  [(DOCFrecencyBasedEvent *)self setLastUsedDate:v5];
}

@end