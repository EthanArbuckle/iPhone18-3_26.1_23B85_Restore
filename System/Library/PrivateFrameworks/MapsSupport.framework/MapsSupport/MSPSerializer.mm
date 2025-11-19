@interface MSPSerializer
- (id)changeFromData:(id)a3 ofType:(int64_t)a4;
- (id)dataFromChange:(id)a3;
@end

@implementation MSPSerializer

- (id)dataFromChange:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 data];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)changeFromData:(id)a3 ofType:(int64_t)a4
{
  v5 = a3;
  v6 = [[MSPCompanionSyncedItem alloc] initWithData:v5];

  [(MSPCompanionSyncedItem *)v6 setSyChangeType:a4];

  return v6;
}

@end