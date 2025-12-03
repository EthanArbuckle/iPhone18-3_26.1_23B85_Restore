@interface OnboardingRegionSelectionViewController
- (_TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didTapCancel;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation OnboardingRegionSelectionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  OnboardingRegionSelectionViewController.viewDidLoad()();
}

- (void)didTapCancel
{
  v3 = (self + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow);
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow);
  v5 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 64);
  selfCopy = self;
  v7(MEMORY[0x277D84F90], ObjectType, v5);
  v9 = *v3;
  v8 = v3[1];
  v10 = swift_getObjectType();
  (*(v8 + 128))(selfCopy, &protocol witness table for OnboardingRegionSelectionViewController, v10, v8);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  v5 = sub_2516B63A0();

  v6 = *(v5 + 16);

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_251702EE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251702EC4();
  viewCopy = view;
  selfCopy = self;
  v13 = OnboardingRegionSelectionViewController.tableView(_:cellForRowAt:)(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_251702EE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251702EC4();
  viewCopy = view;
  selfCopy = self;
  OnboardingRegionSelectionViewController.tableView(_:didSelectRowAt:)(viewCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  changeCopy = change;
  traitCollection = [(OnboardingRegionSelectionViewController *)selfCopy traitCollection];
  if (traitCollection)
  {
    v6 = traitCollection;
    if (changeCopy)
    {
      sub_25168CD90(0, &qword_27F4541E0, 0x277D75C80);
      v7 = changeCopy;
      v8 = sub_2517033B4();

      if (v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    sub_2516B72E8();
    v7 = changeCopy;
LABEL_9:

    goto LABEL_10;
  }

  if (changeCopy)
  {
    goto LABEL_8;
  }

LABEL_10:
}

- (_TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end