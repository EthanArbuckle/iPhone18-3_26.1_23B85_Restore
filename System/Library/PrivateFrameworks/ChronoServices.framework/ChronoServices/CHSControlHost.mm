@interface CHSControlHost
- (CHSControlHost)init;
- (CHSControlHost)initWithIdentifier:(id)identifier configuration:(id)configuration;
- (NSString)description;
- (NSString)identifier;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
- (void)invalidate;
- (void)setConfiguration:(id)configuration;
@end

@implementation CHSControlHost

- (NSString)identifier
{
  v2 = *(&self->super.isa + OBJC_IVAR___CHSControlHost__identifier);
  v3 = *(&self->configuration + OBJC_IVAR___CHSControlHost__identifier);

  v4 = sub_195FA0888();

  return v4;
}

- (void)setConfiguration:(id)configuration
{
  v6 = *(&self->super.isa + OBJC_IVAR___CHSControlHost_configuration);
  *(&self->super.isa + OBJC_IVAR___CHSControlHost_configuration) = configuration;
  configurationCopy = configuration;
  selfCopy = self;
  sub_195F25D48(v6);
}

- (CHSControlHost)initWithIdentifier:(id)identifier configuration:(id)configuration
{
  v5 = sub_195FA08B8();
  v7 = v6;
  configurationCopy = configuration;
  return CHSControlHost.init(identifier:configuration:)(v5, v7, configuration);
}

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR___CHSControlHost__invalid) == 1)
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = CHSControlHost;
    selfCopy = self;
    [(CHSControlHost *)&v5 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)activate
{
  selfCopy = self;
  CHSControlHost.activate()();
}

- (void)deactivate
{
  selfCopy = self;
  CHSControlHost.deactivate()();
}

- (void)invalidate
{
  selfCopy = self;
  CHSControlHost.invalidate()();
}

- (NSString)description
{
  selfCopy = self;
  CHSControlHost.description.getter();

  v3 = sub_195FA0888();

  return v3;
}

- (CHSControlHost)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end