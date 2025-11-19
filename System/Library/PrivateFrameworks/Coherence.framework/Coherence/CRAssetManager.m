@interface CRAssetManager
- (void)didEnterBackground;
- (void)willEnterForeground;
@end

@implementation CRAssetManager

- (void)willEnterForeground
{

  sub_1ADDD580C();
}

- (void)didEnterBackground
{
  v3 = *self->filePresentersQueue;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1AE1B3360;
  *(v4 + 24) = self;
  v6[4] = sub_1ADDF711C;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1ADDF70CC;
  v6[3] = &block_descriptor_95;
  v5 = _Block_copy(v6);
  swift_retain_n();

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

@end