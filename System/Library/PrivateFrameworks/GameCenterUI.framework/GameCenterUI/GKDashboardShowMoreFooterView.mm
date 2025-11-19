@interface GKDashboardShowMoreFooterView
- (NSString)showMoreText;
- (id)actionHandler;
- (void)didTap:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setActionHandler:(id)a3;
- (void)setShowMoreText:(id)a3;
@end

@implementation GKDashboardShowMoreFooterView

- (id)actionHandler
{
  v2 = GKDashboardShowMoreFooterView.actionHandler.getter();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24E00B24C;
    v6[3] = &block_descriptor_8;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setActionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24DFA0D08;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  GKDashboardShowMoreFooterView.actionHandler.setter(v4, v5);
}

- (NSString)showMoreText
{
  GKDashboardShowMoreFooterView.showMoreText.getter();
  if (v2)
  {
    v3 = sub_24E347CB8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShowMoreText:(id)a3
{
  if (a3)
  {
    v4 = sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  GKDashboardShowMoreFooterView.showMoreText.setter(v4, v6);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  GKDashboardShowMoreFooterView.didUpdateFocus(in:with:)(v6, v7);
}

- (void)layoutSubviews
{
  v2 = self;
  GKDashboardShowMoreFooterView.layoutSubviews()();
}

- (void)didTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E08A060();
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  sub_24DF88A8C(0, &qword_27F1E2858);
  sub_24E08A394();
  v6 = sub_24E348138();
  v7 = a4;
  v8 = self;
  GKDashboardShowMoreFooterView.pressesEnded(_:with:)(v6, a4);
}

@end