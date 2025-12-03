@interface WDClinicalAccountOnboardingSession
- (WDClinicalAccountOnboardingSession)init;
- (WDClinicalAccountOnboardingSession)initWithContext:(int64_t)context options:(unint64_t)options sourceIdentifier:(id)identifier profile:(id)profile analyticsManager:(id)manager;
- (id)makeDataTypeSelectionViewControllerForAccount:(id)account;
- (id)makeNecessaryScopesNotPresentViewControllerForAccount:(id)account;
- (void)didAddStaticSampleAccount:(id)account;
- (void)markShouldDismissOnboardingTileViewController;
- (void)onboardingWillDisappearWith:(id)with animated:(BOOL)animated;
- (void)persistEphemeralAccount:(id)account fromSharing:(BOOL)sharing completion:(id)completion;
- (void)submitClinicalSharingOnboardingStepAnalytic:(int64_t)analytic;
@end

@implementation WDClinicalAccountOnboardingSession

- (id)makeDataTypeSelectionViewControllerForAccount:(id)account
{
  sub_1D13905AC();
  v9[2] = self;
  v9[3] = account;
  accountCopy = account;
  selfCopy = self;
  v7 = sub_1D1327FA4(sub_1D13286E0, v9, "HealthRecordsUI/AccountOnboardingSession+ViewControllers.swift", 62);

  return v7;
}

- (id)makeNecessaryScopesNotPresentViewControllerForAccount:(id)account
{
  sub_1D13905AC();
  v7[2] = account;
  accountCopy = account;
  v5 = sub_1D132815C(sub_1D13286F8, v7, "HealthRecordsUI/AccountOnboardingSession+ViewControllers.swift", 62);

  return v5;
}

- (WDClinicalAccountOnboardingSession)initWithContext:(int64_t)context options:(unint64_t)options sourceIdentifier:(id)identifier profile:(id)profile analyticsManager:(id)manager
{
  if (identifier)
  {
    v11 = sub_1D139016C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  profileCopy = profile;
  managerCopy = manager;
  v16 = sub_1D1369698(context, options, v11, v13, profileCopy, managerCopy);

  return v16;
}

- (void)submitClinicalSharingOnboardingStepAnalytic:(int64_t)analytic
{
  selfCopy = self;
  sub_1D1366EA8(analytic);
}

- (void)persistEphemeralAccount:(id)account fromSharing:(BOOL)sharing completion:(id)completion
{
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = sub_1D13905DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = self;
  *(v15 + 40) = account;
  *(v15 + 48) = sharing;
  *(v15 + 56) = sub_1D136A14C;
  *(v15 + 64) = v13;
  accountCopy = account;
  selfCopy = self;
  sub_1D107877C(0, 0, v11, &unk_1D13B38D0, v15);
}

- (void)didAddStaticSampleAccount:(id)account
{
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1D138D5EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1D138D5CC();
  v14 = sub_1D13905DC();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  (*(v8 + 16))(v10, v13, v7);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = self;
  (*(v8 + 32))(&v16[v15], v10, v7);
  selfCopy = self;
  sub_1D107877C(0, 0, v6, &unk_1D13B38C8, v16);

  (*(v8 + 8))(v13, v7);
}

- (void)markShouldDismissOnboardingTileViewController
{
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1D13905DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_1D107877C(0, 0, v5, &unk_1D13AEC50, v7);
}

- (void)onboardingWillDisappearWith:(id)with animated:(BOOL)animated
{
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_1D13905DC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = self;
  *(v11 + 40) = animated;
  *(v11 + 48) = with;
  withCopy = with;
  selfCopy = self;
  sub_1D107877C(0, 0, v9, &unk_1D13B38B8, v11);
}

- (WDClinicalAccountOnboardingSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end