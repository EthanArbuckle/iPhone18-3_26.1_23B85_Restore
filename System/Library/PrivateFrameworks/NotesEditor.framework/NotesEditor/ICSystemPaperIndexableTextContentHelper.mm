@interface ICSystemPaperIndexableTextContentHelper
- (ICSystemPaperIndexableTextContentHelper)init;
- (ICSystemPaperIndexableTextContentHelper)initWithPaperAttachment:(id)attachment;
- (PKDrawing)drawing;
- (id)searchWithQuery:(id)query;
- (void)setDrawing:(id)drawing;
@end

@implementation ICSystemPaperIndexableTextContentHelper

- (PKDrawing)drawing
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E660);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR___ICSystemPaperIndexableTextContentHelper_drawing;
  swift_beginAccess();
  sub_215497AF4(self + v6, v5);
  v7 = sub_2154A1C5C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_2154A1C3C();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setDrawing:(id)drawing
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E660);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  if (drawing)
  {
    selfCopy = self;
    drawingCopy = drawing;
    sub_2154A1C4C();

    v10 = sub_2154A1C5C();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v11 = sub_2154A1C5C();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    selfCopy2 = self;
  }

  v13 = OBJC_IVAR___ICSystemPaperIndexableTextContentHelper_drawing;
  swift_beginAccess();
  sub_215497D20(v7, self + v13);
  swift_endAccess();
}

- (ICSystemPaperIndexableTextContentHelper)initWithPaperAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v4 = sub_21549852C(attachmentCopy);

  return v4;
}

- (id)searchWithQuery:(id)query
{
  v4 = sub_2154A1D6C();
  v6 = v5;
  selfCopy = self;
  ICSystemPaperIndexableTextContentHelper.search(query:)(v4, v6);

  sub_215498D8C();
  v8 = sub_2154A1F3C();

  return v8;
}

- (ICSystemPaperIndexableTextContentHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end