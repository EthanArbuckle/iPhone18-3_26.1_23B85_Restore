@interface DOCNodeContextMenuConfiguration
- (_TtC26DocumentManagerExecutables31DOCNodeContextMenuConfiguration)init;
@end

@implementation DOCNodeContextMenuConfiguration

- (_TtC26DocumentManagerExecutables31DOCNodeContextMenuConfiguration)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCNodeContextMenuConfiguration_nodes) = MEMORY[0x277D84F90];
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCNodeContextMenuConfiguration_presentingNode) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCNodeContextMenuConfiguration();
  return [(UIContextMenuConfiguration *)&v3 init];
}

@end