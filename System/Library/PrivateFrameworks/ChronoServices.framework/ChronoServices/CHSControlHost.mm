@interface CHSControlHost
- (CHSControlHost)init;
- (CHSControlHost)initWithIdentifier:(id)a3 configuration:(id)a4;
- (NSString)description;
- (NSString)identifier;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
- (void)invalidate;
- (void)setConfiguration:(id)a3;
@end

@implementation CHSControlHost

- (NSString)identifier
{
  v2 = *(&self->super.isa + OBJC_IVAR___CHSControlHost__identifier);
  v3 = *(&self->configuration + OBJC_IVAR___CHSControlHost__identifier);

  v4 = sub_195FA0888();

  return v4;
}

- (void)setConfiguration:(id)a3
{
  v6 = *(&self->super.isa + OBJC_IVAR___CHSControlHost_configuration);
  *(&self->super.isa + OBJC_IVAR___CHSControlHost_configuration) = a3;
  v4 = a3;
  v5 = self;
  sub_195F25D48(v6);
}

- (CHSControlHost)initWithIdentifier:(id)a3 configuration:(id)a4
{
  v5 = sub_195FA08B8();
  v7 = v6;
  v8 = a4;
  return CHSControlHost.init(identifier:configuration:)(v5, v7, a4);
}

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR___CHSControlHost__invalid) == 1)
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = CHSControlHost;
    v4 = self;
    [(CHSControlHost *)&v5 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)activate
{
  v2 = self;
  CHSControlHost.activate()();
}

- (void)deactivate
{
  v2 = self;
  CHSControlHost.deactivate()();
}

- (void)invalidate
{
  v2 = self;
  CHSControlHost.invalidate()();
}

- (NSString)description
{
  v2 = self;
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