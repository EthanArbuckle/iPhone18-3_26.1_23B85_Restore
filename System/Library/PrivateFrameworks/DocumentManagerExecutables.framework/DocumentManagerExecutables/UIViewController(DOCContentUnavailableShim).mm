@interface UIViewController(DOCContentUnavailableShim)
- (id)docUnavailableSearchResultsText;
@end

@implementation UIViewController(DOCContentUnavailableShim)

- (id)docUnavailableSearchResultsText
{
  v1 = [a1 _contentUnavailableConfigurationState];
  v2 = [v1 searchControllerText];

  return v2;
}

@end