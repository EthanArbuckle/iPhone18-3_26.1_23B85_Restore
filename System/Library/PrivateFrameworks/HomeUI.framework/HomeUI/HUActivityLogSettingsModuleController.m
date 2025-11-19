@interface HUActivityLogSettingsModuleController
- (Class)cellClassForItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
@end

@implementation HUActivityLogSettingsModuleController

- (Class)cellClassForItem:(id)a3
{
  sub_20CECF940(0, &qword_27C81E910);

  return swift_getObjCClassFromMetadata();
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20CFC8614(v6);
}

@end