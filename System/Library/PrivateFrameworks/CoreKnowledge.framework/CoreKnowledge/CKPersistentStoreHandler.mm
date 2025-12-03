@interface CKPersistentStoreHandler
+ (id)inMemoryHandler;
- (BOOL)dropLinkWithLabel:(id)label between:(id)between and:(id)and error:(id *)error;
- (BOOL)dropLinksBetween:(id)between and:(id)and error:(id *)error;
- (BOOL)dropLinksWithLabel:(id)label from:(id)from error:(id *)error;
- (BOOL)removeAllValuesAndReturnError:(id *)error;
- (BOOL)removeValueForKey:(id)key error:(id *)error;
- (BOOL)removeValuesForKeys:(id)keys error:(id *)error;
- (BOOL)removeValuesMatching:(id)matching error:(id *)error;
- (BOOL)saveKeysAndValues:(id)values error:(id *)error;
- (BOOL)setWeightForLinkWithLabel:(id)label between:(id)between and:(id)and toValue:(int64_t)value error:(id *)error;
- (CKPersistentStoreHandler)initWithName:(id)name;
- (id)_valuesForKeys:(id)keys error:(id *)error;
- (id)keysAndValuesAndReturnError:(id *)error;
- (id)keysAndValuesForKeysMatching:(id)matching error:(id *)error;
- (id)tripleComponentsMatching:(id)matching error:(id *)error;
@end

@implementation CKPersistentStoreHandler

+ (id)inMemoryHandler
{
  v2 = sub_1C8694120();

  return v2;
}

- (CKPersistentStoreHandler)initWithName:(id)name
{
  sub_1C86F8EFC();
  CKPersistentStoreHandler.init(name:)();
  return result;
}

- (id)keysAndValuesAndReturnError:(id *)error
{
  selfCopy = self;
  sub_1C8696468();

  v4 = sub_1C86F8E8C();

  return v4;
}

- (id)keysAndValuesForKeysMatching:(id)matching error:(id *)error
{
  matchingCopy = matching;
  selfCopy = self;
  sub_1C8696A70(matchingCopy);

  v7 = sub_1C86F8E8C();

  return v7;
}

- (id)_valuesForKeys:(id)keys error:(id *)error
{
  v5 = sub_1C86F909C();
  selfCopy = self;
  sub_1C86975A8(v5);

  v7 = sub_1C86F908C();

  return v7;
}

- (BOOL)saveKeysAndValues:(id)values error:(id *)error
{
  v5 = sub_1C86F8E9C();
  selfCopy = self;
  sub_1C8697F28(v5);

  return 1;
}

- (BOOL)removeValueForKey:(id)key error:(id *)error
{
  sub_1C86F8EFC();
  selfCopy = self;
  sub_1C8698A20();

  return 1;
}

- (BOOL)removeValuesForKeys:(id)keys error:(id *)error
{
  v5 = sub_1C86F909C();
  selfCopy = self;
  sub_1C8699148(v5);

  return 1;
}

- (BOOL)removeValuesMatching:(id)matching error:(id *)error
{
  matchingCopy = matching;
  selfCopy = self;
  sub_1C8699500(matchingCopy);

  return 1;
}

- (BOOL)removeAllValuesAndReturnError:(id *)error
{
  selfCopy = self;
  sub_1C8699654();

  return 1;
}

- (id)tripleComponentsMatching:(id)matching error:(id *)error
{
  matchingCopy = matching;
  selfCopy = self;
  sub_1C8699924(matching);

  type metadata accessor for CKTriple();
  v8 = sub_1C86F908C();

  return v8;
}

- (BOOL)setWeightForLinkWithLabel:(id)label between:(id)between and:(id)and toValue:(int64_t)value error:(id *)error
{
  v9 = sub_1C86F8EFC();
  v11 = v10;
  v12 = sub_1C86F8EFC();
  v14 = v13;
  v15 = sub_1C86F8EFC();
  v17 = v16;
  selfCopy = self;
  sub_1C8699F1C(v9, v11, v12, v14, v15, v17, value);

  return 1;
}

- (BOOL)dropLinkWithLabel:(id)label between:(id)between and:(id)and error:(id *)error
{
  v7 = sub_1C86F8EFC();
  v9 = v8;
  v10 = sub_1C86F8EFC();
  v12 = v11;
  v13 = sub_1C86F8EFC();
  v15 = v14;
  selfCopy = self;
  sub_1C869B548(v7, v9, v10, v12, v13, v15);

  return 1;
}

- (BOOL)dropLinksWithLabel:(id)label from:(id)from error:(id *)error
{
  if (label)
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
  selfCopy = self;
  sub_1C869B8E8(v6, v8, v9, v11);

  return 1;
}

- (BOOL)dropLinksBetween:(id)between and:(id)and error:(id *)error
{
  sub_1C86F8EFC();
  sub_1C86F8EFC();
  selfCopy = self;
  sub_1C869BDD0();

  return 1;
}

@end