@interface ChartOverlayViewController
- (BOOL)supportsShowAllFilters;
- (_TtC15HealthRecordsUI26ChartOverlayViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)primaryDisplayTypeWithApplicationItems:(id)items;
@end

@implementation ChartOverlayViewController

- (BOOL)supportsShowAllFilters
{
  selfCopy = self;
  v3 = sub_1D1266844();

  return v3;
}

- (id)controllerTitleWithApplicationItems:(id)items
{
  itemsCopy = items;
  selfCopy = self;
  sub_1D1267A88();

  v6 = sub_1D139012C();

  return v6;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)items
{
  v3 = *(self + OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_displayTypes);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    self = sub_1D13913BC();
    __break(1u);
    goto LABEL_11;
  }

  selfCopy = self;
  v6 = sub_1D13910DC();
  self = selfCopy;
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_11:
    selfCopy2 = self;
    v8 = MEMORY[0x1D3886B70](0, v3);

    v4 = v8;
    goto LABEL_6;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return self;
  }

  v4 = *(v3 + 32);
LABEL_6:

  return v4;
}

- (id)createChartOverlayViewController
{
  selfCopy = self;
  v3 = sub_1D1266AB4();

  return v3;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  itemsCopy = items;
  controllerCopy = controller;
  selfCopy = self;
  sub_1D1267B8C(mode);

  sub_1D106F934(0, &qword_1EC60E4A8);
  v11 = sub_1D139044C();

  return v11;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  sub_1D1268380(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  if (date)
  {
    sub_1D138D52C();
    v12 = sub_1D138D57C();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_1D138D57C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  itemsCopy = items;
  selfCopy = self;
  v16 = sub_1D12673DC(mode, v11, itemsCopy);

  sub_1D1268464(v11, &qword_1EE06B500, MEMORY[0x1E6969530]);

  return v16;
}

- (_TtC15HealthRecordsUI26ChartOverlayViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode
{
  sub_1D1268380(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (date)
  {
    sub_1D138D52C();
    v10 = sub_1D138D57C();
    v12 = 0;
    v11 = (*(v10 - 8) + 56);
  }

  else
  {
    v10 = sub_1D138D57C();
    v11 = (*(v10 - 8) + 56);
    v12 = 1;
  }

  (*v11)(v9, v12, 1, v10);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end