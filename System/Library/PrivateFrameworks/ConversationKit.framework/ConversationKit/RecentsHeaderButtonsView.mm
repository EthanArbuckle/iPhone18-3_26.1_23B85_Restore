@interface RecentsHeaderButtonsView
- (void)didTapNewCallButton;
- (void)didTapNewLinkButton;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation RecentsHeaderButtonsView

- (void)didTapNewCallButton
{
  v2 = self;
  RecentsHeaderButtonsView.didTapNewCallButton()();
}

- (void)didTapNewLinkButton
{
  v2 = self;
  RecentsHeaderButtonsView.didTapNewLinkButton()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  RecentsHeaderButtonsView.traitCollectionDidChange(_:)(v9);
}

@end