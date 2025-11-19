@interface MapsSyncKeyedStore
+ (_TtC8MapsSync18MapsSyncKeyedStore)shared;
+ (void)checkEntitlements;
- (NSDictionary)dictionaryRepresentation;
- (_TtC8MapsSync18MapsSyncKeyedStore)init;
- (id)arrayForKey:(id)a3;
- (id)dataForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setArray:(id)a3 key:(id)a4;
- (void)setData:(id)a3 key:(id)a4;
- (void)setDictionary:(id)a3 key:(id)a4;
- (void)setDouble:(double)a3 key:(id)a4;
- (void)setInt64:(int64_t)a3 key:(id)a4;
- (void)setString:(id)a3 key:(id)a4;
@end

@implementation MapsSyncKeyedStore

+ (_TtC8MapsSync18MapsSyncKeyedStore)shared
{
  if (qword_1EB942F98 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB942FA0;

  return v3;
}

- (_TtC8MapsSync18MapsSyncKeyedStore)init
{
  +[MapsSyncKeyedStore checkEntitlements]_0();
  v3 = objc_allocWithZone(MEMORY[0x1E696AFB8]);
  v4 = sub_1B63BEBC4();
  v5 = [v3 initWithStoreIdentifier:v4 type:1];

  *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store) = v5;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSyncKeyedStore();
  return [(MapsSyncKeyedStore *)&v7 init];
}

- (id)stringForKey:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v5 = self;
  v6 = [v4 stringForKey_];
  if (v6)
  {
    v7 = v6;
    sub_1B63BEBD4();

    v8 = sub_1B63BEBC4();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)arrayForKey:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v5 = self;
  v6 = [v4 arrayForKey_];
  if (v6)
  {
    v7 = v6;
    sub_1B63BECA4();

    v8 = sub_1B63BEC94();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v5 = self;
  v6 = [v4 dictionaryForKey_];
  if (v6)
  {
    v7 = v6;
    sub_1B63BEB74();

    v8 = sub_1B63BEB54();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)dataForKey:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v5 = self;
  v6 = [v4 dataForKey_];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B63BE924();
    v10 = v9;

    v11 = sub_1B63BE904();
    sub_1B628BAC0(v8, v10);
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v3 = self;
  v4 = [v2 dictionaryRepresentation];
  sub_1B63BEB74();

  v5 = sub_1B63BEB54();

  return v5;
}

- (void)setString:(id)a3 key:(id)a4
{
  if (a3)
  {
    sub_1B63BEBD4();
    v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    v7 = a4;
    v8 = self;
    v9 = sub_1B63BEBC4();
  }

  else
  {
    v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    v10 = a4;
    v11 = self;
    v9 = 0;
  }

  [v6 setString:v9 forKey:a4];

  [*(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store) synchronize];
}

- (void)setData:(id)a3 key:(id)a4
{
  v5 = a3;
  if (a3)
  {
    v6 = a4;
    v7 = self;
    v8 = v5;
    v5 = sub_1B63BE924();
    v10 = v9;

    v11 = *(&v7->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    v12 = sub_1B63BE904();
  }

  else
  {
    v11 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    v13 = a4;
    v14 = self;
    v12 = 0;
    v10 = 0xF000000000000000;
  }

  [v11 setData:v12 forKey:a4];

  [*(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store) synchronize];
  sub_1B6284F64(v5, v10);
}

- (void)setArray:(id)a3 key:(id)a4
{
  if (a3)
  {
    sub_1B63BECA4();
    v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    v7 = a4;
    v8 = self;
    v9 = sub_1B63BEC94();
  }

  else
  {
    v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    v10 = a4;
    v11 = self;
    v9 = 0;
  }

  [v6 setArray:v9 forKey:a4];

  [*(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store) synchronize];
}

- (void)setDictionary:(id)a3 key:(id)a4
{
  if (a3)
  {
    sub_1B63BEB74();
    v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    v7 = a4;
    v8 = self;
    v9 = sub_1B63BEB54();
  }

  else
  {
    v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    v10 = a4;
    v11 = self;
    v9 = 0;
  }

  [v6 setDictionary:v9 forKey:a4];

  [*(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store) synchronize];
}

- (void)setInt64:(int64_t)a3 key:(id)a4
{
  v7 = OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v9 = self;
  [v8 setLongLong:a3 forKey:a4];
  [*(&self->super.isa + v7) synchronize];
}

- (void)setDouble:(double)a3 key:(id)a4
{
  v7 = OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v9 = self;
  [v8 setDouble:a4 forKey:a3];
  [*(&self->super.isa + v7) synchronize];
}

- (void)removeObjectForKey:(id)a3
{
  v5 = OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v7 = self;
  [v6 removeObjectForKey_];
  [*(&self->super.isa + v5) synchronize];
}

+ (void)checkEntitlements
{
  type metadata accessor for MapsSyncUtil();
  memset(v3, 0, sizeof(v3));
  v4 = 1;
  sub_1B6352764(0xD00000000000002FLL, 0x80000001B63CC4F0, v3, v1);
  if (v2)
  {
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    sub_1B62B0364(v1);
  }

  v0 = sub_1B63BEBC4();
  MapsSyncSandboxAllowsXPCService(v0);
}

@end