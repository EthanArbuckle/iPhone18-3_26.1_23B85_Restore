@interface MapsSyncCommandLineHelpers
+ (NSString)contactHandleKey;
+ (NSString)coreDataScheme;
+ (NSString)dateFormat;
+ (NSString)identifierKey;
+ (NSString)legacyMapItemStorageKey;
+ (NSString)legacyObjectPrefix;
+ (NSString)legacyRelationshipsFetchKey;
+ (NSString)legacyRelationshipsIdentifierKey;
+ (NSString)legacyRelationshipsKey;
+ (NSString)legacyRelationshipsObjectKey;
+ (NSString)mixinMapItemEntityNameKey;
+ (NSString)mixinMapItemStorageKey;
+ (NSString)objectIdKey;
- (_TtC8MapsSync26MapsSyncCommandLineHelpers)init;
- (id)dictionaryFrom:(id)from;
- (id)managedObjectWithEntityName:(id)name from:(id)from in:(id)in;
- (void)coreDataStackWithDatabaseURL:(NSURL *)l completionHandler:(id)handler;
- (void)deleteObjectWithUrl:(NSURL *)url identifier:(NSUUID *)identifier managedObjectId:(NSURL *)id completionHandler:(id)handler;
- (void)exportDatabaseWithUrl:(NSURL *)url entityName:(NSString *)name completionHandler:(id)handler;
- (void)getCountsWithUrl:(NSURL *)url completionHandler:(id)handler;
- (void)importDatabaseWithUrl:(NSURL *)url dictionary:(NSDictionary *)dictionary completionHandler:(id)handler;
- (void)purgeDatabaseWithUrl:(NSURL *)url entityName:(NSString *)name completionHandler:(id)handler;
- (void)setupRelationshipsFrom:(id)from in:(id)in clearExisting:(BOOL)existing;
@end

@implementation MapsSyncCommandLineHelpers

+ (NSString)dateFormat
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)coreDataScheme
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)objectIdKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)identifierKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)contactHandleKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)legacyObjectPrefix
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)legacyRelationshipsKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)legacyRelationshipsFetchKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)legacyRelationshipsIdentifierKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)legacyRelationshipsObjectKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)legacyMapItemStorageKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)mixinMapItemEntityNameKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)mixinMapItemStorageKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

- (void)exportDatabaseWithUrl:(NSURL *)url entityName:(NSString *)name completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = url;
  v14[3] = name;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1B63BED34();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B63C6498;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B63C64A0;
  v17[5] = v16;
  urlCopy = url;
  nameCopy = name;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v12, &unk_1B63C64A8, v17);
}

- (void)importDatabaseWithUrl:(NSURL *)url dictionary:(NSDictionary *)dictionary completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = url;
  v14[3] = dictionary;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1B63BED34();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B63C6478;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B63C6480;
  v17[5] = v16;
  urlCopy = url;
  dictionaryCopy = dictionary;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v12, &unk_1B63C6488, v17);
}

- (void)getCountsWithUrl:(NSURL *)url completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = url;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B63BED34();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C6458;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B63C6460;
  v15[5] = v14;
  urlCopy = url;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v10, &unk_1B63C6468, v15);
}

- (void)purgeDatabaseWithUrl:(NSURL *)url entityName:(NSString *)name completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = url;
  v14[3] = name;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1B63BED34();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B63C6438;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B63C6440;
  v17[5] = v16;
  urlCopy = url;
  nameCopy = name;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v12, &unk_1B63C6448, v17);
}

- (void)deleteObjectWithUrl:(NSURL *)url identifier:(NSUUID *)identifier managedObjectId:(NSURL *)id completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = url;
  v16[3] = identifier;
  v16[4] = id;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_1B63BED34();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B63C6418;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B63C6420;
  v19[5] = v18;
  urlCopy = url;
  identifierCopy = identifier;
  idCopy = id;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v14, &unk_1B63C6428, v19);
}

- (id)dictionaryFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_1B6389CF4(fromCopy);

  v6 = sub_1B63BEB54();

  return v6;
}

- (id)managedObjectWithEntityName:(id)name from:(id)from in:(id)in
{
  v7 = sub_1B63BEBD4();
  v9 = v8;
  v10 = sub_1B63BEB74();
  inCopy = in;
  selfCopy = self;
  v13 = sub_1B638A994(v7, v9, v10, inCopy);

  return v13;
}

- (void)setupRelationshipsFrom:(id)from in:(id)in clearExisting:(BOOL)existing
{
  existingCopy = existing;
  v8 = sub_1B63BEB74();
  inCopy = in;
  selfCopy = self;
  sub_1B63929BC(v8, inCopy, existingCopy);
}

- (void)coreDataStackWithDatabaseURL:(NSURL *)l completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = l;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B63BED34();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C6408;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B63C5510;
  v15[5] = v14;
  lCopy = l;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v10, &unk_1B63C5120, v15);
}

- (_TtC8MapsSync26MapsSyncCommandLineHelpers)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MapsSyncCommandLineHelpers();
  return [(MapsSyncCommandLineHelpers *)&v3 init];
}

@end