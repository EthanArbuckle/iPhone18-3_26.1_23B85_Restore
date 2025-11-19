@interface CKTextEffectCoordinatorContinuationState
- (CKTextEffectCoordinatorContinuationState)init;
- (CKTextEffectCoordinatorContinuationState)initWithTextViewIdentifier:(id)a3 locationInAttributedText:(int64_t)a4 ignoreTextViewEligibilityCheck:(BOOL)a5;
- (NSString)debugDescription;
@end

@implementation CKTextEffectCoordinatorContinuationState

- (CKTextEffectCoordinatorContinuationState)initWithTextViewIdentifier:(id)a3 locationInAttributedText:(int64_t)a4 ignoreTextViewEligibilityCheck:(BOOL)a5
{
  v8 = sub_190D56F10();
  v9 = (self + OBJC_IVAR___CKTextEffectCoordinatorContinuationState_textViewIdentifier);
  *v9 = v8;
  v9[1] = v10;
  *(&self->super.isa + OBJC_IVAR___CKTextEffectCoordinatorContinuationState_locationInAttributedText) = a4;
  *(&self->super.isa + OBJC_IVAR___CKTextEffectCoordinatorContinuationState_ignoreTextViewEligibilityCheck) = a5;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CKTextEffectCoordinator.ContinuationState();
  return [(CKTextEffectCoordinatorContinuationState *)&v12 init];
}

- (CKTextEffectCoordinatorContinuationState)init
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (NSString)debugDescription
{
  v2 = self;
  CKTextEffectCoordinator.ContinuationState.debugDescription.getter();

  v3 = sub_190D56ED0();

  return v3;
}

@end