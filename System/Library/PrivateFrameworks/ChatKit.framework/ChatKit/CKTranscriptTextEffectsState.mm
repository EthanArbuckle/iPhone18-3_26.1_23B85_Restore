@interface CKTranscriptTextEffectsState
- (BOOL)hasAttention;
- (BOOL)inTransition;
- (BOOL)isPaused;
- (BOOL)isReady;
- (CKTranscriptTextEffectsState)init;
- (void)setHasAttention:(BOOL)attention;
- (void)setInTransition:(BOOL)transition;
- (void)setIsReady:(BOOL)ready;
@end

@implementation CKTranscriptTextEffectsState

- (CKTranscriptTextEffectsState)init
{
  *(&self->super.isa + OBJC_IVAR___CKTranscriptTextEffectsState_inTransition) = 0;
  *(&self->super.isa + OBJC_IVAR___CKTranscriptTextEffectsState_isReady) = 0;
  *(&self->super.isa + OBJC_IVAR___CKTranscriptTextEffectsState_hasAttention) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TranscriptTextEffectsState();
  return [(CKTranscriptTextEffectsState *)&v3 init];
}

- (BOOL)inTransition
{
  v3 = OBJC_IVAR___CKTranscriptTextEffectsState_inTransition;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setInTransition:(BOOL)transition
{
  v5 = OBJC_IVAR___CKTranscriptTextEffectsState_inTransition;
  swift_beginAccess();
  *(&self->super.isa + v5) = transition;
}

- (BOOL)isReady
{
  v3 = OBJC_IVAR___CKTranscriptTextEffectsState_isReady;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsReady:(BOOL)ready
{
  v5 = OBJC_IVAR___CKTranscriptTextEffectsState_isReady;
  swift_beginAccess();
  *(&self->super.isa + v5) = ready;
}

- (BOOL)hasAttention
{
  v3 = OBJC_IVAR___CKTranscriptTextEffectsState_hasAttention;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHasAttention:(BOOL)attention
{
  v5 = OBJC_IVAR___CKTranscriptTextEffectsState_hasAttention;
  swift_beginAccess();
  *(&self->super.isa + v5) = attention;
}

- (BOOL)isPaused
{
  v3 = OBJC_IVAR___CKTranscriptTextEffectsState_isReady;
  swift_beginAccess();
  if (*(&self->super.isa + v3) == 1 && (v4 = OBJC_IVAR___CKTranscriptTextEffectsState_inTransition, swift_beginAccess(), (*(&self->super.isa + v4) & 1) == 0))
  {
    v6 = OBJC_IVAR___CKTranscriptTextEffectsState_hasAttention;
    swift_beginAccess();
    v5 = *(&self->super.isa + v6) ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

@end