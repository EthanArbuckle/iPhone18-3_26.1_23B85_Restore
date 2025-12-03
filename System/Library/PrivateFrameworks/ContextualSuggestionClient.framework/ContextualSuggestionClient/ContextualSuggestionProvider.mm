@interface ContextualSuggestionProvider
- (void)serviceDidUpdateWithSnapshot:(id)snapshot;
@end

@implementation ContextualSuggestionProvider

- (void)serviceDidUpdateWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;

  sub_244199110(snapshotCopy);
}

@end