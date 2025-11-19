@interface _HDDataCollectionObserverWrapper
- (id)description;
@end

@implementation _HDDataCollectionObserverWrapper

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  collectionInterval = self->_collectionInterval;
  if ([(HDDataCollectionObserverState *)self->_state isInForeground])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(HDDataCollectionObserverState *)self->_state hasRunningWorkout])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(HDDataCollectionObserverState *)self->_state hasBackgroundObserver])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(HDDataCollectionObserverState *)self->_state shouldTakeWorkoutDatabaseAssertion])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v3 stringWithFormat:@"<%@:%p> %@ (%lfs, inForeground=%@, hasRunningWorkout=%@, hasBackgroundObserver=%@, shouldTakeWorkoutDatabaseAssertion=%@)", v4, self, WeakRetained, *&collectionInterval, v7, v8, v9, v10];

  return v11;
}

@end