@interface SuggestionSheetPresenterOptions
- (BOOL)onboardingOnlyPresentation;
- (NSString)debugDescription;
- (SuggestionSheetPresenterOptions)init;
- (void)encodeWithCoder:(id)coder;
- (void)setOnboardingOnlyPresentation:(BOOL)presentation;
@end

@implementation SuggestionSheetPresenterOptions

- (BOOL)onboardingOnlyPresentation
{
  v3 = OBJC_IVAR___SuggestionSheetPresenterOptions_onboardingOnlyPresentation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setOnboardingOnlyPresentation:(BOOL)presentation
{
  v5 = OBJC_IVAR___SuggestionSheetPresenterOptions_onboardingOnlyPresentation;
  swift_beginAccess();
  *(&self->super.isa + v5) = presentation;
}

- (SuggestionSheetPresenterOptions)init
{
  *(&self->super.isa + OBJC_IVAR___SuggestionSheetPresenterOptions_fractionalPresentation) = 0x3FE0000000000000;
  *(&self->super.isa + OBJC_IVAR___SuggestionSheetPresenterOptions_presentFullScreen) = 0;
  *(&self->super.isa + OBJC_IVAR___SuggestionSheetPresenterOptions_selectedSuggestionID) = xmmword_21658F9D0;
  *(&self->super.isa + OBJC_IVAR___SuggestionSheetPresenterOptions_presentationIsAnimated) = 0;
  *(&self->super.isa + OBJC_IVAR___SuggestionSheetPresenterOptions_allowEvergreen) = 1;
  *(&self->super.isa + OBJC_IVAR___SuggestionSheetPresenterOptions_onboardingOnlyPresentation) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SuggestionSheetPresenterOptions();
  return [(SuggestionSheetPresenterOptions *)&v3 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SuggestionSheetPresenterOptions.encode(with:)(coderCopy);
}

- (NSString)debugDescription
{
  selfCopy = self;
  v3 = SuggestionSheetPresenterOptions.debugDescription.getter();
  v5 = v4;

  v6 = MEMORY[0x21CE91FC0](v3, v5);

  return v6;
}

@end