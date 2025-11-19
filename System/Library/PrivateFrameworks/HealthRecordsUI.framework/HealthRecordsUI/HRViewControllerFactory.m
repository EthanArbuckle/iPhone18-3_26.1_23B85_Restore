@interface HRViewControllerFactory
+ (HRViewControllerFactory)shared;
- (HRViewControllerFactory)init;
- (id)makeAccountDetailViewControllerForAccount:(id)a3 profile:(id)a4 sourceIdentifier:(id)a5;
- (id)makeAlphabeticalViewControllerForCategory:(id)a3 usingProfile:(id)a4;
- (id)makeDetailViewControllerForRecord:(id)a3 usingProfile:(id)a4;
- (id)makeFailedToOnboardAccountAlertControllerToGateway:(id)a3 error:(id)a4;
- (id)makeImproveHealthRecordsPrivacyPresenter;
- (id)makeOutOfRangeLabsViewControllerUsingProfile:(id)a3;
- (id)makeTimelineViewControllerForCategory:(id)a3 showsInitialSearchBar:(BOOL)a4 usingProfile:(id)a5 filterPredicatesByType:(id)a6;
- (id)makeViewControllerForCategory:(id)a3 usingProfile:(id)a4;
- (id)makeViewControllerForRecord:(id)a3 usingProfile:(id)a4;
- (void)makeAndPresentOnboardingTileViewControllerFor:(id)a3 from:(id)a4 sourceIdentifier:(id)a5 animated:(BOOL)a6 completion:(id)a7;
@end

@implementation HRViewControllerFactory

+ (HRViewControllerFactory)shared
{
  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE06AA70;

  return v3;
}

- (void)makeAndPresentOnboardingTileViewControllerFor:(id)a3 from:(id)a4 sourceIdentifier:(id)a5 animated:(BOOL)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = v12;
  if (a5)
  {
    v14 = sub_1D139016C();
    a5 = v15;
    if (v13)
    {
LABEL_3:
      v16 = swift_allocObject();
      *(v16 + 16) = v13;
      v13 = sub_1D1116948;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_1D129A740(v17, v18, v14, a5, a6, v13, v16);
  sub_1D102CC60(v13);
}

- (id)makeAccountDetailViewControllerForAccount:(id)a3 profile:(id)a4 sourceIdentifier:(id)a5
{
  if (a5)
  {
    v7 = sub_1D139016C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v12 = 0;
  objc_allocWithZone(type metadata accessor for ClinicalAccountDetailsViewController());
  v10 = sub_1D127988C(a3, a4, &v12, v7, v9);

  return v10;
}

- (id)makeFailedToOnboardAccountAlertControllerToGateway:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_1D1299A40(a3, v8);

  return v10;
}

- (id)makeViewControllerForRecord:(id)a3 usingProfile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1D1298D48(v6, v7);

  return v9;
}

- (id)makeDetailViewControllerForRecord:(id)a3 usingProfile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1D129B020(v6, v7);

  return v9;
}

- (HRViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ViewControllerFactory();
  return [(HRViewControllerFactory *)&v3 init];
}

- (id)makeViewControllerForCategory:(id)a3 usingProfile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  ViewControllerFactory.makeViewController(for:using:)(v9, v6, v7);
  v11 = v10;

  return v11;
}

- (id)makeTimelineViewControllerForCategory:(id)a3 showsInitialSearchBar:(BOOL)a4 usingProfile:(id)a5 filterPredicatesByType:(id)a6
{
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  if (a6)
  {
    sub_1D106F934(0, &qword_1EE06B780);
    sub_1D106F934(0, &qword_1EE06B790);
    sub_1D1127F80();
    a6 = sub_1D138FFFC();
  }

  v15 = sub_1D138D5EC();
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v16(v11, 1, 1, v15);
  objc_allocWithZone(type metadata accessor for MedicalRecordTimelineViewController());
  v17 = a3;
  v18 = a5;
  v19 = sub_1D107E9F4(v18, a3, v14, 0, 0, v11, 0, a6, 0);

  return v19;
}

- (id)makeAlphabeticalViewControllerForCategory:(id)a3 usingProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_1D123E1C4(v5, v10);
  v7 = objc_allocWithZone(type metadata accessor for ConceptListViewController());
  v8 = sub_1D133BFA4(v10, v6);

  return v8;
}

- (id)makeOutOfRangeLabsViewControllerUsingProfile:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s15HealthRecordsUI21ViewControllerFactoryC018makeOutOfRangeLabsdE05usingSo06UIViewE0CSo9HRProfileC_tF_0(v4);

  return v6;
}

- (id)makeImproveHealthRecordsPrivacyPresenter
{
  v2 = sub_1D139012C();
  v3 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v3)
  {

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end