@interface ICSystemPaperDocumentHelper
+ (id)drawingForPaperAttachment:(id)attachment;
- (ICSystemPaperDocumentHelper)init;
- (ICSystemPaperDocumentHelper)initWithPaperAttachment:(id)attachment textView:(id)view;
- (UITextView)textView;
- (void)addWithItemProviders:(id)providers itemsAnchor:(int64_t)anchor;
@end

@implementation ICSystemPaperDocumentHelper

- (UITextView)textView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (id)drawingForPaperAttachment:(id)attachment
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  attachmentCopy = attachment;
  static ICSystemPaperDocumentHelper.drawing(for:)(attachmentCopy, v6);

  v8 = sub_2154A1C5C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_2154A1C3C();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (ICSystemPaperDocumentHelper)initWithPaperAttachment:(id)attachment textView:(id)view
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___ICSystemPaperDocumentHelper_attachment) = attachment;
  swift_unknownObjectWeakAssign();
  v9.receiver = self;
  v9.super_class = ObjectType;
  attachmentCopy = attachment;
  return [(ICSystemPaperDocumentHelper *)&v9 init];
}

- (void)addWithItemProviders:(id)providers itemsAnchor:(int64_t)anchor
{
  sub_2151A6C9C(0, &qword_27CA5A360);
  v6 = sub_2154A1F4C();
  selfCopy = self;
  ICSystemPaperDocumentHelper.add(itemProviders:itemsAnchor:)(v6, anchor);
}

- (ICSystemPaperDocumentHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end