@interface DBFocusGuide
- (void)_didUpdateFocusToPreferredFocusedView;
@end

@implementation DBFocusGuide

- (void)_didUpdateFocusToPreferredFocusedView
{
  focusUpdateHandler = [(DBFocusGuide *)self focusUpdateHandler];
  focusUpdateHandler[2]();
}

@end