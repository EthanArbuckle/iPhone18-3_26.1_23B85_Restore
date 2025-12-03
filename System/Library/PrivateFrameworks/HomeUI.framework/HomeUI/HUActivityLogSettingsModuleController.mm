@interface HUActivityLogSettingsModuleController
- (Class)cellClassForItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
@end

@implementation HUActivityLogSettingsModuleController

- (Class)cellClassForItem:(id)item
{
  sub_20CECF940(0, &qword_27C81E910);

  return swift_getObjCClassFromMetadata();
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  sub_20CFC8614(cellCopy);
}

@end