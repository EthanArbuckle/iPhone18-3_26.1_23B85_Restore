@interface CPParticipantTranslationRequest
- (CPParticipantTranslationRequest)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPParticipantTranslationRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ParticipantTranslationRequest.encode(with:)(coderCopy);
}

- (CPParticipantTranslationRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end