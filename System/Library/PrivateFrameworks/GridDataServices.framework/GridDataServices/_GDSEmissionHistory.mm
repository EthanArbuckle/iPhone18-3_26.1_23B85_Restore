@interface _GDSEmissionHistory
- (_GDSEmissionHistory)initWithHistoricalData:(id)data fetchedAt:(id)at;
@end

@implementation _GDSEmissionHistory

- (_GDSEmissionHistory)initWithHistoricalData:(id)data fetchedAt:(id)at
{
  dataCopy = data;
  atCopy = at;
  v12.receiver = self;
  v12.super_class = _GDSEmissionHistory;
  v9 = [(_GDSEmissionHistory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fetchDate, at);
    objc_storeStrong(&v10->_historicalMap, data);
  }

  return v10;
}

@end