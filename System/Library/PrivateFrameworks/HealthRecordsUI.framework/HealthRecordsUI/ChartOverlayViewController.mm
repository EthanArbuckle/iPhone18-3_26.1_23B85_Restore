@interface ChartOverlayViewController
- (BOOL)supportsShowAllFilters;
- (_TtC15HealthRecordsUI26ChartOverlayViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)primaryDisplayTypeWithApplicationItems:(id)a3;
@end

@implementation ChartOverlayViewController

- (BOOL)supportsShowAllFilters
{
  v2 = self;
  v3 = sub_1D1266844();

  return v3;
}

- (id)controllerTitleWithApplicationItems:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1267A88();

  v6 = sub_1D139012C();

  return v6;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)a3
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

  v5 = self;
  v6 = sub_1D13910DC();
  self = v5;
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v7 = self;
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
  v2 = self;
  v3 = sub_1D1266AB4();

  return v3;
}

- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = self;
  sub_1D1267B8C(a3);

  sub_1D106F934(0, &qword_1EC60E4A8);
  v11 = sub_1D139044C();

  return v11;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  sub_1D1268380(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  if (a4)
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

  v14 = a5;
  v15 = self;
  v16 = sub_1D12673DC(a3, v11, v14);

  sub_1D1268464(v11, &qword_1EE06B500, MEMORY[0x1E6969530]);

  return v16;
}

- (_TtC15HealthRecordsUI26ChartOverlayViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6
{
  sub_1D1268380(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (a3)
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