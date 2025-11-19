@interface B788FitController#1inB788FeatureContent.fitWelcomeController(_:contentProvider:)
- (_TtCFE19HeadphoneSettingsUIC16HeadphoneManager18B788FeatureContent20fitWelcomeControllerFTCSo15BluetoothDevice15contentProviderCS0_15HeadphoneDevice_GSqCSo16UIViewController_L_17B788FitController)initWithDevice:()_:contentProvider: provider:;
- (_TtCFE19HeadphoneSettingsUIC16HeadphoneManager18B788FeatureContent20fitWelcomeControllerFTCSo15BluetoothDevice15contentProviderCS0_15HeadphoneDevice_GSqCSo16UIViewController_L_17B788FitController)initWithNibName:()_:contentProvider: bundle:;
- (id)getResultsTitle;
- (id)getSubTitle;
- (id)getTitle;
@end

@implementation B788FitController#1inB788FeatureContent.fitWelcomeController(_:contentProvider:)

- (id)getTitle
{
  MEMORY[0x1E69E5928](self);
  sub_1AC211534();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1AC30A91C();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getSubTitle
{
  MEMORY[0x1E69E5928](self);
  sub_1AC211660();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1AC30A91C();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getResultsTitle
{
  MEMORY[0x1E69E5928](self);
  sub_1AC21178C();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1AC30A91C();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtCFE19HeadphoneSettingsUIC16HeadphoneManager18B788FeatureContent20fitWelcomeControllerFTCSo15BluetoothDevice15contentProviderCS0_15HeadphoneDevice_GSqCSo16UIViewController_L_17B788FitController)initWithDevice:()_:contentProvider: provider:
{
  MEMORY[0x1E69E5928](a3);
  swift_unknownObjectRetain();
  return sub_1AC21191C(a3, a4);
}

- (_TtCFE19HeadphoneSettingsUIC16HeadphoneManager18B788FeatureContent20fitWelcomeControllerFTCSo15BluetoothDevice15contentProviderCS0_15HeadphoneDevice_GSqCSo16UIViewController_L_17B788FitController)initWithNibName:()_:contentProvider: bundle:
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  if (a3)
  {
    v6 = sub_1AC30A92C();
    v7 = v4;
    MEMORY[0x1E69E5920](a3);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return sub_1AC211A28(v8, v9, a4);
}

@end