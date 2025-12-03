@interface ActivitiesCustomizationViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC16MagnifierSupport37ActivitiesCustomizationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_commitAndDismiss;
- (void)didToggleActivitySwitch:(id)switch;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ActivitiesCustomizationViewController

- (void)_commitAndDismiss
{
  selfCopy = self;
  sub_257C61578();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257C616A8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257C61B24(appear);
}

- (_TtC16MagnifierSupport37ActivitiesCustomizationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_257ECF500();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_257C61CF8(v5, v7, bundle);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section == 1)
  {
    return (*(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities))[2];
  }

  else
  {
    return section == 0;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_257C68054();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  sub_257C68830(section);
  if (v4)
  {
    v5 = sub_257ECF4C0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)didToggleActivitySwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257C68938(switchCopy);
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  (*(v5 + 8))(v7, v4);
  return 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  sub_257C62B54(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_257C68E18(v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    v4 = sub_257DFF3FC();
    sub_257C7C61C();

    sub_257E0EF78(1);
    swift_unknownObjectRelease();
  }
}

@end