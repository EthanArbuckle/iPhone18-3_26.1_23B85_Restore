@interface DOCNamedLocationResolver
- (DOCNamedLocationResolver)init;
- (DOCNamedLocationResolver)initWithConfiguration:(id)a3 defaultSourceUIManager:(id)a4;
- (void)resolveNamedLocation:(int64_t)a3 completion:(id)a4;
@end

@implementation DOCNamedLocationResolver

- (DOCNamedLocationResolver)initWithConfiguration:(id)a3 defaultSourceUIManager:(id)a4
{
  *(&self->super.isa + OBJC_IVAR___DOCNamedLocationResolver_iCloudSource) = 0;
  *(&self->super.isa + OBJC_IVAR___DOCNamedLocationResolver_configuration) = a3;
  *(&self->super.isa + OBJC_IVAR___DOCNamedLocationResolver_defaultSourceUIManager) = a4;
  v8.receiver = self;
  v8.super_class = DOCNamedLocationResolver;
  v5 = a3;
  v6 = a4;
  return [(DOCNamedLocationResolver *)&v8 init];
}

- (void)resolveNamedLocation:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  DOCNamedLocationResolver.resolve(_:completion:)(a3, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSURL?) -> (), v7);
}

- (DOCNamedLocationResolver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end