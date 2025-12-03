@interface UIViewController(DOCContentUnavailableShim)
- (id)docUnavailableSearchResultsText;
@end

@implementation UIViewController(DOCContentUnavailableShim)

- (id)docUnavailableSearchResultsText
{
  _contentUnavailableConfigurationState = [self _contentUnavailableConfigurationState];
  searchControllerText = [_contentUnavailableConfigurationState searchControllerText];

  return searchControllerText;
}

@end