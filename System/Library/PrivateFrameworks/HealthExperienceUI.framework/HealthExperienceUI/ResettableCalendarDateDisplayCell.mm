@interface ResettableCalendarDateDisplayCell
- (void)didTapClear;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ResettableCalendarDateDisplayCell

- (void)didTapClear
{
  selfCopy = self;
  sub_1BA072C54();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BA073D4C(change);
}

@end