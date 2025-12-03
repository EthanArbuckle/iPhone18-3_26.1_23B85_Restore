@interface _HKRemoteChartDataEntry
- (_HKRemoteChartDataEntry)initWithSeriesData:(id)data dataSourceForMapping:(id)mapping seriesDataSourceContext:(id)context;
- (id)seriesDataWithMappingApplied;
@end

@implementation _HKRemoteChartDataEntry

- (_HKRemoteChartDataEntry)initWithSeriesData:(id)data dataSourceForMapping:(id)mapping seriesDataSourceContext:(id)context
{
  dataCopy = data;
  mappingCopy = mapping;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = _HKRemoteChartDataEntry;
  v12 = [(_HKRemoteChartDataEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_seriesData, data);
    objc_storeStrong(&v13->_dataSourceForMapping, mapping);
    objc_storeStrong(&v13->_seriesDataSourceContext, context);
  }

  return v13;
}

- (id)seriesDataWithMappingApplied
{
  dataSourceForMapping = [(_HKRemoteChartDataEntry *)self dataSourceForMapping];

  if (dataSourceForMapping)
  {
    dataSourceForMapping2 = [(_HKRemoteChartDataEntry *)self dataSourceForMapping];
    seriesDataSourceContext = [(_HKRemoteChartDataEntry *)self seriesDataSourceContext];
    v6 = [dataSourceForMapping2 mappingFunctionForContext:seriesDataSourceContext];

    [(_HKRemoteChartDataEntry *)self seriesData];
    if (v6)
      v7 = {;
      seriesData = (v6)[2](v6, v7);
    }

    else
      seriesData = {;
    }
  }

  else
  {
    seriesData = [(_HKRemoteChartDataEntry *)self seriesData];
  }

  return seriesData;
}

@end