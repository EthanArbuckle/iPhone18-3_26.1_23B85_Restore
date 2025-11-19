@interface FCCWeeklyGoalDisplayContext
- (FCCWeeklyGoalDisplayContext)initWithDictionary:(id)a3;
- (FCCWeeklyGoalDisplayContext)initWithDisplayCount:(int64_t)a3 lastDisplayDate:(id)a4;
- (id)dictionaryRepresentation;
@end

@implementation FCCWeeklyGoalDisplayContext

- (FCCWeeklyGoalDisplayContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"DisplayCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 objectForKeyedSubscript:@"LastDate"];
  v8 = [(FCCWeeklyGoalDisplayContext *)self initWithDisplayCount:v6 lastDisplayDate:v7];

  return v8;
}

- (FCCWeeklyGoalDisplayContext)initWithDisplayCount:(int64_t)a3 lastDisplayDate:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FCCWeeklyGoalDisplayContext;
  v8 = [(FCCWeeklyGoalDisplayContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_displayCount = a3;
    objc_storeStrong(&v8->_lastDisplayDate, a4);
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"DisplayCount";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_displayCount];
  v7[1] = @"LastDate";
  v8[0] = v3;
  v8[1] = self->_lastDisplayDate;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end