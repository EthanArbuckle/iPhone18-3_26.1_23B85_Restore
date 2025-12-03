@interface BloodPressureChartSeries
- ($59C47D607893B286F305BF66D04A56BD)selectedPathRange;
- (_TtC15HealthRecordsUI24BloodPressureChartSeries)init;
@end

@implementation BloodPressureChartSeries

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

- (_TtC15HealthRecordsUI24BloodPressureChartSeries)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BloodPressureChartSeries();
  return [(HKBloodPressureSeries *)&v3 init];
}

@end