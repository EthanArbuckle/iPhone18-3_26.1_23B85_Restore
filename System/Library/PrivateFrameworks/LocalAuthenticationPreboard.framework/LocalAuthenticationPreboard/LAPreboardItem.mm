@interface LAPreboardItem
- (LAPreboardItem)init;
- (LAPreboardItem)initWithBatchOption:(int64_t)option;
- (LAPreboardItem)initWithBatchOption:(int64_t)option iconSystemName:(id)name title:(id)title;
@end

@implementation LAPreboardItem

- (LAPreboardItem)initWithBatchOption:(int64_t)option iconSystemName:(id)name title:(id)title
{
  if (!name)
  {
    v8 = 0;
    v10 = 0;
    if (title)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (!title)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_6:
  *(self + OBJC_IVAR___LAPreboardItem_batchOption) = option;
  v13 = (self + OBJC_IVAR___LAPreboardItem_iconSystemName);
  *v13 = v8;
  v13[1] = v10;
  v14 = (self + OBJC_IVAR___LAPreboardItem_title);
  *v14 = v11;
  v14[1] = v12;
  v16.receiver = self;
  v16.super_class = LAPreboardItem;
  return [(LAPreboardItem *)&v16 init];
}

- (LAPreboardItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (LAPreboardItem)initWithBatchOption:(int64_t)option
{
  _StringGuts.grow(_:)(24);
  MEMORY[0x259C59FE0](0xD000000000000016, 0x80000002560E4D90);
  type metadata accessor for LACPreboardBatchOption();
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end