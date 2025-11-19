@interface HDSeriesFreezeResult
- (HDSeriesFreezeResult)initWithStatus:(int64_t)a3 frozenIdentifier:(id)a4;
@end

@implementation HDSeriesFreezeResult

- (HDSeriesFreezeResult)initWithStatus:(int64_t)a3 frozenIdentifier:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HDSeriesFreezeResult;
  v7 = [(HDSeriesFreezeResult *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_status = a3;
    v9 = [v6 copy];
    frozenIdentifier = v8->_frozenIdentifier;
    v8->_frozenIdentifier = v9;
  }

  return v8;
}

@end