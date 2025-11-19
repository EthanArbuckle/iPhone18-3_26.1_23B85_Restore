@interface JournalEntryAssetMO
- (JournalEntryAssetMO)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (NSData)assetMetaData;
- (void)setAssetMetaData:(id)a3;
@end

@implementation JournalEntryAssetMO

- (JournalEntryAssetMO)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for JournalEntryAssetMO();
  return [(JournalEntryAssetMO *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (NSData)assetMetaData
{
  v2 = self;
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

- (void)setAssetMetaData:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = sub_25574EF90();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  sub_2556A1FB0(v3, v7);
  sub_2556A15B8(v3, v7);
}

@end