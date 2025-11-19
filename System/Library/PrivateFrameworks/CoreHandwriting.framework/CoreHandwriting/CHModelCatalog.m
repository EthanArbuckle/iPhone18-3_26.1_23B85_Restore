@interface CHModelCatalog
- (BOOL)assetDeliveryReady;
- (CHModelCatalog)init;
- (id)getMetadata:(int64_t)a3 variant:(int64_t)a4;
- (id)getModelURL:(int64_t)a3;
- (id)getModelURL:(int64_t)a3 variant:(int64_t)a4;
- (id)getModelVersion:(int64_t)a3;
- (id)getModelVersion:(int64_t)a3 variant:(int64_t)a4;
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
  v2 = self;
  v3 = sub_18366F264();

  return v3 & 1;
}

- (id)getModelURL:(int64_t)a3 variant:(int64_t)a4
{
  v7 = sub_18366ED74(&qword_1EA84BAF8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = self;
  sub_18366F37C(a3, a4, v9);

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

- (id)getMetadata:(int64_t)a3 variant:(int64_t)a4
{
  v6 = self;
  v7 = sub_1836711E8(a3, a4);

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

- (id)getModelURL:(int64_t)a3
{
  v5 = sub_18366ED74(&qword_1EA84BAF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = self;
  sub_18366F37C(a3, 0, v7);

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

- (id)getModelVersion:(int64_t)a3 variant:(int64_t)a4
{
  v6 = self;
  sub_183670294(a3, a4, v6);
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

- (id)getModelVersion:(int64_t)a3
{
  v4 = self;
  sub_183670294(a3, 0, v4);
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