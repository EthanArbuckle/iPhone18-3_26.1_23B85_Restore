@interface CKKnowledgeStore
+ (id)defaultKnowledgeStore;
+ (id)defaultSynchedKnowledgeStore;
+ (id)directoryURL;
+ (id)inMemoryKnowledgeStore;
+ (id)userDefaultsKnowledgeStore;
- (BOOL)inferLinkTo:(id)to withPredicate:(id)predicate when:(id)when error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeAllValuesAndReturnError:(id *)error;
- (BOOL)removeValuesForKeys:(id)keys error:(id *)error;
- (BOOL)removeValuesMatching:(id)matching error:(id *)error;
- (CKKnowledgeStoreDelegate)delegate;
- (NSString)name;
- (NSURL)filePathURL;
- (id)dictionaryRepresentationAndReturnError:(id *)error;
- (id)dictionaryRepresentationForKeysMatching:(id)matching error:(id *)error;
- (id)entitiesAndReturnError:(id *)error;
- (id)entityWithIdentifier:(id)identifier;
- (id)subgraphWithEntities:(id)entities;
- (id)triplesMatching:(id)matching error:(id *)error;
- (id)valueForKey:(id)key;
- (id)writeBatch;
- (int64_t)hash;
- (void)importContentsOfJSONLDAtPath:(id)path completionHandler:(id)handler;
- (void)inferLinkTo:(id)to withPredicate:(id)predicate when:(id)when completionHandler:(id)handler;
- (void)removeValuesForKeys:(id)keys completionHandler:(id)handler;
- (void)removeValuesMatching:(id)matching completionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)setValue:(id)value forKey:(id)key;
- (void)setValue:(id)value forKey:(id)key completionHandler:(id)handler;
- (void)triplesMatching:(id)matching completionHandler:(id)handler;
- (void)valueForKey:(id)key completionHandler:(id)handler;
- (void)valuesForKeys:(id)keys completionHandler:(id)handler;
@end

@implementation CKKnowledgeStore

- (id)valueForKey:(id)key
{
  v4 = sub_1C86F8EFC();
  v6 = v5;
  selfCopy = self;
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
  selfCopy = self;
  v3 = CKKnowledgeStore.writeBatch()();

  return v3;
}

- (void)setValue:(id)value forKey:(id)key completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  if (value)
  {
    keyCopy = key;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    keyCopy2 = key;
    selfCopy2 = self;
  }

  v13 = sub_1C86F8EFC();
  v15 = v14;

  _Block_copy(v8);
  sub_1C868D734(v16, v13, v15, self, v8);
  _Block_release(v8);

  sub_1C86885EC(v16);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (value)
  {
    keyCopy = key;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    keyCopy2 = key;
    selfCopy2 = self;
  }

  sub_1C86F8EFC();

  CKKnowledgeStore.setValue(_:forKey:)(v10);

  sub_1C86885EC(v10);
}

- (void)removeValuesForKeys:(id)keys completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  sub_1C86F909C();
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  CKKnowledgeStore.removeValues(forKeys:completionHandler:)();
}

- (BOOL)removeValuesForKeys:(id)keys error:(id *)error
{
  v6 = sub_1C86F909C();
  selfCopy = self;
  CKKnowledgeStore.removeValues(forKeys:)(v6);

  if (v8)
  {
    if (error)
    {
      v9 = sub_1C86F8B9C();

      v10 = v9;
      *error = v9;
    }

    else
    {
    }
  }

  return v8 == 0;
}

- (void)removeValuesMatching:(id)matching completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v6;
  matchingCopy = matching;
  selfCopy = self;
  CKKnowledgeStore.removeValues(matching:completionHandler:)();
}

- (BOOL)removeValuesMatching:(id)matching error:(id *)error
{
  matchingCopy = matching;
  selfCopy = self;
  CKKnowledgeStore.removeValues(matching:)();

  return 1;
}

- (BOOL)removeAllValuesAndReturnError:(id *)error
{
  selfCopy = self;
  CKKnowledgeStore.removeAllValues()();

  if (v5)
  {
    if (error)
    {
      v6 = sub_1C86F8B9C();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (id)dictionaryRepresentationAndReturnError:(id *)error
{
  selfCopy = self;
  CKKnowledgeStore.dictionaryRepresentation()();

  v4 = sub_1C86F8E8C();

  return v4;
}

- (id)dictionaryRepresentationForKeysMatching:(id)matching error:(id *)error
{
  matchingCopy = matching;
  selfCopy = self;
  CKKnowledgeStore.dictionaryRepresentation(forKeysMatching:)();

  v7 = sub_1C86F8E8C();

  return v7;
}

- (void)valueForKey:(id)key completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1C86F8EFC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  CKKnowledgeStore.value(forKey:completionHandler:)(v6, v8, sub_1C86A19FC, v9);
}

- (void)valuesForKeys:(id)keys completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  sub_1C86F909C();
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  CKKnowledgeStore.values(forKeys:completionHandler:)();
}

- (id)entityWithIdentifier:(id)identifier
{
  sub_1C86F8EFC();
  selfCopy = self;
  v5 = CKKnowledgeStore.entity(withIdentifier:)();

  return v5;
}

- (id)entitiesAndReturnError:(id *)error
{
  selfCopy = self;
  CKKnowledgeStore.entities()();

  type metadata accessor for CKKnowledgeStoreEntity();
  v4 = sub_1C86F908C();

  return v4;
}

- (id)triplesMatching:(id)matching error:(id *)error
{
  matchingCopy = matching;
  selfCopy = self;
  CKKnowledgeStore.triples(matching:)();

  type metadata accessor for CKTriple();
  v7 = sub_1C86F908C();

  return v7;
}

- (void)triplesMatching:(id)matching completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v6;
  matchingCopy = matching;
  selfCopy = self;
  CKKnowledgeStore.triples(matching:completionHandler:)();
}

- (id)subgraphWithEntities:(id)entities
{
  v4 = sub_1C86F909C();
  selfCopy = self;
  v6 = CKKnowledgeStore.subgraph(withEntities:)(v4);

  return v6;
}

- (void)importContentsOfJSONLDAtPath:(id)path completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  sub_1C86F8EFC();
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_1C86903C8;
  }

  selfCopy = self;
  CKKnowledgeStore.importContentsOfJSONLD(atPath:completionHandler:)();
  sub_1C86B5008(v5);
}

- (BOOL)inferLinkTo:(id)to withPredicate:(id)predicate when:(id)when error:(id *)error
{
  v9 = sub_1C86F8EFC();
  v11 = v10;
  toCopy = to;
  whenCopy = when;
  selfCopy = self;
  CKKnowledgeStore.inferLink(to:withPredicate:when:)(toCopy, v9, v11, whenCopy);

  return 1;
}

- (void)inferLinkTo:(id)to withPredicate:(id)predicate when:(id)when completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = sub_1C86F8EFC();
  v12 = v11;
  _Block_copy(v9);
  toCopy = to;
  whenCopy = when;
  selfCopy = self;
  sub_1C86C27EC(toCopy, v10, v12, whenCopy, selfCopy, v9);
  _Block_release(v9);
}

- (CKKnowledgeStoreDelegate)delegate
{
  v2 = sub_1C86D0D18();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C86D0D58();
}

- (NSString)name
{
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1C86D1CF0();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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