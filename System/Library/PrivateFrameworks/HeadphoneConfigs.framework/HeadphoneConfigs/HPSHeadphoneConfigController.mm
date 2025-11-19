@interface HPSHeadphoneConfigController
+ (BOOL)modernHPSFFEnabled;
+ (id)_controllerForSpecifier:(id)a3;
+ (id)_handleDeeplink:(id)a3 specifier:(id)a4;
- (void)setSpecifier:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HPSHeadphoneConfigController

+ (id)_handleDeeplink:(id)a3 specifier:(id)a4
{
  v5 = sub_251210D0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251210CEC();
  v10 = a4;
  v11 = _sSo28HPSHeadphoneConfigControllerC16HeadphoneConfigsE15_handleDeeplink_9specifierSo11PSSpecifierC10Foundation13URLComponentsV_AGtFZ_0(v9, v10);

  (*(v6 + 8))(v9, v5);

  return v11;
}

+ (id)_controllerForSpecifier:(id)a3
{
  v3 = a3;
  _sSo28HPSHeadphoneConfigControllerC16HeadphoneConfigsE23_controllerForSpecifierySo06PSViewC0CSo11PSSpecifierCFZ_0(v3);
  v5 = v4;

  return v5;
}

+ (BOOL)modernHPSFFEnabled
{
  sub_25121108C();
  v2 = sub_25121107C();
  v3 = sub_25121104C();

  return v3 & 1;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  HPSHeadphoneConfigController.viewWillAppear(_:)(a3);
}

- (void)setSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  HPSHeadphoneConfigController.setSpecifier(_:)(a3);
}

@end