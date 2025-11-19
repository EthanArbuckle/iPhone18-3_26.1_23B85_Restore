@interface QuickLookPreview.Coordinator
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
@end

@implementation QuickLookPreview.Coordinator

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v5 = sub_24FEDC9E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_fileURL;
  swift_beginAccess();
  (*(v6 + 16))(v9, self + v10, v5);
  v11 = sub_24FEDC974();
  (*(v6 + 8))(v9, v5);

  return v11;
}

@end