@interface ICPaperTextAttachmentManager
- (ICPaperTextAttachmentManager)init;
- (ICPaperTextAttachmentManager)initWithNote:(id)a3 textView:(id)a4 delegate:(id)a5;
- (void)insertMagicGenerativePlaygroundWithAutomaticContent;
- (void)insertMagicGenerativePlaygroundWithImage:(CGImage *)a3;
- (void)insertMagicGenerativePlaygroundWithText:(id)a3;
- (void)noteDidChangeCalculatePreviewBehavior:(id)a3;
- (void)paperKitViewDidAppear:(id)a3;
@end

@implementation ICPaperTextAttachmentManager

- (ICPaperTextAttachmentManager)initWithNote:(id)a3 textView:(id)a4 delegate:(id)a5
{
  v6 = a3;
  v7 = a4;
  swift_unknownObjectRetain();
  return PaperTextAttachmentManager.init(note:textView:delegate:)(v6, v7);
}

- (void)paperKitViewDidAppear:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2153BC53C(v4);
}

- (void)noteDidChangeCalculatePreviewBehavior:(id)a3
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  v8 = self;
  sub_2153BC12C();

  (*(v5 + 8))(v7, v4);
}

- (void)insertMagicGenerativePlaygroundWithAutomaticContent
{
  v2 = self;
  PaperTextAttachmentManager.insertMagicGenerativePlaygroundWithAutomaticContent()();
}

- (void)insertMagicGenerativePlaygroundWithText:(id)a3
{
  v4 = sub_2154A1D6C();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  PaperTextAttachmentManager.insertMagicGenerativePlaygroundWithText(_:)(v8);
}

- (void)insertMagicGenerativePlaygroundWithImage:(CGImage *)a3
{
  v4 = a3;
  v5 = self;
  PaperTextAttachmentManager.insertMagicGenerativePlaygroundWithImage(_:)(v4);
}

- (ICPaperTextAttachmentManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end