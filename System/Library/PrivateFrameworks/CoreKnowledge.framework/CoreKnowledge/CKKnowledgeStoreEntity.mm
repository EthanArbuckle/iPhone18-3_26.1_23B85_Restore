@interface CKKnowledgeStoreEntity
- (BOOL)isEqual:(id)equal;
- (BOOL)linkTo:(id)to withPredicate:(id)predicate error:(id *)error;
- (NSString)description;
- (id)linksTo:(id)to matchType:(int64_t)type error:(id *)error;
- (id)valueForKey:(id)key;
- (int64_t)hash;
- (void)linkTo:(id)to withPredicate:(id)predicate completionHandler:(id)handler;
- (void)linksTo:(id)to matchType:(int64_t)type completionHandler:(id)handler;
- (void)removeWithCompletionHandler:(id)handler;
- (void)setValuesForKeys:(id)keys completionHandler:(id)handler;
- (void)valuesForKeys:(id)keys completionHandler:(id)handler;
@end

@implementation CKKnowledgeStoreEntity

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

  v6 = sub_1C86C7E6C(v8);

  sub_1C86A5148(v8, &qword_1EC2AD810);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1C86C8040();

  return v3;
}

- (NSString)description
{
  CKKnowledgeStoreEntity.identifier.getter();
  v2 = sub_1C86F8EEC();

  return v2;
}

- (id)valueForKey:(id)key
{
  v4 = sub_1C86F8EFC();
  v6 = v5;
  selfCopy = self;
  sub_1C86C8120(v4, v6, &v15);

  v8 = v16;
  if (v16)
  {
    v9 = __swift_project_boxed_opaque_existential_0(&v15, v16);
    v10 = *(v8 - 8);
    MEMORY[0x1EEE9AC00](v9, v9);
    v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_1C86F947C();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_0(&v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)valuesForKeys:(id)keys completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1C86F909C();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  sub_1C86C8A04(v6, sub_1C86CFD48, v7);
}

- (void)setValuesForKeys:(id)keys completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1C86F8E9C();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  sub_1C86C947C(v6, sub_1C869040C, v7);
}

- (void)linkTo:(id)to withPredicate:(id)predicate completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_1C86F8EFC();
  v10 = v9;
  _Block_copy(v7);
  toCopy = to;
  selfCopy = self;
  sub_1C86C9D98(toCopy, v8, v10, selfCopy, v7);
  _Block_release(v7);
}

- (BOOL)linkTo:(id)to withPredicate:(id)predicate error:(id *)error
{
  sub_1C86F8EFC();
  toCopy = to;
  selfCopy = self;
  sub_1C86CA5C0();

  return 1;
}

- (void)removeWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1C86CAD98(sub_1C86903C8, v5);
}

- (void)linksTo:(id)to matchType:(int64_t)type completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  toCopy = to;
  selfCopy = self;
  sub_1C86CE37C(toCopy, type, selfCopy, v8);
  _Block_release(v8);
}

- (id)linksTo:(id)to matchType:(int64_t)type error:(id *)error
{
  toCopy = to;
  selfCopy = self;
  sub_1C86CF078();

  v8 = sub_1C86F908C();

  return v8;
}

@end