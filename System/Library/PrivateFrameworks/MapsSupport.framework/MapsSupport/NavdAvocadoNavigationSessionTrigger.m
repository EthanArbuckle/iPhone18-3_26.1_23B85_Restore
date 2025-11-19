@interface NavdAvocadoNavigationSessionTrigger
- (BOOL)isTrue;
- (NavdAvocadoNavigationSessionTrigger)init;
- (void)didNavigationStateChange;
@end

@implementation NavdAvocadoNavigationSessionTrigger

- (BOOL)isTrue
{
  v2 = +[MNNavdStateUpdater sharedUpdater];
  v3 = [v2 isNavigatingWithETA];

  return v3 ^ 1;
}

- (NavdAvocadoNavigationSessionTrigger)init
{
  v3.receiver = self;
  v3.super_class = NavdAvocadoNavigationSessionTrigger;
  return [(NavdAvocadoNavigationSessionTrigger *)&v3 initWithName:@"NavdAvocadoNavigationSessionTrigger"];
}

- (void)didNavigationStateChange
{
  v3 = ![(NavdAvocadoNavigationSessionTrigger *)self isTrue];
  if (self->_isNavigating != v3)
  {
    self->_isNavigating = v3;

    [(NavdAvocadoNavigationSessionTrigger *)self triggerMyObservers];
  }
}

@end