@interface IneligibleForSyncOnboardingViewController
- (_TtC9MomentsUI41IneligibleForSyncOnboardingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancelSheet;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation IneligibleForSyncOnboardingViewController

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  IneligibleForSyncOnboardingViewController.viewWillDisappear(_:)(disappear);
}

- (void)cancelSheet
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x70);
  selfCopy = self;
  v2(v9);
  if (v9[3])
  {
    outlined init with copy of DBObject(v9, v6);
    outlined destroy of IneligibleForSyncOnboardingViewControllerDelegate?(v9);
    v4 = v7;
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v5 + 8))(v4, v5);

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {

    outlined destroy of IneligibleForSyncOnboardingViewControllerDelegate?(v9);
  }
}

- (_TtC9MomentsUI41IneligibleForSyncOnboardingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end