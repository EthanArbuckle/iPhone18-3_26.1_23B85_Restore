@interface GalleryImagePlaygroundManager
- (_TtC7ChatKit29GalleryImagePlaygroundManager)init;
- (void)imagePlaygroundViewController:(id)a3 didCreateImageAt:(id)a4;
@end

@implementation GalleryImagePlaygroundManager

- (void)imagePlaygroundViewController:(id)a3 didCreateImageAt:(id)a4
{
  v6 = sub_190D515F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D515B0();
  v10 = a3;
  v11 = self;
  sub_1908D4AE4(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (_TtC7ChatKit29GalleryImagePlaygroundManager)init
{
  ObjectType = swift_getObjectType();
  *&self->delegate[OBJC_IVAR____TtC7ChatKit29GalleryImagePlaygroundManager_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit29GalleryImagePlaygroundManager_isFromSuggestion) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(GalleryImagePlaygroundManager *)&v5 init];
}

@end