@interface StateOfMindOverlayRoomViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
- (_TtC14MentalHealthUI36StateOfMindOverlayRoomViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6;
- (_TtC14MentalHealthUI36StateOfMindOverlayRoomViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 sleepChartFormatter:(id)a6 addDataViewControllerProvider:(id)a7 preferredOverlay:(int64_t)a8;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)initialSelectedContextForMode:(int64_t)a3 containerIndex:(int64_t)a4;
- (void)contextView:(id)a3 didTapOnInfoButtonAtIndex:(int64_t)a4;
- (void)dismissAnimated:(id)a3;
- (void)viewDidLoad;
@end

@implementation StateOfMindOverlayRoomViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11
{
  v16 = a10;
  sub_258AA98A8(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v29 - v19;
  if (a6)
  {
    sub_258B00034();
    v21 = sub_258B00084();
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }

  else
  {
    v22 = sub_258B00084();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  }

  if (a10)
  {
    sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
    v16 = sub_258B02C74();
  }

  swift_getObjCClassMetadata();
  v23 = a4;
  v24 = a5;
  v25 = a8;
  v26 = a9;
  v27 = sub_258AA938C(v23, v24, v20, a7, a8, v16, a11);

  sub_258A2A66C(v20);

  return v27;
}

- (_TtC14MentalHealthUI36StateOfMindOverlayRoomViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 sleepChartFormatter:(id)a6 addDataViewControllerProvider:(id)a7 preferredOverlay:(int64_t)a8
{
  sub_258AA98A8(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v23 - v16;
  if (a3)
  {
    sub_258B00034();
    v18 = sub_258B00084();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  }

  else
  {
    v19 = sub_258B00084();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  }

  if (a5)
  {
    sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
    a5 = sub_258B02C74();
  }

  v20 = a4;
  v21 = a6;
  swift_unknownObjectRetain();
  return StateOfMindOverlayRoomViewController.init(displayDate:applicationItems:factorDisplayTypes:sleepChartFormatter:addDataViewControllerProvider:preferredOverlay:)(v17, v20, a5, v21, a7, a8);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_258AA36CC();
}

- (id)controllerTitleWithApplicationItems:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_258AA97BC(v4);

  v6 = sub_258B02AD4();

  return v6;
}

- (id)createChartOverlayViewController
{
  v2 = self;
  v3 = sub_258AA396C();

  return v3;
}

- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  if (a3 == 3)
  {
    v6 = a5;
    v7 = self;
    sub_258AA43A0(v6);
  }

  sub_2589F4488(0, &qword_27F970A70, 0x277D129E0);
  v8 = sub_258B02C64();

  return v8;
}

- (id)initialSelectedContextForMode:(int64_t)a3 containerIndex:(int64_t)a4
{
  v6 = self;
  v7 = sub_258AA41A8(a3, a4);

  return v7;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  sub_258AA98A8(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  if (a4)
  {
    sub_258B00034();
    v10 = sub_258B00084();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_258B00084();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  sub_258A2A66C(v9);

  return 0;
}

- (void)contextView:(id)a3 didTapOnInfoButtonAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_258AA98FC(a4);
}

- (void)dismissAnimated:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_258B03104();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_258AA6E9C();

  sub_258A3F0C0(v6);
}

- (_TtC14MentalHealthUI36StateOfMindOverlayRoomViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6
{
  sub_258AA98A8(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  if (a3)
  {
    sub_258B00034();
    v11 = sub_258B00084();
    v13 = 0;
    v12 = (*(v11 - 8) + 56);
  }

  else
  {
    v11 = sub_258B00084();
    v12 = (*(v11 - 8) + 56);
    v13 = 1;
  }

  (*v12)(v10, v13, 1, v11);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end