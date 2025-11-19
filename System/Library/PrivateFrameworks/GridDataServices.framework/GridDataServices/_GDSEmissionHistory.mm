@interface _GDSEmissionHistory
- (_GDSEmissionHistory)initWithHistoricalData:(id)a3 fetchedAt:(id)a4;
@end

@implementation _GDSEmissionHistory

- (_GDSEmissionHistory)initWithHistoricalData:(id)a3 fetchedAt:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _GDSEmissionHistory;
  v9 = [(_GDSEmissionHistory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fetchDate, a4);
    objc_storeStrong(&v10->_historicalMap, a3);
  }

  return v10;
}

@end