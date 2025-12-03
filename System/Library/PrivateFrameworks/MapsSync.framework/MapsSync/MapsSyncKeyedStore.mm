@interface MapsSyncKeyedStore
+ (_TtC8MapsSync18MapsSyncKeyedStore)shared;
+ (void)checkEntitlements;
- (NSDictionary)dictionaryRepresentation;
- (_TtC8MapsSync18MapsSyncKeyedStore)init;
- (id)arrayForKey:(id)key;
- (id)dataForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)removeObjectForKey:(id)key;
- (void)setArray:(id)array key:(id)key;
- (void)setData:(id)data key:(id)key;
- (void)setDictionary:(id)dictionary key:(id)key;
- (void)setDouble:(double)double key:(id)key;
- (void)setInt64:(int64_t)int64 key:(id)key;
- (void)setString:(id)string key:(id)key;
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

- (id)stringForKey:(id)key
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  selfCopy = self;
  stringForKey_ = [v4 stringForKey_];
  if (stringForKey_)
  {
    v7 = stringForKey_;
    sub_1B63BEBD4();

    v8 = sub_1B63BEBC4();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)arrayForKey:(id)key
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  selfCopy = self;
  arrayForKey_ = [v4 arrayForKey_];
  if (arrayForKey_)
  {
    v7 = arrayForKey_;
    sub_1B63BECA4();

    v8 = sub_1B63BEC94();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)dictionaryForKey:(id)key
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  selfCopy = self;
  dictionaryForKey_ = [v4 dictionaryForKey_];
  if (dictionaryForKey_)
  {
    v7 = dictionaryForKey_;
    sub_1B63BEB74();

    v8 = sub_1B63BEB54();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)dataForKey:(id)key
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  selfCopy = self;
  dataForKey_ = [v4 dataForKey_];
  if (dataForKey_)
  {
    v7 = dataForKey_;
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
  selfCopy = self;
  dictionaryRepresentation = [v2 dictionaryRepresentation];
  sub_1B63BEB74();

  v5 = sub_1B63BEB54();

  return v5;
}

- (void)setString:(id)string key:(id)key
{
  if (string)
  {
    sub_1B63BEBD4();
    v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    keyCopy = key;
    selfCopy = self;
    v9 = sub_1B63BEBC4();
  }

  else
  {
    v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    keyCopy2 = key;
    selfCopy2 = self;
    v9 = 0;
  }

  [v6 setString:v9 forKey:key];

  [*(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store) synchronize];
}

- (void)setData:(id)data key:(id)key
{
  dataCopy = data;
  if (data)
  {
    keyCopy = key;
    selfCopy = self;
    v8 = dataCopy;
    dataCopy = sub_1B63BE924();
    v10 = v9;

    v11 = *(&selfCopy->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    v12 = sub_1B63BE904();
  }

  else
  {
    v11 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    keyCopy2 = key;
    selfCopy2 = self;
    v12 = 0;
    v10 = 0xF000000000000000;
  }

  [v11 setData:v12 forKey:key];

  [*(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store) synchronize];
  sub_1B6284F64(dataCopy, v10);
}

- (void)setArray:(id)array key:(id)key
{
  if (array)
  {
    sub_1B63BECA4();
    v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    keyCopy = key;
    selfCopy = self;
    v9 = sub_1B63BEC94();
  }

  else
  {
    v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    keyCopy2 = key;
    selfCopy2 = self;
    v9 = 0;
  }

  [v6 setArray:v9 forKey:key];

  [*(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store) synchronize];
}

- (void)setDictionary:(id)dictionary key:(id)key
{
  if (dictionary)
  {
    sub_1B63BEB74();
    v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    keyCopy = key;
    selfCopy = self;
    v9 = sub_1B63BEB54();
  }

  else
  {
    v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
    keyCopy2 = key;
    selfCopy2 = self;
    v9 = 0;
  }

  [v6 setDictionary:v9 forKey:key];

  [*(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store) synchronize];
}

- (void)setInt64:(int64_t)int64 key:(id)key
{
  v7 = OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  selfCopy = self;
  [v8 setLongLong:int64 forKey:key];
  [*(&self->super.isa + v7) synchronize];
}

- (void)setDouble:(double)double key:(id)key
{
  v7 = OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  selfCopy = self;
  [v8 setDouble:key forKey:double];
  [*(&self->super.isa + v7) synchronize];
}

- (void)removeObjectForKey:(id)key
{
  v5 = OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  selfCopy = self;
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