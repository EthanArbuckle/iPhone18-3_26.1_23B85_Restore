@interface HDDataCollectionObserverState
+ (id)dataCollectionObserverStateInForeground:(BOOL)foreground hasRunningWorkout:(BOOL)workout hasBackgroundObserver:(BOOL)observer shouldTakeWorkoutDatabaseAssertion:(BOOL)assertion;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation HDDataCollectionObserverState

+ (id)dataCollectionObserverStateInForeground:(BOOL)foreground hasRunningWorkout:(BOOL)workout hasBackgroundObserver:(BOOL)observer shouldTakeWorkoutDatabaseAssertion:(BOOL)assertion
{
  v10 = objc_alloc_init(HDDataCollectionObserverState);
  v10->_isInForeground = foreground;
  v10->_hasRunningWorkout = workout;
  v10->_hasBackgroundObserver = observer;
  v10->_shouldTakeWorkoutDatabaseAssertion = assertion;

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[HDDataCollectionObserverState allocWithZone:?]];
  *(result + 8) = self->_isInForeground;
  *(result + 9) = self->_hasRunningWorkout;
  *(result + 10) = self->_hasBackgroundObserver;
  *(result + 11) = self->_shouldTakeWorkoutDatabaseAssertion;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_isInForeground == equalCopy[8] && self->_hasRunningWorkout == equalCopy[9] && self->_hasBackgroundObserver == equalCopy[10] && self->_shouldTakeWorkoutDatabaseAssertion == equalCopy[11];

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