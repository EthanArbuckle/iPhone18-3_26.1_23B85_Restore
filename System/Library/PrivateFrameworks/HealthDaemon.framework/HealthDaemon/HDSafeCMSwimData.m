@interface HDSafeCMSwimData
- (HDSafeCMSwimData)initWithSwimData:(id)a3;
@end

@implementation HDSafeCMSwimData

- (HDSafeCMSwimData)initWithSwimData:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HDSafeCMSwimData;
  v5 = [(HDSafeCMSwimData *)&v16 init];
  if (v5)
  {
    v6 = [v4 startDate];
    v7 = [v6 copy];
    startDate = v5->_startDate;
    v5->_startDate = v7;

    v9 = [v4 endDate];
    v10 = [v9 copy];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v12 = [v4 sourceId];
    v13 = [v12 copy];
    sourceId = v5->_sourceId;
    v5->_sourceId = v13;
  }

  return v5;
}

@end