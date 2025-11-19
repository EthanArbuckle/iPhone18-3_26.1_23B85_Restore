@interface _HKRemoteChartDataEntry
- (_HKRemoteChartDataEntry)initWithSeriesData:(id)a3 dataSourceForMapping:(id)a4 seriesDataSourceContext:(id)a5;
- (id)seriesDataWithMappingApplied;
@end

@implementation _HKRemoteChartDataEntry

- (_HKRemoteChartDataEntry)initWithSeriesData:(id)a3 dataSourceForMapping:(id)a4 seriesDataSourceContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _HKRemoteChartDataEntry;
  v12 = [(_HKRemoteChartDataEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_seriesData, a3);
    objc_storeStrong(&v13->_dataSourceForMapping, a4);
    objc_storeStrong(&v13->_seriesDataSourceContext, a5);
  }

  return v13;
}

- (id)seriesDataWithMappingApplied
{
  v3 = [(_HKRemoteChartDataEntry *)self dataSourceForMapping];

  if (v3)
  {
    v4 = [(_HKRemoteChartDataEntry *)self dataSourceForMapping];
    v5 = [(_HKRemoteChartDataEntry *)self seriesDataSourceContext];
    v6 = [v4 mappingFunctionForContext:v5];

    [(_HKRemoteChartDataEntry *)self seriesData];
    if (v6)
      v7 = {;
      v8 = (v6)[2](v6, v7);
    }

    else
      v8 = {;
    }
  }

  else
  {
    v8 = [(_HKRemoteChartDataEntry *)self seriesData];
  }

  return v8;
}

@end