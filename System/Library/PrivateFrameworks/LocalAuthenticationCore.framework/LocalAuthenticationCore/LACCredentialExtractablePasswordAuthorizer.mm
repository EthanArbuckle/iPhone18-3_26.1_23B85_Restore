@interface LACCredentialExtractablePasswordAuthorizer
- (LACCredentialExtractablePasswordAuthorizer)init;
- (LACCredentialExtractablePasswordAuthorizer)initWithACMHelper:(id)helper;
- (LACCredentialExtractablePasswordAuthorizer)initWithACMHelper:(id)helper featureFlags:(id)flags signPoster:(id)poster;
@end

@implementation LACCredentialExtractablePasswordAuthorizer

- (LACCredentialExtractablePasswordAuthorizer)initWithACMHelper:(id)helper
{
  v5 = objc_opt_self();
  swift_unknownObjectRetain();
  sharedInstance = [v5 sharedInstance];
  sharedInstance2 = [objc_opt_self() sharedInstance];
  v8 = [(LACCredentialExtractablePasswordAuthorizer *)self initWithACMHelper:helper featureFlags:sharedInstance signPoster:sharedInstance2];

  swift_unknownObjectRelease();
  return v8;
}

- (LACCredentialExtractablePasswordAuthorizer)initWithACMHelper:(id)helper featureFlags:(id)flags signPoster:(id)poster
{
  *(&self->super.isa + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_acmHelper) = helper;
  *(&self->super.isa + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_featureFlags) = flags;
  *(&self->super.isa + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_signPoster) = poster;
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