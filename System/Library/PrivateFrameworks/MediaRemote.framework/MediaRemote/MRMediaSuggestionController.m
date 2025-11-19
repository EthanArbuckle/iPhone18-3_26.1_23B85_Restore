@interface MRMediaSuggestionController
- (MRMediaSuggestionControllerDelegate)delegate;
@end

@implementation MRMediaSuggestionController

- (MRMediaSuggestionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end