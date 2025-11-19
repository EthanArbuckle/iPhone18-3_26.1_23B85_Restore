@interface AMSKitAMSBag
- (BOOL)isExpired;
- (NSDate)expirationDate;
- (_TtC7JetCore12AMSKitAMSBag)init;
- (id)BOOLForKey:(id)a3;
- (id)URLForKey:(id)a3;
- (id)arrayForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)doubleForKey:(id)a3;
- (id)integerForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)createSnapshotWithCompletion:(id)a3;
@end

@implementation AMSKitAMSBag

- (BOOL)isExpired
{
  v3 = (self + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = self;
  v6 = sub_1DB50A0F0();

  return v6 & 1;
}

- (NSDate)expirationDate
{
  v3 = sub_1DB509DD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(self + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 32);
  __swift_project_boxed_opaque_existential_1((self + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(self + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  v9 = self;
  sub_1DB50A090();

  v10 = sub_1DB509D40();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1DB4D575C(v5);
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 promiseWithResult_];
    v11 = [objc_opt_self() bagValueWithKey:v4 valueType:0 valuePromise:v10];

    v4 = v9;
    v5 = v10;
  }

  else
  {
    v11 = sub_1DB4D6A90(v4, 0);
  }

  return v11;
}

- (id)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1DB4D6084(v4);

  return v6;
}

- (id)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1DB4D620C(v4);

  return v6;
}

- (id)integerForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1DB4D639C(v4);

  return v6;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1DB4D6520(v4);

  return v6;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1DB4D6698(v4);

  return v6;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1DB4D68D8(v4);

  return v6;
}

- (void)createSnapshotWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1DB50ABA0();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DB522488;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DB522498;
  v13[5] = v12;
  v14 = self;
  sub_1DB419B9C(0, 0, v8, &unk_1DB5224A8, v13);
}

- (_TtC7JetCore12AMSKitAMSBag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end