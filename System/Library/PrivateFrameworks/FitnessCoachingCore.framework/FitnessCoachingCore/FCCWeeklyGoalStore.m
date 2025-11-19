@interface FCCWeeklyGoalStore
- (FCCWeeklyGoalStore)init;
- (id)currentDisplayContext;
- (void)updateDisplayContext:(id)a3;
@end

@implementation FCCWeeklyGoalStore

- (FCCWeeklyGoalStore)init
{
  v6.receiver = self;
  v6.super_class = FCCWeeklyGoalStore;
  v2 = [(FCCWeeklyGoalStore *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.FitnessCoaching"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;
  }

  return v2;
}

- (id)currentDisplayContext
{
  v2 = [(NSUserDefaults *)self->_userDefaults dictionaryForKey:@"WeeklyGoalDisplayContext"];
  v3 = [[FCCWeeklyGoalDisplayContext alloc] initWithDictionary:v2];

  return v3;
}

- (void)updateDisplayContext:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(NSUserDefaults *)self->_userDefaults setObject:v4 forKey:@"WeeklyGoalDisplayContext"];
}

@end