@interface LACCredentialExtractablePasswordAuthorizer
- (LACCredentialExtractablePasswordAuthorizer)init;
- (LACCredentialExtractablePasswordAuthorizer)initWithACMHelper:(id)a3;
- (LACCredentialExtractablePasswordAuthorizer)initWithACMHelper:(id)a3 featureFlags:(id)a4 signPoster:(id)a5;
@end

@implementation LACCredentialExtractablePasswordAuthorizer

- (LACCredentialExtractablePasswordAuthorizer)initWithACMHelper:(id)a3
{
  v5 = objc_opt_self();
  swift_unknownObjectRetain();
  v6 = [v5 sharedInstance];
  v7 = [objc_opt_self() sharedInstance];
  v8 = [(LACCredentialExtractablePasswordAuthorizer *)self initWithACMHelper:a3 featureFlags:v6 signPoster:v7];

  swift_unknownObjectRelease();
  return v8;
}

- (LACCredentialExtractablePasswordAuthorizer)initWithACMHelper:(id)a3 featureFlags:(id)a4 signPoster:(id)a5
{
  *(&self->super.isa + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_acmHelper) = a3;
  *(&self->super.isa + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_featureFlags) = a4;
  *(&self->super.isa + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_signPoster) = a5;
  v6.receiver = self;
  v6.super_class = LACCredentialExtractablePasswordAuthorizer;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(LACCredentialExtractablePasswordAuthorizer *)&v6 init];
}

- (LACCredentialExtractablePasswordAuthorizer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end