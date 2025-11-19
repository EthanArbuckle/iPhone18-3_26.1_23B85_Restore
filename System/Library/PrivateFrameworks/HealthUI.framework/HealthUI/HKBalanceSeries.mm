@interface HKBalanceSeries
- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)a3 blockCoordinate:(id)a4;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (id)marginsForYAxis:(id)a3 xAxisRange:(id)a4 zoomLevel:(int64_t)a5 chartRect:(CGRect)a6;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)finishSelection;
- (void)selectPathsinPathRange:(id *)a3 coordinateRange:(id)a4;
@end

@implementation HKBalanceSeries

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  index = a4->index;
  zoom = a4->zoom;
  resolution = a4->resolution;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = self;
  sub_1C3CBBF1C(v12, index, zoom, resolution, v13, v14);
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
  sub_1C3CBF478(v19, v20, v24, v21, a9, x, y, width, height);

  swift_unknownObjectRelease();
}

- (id)marginsForYAxis:(id)a3 xAxisRange:(id)a4 zoomLevel:(int64_t)a5 chartRect:(CGRect)a6
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  v12 = sub_1C3CC07AC(a3);

  return v12;
}

- (void)selectPathsinPathRange:(id *)a3 coordinateRange:(id)a4
{
  index = a3->var0.var0.index;
  zoom = a3->var0.var0.zoom;
  resolution = a3->var0.var0.resolution;
  var1 = a3->var0.var1;
  v10 = a3->var1.var0.index;
  v11 = a3->var1.var0.zoom;
  v12 = a3->var1.var0.resolution;
  v13 = a3->var1.var1;
  if (a4)
  {
    v26 = a3->var1.var1;
    v14 = a3->var1.var0.resolution;
    v15 = a3->var1.var0.zoom;
    v16 = a3->var1.var0.index;
    v17 = a3->var0.var1;
    v18 = a3->var0.var0.resolution;
    v19 = a3->var0.var0.zoom;
    v20 = a3->var0.var0.index;
    v21 = *(&self->super.super.isa + OBJC_IVAR___HKBalanceSeries_lollipopPathRangeLock);
    v22 = self;
    v23 = a4;
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
    v25 = self;
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
  [(HKGraphSeries *)&v28 selectPathsinPathRange:v27 coordinateRange:a4];
}

- (void)finishSelection
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___HKBalanceSeries_lollipopPathRangeLock);
  v3 = self;
  os_unfair_lock_lock((v2 + 84));
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 1;
  os_unfair_lock_unlock((v2 + 84));
}

- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)a3 blockCoordinate:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_1C3CC08CC();
  v8 = v7;
  swift_unknownObjectRelease();

  return v8;
}

- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  x = a3.x;
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

- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  y = a3.y;
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