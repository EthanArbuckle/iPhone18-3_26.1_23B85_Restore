@interface FMFSystemStateController
- (void)refreshFMFRestricted;
@end

@implementation FMFSystemStateController

- (void)refreshFMFRestricted
{
  v3 = *self->refreshSerialQueue;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_24A37D5A8;
  *(v4 + 24) = self;
  v6[4] = sub_24A37CE34;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24A37CDDC;
  v6[3] = &unk_285D85FB0;
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