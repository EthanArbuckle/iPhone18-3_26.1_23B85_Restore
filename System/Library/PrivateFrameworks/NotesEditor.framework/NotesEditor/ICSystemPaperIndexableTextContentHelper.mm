@interface ICSystemPaperIndexableTextContentHelper
- (ICSystemPaperIndexableTextContentHelper)init;
- (ICSystemPaperIndexableTextContentHelper)initWithPaperAttachment:(id)a3;
- (PKDrawing)drawing;
- (id)searchWithQuery:(id)a3;
- (void)setDrawing:(id)a3;
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

- (void)setDrawing:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E660);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  if (a3)
  {
    v8 = self;
    v9 = a3;
    sub_2154A1C4C();

    v10 = sub_2154A1C5C();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v11 = sub_2154A1C5C();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = self;
  }

  v13 = OBJC_IVAR___ICSystemPaperIndexableTextContentHelper_drawing;
  swift_beginAccess();
  sub_215497D20(v7, self + v13);
  swift_endAccess();
}

- (ICSystemPaperIndexableTextContentHelper)initWithPaperAttachment:(id)a3
{
  v3 = a3;
  v4 = sub_21549852C(v3);

  return v4;
}

- (id)searchWithQuery:(id)a3
{
  v4 = sub_2154A1D6C();
  v6 = v5;
  v7 = self;
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