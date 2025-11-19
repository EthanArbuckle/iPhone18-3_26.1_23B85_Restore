@interface ICThumbnailGeneratorSystemPaper
+ (CGSize)chromeSize;
+ (id)chromeBackdropImageUrlFor:(id)a3;
- (ICThumbnailCaching)cache;
- (ICThumbnailGeneratorSystemPaper)initWithManagedObjectContext:(id)a3;
- (ICThumbnailGeneratorSystemPaper)initWithManagedObjectContext:(id)a3 cache:(id)a4;
- (id)thumbnailWith:(id)a3;
- (void)generateThumbnailWithConfiguration:(id)a3 completion:(id)a4;
@end

@implementation ICThumbnailGeneratorSystemPaper

- (ICThumbnailCaching)cache
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (ICThumbnailGeneratorSystemPaper)initWithManagedObjectContext:(id)a3 cache:(id)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR___ICThumbnailGeneratorSystemPaper_cache) = a4;
  v9.receiver = self;
  v9.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(ICThumbnailGenerator *)&v9 initWithManagedObjectContext:a3];
}

+ (id)chromeBackdropImageUrlFor:(id)a3
{
  v4 = sub_1D4417234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(ICThumbnailConfiguration);
  v9 = a3;
  v10 = [v8 initForSystemPaperChromeLayerWithThumbnailType:5 traitCollection:v9];
  v11 = [v10 uniqueKey];

  sub_1D43A672C(v7);
  v12 = sub_1D44171C4();
  (*(v5 + 8))(v7, v4);

  return v12;
}

+ (CGSize)chromeSize
{
  if (qword_1EDE32D68 != -1)
  {
    swift_once();
  }

  v3 = *(&xmmword_1EDE32D70 + 1);
  v2 = *&xmmword_1EDE32D70;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)generateThumbnailWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  v10 = [(ICThumbnailGenerator *)v9 managedObjectContext];
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v8;
  v11[4] = sub_1D43A43AC;
  v11[5] = v7;
  v15[4] = sub_1D4403FCC;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D417BEE4;
  v15[3] = &block_descriptor_11;
  v12 = _Block_copy(v15);
  v13 = v8;
  v14 = v9;

  [(NSManagedObjectContext *)v10 performBlock:v12];

  _Block_release(v12);
}

- (id)thumbnailWith:(id)a3
{
  v4 = a3;
  v5 = self;
  ThumbnailGeneratorSystemPaper.thumbnail(with:)(v6, v4);
  v8 = v7;

  return v8;
}

- (ICThumbnailGeneratorSystemPaper)initWithManagedObjectContext:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end