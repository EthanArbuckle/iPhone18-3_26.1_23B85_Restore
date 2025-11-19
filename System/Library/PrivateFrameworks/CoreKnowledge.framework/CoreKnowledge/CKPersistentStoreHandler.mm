@interface CKPersistentStoreHandler
+ (id)inMemoryHandler;
- (BOOL)dropLinkWithLabel:(id)a3 between:(id)a4 and:(id)a5 error:(id *)a6;
- (BOOL)dropLinksBetween:(id)a3 and:(id)a4 error:(id *)a5;
- (BOOL)dropLinksWithLabel:(id)a3 from:(id)a4 error:(id *)a5;
- (BOOL)removeAllValuesAndReturnError:(id *)a3;
- (BOOL)removeValueForKey:(id)a3 error:(id *)a4;
- (BOOL)removeValuesForKeys:(id)a3 error:(id *)a4;
- (BOOL)removeValuesMatching:(id)a3 error:(id *)a4;
- (BOOL)saveKeysAndValues:(id)a3 error:(id *)a4;
- (BOOL)setWeightForLinkWithLabel:(id)a3 between:(id)a4 and:(id)a5 toValue:(int64_t)a6 error:(id *)a7;
- (CKPersistentStoreHandler)initWithName:(id)a3;
- (id)_valuesForKeys:(id)a3 error:(id *)a4;
- (id)keysAndValuesAndReturnError:(id *)a3;
- (id)keysAndValuesForKeysMatching:(id)a3 error:(id *)a4;
- (id)tripleComponentsMatching:(id)a3 error:(id *)a4;
@end

@implementation CKPersistentStoreHandler

+ (id)inMemoryHandler
{
  v2 = sub_1C8694120();

  return v2;
}

- (CKPersistentStoreHandler)initWithName:(id)a3
{
  sub_1C86F8EFC();
  CKPersistentStoreHandler.init(name:)();
  return result;
}

- (id)keysAndValuesAndReturnError:(id *)a3
{
  v3 = self;
  sub_1C8696468();

  v4 = sub_1C86F8E8C();

  return v4;
}

- (id)keysAndValuesForKeysMatching:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_1C8696A70(v5);

  v7 = sub_1C86F8E8C();

  return v7;
}

- (id)_valuesForKeys:(id)a3 error:(id *)a4
{
  v5 = sub_1C86F909C();
  v6 = self;
  sub_1C86975A8(v5);

  v7 = sub_1C86F908C();

  return v7;
}

- (BOOL)saveKeysAndValues:(id)a3 error:(id *)a4
{
  v5 = sub_1C86F8E9C();
  v6 = self;
  sub_1C8697F28(v5);

  return 1;
}

- (BOOL)removeValueForKey:(id)a3 error:(id *)a4
{
  sub_1C86F8EFC();
  v5 = self;
  sub_1C8698A20();

  return 1;
}

- (BOOL)removeValuesForKeys:(id)a3 error:(id *)a4
{
  v5 = sub_1C86F909C();
  v6 = self;
  sub_1C8699148(v5);

  return 1;
}

- (BOOL)removeValuesMatching:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_1C8699500(v5);

  return 1;
}

- (BOOL)removeAllValuesAndReturnError:(id *)a3
{
  v3 = self;
  sub_1C8699654();

  return 1;
}

- (id)tripleComponentsMatching:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  sub_1C8699924(a3);

  type metadata accessor for CKTriple();
  v8 = sub_1C86F908C();

  return v8;
}

- (BOOL)setWeightForLinkWithLabel:(id)a3 between:(id)a4 and:(id)a5 toValue:(int64_t)a6 error:(id *)a7
{
  v9 = sub_1C86F8EFC();
  v11 = v10;
  v12 = sub_1C86F8EFC();
  v14 = v13;
  v15 = sub_1C86F8EFC();
  v17 = v16;
  v18 = self;
  sub_1C8699F1C(v9, v11, v12, v14, v15, v17, a6);

  return 1;
}

- (BOOL)dropLinkWithLabel:(id)a3 between:(id)a4 and:(id)a5 error:(id *)a6
{
  v7 = sub_1C86F8EFC();
  v9 = v8;
  v10 = sub_1C86F8EFC();
  v12 = v11;
  v13 = sub_1C86F8EFC();
  v15 = v14;
  v16 = self;
  sub_1C869B548(v7, v9, v10, v12, v13, v15);

  return 1;
}

- (BOOL)dropLinksWithLabel:(id)a3 from:(id)a4 error:(id *)a5
{
  if (a3)
  {
    v6 = sub_1C86F8EFC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_1C86F8EFC();
  v11 = v10;
  v12 = self;
  sub_1C869B8E8(v6, v8, v9, v11);

  return 1;
}

- (BOOL)dropLinksBetween:(id)a3 and:(id)a4 error:(id *)a5
{
  sub_1C86F8EFC();
  sub_1C86F8EFC();
  v6 = self;
  sub_1C869BDD0();

  return 1;
}

@end