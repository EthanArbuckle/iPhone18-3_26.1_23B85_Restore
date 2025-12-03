@interface SmartActionDataItem
- (_TtC16CallIntelligence19SmartActionDataItem)init;
- (_TtC16CallIntelligence19SmartActionDataItem)initWithTextRange:(_NSRange)range title:(id)title menuItems:(id)items;
@end

@implementation SmartActionDataItem

- (_TtC16CallIntelligence19SmartActionDataItem)initWithTextRange:(_NSRange)range title:(id)title menuItems:(id)items
{
  length = range.length;
  location = range.location;
  ObjectType = swift_getObjectType();
  v9 = sub_1D2EE4A68();
  v11 = v10;
  type metadata accessor for SmartActionMenuItem();
  v12 = sub_1D2EE4BE8();
  v13 = (self + OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_textRange);
  *v13 = location;
  v13[1] = length;
  v14 = (self + OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_title);
  *v14 = v9;
  v14[1] = v11;
  *(&self->super.isa + OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_menuItems) = v12;
  v16.receiver = self;
  v16.super_class = ObjectType;
  return [(SmartActionDataItem *)&v16 init];
}

- (_TtC16CallIntelligence19SmartActionDataItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end