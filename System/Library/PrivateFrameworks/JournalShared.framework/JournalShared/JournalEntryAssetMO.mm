@interface JournalEntryAssetMO
- (JournalEntryAssetMO)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (NSData)assetMetaData;
- (void)setAssetMetaData:(id)data;
@end

@implementation JournalEntryAssetMO

- (JournalEntryAssetMO)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for JournalEntryAssetMO();
  return [(JournalEntryAssetMO *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

- (NSData)assetMetaData
{
  selfCopy = self;
  v3 = JournalEntryAssetMO.assetMetaData.getter();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_25574EF80();
    sub_2556A15B8(v3, v5);
    v6 = v7;
  }

  return v6;
}

- (void)setAssetMetaData:(id)data
{
  dataCopy = data;
  if (data)
  {
    selfCopy = self;
    v5 = dataCopy;
    dataCopy = sub_25574EF90();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_2556A1FB0(dataCopy, v7);
  sub_2556A15B8(dataCopy, v7);
}

@end