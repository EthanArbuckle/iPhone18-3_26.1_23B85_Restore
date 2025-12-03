@interface HRViewControllerFactory
+ (HRViewControllerFactory)shared;
- (HRViewControllerFactory)init;
- (id)makeAccountDetailViewControllerForAccount:(id)account profile:(id)profile sourceIdentifier:(id)identifier;
- (id)makeAlphabeticalViewControllerForCategory:(id)category usingProfile:(id)profile;
- (id)makeDetailViewControllerForRecord:(id)record usingProfile:(id)profile;
- (id)makeFailedToOnboardAccountAlertControllerToGateway:(id)gateway error:(id)error;
- (id)makeImproveHealthRecordsPrivacyPresenter;
- (id)makeOutOfRangeLabsViewControllerUsingProfile:(id)profile;
- (id)makeTimelineViewControllerForCategory:(id)category showsInitialSearchBar:(BOOL)bar usingProfile:(id)profile filterPredicatesByType:(id)type;
- (id)makeViewControllerForCategory:(id)category usingProfile:(id)profile;
- (id)makeViewControllerForRecord:(id)record usingProfile:(id)profile;
- (void)makeAndPresentOnboardingTileViewControllerFor:(id)for from:(id)from sourceIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion;
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

- (void)makeAndPresentOnboardingTileViewControllerFor:(id)for from:(id)from sourceIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion
{
  v12 = _Block_copy(completion);
  v13 = v12;
  if (identifier)
  {
    v14 = sub_1D139016C();
    identifier = v15;
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
  forCopy = for;
  fromCopy = from;
  selfCopy = self;
  sub_1D129A740(forCopy, fromCopy, v14, identifier, animated, v13, v16);
  sub_1D102CC60(v13);
}

- (id)makeAccountDetailViewControllerForAccount:(id)account profile:(id)profile sourceIdentifier:(id)identifier
{
  if (identifier)
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
  v10 = sub_1D127988C(account, profile, &v12, v7, v9);

  return v10;
}

- (id)makeFailedToOnboardAccountAlertControllerToGateway:(id)gateway error:(id)error
{
  gatewayCopy = gateway;
  errorCopy = error;
  selfCopy = self;
  v10 = sub_1D1299A40(gateway, errorCopy);

  return v10;
}

- (id)makeViewControllerForRecord:(id)record usingProfile:(id)profile
{
  recordCopy = record;
  profileCopy = profile;
  selfCopy = self;
  v9 = sub_1D1298D48(recordCopy, profileCopy);

  return v9;
}

- (id)makeDetailViewControllerForRecord:(id)record usingProfile:(id)profile
{
  recordCopy = record;
  profileCopy = profile;
  selfCopy = self;
  v9 = sub_1D129B020(recordCopy, profileCopy);

  return v9;
}

- (HRViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ViewControllerFactory();
  return [(HRViewControllerFactory *)&v3 init];
}

- (id)makeViewControllerForCategory:(id)category usingProfile:(id)profile
{
  categoryCopy = category;
  profileCopy = profile;
  selfCopy = self;
  ViewControllerFactory.makeViewController(for:using:)(v9, categoryCopy, profileCopy);
  v11 = v10;

  return v11;
}

- (id)makeTimelineViewControllerForCategory:(id)category showsInitialSearchBar:(BOOL)bar usingProfile:(id)profile filterPredicatesByType:(id)type
{
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  if (type)
  {
    sub_1D106F934(0, &qword_1EE06B780);
    sub_1D106F934(0, &qword_1EE06B790);
    sub_1D1127F80();
    type = sub_1D138FFFC();
  }

  v15 = sub_1D138D5EC();
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v16(v11, 1, 1, v15);
  objc_allocWithZone(type metadata accessor for MedicalRecordTimelineViewController());
  categoryCopy = category;
  profileCopy = profile;
  v19 = sub_1D107E9F4(profileCopy, category, v14, 0, 0, v11, 0, type, 0);

  return v19;
}

- (id)makeAlphabeticalViewControllerForCategory:(id)category usingProfile:(id)profile
{
  categoryCopy = category;
  profileCopy = profile;
  sub_1D123E1C4(categoryCopy, v10);
  v7 = objc_allocWithZone(type metadata accessor for ConceptListViewController());
  v8 = sub_1D133BFA4(v10, profileCopy);

  return v8;
}

- (id)makeOutOfRangeLabsViewControllerUsingProfile:(id)profile
{
  profileCopy = profile;
  selfCopy = self;
  v6 = _s15HealthRecordsUI21ViewControllerFactoryC018makeOutOfRangeLabsdE05usingSo06UIViewE0CSo9HRProfileC_tF_0(profileCopy);

  return v6;
}

- (id)makeImproveHealthRecordsPrivacyPresenter
{
  v2 = sub_1D139012C();
  presenterForPrivacySplashWithIdentifier_ = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (presenterForPrivacySplashWithIdentifier_)
  {

    return presenterForPrivacySplashWithIdentifier_;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end