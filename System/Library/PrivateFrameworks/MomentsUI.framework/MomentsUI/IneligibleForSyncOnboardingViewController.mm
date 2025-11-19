@interface IneligibleForSyncOnboardingViewController
- (_TtC9MomentsUI41IneligibleForSyncOnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancelSheet;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation IneligibleForSyncOnboardingViewController

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  IneligibleForSyncOnboardingViewController.viewWillDisappear(_:)(a3);
}

- (void)cancelSheet
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x70);
  v3 = self;
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

- (_TtC9MomentsUI41IneligibleForSyncOnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end