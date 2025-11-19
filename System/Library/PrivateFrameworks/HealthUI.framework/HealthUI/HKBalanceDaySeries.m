@interface HKBalanceDaySeries
- (HKBalanceDaySeries)init;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
@end

@implementation HKBalanceDaySeries

- (HKBalanceDaySeries)init
{
  v3 = sub_1C3D1E2A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C3D1E3C4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x1E6969868], v3, v9);
  sub_1C3D1E2B4();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 32))(self + OBJC_IVAR___HKBalanceDaySeries_gregorianCalendar, v11, v7);
  *(&self->super.super.super.isa + OBJC_IVAR___HKBalanceDaySeries_sleepingMetrics) = sub_1C3D1E8A4();
  v12 = type metadata accessor for BalanceDaySeries();
  v14.receiver = self;
  v14.super_class = v12;
  return [(HKBalanceSeries *)&v14 init];
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
  sub_1C3C9DF08(v12, index, zoom, resolution, v13, v14);
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
  sub_1C3CA30EC(v19, x, y, width, height, v20, v24, v21, a9);

  swift_unknownObjectRelease();
}

@end