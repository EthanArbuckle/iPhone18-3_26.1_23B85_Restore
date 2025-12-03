@interface HKStateOfMindSeries
+ (id)standardStateOfMindSeriesWithStateOfMindDisplayType:(id)type unitController:(id)controller;
- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)rect blockCoordinate:(id)coordinate;
- (CGPoint)renderPositionForLabelLocation:(id)location rect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset constantOffset:(double)constantOffset isHorizontal:(BOOL)horizontal optionalOffset:(CGPoint)optionalOffset;
- (HKStateOfMindSeries)init;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
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

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  index = path->index;
  zoom = path->zoom;
  resolution = path->resolution;
  blockCopy = block;
  axisCopy = axis;
  yAxisCopy = yAxis;
  selfCopy = self;
  sub_1C3C93EC0(blockCopy, index, zoom, resolution, axisCopy, yAxisCopy);
  v17 = v16;

  return v17;
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v18 = *&transform->c;
  v24[0] = *&transform->a;
  v24[1] = v18;
  v24[2] = *&transform->tx;
  coordinatesCopy = coordinates;
  configurationCopy = configuration;
  contextCopy = context;
  renderContextCopy = renderContext;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C3C95764(coordinatesCopy, configurationCopy, v24, contextCopy, delegate, x, y, width, height);

  swift_unknownObjectRelease();
}

- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)rect blockCoordinate:(id)coordinate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  y = point.y;
  x = point.x;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C3C95AAC(x, y);
  v10 = v9;
  swift_unknownObjectRelease();

  return v10;
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  x = point.x;
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

- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  y = point.y;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_1C3C95C08(y);
  swift_unknownObjectRelease();

  return v8;
}

- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale
{
  sub_1C3C27CB4(0, &qword_1EC086E80);

  v4 = sub_1C3D202A4();

  return v4;
}

- (CGPoint)renderPositionForLabelLocation:(id)location rect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset constantOffset:(double)constantOffset isHorizontal:(BOOL)horizontal optionalOffset:(CGPoint)optionalOffset
{
  horizontalCopy = horizontal;
  y = offset.y;
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  v14 = rect.origin.y;
  v15 = rect.origin.x;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C3D20774();
  swift_unknownObjectRelease();
  yAxis = [(HKGraphSeries *)selfCopy yAxis];
  if (yAxis)
  {
    v21 = yAxis;
    __swift_project_boxed_opaque_existential_0(v28, v28[3]);
    [(HKAxis *)v21 renderPositionForLabelLocation:sub_1C3D20A44() rect:horizontalCopy zoomScale:v15 contentOffset:v14 constantOffset:width isHorizontal:height optionalOffset:scale, x, y, constantOffset, v29, v30];
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

+ (id)standardStateOfMindSeriesWithStateOfMindDisplayType:(id)type unitController:(id)controller
{
  typeCopy = type;
  controllerCopy = controller;
  v7 = _s8HealthUI17StateOfMindSeriesC08standardcdeF005statedE11DisplayType14unitControllerACSo09HKDisplayJ0C_So016HKUnitPreferenceL0CtFZ_0(typeCopy, controllerCopy);

  return v7;
}

@end