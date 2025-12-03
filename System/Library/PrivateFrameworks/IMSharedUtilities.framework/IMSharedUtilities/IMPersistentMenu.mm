@interface IMPersistentMenu
+ (BOOL)isEmptyStamped:(id)stamped;
+ (id)emptyStampProperty;
+ (id)example;
+ (id)relayEmptyStampProperty;
- (IMPersistentMenu)init;
- (IMPersistentMenu)initWithDictionary:(id)dictionary;
- (IMPersistentMenu)initWithLevel:(int64_t)level displayText:(id)text items:(id)items;
- (NSArray)items;
- (NSString)displayText;
@end

@implementation IMPersistentMenu

- (NSString)displayText
{
  if (*(self + OBJC_IVAR___IMPersistentMenu_displayText + 8))
  {

    v2 = sub_1A88C82A8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSArray)items
{
  type metadata accessor for IMPersistentMenuItem();

  v2 = sub_1A88C85E8();

  return v2;
}

- (IMPersistentMenu)initWithLevel:(int64_t)level displayText:(id)text items:(id)items
{
  if (text)
  {
    v7 = sub_1A88C82E8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  type metadata accessor for IMPersistentMenuItem();
  v10 = sub_1A88C85F8();
  *(self + OBJC_IVAR___IMPersistentMenu_level) = level;
  v11 = (self + OBJC_IVAR___IMPersistentMenu_displayText);
  *v11 = v7;
  v11[1] = v9;
  *(self + OBJC_IVAR___IMPersistentMenu_items) = v10;
  v13.receiver = self;
  v13.super_class = IMPersistentMenu;
  return [(IMPersistentMenu *)&v13 init];
}

- (IMPersistentMenu)initWithDictionary:(id)dictionary
{
  v3 = sub_1A88C81A8();
  IMPersistentMenu.init(dictionary:)(v3);
  return result;
}

+ (BOOL)isEmptyStamped:(id)stamped
{
  if (stamped)
  {
    swift_unknownObjectRetain();
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  v3 = sub_1A872F1AC(v5);
  sub_1A85EF638(v5, &qword_1EB3057B0);
  return v3 & 1;
}

+ (id)emptyStampProperty
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = sub_1A88C82E8();
  *(inited + 40) = v3;
  v4 = sub_1A88C82E8();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A85EF638(inited + 32, &qword_1EB303720);
  v6 = sub_1A88C8188();

  return v6;
}

+ (id)relayEmptyStampProperty
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 32) = 1970169197;
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 40) = 0xE400000000000000;
  v3 = sub_1A88C82E8();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A85EF638(inited + 32, &qword_1EB303720);
  v5 = sub_1A88C8188();

  return v5;
}

+ (id)example
{
  sub_1A872F29C();
  v2 = objc_allocWithZone(IMPersistentMenu);
  v3 = sub_1A88C8188();

  initWithDictionary_ = [v2 initWithDictionary_];

  if (initWithDictionary_)
  {

    return initWithDictionary_;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (IMPersistentMenu)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end