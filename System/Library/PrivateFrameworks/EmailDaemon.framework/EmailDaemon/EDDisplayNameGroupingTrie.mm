@interface EDDisplayNameGroupingTrie
+ (BOOL)displayName:(id)name isTokenizedPrefixOfName:(id)ofName outError:(id *)error;
- (id)findGroups;
- (int64_t)count;
- (void)insertDisplayName:(id)name addressID:(id)d;
- (void)insertDisplayNameAndIDPairs:(id)pairs;
@end

@implementation EDDisplayNameGroupingTrie

- (void)insertDisplayNameAndIDPairs:(id)pairs
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C3DE0, &qword_1C64725E8);
  v4 = sub_1C645CA14();
  selfCopy = self;
  sub_1C63FCE5C(v4);
}

- (void)insertDisplayName:(id)name addressID:(id)d
{
  v6 = sub_1C645C874();
  v8 = v7;
  dCopy = d;
  selfCopy = self;
  sub_1C63FCFE8(v6, v8, dCopy);
}

- (int64_t)count
{
  selfCopy = self;
  v3 = EDDisplayNameGroupingTrie.count.getter();

  return v3;
}

- (id)findGroups
{
  selfCopy = self;
  EDDisplayNameGroupingTrie.findGroups()();

  sub_1C6401D00(0, &qword_1EDC93590, 0x1E696AD98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1C3DC8, &qword_1C64725D8);
  sub_1C6401938();
  v3 = sub_1C645C7D4();

  return v3;
}

+ (BOOL)displayName:(id)name isTokenizedPrefixOfName:(id)ofName outError:(id *)error
{
  v6 = sub_1C645C874();
  v8 = v7;
  v9 = sub_1C645C874();
  LOBYTE(error) = sub_1C64019A0(v6, v8, v9, v10, error);

  return error & 1;
}

@end