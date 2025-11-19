@interface DBFocusGuide
- (void)_didUpdateFocusToPreferredFocusedView;
@end

@implementation DBFocusGuide

- (void)_didUpdateFocusToPreferredFocusedView
{
  v2 = [(DBFocusGuide *)self focusUpdateHandler];
  v2[2]();
}

@end