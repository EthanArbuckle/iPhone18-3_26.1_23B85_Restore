@interface WDClinicalAccountOnboardingSession
- (WDClinicalAccountOnboardingSession)init;
- (WDClinicalAccountOnboardingSession)initWithContext:(int64_t)a3 options:(unint64_t)a4 sourceIdentifier:(id)a5 profile:(id)a6 analyticsManager:(id)a7;
- (id)makeDataTypeSelectionViewControllerForAccount:(id)a3;
- (id)makeNecessaryScopesNotPresentViewControllerForAccount:(id)a3;
- (void)didAddStaticSampleAccount:(id)a3;
- (void)markShouldDismissOnboardingTileViewController;
- (void)onboardingWillDisappearWith:(id)a3 animated:(BOOL)a4;
- (void)persistEphemeralAccount:(id)a3 fromSharing:(BOOL)a4 completion:(id)a5;
- (void)submitClinicalSharingOnboardingStepAnalytic:(int64_t)a3;
@end

@implementation WDClinicalAccountOnboardingSession

- (id)makeDataTypeSelectionViewControllerForAccount:(id)a3
{
  sub_1D13905AC();
  v9[2] = self;
  v9[3] = a3;
  v5 = a3;
  v6 = self;
  v7 = sub_1D1327FA4(sub_1D13286E0, v9, "HealthRecordsUI/AccountOnboardingSession+ViewControllers.swift", 62);

  return v7;
}

- (id)makeNecessaryScopesNotPresentViewControllerForAccount:(id)a3
{
  sub_1D13905AC();
  v7[2] = a3;
  v4 = a3;
  v5 = sub_1D132815C(sub_1D13286F8, v7, "HealthRecordsUI/AccountOnboardingSession+ViewControllers.swift", 62);

  return v5;
}

- (WDClinicalAccountOnboardingSession)initWithContext:(int64_t)a3 options:(unint64_t)a4 sourceIdentifier:(id)a5 profile:(id)a6 analyticsManager:(id)a7
{
  if (a5)
  {
    v11 = sub_1D139016C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = a6;
  v15 = a7;
  v16 = sub_1D1369698(a3, a4, v11, v13, v14, v15);

  return v16;
}

- (void)submitClinicalSharingOnboardingStepAnalytic:(int64_t)a3
{
  v4 = self;
  sub_1D1366EA8(a3);
}

- (void)persistEphemeralAccount:(id)a3 fromSharing:(BOOL)a4 completion:(id)a5
{
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = sub_1D13905DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = self;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = sub_1D136A14C;
  *(v15 + 64) = v13;
  v16 = a3;
  v17 = self;
  sub_1D107877C(0, 0, v11, &unk_1D13B38D0, v15);
}

- (void)didAddStaticSampleAccount:(id)a3
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
  v17 = self;
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
  v8 = self;
  sub_1D107877C(0, 0, v5, &unk_1D13AEC50, v7);
}

- (void)onboardingWillDisappearWith:(id)a3 animated:(BOOL)a4
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
  *(v11 + 40) = a4;
  *(v11 + 48) = a3;
  v12 = a3;
  v13 = self;
  sub_1D107877C(0, 0, v9, &unk_1D13B38B8, v11);
}

- (WDClinicalAccountOnboardingSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end