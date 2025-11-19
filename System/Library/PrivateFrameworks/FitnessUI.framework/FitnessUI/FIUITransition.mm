@interface FIUITransition
- (FIUIState)toState;
@end

@implementation FIUITransition

- (FIUIState)toState
{
  WeakRetained = objc_loadWeakRetained(&self->_toState);

  return WeakRetained;
}

@end