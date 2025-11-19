@interface HKStateOfMindSeries
+ (id)standardStateOfMindSeriesWithStateOfMindDisplayType:(id)a3 unitController:(id)a4;
- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)a3 blockCoordinate:(id)a4;
- (CGPoint)renderPositionForLabelLocation:(id)a3 rect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 constantOffset:(double)a7 isHorizontal:(BOOL)a8 optionalOffset:(CGPoint)a9;
- (HKStateOfMindSeries)init;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
@end

@implementation HKStateOfMindSeries

- (HKStateOfMindSeries)init
{
  *(&self->super.super.isa + OBJC_IVAR___HKStateOfMindSeries____lazy_storage___gradientFillStyle) = 0;
  *(&self->super.super.isa + OBJC_IVAR___HKStateOfMindSeries____lazy_storage___inactiveFillStyle) = 0;
  *(&self->super.super.isa + OBJC_IVAR___HKStateOfMindSeries_fixedAxisLabels) = sub_1C3C95110();
  v5.receiver = self;
  v5.super_class = type metadata accessor for StateOfMindSeries();
  v3 = [(HKGraphSeries *)&v5 init];
  [(HKGraphSeries *)v3 setAdjustYAxisForLabels:0];
  return v3;
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  index = a4->index;
  zoom = a4->zoom;
  resolution = a4->resolution;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = self;
  sub_1C3C93EC0(v12, index, zoom, resolution, v13, v14);
  v17 = v16;

  return v17;
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = *&a6->c;
  v24[0] = *&a6->a;
  v24[1] = v18;
  v24[2] = *&a6->tx;
  v19 = a3;
  v20 = a5;
  v21 = a7;
  v22 = a8;
  swift_unknownObjectRetain();
  v23 = self;
  sub_1C3C95764(v19, v20, v24, v21, a9, x, y, width, height);

  swift_unknownObjectRelease();
}

- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)a3 blockCoordinate:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  type metadata accessor for StateOfMindCoordinate();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    [v9 startXValue];
    v11 = v10;
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    if (CGRectGetMinX(v16) <= v11)
    {
      [v9 endXValue];
      v13 = v12;
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      MaxX = CGRectGetMaxX(v17);
      swift_unknownObjectRelease();
      LOBYTE(v8) = v13 <= MaxX;
    }

    else
    {
      swift_unknownObjectRelease();
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  y = a3.y;
  x = a3.x;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1C3C95AAC(x, y);
  v10 = v9;
  swift_unknownObjectRelease();

  return v10;
}

- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  x = a3.x;
  type metadata accessor for StateOfMindCoordinate();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    return vabdd_f64(*(v6 + OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_xValue), x);
  }

  else
  {
    return 1.79769313e308;
  }
}

- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  y = a3.y;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_1C3C95C08(y);
  swift_unknownObjectRelease();

  return v8;
}

- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4
{
  sub_1C3C27CB4(0, &qword_1EC086E80);

  v4 = sub_1C3D202A4();

  return v4;
}

- (CGPoint)renderPositionForLabelLocation:(id)a3 rect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 constantOffset:(double)a7 isHorizontal:(BOOL)a8 optionalOffset:(CGPoint)a9
{
  v9 = a8;
  y = a6.y;
  x = a6.x;
  height = a4.size.height;
  width = a4.size.width;
  v14 = a4.origin.y;
  v15 = a4.origin.x;
  swift_unknownObjectRetain();
  v17 = self;
  sub_1C3D20774();
  swift_unknownObjectRelease();
  v18 = [(HKGraphSeries *)v17 yAxis];
  if (v18)
  {
    v21 = v18;
    __swift_project_boxed_opaque_existential_0(v28, v28[3]);
    [(HKAxis *)v21 renderPositionForLabelLocation:sub_1C3D20A44() rect:v9 zoomScale:v15 contentOffset:v14 constantOffset:width isHorizontal:height optionalOffset:a5, x, y, a7, v29, v30];
    v23 = v22;
    v25 = v24;

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v28);
    v19 = v23;
    v20 = v25;
  }

  else
  {
    __break(1u);
  }

  result.y = v20;
  result.x = v19;
  return result;
}

+ (id)standardStateOfMindSeriesWithStateOfMindDisplayType:(id)a3 unitController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _s8HealthUI17StateOfMindSeriesC08standardcdeF005statedE11DisplayType14unitControllerACSo09HKDisplayJ0C_So016HKUnitPreferenceL0CtFZ_0(v5, v6);

  return v7;
}

@end