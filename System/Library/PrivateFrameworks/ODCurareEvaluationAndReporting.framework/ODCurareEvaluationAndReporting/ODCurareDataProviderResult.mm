@interface ODCurareDataProviderResult
- (ODCurareDataProviderResult)initWithBatchProviders:(id)providers dateArray:(id)array;
- (ODCurareDataProviderResult)initWithDataArray:(id)array dateArray:(id)dateArray;
@end

@implementation ODCurareDataProviderResult

- (ODCurareDataProviderResult)initWithDataArray:(id)array dateArray:(id)dateArray
{
  arrayCopy = array;
  dateArrayCopy = dateArray;
  v11.receiver = self;
  v11.super_class = ODCurareDataProviderResult;
  v8 = [(ODCurareDataProviderResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ODCurareDataProviderResult *)v8 setDataArray:arrayCopy];
    [(ODCurareDataProviderResult *)v9 setDateArray:dateArrayCopy];
  }

  return v9;
}

- (ODCurareDataProviderResult)initWithBatchProviders:(id)providers dateArray:(id)array
{
  providersCopy = providers;
  arrayCopy = array;
  v11.receiver = self;
  v11.super_class = ODCurareDataProviderResult;
  v8 = [(ODCurareDataProviderResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ODCurareDataProviderResult *)v8 setBatchProviders:providersCopy];
    [(ODCurareDataProviderResult *)v9 setDateArray:arrayCopy];
  }

  return v9;
}

@end