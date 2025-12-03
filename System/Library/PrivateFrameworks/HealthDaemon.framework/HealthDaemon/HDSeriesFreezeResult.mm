@interface HDSeriesFreezeResult
- (HDSeriesFreezeResult)initWithStatus:(int64_t)status frozenIdentifier:(id)identifier;
@end

@implementation HDSeriesFreezeResult

- (HDSeriesFreezeResult)initWithStatus:(int64_t)status frozenIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HDSeriesFreezeResult;
  v7 = [(HDSeriesFreezeResult *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_status = status;
    v9 = [identifierCopy copy];
    frozenIdentifier = v8->_frozenIdentifier;
    v8->_frozenIdentifier = v9;
  }

  return v8;
}

@end