@interface DOCFolderIcon
- (DOCFolderIcon)init;
- (DOCFolderIcon)initWithNode:(id)a3 size:(CGSize)a4 scale:(double)a5;
- (id)imageWithMinimalIO;
- (void)fetchImageWithCompletionHandler:(id)a3;
@end

@implementation DOCFolderIcon

- (DOCFolderIcon)initWithNode:(id)a3 size:(CGSize)a4 scale:(double)a5
{
  v5 = self + OBJC_IVAR___DOCFolderIcon_fetcher;
  *v5 = a3;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(v5 + 24) = a4;
  *(v5 + 5) = a5;
  *(v5 + 6) = 0;
  v7.receiver = self;
  v7.super_class = DOCFolderIcon;
  swift_unknownObjectRetain();
  return [(DOCFolderIcon *)&v7 init];
}

- (id)imageWithMinimalIO
{
  v5 = *(&self->super.isa + OBJC_IVAR___DOCFolderIcon_fetcher);
  v6 = self->fetcher[OBJC_IVAR___DOCFolderIcon_fetcher + 8];
  v7 = *&self->fetcher[OBJC_IVAR___DOCFolderIcon_fetcher + 16];
  v8 = *&self->fetcher[OBJC_IVAR___DOCFolderIcon_fetcher + 32];
  v2 = *&self->fetcher[OBJC_IVAR___DOCFolderIcon_fetcher + 40];
  swift_unknownObjectRetain();
  v3 = FolderIconFetcher.fetchAvailableImage()();

  swift_unknownObjectRelease();

  return v3;
}

- (void)fetchImageWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_249D04B6C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_249D07610;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_249D07620;
  v13[5] = v12;
  v14 = self;
  sub_249CF99D8(0, 0, v8, &unk_249D07630, v13);
}

- (DOCFolderIcon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end