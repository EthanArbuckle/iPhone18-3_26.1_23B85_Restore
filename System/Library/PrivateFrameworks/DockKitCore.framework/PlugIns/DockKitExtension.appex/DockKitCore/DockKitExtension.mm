@interface DockKitExtension
- (_TtC16DockKitExtension16DockKitExtension)init;
- (id)attachmentList;
- (id)attachmentsForParameters:(id)a3;
@end

@implementation DockKitExtension

- (id)attachmentList
{
  v2 = self;
  v3 = sub_100002018();

  if (v3)
  {
    v4.super.isa = sub_100007880().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (id)attachmentsForParameters:(id)a3
{
  v3 = self;
  v4 = [(DockKitExtension *)v3 attachmentList];
  if (v4)
  {
    v5 = v4;
    sub_100007890();

    v6.super.isa = sub_100007880().super.isa;
  }

  else
  {

    v6.super.isa = 0;
  }

  return v6.super.isa;
}

- (_TtC16DockKitExtension16DockKitExtension)init
{
  v3 = OBJC_IVAR____TtC16DockKitExtension16DockKitExtension_manager;
  *&self->DEExtensionProvider_opaque[v3] = [objc_allocWithZone(sub_100007760()) init];
  v4 = OBJC_IVAR____TtC16DockKitExtension16DockKitExtension_group;
  *&self->DEExtensionProvider_opaque[v4] = dispatch_group_create();
  *&self->DEExtensionProvider_opaque[OBJC_IVAR____TtC16DockKitExtension16DockKitExtension_attachments] = &_swiftEmptyArrayStorage;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DockKitExtension();
  return [(DockKitExtension *)&v6 init];
}

@end