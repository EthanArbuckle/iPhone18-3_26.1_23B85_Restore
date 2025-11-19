@interface QLModelDocument
- (BOOL)loadFromContents:(id)a3 ofType:(id)a4 error:(id *)a5;
- (_TtC32com_apple_MLKit_MLPackagePreview15QLModelDocument)initWithFileURL:(id)a3;
- (id)contentsForType:(id)a3 error:(id *)a4;
@end

@implementation QLModelDocument

- (id)contentsForType:(id)a3 error:(id *)a4
{
  v4 = sub_100019F98();

  return v4;
}

- (BOOL)loadFromContents:(id)a3 ofType:(id)a4 error:(id *)a5
{
  swift_unknownObjectRetain();
  sub_100019E58();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return 1;
}

- (_TtC32com_apple_MLKit_MLPackagePreview15QLModelDocument)initWithFileURL:(id)a3
{
  v4 = sub_100019958();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019938();
  v9 = OBJC_IVAR____TtC32com_apple_MLKit_MLPackagePreview15QLModelDocument_error;
  *(&self->super.super.isa + OBJC_IVAR____TtC32com_apple_MLKit_MLPackagePreview15QLModelDocument_error) = 0;
  sub_100019928(v9);
  v11 = v10;
  v12 = type metadata accessor for QLModelDocument();
  v15.receiver = self;
  v15.super_class = v12;
  v13 = [(QLModelDocument *)&v15 initWithFileURL:v11];

  (*(v5 + 8))(v8, v4);
  return v13;
}

@end