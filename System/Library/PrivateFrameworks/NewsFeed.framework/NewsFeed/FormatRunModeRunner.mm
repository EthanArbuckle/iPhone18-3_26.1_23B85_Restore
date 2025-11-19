@interface FormatRunModeRunner
- (void)debugClearRunModeCache;
@end

@implementation FormatRunModeRunner

- (void)debugClearRunModeCache
{
  swift_beginAccess();
  v3 = MEMORY[0x1E69E7CD0];
  *self->seenOnce = MEMORY[0x1E69E7CD0];

  swift_beginAccess();
  *self->seenOnceOnScreen = v3;

  swift_beginAccess();
  *self->seenOnceSinceRefresh = v3;
}

@end