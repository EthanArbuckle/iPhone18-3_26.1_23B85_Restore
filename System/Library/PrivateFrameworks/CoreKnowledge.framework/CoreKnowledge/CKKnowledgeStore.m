@interface CKKnowledgeStore
+ (id)defaultKnowledgeStore;
+ (id)defaultSynchedKnowledgeStore;
+ (id)directoryURL;
+ (id)inMemoryKnowledgeStore;
+ (id)userDefaultsKnowledgeStore;
- (BOOL)inferLinkTo:(id)a3 withPredicate:(id)a4 when:(id)a5 error:(id *)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeAllValuesAndReturnError:(id *)a3;
- (BOOL)removeValuesForKeys:(id)a3 error:(id *)a4;
- (BOOL)removeValuesMatching:(id)a3 error:(id *)a4;
- (CKKnowledgeStoreDelegate)delegate;
- (NSString)name;
- (NSURL)filePathURL;
- (id)dictionaryRepresentationAndReturnError:(id *)a3;
- (id)dictionaryRepresentationForKeysMatching:(id)a3 error:(id *)a4;
- (id)entitiesAndReturnError:(id *)a3;
- (id)entityWithIdentifier:(id)a3;
- (id)subgraphWithEntities:(id)a3;
- (id)triplesMatching:(id)a3 error:(id *)a4;
- (id)valueForKey:(id)a3;
- (id)writeBatch;
- (int64_t)hash;
- (void)importContentsOfJSONLDAtPath:(id)a3 completionHandler:(id)a4;
- (void)inferLinkTo:(id)a3 withPredicate:(id)a4 when:(id)a5 completionHandler:(id)a6;
- (void)removeValuesForKeys:(id)a3 completionHandler:(id)a4;
- (void)removeValuesMatching:(id)a3 completionHandler:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)setValue:(id)a3 forKey:(id)a4 completionHandler:(id)a5;
- (void)triplesMatching:(id)a3 completionHandler:(id)a4;
- (void)valueForKey:(id)a3 completionHandler:(id)a4;
- (void)valuesForKeys:(id)a3 completionHandler:(id)a4;
@end

@implementation CKKnowledgeStore

- (id)valueForKey:(id)a3
{
  v4 = sub_1C86F8EFC();
  v6 = v5;
  v7 = self;
  CKKnowledgeStore.value(forKey:)(v4, v6);

  v8 = v16;
  if (v16)
  {
    v9 = __swift_project_boxed_opaque_existential_0(v15, v16);
    v10 = *(v8 - 8);
    MEMORY[0x1EEE9AC00](v9, v9);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_1C86F947C();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)writeBatch
{
  v2 = self;
  v3 = CKKnowledgeStore.writeBatch()();

  return v3;
}

- (void)setValue:(id)a3 forKey:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  if (a3)
  {
    v9 = a4;
    v10 = self;
    swift_unknownObjectRetain();
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v11 = a4;
    v12 = self;
  }

  v13 = sub_1C86F8EFC();
  v15 = v14;

  _Block_copy(v8);
  sub_1C868D734(v16, v13, v15, self, v8);
  _Block_release(v8);

  sub_1C86885EC(v16);
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a4;
    v9 = self;
  }

  sub_1C86F8EFC();

  CKKnowledgeStore.setValue(_:forKey:)(v10);

  sub_1C86885EC(v10);
}

- (void)removeValuesForKeys:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1C86F909C();
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  CKKnowledgeStore.removeValues(forKeys:completionHandler:)();
}

- (BOOL)removeValuesForKeys:(id)a3 error:(id *)a4
{
  v6 = sub_1C86F909C();
  v7 = self;
  CKKnowledgeStore.removeValues(forKeys:)(v6);

  if (v8)
  {
    if (a4)
    {
      v9 = sub_1C86F8B9C();

      v10 = v9;
      *a4 = v9;
    }

    else
    {
    }
  }

  return v8 == 0;
}

- (void)removeValuesMatching:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
  CKKnowledgeStore.removeValues(matching:completionHandler:)();
}

- (BOOL)removeValuesMatching:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  CKKnowledgeStore.removeValues(matching:)();

  return 1;
}

- (BOOL)removeAllValuesAndReturnError:(id *)a3
{
  v4 = self;
  CKKnowledgeStore.removeAllValues()();

  if (v5)
  {
    if (a3)
    {
      v6 = sub_1C86F8B9C();

      v7 = v6;
      *a3 = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (id)dictionaryRepresentationAndReturnError:(id *)a3
{
  v3 = self;
  CKKnowledgeStore.dictionaryRepresentation()();

  v4 = sub_1C86F8E8C();

  return v4;
}

- (id)dictionaryRepresentationForKeysMatching:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  CKKnowledgeStore.dictionaryRepresentation(forKeysMatching:)();

  v7 = sub_1C86F8E8C();

  return v7;
}

- (void)valueForKey:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1C86F8EFC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  CKKnowledgeStore.value(forKey:completionHandler:)(v6, v8, sub_1C86A19FC, v9);
}

- (void)valuesForKeys:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1C86F909C();
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  CKKnowledgeStore.values(forKeys:completionHandler:)();
}

- (id)entityWithIdentifier:(id)a3
{
  sub_1C86F8EFC();
  v4 = self;
  v5 = CKKnowledgeStore.entity(withIdentifier:)();

  return v5;
}

- (id)entitiesAndReturnError:(id *)a3
{
  v3 = self;
  CKKnowledgeStore.entities()();

  type metadata accessor for CKKnowledgeStoreEntity();
  v4 = sub_1C86F908C();

  return v4;
}

- (id)triplesMatching:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  CKKnowledgeStore.triples(matching:)();

  type metadata accessor for CKTriple();
  v7 = sub_1C86F908C();

  return v7;
}

- (void)triplesMatching:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
  CKKnowledgeStore.triples(matching:completionHandler:)();
}

- (id)subgraphWithEntities:(id)a3
{
  v4 = sub_1C86F909C();
  v5 = self;
  v6 = CKKnowledgeStore.subgraph(withEntities:)(v4);

  return v6;
}

- (void)importContentsOfJSONLDAtPath:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1C86F8EFC();
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_1C86903C8;
  }

  v6 = self;
  CKKnowledgeStore.importContentsOfJSONLD(atPath:completionHandler:)();
  sub_1C86B5008(v5);
}

- (BOOL)inferLinkTo:(id)a3 withPredicate:(id)a4 when:(id)a5 error:(id *)a6
{
  v9 = sub_1C86F8EFC();
  v11 = v10;
  v12 = a3;
  v13 = a5;
  v14 = self;
  CKKnowledgeStore.inferLink(to:withPredicate:when:)(v12, v9, v11, v13);

  return 1;
}

- (void)inferLinkTo:(id)a3 withPredicate:(id)a4 when:(id)a5 completionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_1C86F8EFC();
  v12 = v11;
  _Block_copy(v9);
  v13 = a3;
  v14 = a5;
  v15 = self;
  sub_1C86C27EC(v13, v10, v12, v14, v15, v9);
  _Block_release(v9);
}

- (CKKnowledgeStoreDelegate)delegate
{
  v2 = sub_1C86D0D18();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C86D0D58();
}

- (NSString)name
{
  v2 = self;
  sub_1C86D0EBC();

  v3 = sub_1C86F8EEC();

  return v3;
}

+ (id)directoryURL
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9B8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - v4;
  static CKKnowledgeStore.directory()(&v9 - v4);
  v6 = sub_1C86F8C1C();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    v7 = sub_1C86F8BCC();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return v7;
}

- (NSURL)filePathURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9B8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = self;
  sub_1C86D0F18(v6);

  v8 = sub_1C86F8C1C();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1C86F8BCC();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  return v9;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1C86D1CF0();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1C86D1D58(v8);

  sub_1C869DEA8(v8, &qword_1EC2AD810);
  return v6 & 1;
}

+ (id)defaultKnowledgeStore
{
  v2 = sub_1C86D11B4();

  return v2;
}

+ (id)defaultSynchedKnowledgeStore
{
  v2 = sub_1C86D11D4();

  return v2;
}

+ (id)inMemoryKnowledgeStore
{
  v2 = sub_1C86D11F4();

  return v2;
}

+ (id)userDefaultsKnowledgeStore
{
  v2 = sub_1C868515C();

  return v2;
}

@end