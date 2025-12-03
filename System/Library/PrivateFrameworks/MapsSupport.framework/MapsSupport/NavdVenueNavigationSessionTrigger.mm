@interface NavdVenueNavigationSessionTrigger
- (BOOL)isTrue;
- (NavdVenueNavigationSessionTrigger)init;
- (void)didNavigationStateChange;
@end

@implementation NavdVenueNavigationSessionTrigger

- (NavdVenueNavigationSessionTrigger)init
{
  v5.receiver = self;
  v5.super_class = NavdVenueNavigationSessionTrigger;
  v2 = [(NavdVenueNavigationSessionTrigger *)&v5 initWithName:@"NavdVenueNavigationSessionTrigger"];
  v3 = v2;
  if (v2)
  {
    v2->_previousShouldRun = [(NavdVenueNavigationSessionTrigger *)v2 isTrue];
  }

  return v3;
}

- (BOOL)isTrue
{
  v2 = +[MNNavdStateUpdater sharedUpdater];
  isNavigatingOrPredictingDestination = [v2 isNavigatingOrPredictingDestination];

  return isNavigatingOrPredictingDestination ^ 1;
}

- (void)didNavigationStateChange
{
  isTrue = [(NavdVenueNavigationSessionTrigger *)self isTrue];
  if (self->_previousShouldRun != isTrue)
  {
    self->_previousShouldRun = isTrue;
    if (isTrue)
    {

      [(NavdVenueNavigationSessionTrigger *)self triggerMyObservers];
    }
  }
}

@end