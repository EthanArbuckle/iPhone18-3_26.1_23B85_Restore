@interface PushToTalkView
- (void)openPTTApp:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PushToTalkView

- (void)openPTTApp:(id)a3
{
  v4 = a3;
  v5 = self;
  PushToTalkView.openPTTApp(_:)(v5);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  PushToTalkView.traitCollectionDidChange(_:)(v9);
}

@end