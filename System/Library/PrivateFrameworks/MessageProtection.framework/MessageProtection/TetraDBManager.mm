@interface TetraDBManager
- (void)cache:(id)cache willEvictObject:(id)object;
@end

@implementation TetraDBManager

- (void)cache:(id)cache willEvictObject:(id)object
{
  cacheCopy = cache;
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  specialized TetraDBManager.cache(_:willEvictObject:)(v7);

  __swift_destroy_boxed_opaque_existential_1(v7);
}

@end