@interface CKTextEffectCoordinator
- (BOOL)isPaused;
- (_TtC7ChatKit23CKTextEffectCoordinator)initWithLogIdentifier:(id)identifier;
- (void)reset;
- (void)resetAndContinueFromState:(id)state;
- (void)resetBackoffState;
- (void)setIsPaused:(BOOL)paused;
- (void)setPaused:(BOOL)paused includingAnimators:(BOOL)animators;
- (void)updateWithReason:(id)reason;
@end

@implementation CKTextEffectCoordinator

- (_TtC7ChatKit23CKTextEffectCoordinator)initWithLogIdentifier:(id)identifier
{
  v4 = sub_190D56760();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_190D56F10();
  v10 = v9;
  v11 = objc_allocWithZone(type metadata accessor for CKTextEffectCoordinator.Configuration());
  swift_getObjectType();
  *v7 = 5;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F48], v4);
  v12 = sub_190A4BE60(v8, v10, v7, 1);
  swift_deallocPartialClassInstance();
  v13 = [(CKTextEffectCoordinator *)self initWithConfiguration:v12];

  return v13;
}

- (BOOL)isPaused
{
  v3 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isPaused;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsPaused:(BOOL)paused
{
  v5 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isPaused;
  swift_beginAccess();
  *(self + v5) = paused;
}

- (void)setPaused:(BOOL)paused includingAnimators:(BOOL)animators
{
  animatorsCopy = animators;
  selfCopy = self;
  sub_190B10F2C(paused, animatorsCopy);
}

- (void)reset
{
  selfCopy = self;
  sub_190B11A2C();
}

- (void)resetAndContinueFromState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_190B11C4C(stateCopy);
}

- (void)resetBackoffState
{
  selfCopy = self;
  sub_190B11F4C();
}

- (void)updateWithReason:(id)reason
{
  v4 = sub_190D56F10();
  v6 = v5;
  selfCopy = self;
  sub_190B12150(v4, v6);
}

@end