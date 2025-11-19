@interface SharedWithYou.HighlightsProvider
- (void)highlightCenter:(id)a3 didRemoveHighlights:(id)a4;
- (void)highlightCenterDidAddHighlights:(id)a3;
- (void)highlightCenterSettingsEnablementHasChanged:(id)a3;
@end

@implementation SharedWithYou.HighlightsProvider

- (void)highlightCenter:(id)a3 didRemoveHighlights:(id)a4
{
  sub_216A73F14();
  sub_21700E824();
  v6 = a3;
  v7 = self;
  sub_216BE66FC();
}

- (void)highlightCenterDidAddHighlights:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_216BE68BC();
}

- (void)highlightCenterSettingsEnablementHasChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_216BE6934();
}

@end