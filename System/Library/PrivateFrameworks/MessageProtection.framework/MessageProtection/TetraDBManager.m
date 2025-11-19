@interface TetraDBManager
- (void)cache:(id)a3 willEvictObject:(id)a4;
@end

@implementation TetraDBManager

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  specialized TetraDBManager.cache(_:willEvictObject:)(v7);

  __swift_destroy_boxed_opaque_existential_1(v7);
}

@end