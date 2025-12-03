@interface CHModelCatalog
- (BOOL)assetDeliveryReady;
- (CHModelCatalog)init;
- (id)getMetadata:(int64_t)metadata variant:(int64_t)variant;
- (id)getModelURL:(int64_t)l;
- (id)getModelURL:(int64_t)l variant:(int64_t)variant;
- (id)getModelVersion:(int64_t)version;
- (id)getModelVersion:(int64_t)version variant:(int64_t)variant;
@end

@implementation CHModelCatalog

- (CHModelCatalog)init
{
  sub_1839BCFFC();
  v4.receiver = self;
  v4.super_class = type metadata accessor for CHModelCatalog();
  return [(CHModelCatalog *)&v4 init];
}

- (BOOL)assetDeliveryReady
{
  selfCopy = self;
  v3 = sub_18366F264();

  return v3 & 1;
}

- (id)getModelURL:(int64_t)l variant:(int64_t)variant
{
  v7 = sub_18366ED74(&qword_1EA84BAF8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  selfCopy = self;
  sub_18366F37C(l, variant, v9);

  v11 = sub_1839BCE9C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_1839BCE7C();
    (*(v12 + 8))(v9, v11);
    v14 = v15;
  }

  return v14;
}

- (id)getMetadata:(int64_t)metadata variant:(int64_t)variant
{
  selfCopy = self;
  v7 = sub_1836711E8(metadata, variant);

  if (v7)
  {
    v8 = sub_1839BD0BC();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getModelURL:(int64_t)l
{
  v5 = sub_18366ED74(&qword_1EA84BAF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  selfCopy = self;
  sub_18366F37C(l, 0, v7);

  v9 = sub_1839BCE9C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1839BCE7C();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

- (id)getModelVersion:(int64_t)version variant:(int64_t)variant
{
  selfCopy = self;
  sub_183670294(version, variant, selfCopy);
  v8 = v7;

  if (v8)
  {
    v9 = sub_1839BD0CC();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)getModelVersion:(int64_t)version
{
  selfCopy = self;
  sub_183670294(version, 0, selfCopy);
  v6 = v5;

  if (v6)
  {
    v7 = sub_1839BD0CC();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end