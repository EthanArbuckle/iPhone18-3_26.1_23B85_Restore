@interface GKDashboardShowMoreFooterView
- (NSString)showMoreText;
- (id)actionHandler;
- (void)didTap:(id)tap;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setActionHandler:(id)handler;
- (void)setShowMoreText:(id)text;
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

- (void)setActionHandler:(id)handler
{
  v4 = _Block_copy(handler);
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

  selfCopy = self;
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

- (void)setShowMoreText:(id)text
{
  if (text)
  {
    v4 = sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  GKDashboardShowMoreFooterView.showMoreText.setter(v4, v6);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  GKDashboardShowMoreFooterView.didUpdateFocus(in:with:)(contextCopy, coordinatorCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  GKDashboardShowMoreFooterView.layoutSubviews()();
}

- (void)didTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_24E08A060();
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  sub_24DF88A8C(0, &qword_27F1E2858);
  sub_24E08A394();
  v6 = sub_24E348138();
  eventCopy = event;
  selfCopy = self;
  GKDashboardShowMoreFooterView.pressesEnded(_:with:)(v6, event);
}

@end