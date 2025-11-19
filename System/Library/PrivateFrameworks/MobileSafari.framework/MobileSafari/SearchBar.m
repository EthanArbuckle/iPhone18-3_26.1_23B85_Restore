@interface SearchBar
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (void)didReceiveHover:(id)a3;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)updateConstraints;
@end

@implementation SearchBar

- (void)didReceiveHover:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [v4 state];
  if (v5 != 1)
  {
    v5 = [v4 state] == 2;
  }

  sub_18BB87304(v5);
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
  v2 = self;
  sub_18BB89950();
}

- (void)updateConstraints
{
  v2 = self;
  sub_18BB89AD0();
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari9SearchBar_isEnabled) == 1)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari9SearchBar_shouldBeginSearching);
    v4 = self;
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