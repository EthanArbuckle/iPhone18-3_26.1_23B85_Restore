@interface _MADObjCStickerStoreFacade
- (BOOL)addAnimatedRepresentationWithIdentifiers:(id)identifiers data:(id)data uti:(id)uti size:(CGSize)size isPreferred:(BOOL)preferred error:(id *)error;
- (_MADObjCStickerStoreFacade)init;
@end

@implementation _MADObjCStickerStoreFacade

- (_MADObjCStickerStoreFacade)init
{
  v3 = sub_1C9F3FCE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9F3FCB0();
  (*(v4 + 104))(v6, *MEMORY[0x1E69D4630], v3);
  v7 = sub_1C9F3FCF0();
  swift_allocObject();
  v8 = sub_1C9F3FCD0();
  v9 = MEMORY[0x1E69D4640];
  v10 = (self + OBJC_IVAR____MADObjCStickerStoreFacade_store);
  v10[3] = v7;
  v10[4] = v9;
  *v10 = v8;
  v11 = type metadata accessor for _MADObjCStickerStoreFacade();
  v13.receiver = self;
  v13.super_class = v11;
  return [(_MADObjCStickerStoreFacade *)&v13 init];
}

- (BOOL)addAnimatedRepresentationWithIdentifiers:(id)identifiers data:(id)data uti:(id)uti size:(CGSize)size isPreferred:(BOOL)preferred error:(id *)error
{
  v23[1] = error;
  preferredCopy = preferred;
  v24 = sub_1C9F3FC40();
  v12 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9F3F6E0();
  v15 = sub_1C9F40050();
  dataCopy = data;
  utiCopy = uti;
  selfCopy = self;
  v19 = sub_1C9F3F6C0();
  v21 = v20;

  sub_1C9F3FC30();
  sub_1C9EEF810(v15, v19, v21, v14, preferredCopy);
  (*(v12 + 8))(v14, v24);

  sub_1C9EE26D4(v19, v21);

  return 1;
}

@end