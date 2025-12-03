@interface ACHAchievement(FCCDataSerializable)
- (id)transportData;
- (uint64_t)initWithTransportData:()FCCDataSerializable;
@end

@implementation ACHAchievement(FCCDataSerializable)

- (uint64_t)initWithTransportData:()FCCDataSerializable
{
  v4 = MEMORY[0x277CE8CE0];
  v5 = a3;
  v6 = [[v4 alloc] initWithData:v5];

  v7 = [self initWithCodable:v6];
  return v7;
}

- (id)transportData
{
  v0 = ACHCodableFromAchievement();
  data = [v0 data];

  return data;
}

@end