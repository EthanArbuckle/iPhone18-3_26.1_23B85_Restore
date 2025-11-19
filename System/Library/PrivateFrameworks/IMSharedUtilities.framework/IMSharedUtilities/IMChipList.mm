@interface IMChipList
+ (id)merge:(id)a3 with:(id)a4;
- (BOOL)isEqual:(id)a3;
- (IMChipList)init;
- (IMChipList)initWithChipArray:(id)a3 replied:(BOOL)a4;
- (IMChipList)initWithChipList:(id)a3 replied:(BOOL)a4;
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

- (IMChipList)initWithChipList:(id)a3 replied:(BOOL)a4
{
  type metadata accessor for IMChip();
  *(self + OBJC_IVAR___IMChipList_chipList) = sub_1A88C85F8();
  *(self + OBJC_IVAR___IMChipList_replied) = a4;
  v7.receiver = self;
  v7.super_class = IMChipList;
  return [(IMChipList *)&v7 init];
}

- (IMChipList)initWithChipArray:(id)a3 replied:(BOOL)a4
{
  sub_1A870CCE0(&unk_1EB3091D0);
  v5 = sub_1A88C85F8();
  return sub_1A87F6E8C(v5, a4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = IMChipList.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6 & 1;
}

- (id)messageItem
{
  v2 = self;
  v3 = sub_1A87F7D30();

  return v3;
}

+ (id)merge:(id)a3 with:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _sSo10IMChipListC17IMSharedUtilitiesE5merge_4withABSgAF_AFtFZ_0(a3, a4);

  return v8;
}

- (int64_t)hash
{
  sub_1A88C9588();
  v3 = self;
  v4 = [(IMChipList *)v3 chipList];
  type metadata accessor for IMChip();
  v5 = sub_1A88C85F8();

  sub_1A87F85A8(v8, v5);

  [(IMChipList *)v3 replied];
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