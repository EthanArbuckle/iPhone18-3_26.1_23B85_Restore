@interface NWCSimpleEntryModel
- (NWCSimpleEntryModel)initWithCoder:(id)coder;
- (NWCSimpleEntryModel)initWithEntries:(id)entries;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NWCSimpleEntryModel

- (NWCSimpleEntryModel)initWithEntries:(id)entries
{
  entriesCopy = entries;
  v9.receiver = self;
  v9.super_class = NWCSimpleEntryModel;
  v6 = [(NWCSimpleEntryModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hourlyEntryModels, entries);
  }

  return v7;
}

- (NWCSimpleEntryModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_hourlyEntryModels);
  v7 = [coderCopy decodeArrayOfObjectsOfClass:v5 forKey:v6];

  v8 = [[NWCSimpleEntryModel alloc] initWithEntries:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hourlyEntryModels = [(NWCSimpleEntryModel *)self hourlyEntryModels];
  v5 = NSStringFromSelector(sel_hourlyEntryModels);
  [coderCopy encodeObject:hourlyEntryModels forKey:v5];
}

@end