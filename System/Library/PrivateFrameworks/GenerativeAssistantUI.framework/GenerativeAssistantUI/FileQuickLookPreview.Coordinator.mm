@interface FileQuickLookPreview.Coordinator
- (_TtCV16MarkdownDocument20FileQuickLookPreview11Coordinator)init;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
@end

@implementation FileQuickLookPreview.Coordinator

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  v5 = type metadata accessor for FileQuickLookPreview(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEA57E8(self + OBJC_IVAR____TtCV16MarkdownDocument20FileQuickLookPreview11Coordinator_parent, v8);
  v9 = sub_24FEDC974();
  v10 = sub_24FEDC9E4();
  (*(*(v10 - 8) + 8))(v8, v10);

  return v9;
}

- (_TtCV16MarkdownDocument20FileQuickLookPreview11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end