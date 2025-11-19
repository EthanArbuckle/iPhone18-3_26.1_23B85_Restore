@interface CHDProactiveEntry
- (CHDProactiveEntry)initWithDate:(id)a3;
- (CHDProactiveEntry)initWithDate:(id)a3 score:(double)a4 duration:(double)a5;
@end

@implementation CHDProactiveEntry

- (CHDProactiveEntry)initWithDate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHDProactiveEntry;
  v6 = [(CHDProactiveEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, a3);
    v7->_hasRelevance = 0;
    v7->_score = 0.0;
    v7->_duration = 0.0;
  }

  return v7;
}

- (CHDProactiveEntry)initWithDate:(id)a3 score:(double)a4 duration:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = CHDProactiveEntry;
  v10 = [(CHDProactiveEntry *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_date, a3);
    v11->_hasRelevance = 1;
    v11->_score = a4;
    v11->_duration = a5;
  }

  return v11;
}

@end