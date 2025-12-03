@interface MedicalRecordTimelineHeaderItemCell
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MedicalRecordTimelineHeaderItemCell

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1D12E7C20(change);
}

@end