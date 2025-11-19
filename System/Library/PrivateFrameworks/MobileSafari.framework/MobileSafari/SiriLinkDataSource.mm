@interface SiriLinkDataSource
- (_TtC12MobileSafari18SiriLinkDataSource)init;
@end

@implementation SiriLinkDataSource

- (_TtC12MobileSafari18SiriLinkDataSource)init
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC12MobileSafari18SiriLinkDataSource____lazy_storage___connection) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SiriLinkDataSource *)&v5 init];
}

@end