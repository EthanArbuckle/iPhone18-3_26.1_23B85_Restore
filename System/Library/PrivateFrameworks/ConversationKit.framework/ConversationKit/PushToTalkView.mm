@interface PushToTalkView
- (void)openPTTApp:(id)app;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PushToTalkView

- (void)openPTTApp:(id)app
{
  appCopy = app;
  selfCopy = self;
  PushToTalkView.openPTTApp(_:)(selfCopy);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  PushToTalkView.traitCollectionDidChange(_:)(v9);
}

@end