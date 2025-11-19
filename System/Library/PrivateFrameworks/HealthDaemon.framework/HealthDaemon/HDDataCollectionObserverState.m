@interface HDDataCollectionObserverState
+ (id)dataCollectionObserverStateInForeground:(BOOL)a3 hasRunningWorkout:(BOOL)a4 hasBackgroundObserver:(BOOL)a5 shouldTakeWorkoutDatabaseAssertion:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation HDDataCollectionObserverState

+ (id)dataCollectionObserverStateInForeground:(BOOL)a3 hasRunningWorkout:(BOOL)a4 hasBackgroundObserver:(BOOL)a5 shouldTakeWorkoutDatabaseAssertion:(BOOL)a6
{
  v10 = objc_alloc_init(HDDataCollectionObserverState);
  v10->_isInForeground = a3;
  v10->_hasRunningWorkout = a4;
  v10->_hasBackgroundObserver = a5;
  v10->_shouldTakeWorkoutDatabaseAssertion = a6;

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[HDDataCollectionObserverState allocWithZone:?]];
  *(result + 8) = self->_isInForeground;
  *(result + 9) = self->_hasRunningWorkout;
  *(result + 10) = self->_hasBackgroundObserver;
  *(result + 11) = self->_shouldTakeWorkoutDatabaseAssertion;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_isInForeground == v4[8] && self->_hasRunningWorkout == v4[9] && self->_hasBackgroundObserver == v4[10] && self->_shouldTakeWorkoutDatabaseAssertion == v4[11];

  return v5;
}

- (id)description
{
  v2 = @"NO";
  if (self->_isInForeground)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_hasRunningWorkout)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_hasBackgroundObserver)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_shouldTakeWorkoutDatabaseAssertion)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"(isInForeground=%@, hasRunningWorkout=%@, hasBackgroundObserver=%@, shouldTakeWorkoutDatabaseAssertion=%@)", v3, v4, v5, v2];
}

@end