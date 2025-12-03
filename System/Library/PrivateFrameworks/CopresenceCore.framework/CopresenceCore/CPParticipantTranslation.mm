@interface CPParticipantTranslation
- (CPParticipantTranslation)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPParticipantTranslation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ParticipantTranslationResponse.encode(with:)(coderCopy);
}

- (CPParticipantTranslation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end