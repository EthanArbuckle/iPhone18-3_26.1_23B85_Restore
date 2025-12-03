@interface SearchBar
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (void)didReceiveHover:(id)hover;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)updateConstraints;
@end

@implementation SearchBar

- (void)didReceiveHover:(id)hover
{
  hoverCopy = hover;
  selfCopy = self;
  state = [hoverCopy state];
  if (state != 1)
  {
    state = [hoverCopy state] == 2;
  }

  sub_18BB87304(state);
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchBar();
  v2 = v3.receiver;
  [(SearchBar *)&v3 layoutMarginsDidChange];
  [v2 setNeedsUpdateConstraints];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_18BB89950();
}

- (void)updateConstraints
{
  selfCopy = self;
  sub_18BB89AD0();
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari9SearchBar_isEnabled) == 1)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari9SearchBar_shouldBeginSearching);
    selfCopy = self;
    v5 = sub_18BC1E1A8();
    v6 = v3(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

@end