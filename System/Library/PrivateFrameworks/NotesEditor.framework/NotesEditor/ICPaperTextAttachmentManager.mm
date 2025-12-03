@interface ICPaperTextAttachmentManager
- (ICPaperTextAttachmentManager)init;
- (ICPaperTextAttachmentManager)initWithNote:(id)note textView:(id)view delegate:(id)delegate;
- (void)insertMagicGenerativePlaygroundWithAutomaticContent;
- (void)insertMagicGenerativePlaygroundWithImage:(CGImage *)image;
- (void)insertMagicGenerativePlaygroundWithText:(id)text;
- (void)noteDidChangeCalculatePreviewBehavior:(id)behavior;
- (void)paperKitViewDidAppear:(id)appear;
@end

@implementation ICPaperTextAttachmentManager

- (ICPaperTextAttachmentManager)initWithNote:(id)note textView:(id)view delegate:(id)delegate
{
  noteCopy = note;
  viewCopy = view;
  swift_unknownObjectRetain();
  return PaperTextAttachmentManager.init(note:textView:delegate:)(noteCopy, viewCopy);
}

- (void)paperKitViewDidAppear:(id)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_2153BC53C(appearCopy);
}

- (void)noteDidChangeCalculatePreviewBehavior:(id)behavior
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  selfCopy = self;
  sub_2153BC12C();

  (*(v5 + 8))(v7, v4);
}

- (void)insertMagicGenerativePlaygroundWithAutomaticContent
{
  selfCopy = self;
  PaperTextAttachmentManager.insertMagicGenerativePlaygroundWithAutomaticContent()();
}

- (void)insertMagicGenerativePlaygroundWithText:(id)text
{
  v4 = sub_2154A1D6C();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  PaperTextAttachmentManager.insertMagicGenerativePlaygroundWithText(_:)(v8);
}

- (void)insertMagicGenerativePlaygroundWithImage:(CGImage *)image
{
  imageCopy = image;
  selfCopy = self;
  PaperTextAttachmentManager.insertMagicGenerativePlaygroundWithImage(_:)(imageCopy);
}

- (ICPaperTextAttachmentManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end