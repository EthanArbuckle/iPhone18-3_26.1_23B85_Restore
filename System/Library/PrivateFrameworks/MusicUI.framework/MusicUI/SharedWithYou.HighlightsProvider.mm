@interface SharedWithYou.HighlightsProvider
- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights;
- (void)highlightCenterDidAddHighlights:(id)highlights;
- (void)highlightCenterSettingsEnablementHasChanged:(id)changed;
@end

@implementation SharedWithYou.HighlightsProvider

- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights
{
  sub_216A73F14();
  sub_21700E824();
  centerCopy = center;
  selfCopy = self;
  sub_216BE66FC();
}

- (void)highlightCenterDidAddHighlights:(id)highlights
{
  highlightsCopy = highlights;
  selfCopy = self;
  sub_216BE68BC();
}

- (void)highlightCenterSettingsEnablementHasChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_216BE6934();
}

@end