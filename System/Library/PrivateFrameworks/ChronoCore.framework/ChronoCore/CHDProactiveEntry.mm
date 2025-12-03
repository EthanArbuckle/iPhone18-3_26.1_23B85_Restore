@interface CHDProactiveEntry
- (CHDProactiveEntry)initWithDate:(id)date;
- (CHDProactiveEntry)initWithDate:(id)date score:(double)score duration:(double)duration;
@end

@implementation CHDProactiveEntry

- (CHDProactiveEntry)initWithDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = CHDProactiveEntry;
  v6 = [(CHDProactiveEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, date);
    v7->_hasRelevance = 0;
    v7->_score = 0.0;
    v7->_duration = 0.0;
  }

  return v7;
}

- (CHDProactiveEntry)initWithDate:(id)date score:(double)score duration:(double)duration
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = CHDProactiveEntry;
  v10 = [(CHDProactiveEntry *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_date, date);
    v11->_hasRelevance = 1;
    v11->_score = score;
    v11->_duration = duration;
  }

  return v11;
}

@end