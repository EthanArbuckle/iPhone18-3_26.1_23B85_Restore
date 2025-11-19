@interface SFBookmarksCollectionViewControllerSegmentedControlCell
- (SFBookmarksCollectionViewControllerSegmentedControlCell)initWithCoder:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation SFBookmarksCollectionViewControllerSegmentedControlCell

- (SFBookmarksCollectionViewControllerSegmentedControlCell)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR___SFBookmarksCollectionViewControllerSegmentedControlCell_segmentedControl;
  *(&self->super.super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DCF38]) initWithItems_];
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_18BC1F738();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F718();
  v8 = self;
  v9 = sub_18BC1F708();
  v10 = _s20SegmentedControlCellCMa();
  v11.receiver = v8;
  v11.super_class = v10;
  [(SFBookmarksCollectionViewControllerSegmentedControlCell *)&v11 _bridgedUpdateConfigurationUsingState:v9];

  [*(&v8->super.super.super.super.super.isa + OBJC_IVAR___SFBookmarksCollectionViewControllerSegmentedControlCell_segmentedControl) setEnabled_];
  (*(v5 + 8))(v7, v4);
}

@end