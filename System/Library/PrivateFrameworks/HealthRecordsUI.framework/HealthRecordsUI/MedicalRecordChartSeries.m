@interface MedicalRecordChartSeries
- ($59C47D607893B286F305BF66D04A56BD)selectedPathRange;
- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)a3 blockCoordinate:(id)a4;
- (_TtC15HealthRecordsUI24MedicalRecordChartSeries)init;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
@end

@implementation MedicalRecordChartSeries

- ($59C47D607893B286F305BF66D04A56BD)selectedPathRange
{
  v4 = self;
  if ([(HKGraphSeries *)v4 allowsSelection])
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

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  index = a4->index;
  zoom = a4->zoom;
  resolution = a4->resolution;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = self;
  sub_1D12607C8(v12, index, zoom, resolution, v13, v14);
  v17 = v16;

  return v17;
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  tx = a6->tx;
  ty = a6->ty;
  v18 = a3;
  v19 = a7;
  v20 = self;
  v27 = *&a6->c;
  v28 = *&a6->a;
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
  *(v23 + 4) = v20;
  *(v23 + 5) = v19;
  v31 = sub_1D1261DC8;
  v32 = *&v23;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_1D125FD88;
  *(&v30 + 1) = &block_descriptor_18_0;
  v24 = _Block_copy(&aBlock);
  v25 = v19;
  v26 = v20;

  aBlock = v28;
  v30 = v27;
  v31 = *&tx;
  v32 = ty;
  [v18 enumerateCoordinatesWithTransform:&aBlock roundToViewScale:1 block:v24];

  _Block_release(v24);
}

- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)a3 blockCoordinate:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectRetain();
  v10 = self;
  v11 = sub_1D1260F58(a4, x, y, width, height);
  swift_unknownObjectRelease();

  return v11 & 1;
}

- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  y = a3.y;
  x = a3.x;
  swift_unknownObjectRetain();
  v9 = self;
  sub_1D1261208(a4, x, y);
  v11 = v10;
  swift_unknownObjectRelease();

  return v11;
}

- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_1D1261440(a4);
  v9 = v8;
  swift_unknownObjectRelease();

  return v9;
}

- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  y = a3.y;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1D126166C(a4, y);
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