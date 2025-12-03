@interface HKBalanceSeries
- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)rect blockCoordinate:(id)coordinate;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (id)marginsForYAxis:(id)axis xAxisRange:(id)range zoomLevel:(int64_t)level chartRect:(CGRect)rect;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)finishSelection;
- (void)selectPathsinPathRange:(id *)range coordinateRange:(id)coordinateRange;
@end

@implementation HKBalanceSeries

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  index = path->index;
  zoom = path->zoom;
  resolution = path->resolution;
  blockCopy = block;
  axisCopy = axis;
  yAxisCopy = yAxis;
  selfCopy = self;
  sub_1C3CBBF1C(blockCopy, index, zoom, resolution, axisCopy, yAxisCopy);
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
  sub_1C3CBF478(coordinatesCopy, configurationCopy, v24, contextCopy, delegate, x, y, width, height);

  swift_unknownObjectRelease();
}

- (id)marginsForYAxis:(id)axis xAxisRange:(id)range zoomLevel:(int64_t)level chartRect:(CGRect)rect
{
  axisCopy = axis;
  rangeCopy = range;
  selfCopy = self;
  v12 = sub_1C3CC07AC(axis);

  return v12;
}

- (void)selectPathsinPathRange:(id *)range coordinateRange:(id)coordinateRange
{
  index = range->var0.var0.index;
  zoom = range->var0.var0.zoom;
  resolution = range->var0.var0.resolution;
  var1 = range->var0.var1;
  v10 = range->var1.var0.index;
  v11 = range->var1.var0.zoom;
  v12 = range->var1.var0.resolution;
  v13 = range->var1.var1;
  if (coordinateRange)
  {
    v26 = range->var1.var1;
    v14 = range->var1.var0.resolution;
    v15 = range->var1.var0.zoom;
    v16 = range->var1.var0.index;
    v17 = range->var0.var1;
    v18 = range->var0.var0.resolution;
    v19 = range->var0.var0.zoom;
    v20 = range->var0.var0.index;
    v21 = *(&self->super.super.isa + OBJC_IVAR___HKBalanceSeries_lollipopPathRangeLock);
    selfCopy = self;
    coordinateRangeCopy = coordinateRange;
    os_unfair_lock_lock((v21 + 84));
    LOBYTE(v27[0]) = 0;
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    *(v21 + 32) = v18;
    *(v21 + 40) = v17;
    *(v21 + 48) = v16;
    *(v21 + 56) = v15;
    *(v21 + 64) = v14;
    *(v21 + 72) = v26;
    *(v21 + 80) = 0;
    v24 = (v21 + 84);
    index = v20;
    zoom = v19;
    resolution = v18;
    var1 = v17;
    v10 = v16;
    v11 = v15;
    v12 = v14;
    v13 = v26;
    os_unfair_lock_unlock(v24);
  }

  else
  {
    selfCopy2 = self;
  }

  v28.receiver = self;
  v28.super_class = type metadata accessor for BalanceSeries();
  v27[0] = index;
  v27[1] = zoom;
  v27[2] = resolution;
  v27[3] = var1;
  v27[4] = v10;
  v27[5] = v11;
  v27[6] = v12;
  v27[7] = v13;
  [(HKGraphSeries *)&v28 selectPathsinPathRange:v27 coordinateRange:coordinateRange];
}

- (void)finishSelection
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___HKBalanceSeries_lollipopPathRangeLock);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 84));
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 1;
  os_unfair_lock_unlock((v2 + 84));
}

- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)rect blockCoordinate:(id)coordinate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  type metadata accessor for BalanceCoordinate();
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
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C3CC08CC();
  v8 = v7;
  swift_unknownObjectRelease();

  return v8;
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  x = point.x;
  type metadata accessor for BalanceCoordinate();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    return vabdd_f64(*(v6 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_xValue), x);
  }

  else
  {
    return 1.79769313e308;
  }
}

- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  y = point.y;
  type metadata accessor for BalanceCoordinate();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return 1.79769313e308;
  }

  v7 = (v6 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueRange);
  if (*(v6 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueRange + 16))
  {
    return 1.79769313e308;
  }

  result = 0.0;
  if (*v7 > y || y > v7[1])
  {
    if (y >= *v7)
    {
      v10 = v7[1];
    }

    else
    {
      v10 = *v7;
    }

    v11 = vabdd_f64(v10, y);
    result = 1.79769313e308;
    if (v11 <= 1.79769313e308)
    {
      return v11;
    }
  }

  return result;
}

@end