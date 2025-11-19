@interface HMDDiscoveryController
- (HMDDiscoveryController)init;
- (HMDDiscoveryController)initWithDiscoveryNeedsAssertion:(BOOL)a3;
- (void)start;
@end

@implementation HMDDiscoveryController

- (HMDDiscoveryController)initWithDiscoveryNeedsAssertion:(BOOL)a3
{
  v3 = a3;
  v5 = objc_allocWithZone(type metadata accessor for DiscoveryController(0));
  v6 = sub_25321D908(v3, sub_25321DFA4, 0, sub_25321DFD8, 0);
  swift_getObjectType();
  v7 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x30);
  v8 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

- (void)start
{
  v2 = self;
  DiscoveryController.start()();
}

- (HMDDiscoveryController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end