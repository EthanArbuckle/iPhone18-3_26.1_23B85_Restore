@interface EVChargingMoreButtonViewModel
- (NSString)symbolName;
- (NSString)titleString;
- (id)actionBlock;
- (void)setActionBlock:(id)block;
@end

@implementation EVChargingMoreButtonViewModel

- (NSString)titleString
{
  v2 = *(self + OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_titleString);
  v3 = *(self + OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_titleString + 8);

  v4 = sub_1C584F630();

  return v4;
}

- (NSString)symbolName
{
  if (*(self + OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_symbolName + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_symbolName);
    v3 = *(self + OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_symbolName + 8);

    v4 = sub_1C584F630();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)actionBlock
{
  v2 = (self + OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_actionBlock);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C564A8C4;
    aBlock[3] = &block_descriptor_23;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setActionBlock:(id)block
{
  v4 = _Block_copy(block);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1C564CBAC;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_actionBlock);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1C5632FA8(v7);
}

@end