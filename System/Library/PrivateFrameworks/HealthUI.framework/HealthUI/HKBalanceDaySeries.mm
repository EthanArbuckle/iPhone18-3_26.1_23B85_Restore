@interface HKBalanceDaySeries
- (HKBalanceDaySeries)init;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
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

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  index = path->index;
  zoom = path->zoom;
  resolution = path->resolution;
  blockCopy = block;
  axisCopy = axis;
  yAxisCopy = yAxis;
  selfCopy = self;
  sub_1C3C9DF08(blockCopy, index, zoom, resolution, axisCopy, yAxisCopy);
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
  sub_1C3CA30EC(coordinatesCopy, x, y, width, height, configurationCopy, v24, contextCopy, delegate);

  swift_unknownObjectRelease();
}

@end