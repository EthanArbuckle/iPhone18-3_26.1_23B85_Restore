@interface MRUHapticController
- (unsigned)hapticStatus;
- (void)addObserver:(id)a3;
- (void)setMediaCode:(id)a3 treatAsAdamID:(BOOL)a4;
- (void)toggleHapticsEnabled;
@end

@implementation MRUHapticController

- (unsigned)hapticStatus
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x110);
  v3 = self;
  LOBYTE(v2) = v2();

  return dword_1A230DDAC[v2];
}

- (void)addObserver:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1A2289D84(a3);
  swift_unknownObjectRelease();
}

- (void)setMediaCode:(id)a3 treatAsAdamID:(BOOL)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = sub_1A22E65C8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v5 = 255;
  }

  v9 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xC8);
  v10 = self;
  v9(v6, v8, v5);
}

- (void)toggleHapticsEnabled
{
  sub_1A22E69F8();
  v4 = self;
  v3 = MEMORY[0x1A58DAC20]();
  [v3 setHapticMusicActive_];
}

@end