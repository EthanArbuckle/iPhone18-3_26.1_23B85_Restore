@interface MSPSerializer
- (id)changeFromData:(id)data ofType:(int64_t)type;
- (id)dataFromChange:(id)change;
@end

@implementation MSPSerializer

- (id)dataFromChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    data = [changeCopy data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (id)changeFromData:(id)data ofType:(int64_t)type
{
  dataCopy = data;
  v6 = [[MSPCompanionSyncedItem alloc] initWithData:dataCopy];

  [(MSPCompanionSyncedItem *)v6 setSyChangeType:type];

  return v6;
}

@end