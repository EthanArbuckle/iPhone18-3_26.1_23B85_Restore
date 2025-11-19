@interface ODCurareDataProviderResult
- (ODCurareDataProviderResult)initWithBatchProviders:(id)a3 dateArray:(id)a4;
- (ODCurareDataProviderResult)initWithDataArray:(id)a3 dateArray:(id)a4;
@end

@implementation ODCurareDataProviderResult

- (ODCurareDataProviderResult)initWithDataArray:(id)a3 dateArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ODCurareDataProviderResult;
  v8 = [(ODCurareDataProviderResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ODCurareDataProviderResult *)v8 setDataArray:v6];
    [(ODCurareDataProviderResult *)v9 setDateArray:v7];
  }

  return v9;
}

- (ODCurareDataProviderResult)initWithBatchProviders:(id)a3 dateArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ODCurareDataProviderResult;
  v8 = [(ODCurareDataProviderResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ODCurareDataProviderResult *)v8 setBatchProviders:v6];
    [(ODCurareDataProviderResult *)v9 setDateArray:v7];
  }

  return v9;
}

@end