@interface CNKeychainFacadeTestDouble
- (_TtC18ContactsFoundation26CNKeychainFacadeTestDouble)init;
@end

@implementation CNKeychainFacadeTestDouble

- (_TtC18ContactsFoundation26CNKeychainFacadeTestDouble)init
{
  *(&self->super.isa + OBJC_IVAR____TtC18ContactsFoundation26CNKeychainFacadeTestDouble_keychainEnabled) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC18ContactsFoundation26CNKeychainFacadeTestDouble_keyDict) = MEMORY[0x1E69E7CC8];
  v3.receiver = self;
  v3.super_class = type metadata accessor for CNKeychainFacadeTestDouble();
  return [(CNKeychainFacadeTestDouble *)&v3 init];
}

@end