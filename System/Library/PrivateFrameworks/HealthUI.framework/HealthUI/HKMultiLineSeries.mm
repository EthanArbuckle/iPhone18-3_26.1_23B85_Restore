@interface HKMultiLineSeries
- (_TtC8HealthUI17HKMultiLineSeries)init;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
@end

@implementation HKMultiLineSeries

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  v14 = *&transform->c;
  v20[0] = *&transform->a;
  v20[1] = v14;
  v20[2] = *&transform->tx;
  coordinatesCopy = coordinates;
  configurationCopy = configuration;
  contextCopy = context;
  renderContextCopy = renderContext;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C3CF9A30(coordinatesCopy, v20, contextCopy, delegate);

  swift_unknownObjectRelease();
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
  sub_1C3CF7930(blockCopy, index, zoom, resolution, axisCopy, yAxisCopy);
  v17 = v16;

  return v17;
}

- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = point.y;
  v11 = point.x;
  swift_unknownObjectRetain();
  selfCopy = self;
  [(HKMultiLineSeries *)selfCopy xAxisDistanceFromPoint:coordinate blockCoordinate:v11 chartRect:v10, x, y, width, height];
  v15 = v14;
  [(HKMultiLineSeries *)selfCopy yAxisDifferenceToPoint:coordinate blockCoordinate:v11 chartRect:v10, x, y, width, height];
  v17 = v16;
  swift_unknownObjectRelease();

  return _stdlib_squareRoot(v15 * v15 + v17 * v17);
}

- (_TtC8HealthUI17HKMultiLineSeries)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HKMultiLineSeries();
  return [(HKGraphSeries *)&v3 init];
}

@end