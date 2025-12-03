@interface PrivateDataActionProvider
- (_TtC7NewsKitP33_97C4145B2F6687765D35AB4C72479A3E25PrivateDataActionProvider)init;
- (void)consumeNonDestructiveActionsSyncWithBlock:(id)block;
@end

@implementation PrivateDataActionProvider

- (void)consumeNonDestructiveActionsSyncWithBlock:(id)block
{
  v3 = _Block_copy(block);
  if (v3)
  {
    v4 = v3;
    _Block_copy(v3);
    v5 = sub_25BEF8AD8();
    v7[4] = nullsub_1;
    v7[5] = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_25BEEE3B4;
    v7[3] = &block_descriptor_1;
    v6 = _Block_copy(v7);

    (v4)[2](v4, v5, v6);
    _Block_release(v6);

    _Block_release(v4);
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC7NewsKitP33_97C4145B2F6687765D35AB4C72479A3E25PrivateDataActionProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PrivateDataActionProvider *)&v3 init];
}

@end