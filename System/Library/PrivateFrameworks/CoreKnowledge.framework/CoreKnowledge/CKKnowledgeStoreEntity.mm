@interface CKKnowledgeStoreEntity
- (BOOL)isEqual:(id)a3;
- (BOOL)linkTo:(id)a3 withPredicate:(id)a4 error:(id *)a5;
- (NSString)description;
- (id)linksTo:(id)a3 matchType:(int64_t)a4 error:(id *)a5;
- (id)valueForKey:(id)a3;
- (int64_t)hash;
- (void)linkTo:(id)a3 withPredicate:(id)a4 completionHandler:(id)a5;
- (void)linksTo:(id)a3 matchType:(int64_t)a4 completionHandler:(id)a5;
- (void)removeWithCompletionHandler:(id)a3;
- (void)setValuesForKeys:(id)a3 completionHandler:(id)a4;
- (void)valuesForKeys:(id)a3 completionHandler:(id)a4;
@end

@implementation CKKnowledgeStoreEntity

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

  v6 = sub_1C86C7E6C(v8);

  sub_1C86A5148(v8, &qword_1EC2AD810);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1C86C8040();

  return v3;
}

- (NSString)description
{
  CKKnowledgeStoreEntity.identifier.getter();
  v2 = sub_1C86F8EEC();

  return v2;
}

- (id)valueForKey:(id)a3
{
  v4 = sub_1C86F8EFC();
  v6 = v5;
  v7 = self;
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

- (void)valuesForKeys:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1C86F909C();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  sub_1C86C8A04(v6, sub_1C86CFD48, v7);
}

- (void)setValuesForKeys:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1C86F8E9C();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  sub_1C86C947C(v6, sub_1C869040C, v7);
}

- (void)linkTo:(id)a3 withPredicate:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1C86F8EFC();
  v10 = v9;
  _Block_copy(v7);
  v11 = a3;
  v12 = self;
  sub_1C86C9D98(v11, v8, v10, v12, v7);
  _Block_release(v7);
}

- (BOOL)linkTo:(id)a3 withPredicate:(id)a4 error:(id *)a5
{
  sub_1C86F8EFC();
  v7 = a3;
  v8 = self;
  sub_1C86CA5C0();

  return 1;
}

- (void)removeWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1C86CAD98(sub_1C86903C8, v5);
}

- (void)linksTo:(id)a3 matchType:(int64_t)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = self;
  sub_1C86CE37C(v9, a4, v10, v8);
  _Block_release(v8);
}

- (id)linksTo:(id)a3 matchType:(int64_t)a4 error:(id *)a5
{
  v6 = a3;
  v7 = self;
  sub_1C86CF078();

  v8 = sub_1C86F908C();

  return v8;
}

@end