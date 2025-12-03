@interface MedicalRecordChartSeries
- ($59C47D607893B286F305BF66D04A56BD)selectedPathRange;
- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)rect blockCoordinate:(id)coordinate;
- (_TtC15HealthRecordsUI24MedicalRecordChartSeries)init;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
@end

@implementation MedicalRecordChartSeries

- ($59C47D607893B286F305BF66D04A56BD)selectedPathRange
{
  selfCopy = self;
  if ([(HKGraphSeries *)selfCopy allowsSelection])
  {
    HKGraphSeriesDataBlockPathMake(&v14);
    v20 = v14;
    *&v21 = v15;
    HKGraphSeriesDataPointPathMake(&v20, &v14);
    v5 = *(MEMORY[0x1E69A40A8] + 16);
    v20 = *MEMORY[0x1E69A40A8];
    v21 = v5;
    v18 = v14;
    v19 = v15;
  }

  else
  {
    v6 = *(MEMORY[0x1E69A40A8] + 8);
    v8 = *(MEMORY[0x1E69A40A8] + 16);
    v7 = *(MEMORY[0x1E69A40A8] + 24);
    v20.n128_u64[0] = *MEMORY[0x1E69A40A8];
    v20.n128_u64[1] = v6;
    *&v21 = v8;
    *(&v21 + 1) = v7;
    v18.n128_u64[0] = v20.n128_u64[0];
    v18.n128_u64[1] = v6;
    *&v19 = v8;
    *(&v19 + 1) = v7;
  }

  HKGraphSeriesDataPointPathRangeMake(&v20, &v18, &v14);
  v12 = v15;
  v13 = v14;
  v10 = v17;
  v11 = v16;

  *&retstr->var0.var0.index = v13;
  *&retstr->var0.var0.resolution = v12;
  *&retstr->var1.var0.index = v11;
  *&retstr->var1.var0.resolution = v10;
  return result;
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
  sub_1D12607C8(blockCopy, index, zoom, resolution, axisCopy, yAxisCopy);
  v17 = v16;

  return v17;
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  tx = transform->tx;
  ty = transform->ty;
  coordinatesCopy = coordinates;
  contextCopy = context;
  selfCopy = self;
  v27 = *&transform->c;
  v28 = *&transform->a;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MinX = CGRectGetMinX(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  MaxX = CGRectGetMaxX(v34);
  v23 = swift_allocObject();
  v23[2] = MinX;
  v23[3] = MaxX;
  *(v23 + 4) = selfCopy;
  *(v23 + 5) = contextCopy;
  v31 = sub_1D1261DC8;
  v32 = *&v23;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_1D125FD88;
  *(&v30 + 1) = &block_descriptor_18_0;
  v24 = _Block_copy(&aBlock);
  v25 = contextCopy;
  v26 = selfCopy;

  aBlock = v28;
  v30 = v27;
  v31 = *&tx;
  v32 = ty;
  [coordinatesCopy enumerateCoordinatesWithTransform:&aBlock roundToViewScale:1 block:v24];

  _Block_release(v24);
}

- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)rect blockCoordinate:(id)coordinate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  swift_unknownObjectRetain();
  selfCopy = self;
  v11 = sub_1D1260F58(coordinate, x, y, width, height);
  swift_unknownObjectRelease();

  return v11 & 1;
}

- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  y = point.y;
  x = point.x;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D1261208(coordinate, x, y);
  v11 = v10;
  swift_unknownObjectRelease();

  return v11;
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D1261440(coordinate);
  v9 = v8;
  swift_unknownObjectRelease();

  return v9;
}

- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  y = point.y;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D126166C(coordinate, y);
  v10 = v9;
  swift_unknownObjectRelease();

  return v10;
}

- (_TtC15HealthRecordsUI24MedicalRecordChartSeries)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI24MedicalRecordChartSeries_selectedStrokeStyle) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI24MedicalRecordChartSeries_unselectedStrokeStyle) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for MedicalRecordChartSeries();
  return [(HKGraphSeries *)&v3 init];
}

@end