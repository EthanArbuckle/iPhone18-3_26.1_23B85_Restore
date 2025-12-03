@interface IMChipList
+ (id)merge:(id)merge with:(id)with;
- (BOOL)isEqual:(id)equal;
- (IMChipList)init;
- (IMChipList)initWithChipArray:(id)array replied:(BOOL)replied;
- (IMChipList)initWithChipList:(id)list replied:(BOOL)replied;
- (NSArray)chipList;
- (id)messageItem;
- (int64_t)hash;
@end

@implementation IMChipList

- (NSArray)chipList
{
  type metadata accessor for IMChip();

  v2 = sub_1A88C85E8();

  return v2;
}

- (IMChipList)initWithChipList:(id)list replied:(BOOL)replied
{
  type metadata accessor for IMChip();
  *(self + OBJC_IVAR___IMChipList_chipList) = sub_1A88C85F8();
  *(self + OBJC_IVAR___IMChipList_replied) = replied;
  v7.receiver = self;
  v7.super_class = IMChipList;
  return [(IMChipList *)&v7 init];
}

- (IMChipList)initWithChipArray:(id)array replied:(BOOL)replied
{
  sub_1A870CCE0(&unk_1EB3091D0);
  v5 = sub_1A88C85F8();
  return sub_1A87F6E8C(v5, replied);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = IMChipList.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6 & 1;
}

- (id)messageItem
{
  selfCopy = self;
  v3 = sub_1A87F7D30();

  return v3;
}

+ (id)merge:(id)merge with:(id)with
{
  mergeCopy = merge;
  withCopy = with;
  v8 = _sSo10IMChipListC17IMSharedUtilitiesE5merge_4withABSgAF_AFtFZ_0(merge, with);

  return v8;
}

- (int64_t)hash
{
  sub_1A88C9588();
  selfCopy = self;
  chipList = [(IMChipList *)selfCopy chipList];
  type metadata accessor for IMChip();
  v5 = sub_1A88C85F8();

  sub_1A87F85A8(v8, v5);

  [(IMChipList *)selfCopy replied];
  sub_1A88C9548();
  v6 = sub_1A88C9568();

  return v6;
}

- (IMChipList)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end