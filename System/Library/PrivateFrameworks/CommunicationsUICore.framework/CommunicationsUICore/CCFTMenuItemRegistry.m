@interface CCFTMenuItemRegistry
- (CCFTMenuItemRegistry)init;
@end

@implementation CCFTMenuItemRegistry

- (CCFTMenuItemRegistry)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___CCFTMenuItemRegistry_menuItemProviders) = MEMORY[0x1E69E7CC8];
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(CCFTMenuItemRegistry *)&v5 init];
}

@end