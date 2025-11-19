@interface CPParticipantTranslation
- (CPParticipantTranslation)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPParticipantTranslation

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ParticipantTranslationResponse.encode(with:)(v4);
}

- (CPParticipantTranslation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end