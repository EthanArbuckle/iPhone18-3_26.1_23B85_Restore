@interface MIUIMedicalIDLearnMoreNavigationViewControllerFactory
+ (id)makeViewController;
- (MIUIMedicalIDLearnMoreNavigationViewControllerFactory)init;
@end

@implementation MIUIMedicalIDLearnMoreNavigationViewControllerFactory

+ (id)makeViewController
{
  v2 = type metadata accessor for MedicalIDLearnMoreNavigationView();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  *(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0)) = swift_getKeyPath();
  sub_2587EAE10();
  swift_storeEnumTagMultiPayload();
  sub_2587EAE68();
  v6 = objc_allocWithZone(v5);
  v7 = sub_2588BC738();

  return v7;
}

- (MIUIMedicalIDLearnMoreNavigationViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = MIUIMedicalIDLearnMoreNavigationViewControllerFactory;
  return [(MIUIMedicalIDLearnMoreNavigationViewControllerFactory *)&v3 init];
}

@end