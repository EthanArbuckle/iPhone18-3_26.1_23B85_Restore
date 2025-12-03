@interface MRUHapticController
- (unsigned)hapticStatus;
- (void)addObserver:(id)observer;
- (void)setMediaCode:(id)code treatAsAdamID:(BOOL)d;
- (void)toggleHapticsEnabled;
@end

@implementation MRUHapticController

- (unsigned)hapticStatus
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x110);
  selfCopy = self;
  LOBYTE(v2) = v2();

  return dword_1A230DDAC[v2];
}

- (void)addObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A2289D84(observer);
  swift_unknownObjectRelease();
}

- (void)setMediaCode:(id)code treatAsAdamID:(BOOL)d
{
  if (code)
  {
    dCopy = d;
    v6 = sub_1A22E65C8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    dCopy = 255;
  }

  v9 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xC8);
  selfCopy = self;
  v9(v6, v8, dCopy);
}

- (void)toggleHapticsEnabled
{
  sub_1A22E69F8();
  selfCopy = self;
  v3 = MEMORY[0x1A58DAC20]();
  [v3 setHapticMusicActive_];
}

@end