@interface NWCSimpleEntryModel
- (NWCSimpleEntryModel)initWithCoder:(id)a3;
- (NWCSimpleEntryModel)initWithEntries:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NWCSimpleEntryModel

- (NWCSimpleEntryModel)initWithEntries:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NWCSimpleEntryModel;
  v6 = [(NWCSimpleEntryModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hourlyEntryModels, a3);
  }

  return v7;
}

- (NWCSimpleEntryModel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_hourlyEntryModels);
  v7 = [v4 decodeArrayOfObjectsOfClass:v5 forKey:v6];

  v8 = [[NWCSimpleEntryModel alloc] initWithEntries:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(NWCSimpleEntryModel *)self hourlyEntryModels];
  v5 = NSStringFromSelector(sel_hourlyEntryModels);
  [v4 encodeObject:v6 forKey:v5];
}

@end