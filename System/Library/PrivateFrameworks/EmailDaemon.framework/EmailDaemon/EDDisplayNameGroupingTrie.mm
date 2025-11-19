@interface EDDisplayNameGroupingTrie
+ (BOOL)displayName:(id)a3 isTokenizedPrefixOfName:(id)a4 outError:(id *)a5;
- (id)findGroups;
- (int64_t)count;
- (void)insertDisplayName:(id)a3 addressID:(id)a4;
- (void)insertDisplayNameAndIDPairs:(id)a3;
@end

@implementation EDDisplayNameGroupingTrie

- (void)insertDisplayNameAndIDPairs:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C3DE0, &qword_1C64725E8);
  v4 = sub_1C645CA14();
  v5 = self;
  sub_1C63FCE5C(v4);
}

- (void)insertDisplayName:(id)a3 addressID:(id)a4
{
  v6 = sub_1C645C874();
  v8 = v7;
  v9 = a4;
  v10 = self;
  sub_1C63FCFE8(v6, v8, v9);
}

- (int64_t)count
{
  v2 = self;
  v3 = EDDisplayNameGroupingTrie.count.getter();

  return v3;
}

- (id)findGroups
{
  v2 = self;
  EDDisplayNameGroupingTrie.findGroups()();

  sub_1C6401D00(0, &qword_1EDC93590, 0x1E696AD98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1C3DC8, &qword_1C64725D8);
  sub_1C6401938();
  v3 = sub_1C645C7D4();

  return v3;
}

+ (BOOL)displayName:(id)a3 isTokenizedPrefixOfName:(id)a4 outError:(id *)a5
{
  v6 = sub_1C645C874();
  v8 = v7;
  v9 = sub_1C645C874();
  LOBYTE(a5) = sub_1C64019A0(v6, v8, v9, v10, a5);

  return a5 & 1;
}

@end