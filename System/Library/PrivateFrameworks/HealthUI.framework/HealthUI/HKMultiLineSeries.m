@interface HKMultiLineSeries
- (_TtC8HealthUI17HKMultiLineSeries)init;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
@end

@implementation HKMultiLineSeries

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  v14 = *&a6->c;
  v20[0] = *&a6->a;
  v20[1] = v14;
  v20[2] = *&a6->tx;
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  swift_unknownObjectRetain();
  v19 = self;
  sub_1C3CF9A30(v15, v20, v17, a9);

  swift_unknownObjectRelease();
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
  sub_1C3CF7930(v12, index, zoom, resolution, v13, v14);
  v17 = v16;

  return v17;
}

- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a3.y;
  v11 = a3.x;
  swift_unknownObjectRetain();
  v13 = self;
  [(HKMultiLineSeries *)v13 xAxisDistanceFromPoint:a4 blockCoordinate:v11 chartRect:v10, x, y, width, height];
  v15 = v14;
  [(HKMultiLineSeries *)v13 yAxisDifferenceToPoint:a4 blockCoordinate:v11 chartRect:v10, x, y, width, height];
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