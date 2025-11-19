@interface ResettableCalendarDateDisplayCell
- (void)didTapClear;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ResettableCalendarDateDisplayCell

- (void)didTapClear
{
  v2 = self;
  sub_1BA072C54();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BA073D4C(a3);
}

@end