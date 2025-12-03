@interface RecentsHeaderButtonsView
- (void)didTapNewCallButton;
- (void)didTapNewLinkButton;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RecentsHeaderButtonsView

- (void)didTapNewCallButton
{
  selfCopy = self;
  RecentsHeaderButtonsView.didTapNewCallButton()();
}

- (void)didTapNewLinkButton
{
  selfCopy = self;
  RecentsHeaderButtonsView.didTapNewLinkButton()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  RecentsHeaderButtonsView.traitCollectionDidChange(_:)(v9);
}

@end