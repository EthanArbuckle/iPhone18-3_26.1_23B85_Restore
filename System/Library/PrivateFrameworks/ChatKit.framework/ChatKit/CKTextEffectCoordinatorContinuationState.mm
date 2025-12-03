@interface CKTextEffectCoordinatorContinuationState
- (CKTextEffectCoordinatorContinuationState)init;
- (CKTextEffectCoordinatorContinuationState)initWithTextViewIdentifier:(id)identifier locationInAttributedText:(int64_t)text ignoreTextViewEligibilityCheck:(BOOL)check;
- (NSString)debugDescription;
@end

@implementation CKTextEffectCoordinatorContinuationState

- (CKTextEffectCoordinatorContinuationState)initWithTextViewIdentifier:(id)identifier locationInAttributedText:(int64_t)text ignoreTextViewEligibilityCheck:(BOOL)check
{
  v8 = sub_190D56F10();
  v9 = (self + OBJC_IVAR___CKTextEffectCoordinatorContinuationState_textViewIdentifier);
  *v9 = v8;
  v9[1] = v10;
  *(&self->super.isa + OBJC_IVAR___CKTextEffectCoordinatorContinuationState_locationInAttributedText) = text;
  *(&self->super.isa + OBJC_IVAR___CKTextEffectCoordinatorContinuationState_ignoreTextViewEligibilityCheck) = check;
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
  selfCopy = self;
  CKTextEffectCoordinator.ContinuationState.debugDescription.getter();

  v3 = sub_190D56ED0();

  return v3;
}

@end