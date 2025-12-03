@interface DOCNamedLocationResolver
- (DOCNamedLocationResolver)init;
- (DOCNamedLocationResolver)initWithConfiguration:(id)configuration defaultSourceUIManager:(id)manager;
- (void)resolveNamedLocation:(int64_t)location completion:(id)completion;
@end

@implementation DOCNamedLocationResolver

- (DOCNamedLocationResolver)initWithConfiguration:(id)configuration defaultSourceUIManager:(id)manager
{
  *(&self->super.isa + OBJC_IVAR___DOCNamedLocationResolver_iCloudSource) = 0;
  *(&self->super.isa + OBJC_IVAR___DOCNamedLocationResolver_configuration) = configuration;
  *(&self->super.isa + OBJC_IVAR___DOCNamedLocationResolver_defaultSourceUIManager) = manager;
  v8.receiver = self;
  v8.super_class = DOCNamedLocationResolver;
  configurationCopy = configuration;
  managerCopy = manager;
  return [(DOCNamedLocationResolver *)&v8 init];
}

- (void)resolveNamedLocation:(int64_t)location completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  DOCNamedLocationResolver.resolve(_:completion:)(location, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSURL?) -> (), v7);
}

- (DOCNamedLocationResolver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end