@interface StateOfMindOverlayRoomViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
- (_TtC14MentalHealthUI36StateOfMindOverlayRoomViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode;
- (_TtC14MentalHealthUI36StateOfMindOverlayRoomViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types sleepChartFormatter:(id)formatter addDataViewControllerProvider:(id)provider preferredOverlay:(int64_t)overlay;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)initialSelectedContextForMode:(int64_t)mode containerIndex:(int64_t)index;
- (void)contextView:(id)view didTapOnInfoButtonAtIndex:(int64_t)index;
- (void)dismissAnimated:(id)animated;
- (void)viewDidLoad;
@end

@implementation StateOfMindOverlayRoomViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1
{
  typesCopy = types;
  sub_258AA98A8(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v29 - v19;
  if (date)
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

  if (types)
  {
    sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
    typesCopy = sub_258B02C74();
  }

  swift_getObjCClassMetadata();
  factoryCopy = factory;
  itemsCopy = items;
  activityCopy = activity;
  modelCopy = model;
  v27 = sub_258AA938C(factoryCopy, itemsCopy, v20, overlay, activity, typesCopy, options);

  sub_258A2A66C(v20);

  return v27;
}

- (_TtC14MentalHealthUI36StateOfMindOverlayRoomViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types sleepChartFormatter:(id)formatter addDataViewControllerProvider:(id)provider preferredOverlay:(int64_t)overlay
{
  sub_258AA98A8(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v23 - v16;
  if (date)
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

  if (types)
  {
    sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
    types = sub_258B02C74();
  }

  itemsCopy = items;
  formatterCopy = formatter;
  swift_unknownObjectRetain();
  return StateOfMindOverlayRoomViewController.init(displayDate:applicationItems:factorDisplayTypes:sleepChartFormatter:addDataViewControllerProvider:preferredOverlay:)(v17, itemsCopy, types, formatterCopy, provider, overlay);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_258AA36CC();
}

- (id)controllerTitleWithApplicationItems:(id)items
{
  itemsCopy = items;
  selfCopy = self;
  sub_258AA97BC(itemsCopy);

  v6 = sub_258B02AD4();

  return v6;
}

- (id)createChartOverlayViewController
{
  selfCopy = self;
  v3 = sub_258AA396C();

  return v3;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  if (mode == 3)
  {
    controllerCopy = controller;
    selfCopy = self;
    sub_258AA43A0(controllerCopy);
  }

  sub_2589F4488(0, &qword_27F970A70, 0x277D129E0);
  v8 = sub_258B02C64();

  return v8;
}

- (id)initialSelectedContextForMode:(int64_t)mode containerIndex:(int64_t)index
{
  selfCopy = self;
  v7 = sub_258AA41A8(mode, index);

  return v7;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  sub_258AA98A8(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  if (date)
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

- (void)contextView:(id)view didTapOnInfoButtonAtIndex:(int64_t)index
{
  viewCopy = view;
  selfCopy = self;
  sub_258AA98FC(index);
}

- (void)dismissAnimated:(id)animated
{
  if (animated)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_258B03104();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_258AA6E9C();

  sub_258A3F0C0(v6);
}

- (_TtC14MentalHealthUI36StateOfMindOverlayRoomViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode
{
  sub_258AA98A8(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  if (date)
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