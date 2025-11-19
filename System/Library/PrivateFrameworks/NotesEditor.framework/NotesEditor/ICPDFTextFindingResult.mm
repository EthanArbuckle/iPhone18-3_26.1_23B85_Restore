@interface ICPDFTextFindingResult
+ (void)resultsInAttachment:(ICAttachment *)a3 matchingString:(NSString *)a4 textView:(ICTextView *)a5 ignoreCase:(BOOL)a6 wholeWords:(BOOL)a7 startsWith:(BOOL)a8 usePattern:(BOOL)a9 completion:(id)a10;
- (_TtC11NotesEditor22ICPDFTextFindingResult)init;
- (id)framesForHighlightInTextView:(id)a3;
- (int64_t)compare:(id)a3;
- (void)scrollToVisibleInTextView:(id)a3;
- (void)selectInTextView:(id)a3;
@end

@implementation ICPDFTextFindingResult

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = self;
  v8.super.isa = v4;
  v6 = ICPDFTextFindingResult.compare(_:)(v8);

  return v6;
}

- (void)selectInTextView:(id)a3
{
  v6 = self;
  v4 = a3;
  v5 = [(ICTextFindingResult *)v6 range];
  if (v4)
  {
    [v4 setSelectedRange_];
  }
}

- (id)framesForHighlightInTextView:(id)a3
{
  v4 = a3;
  v5 = self;
  ICPDFTextFindingResult.framesForHighlight(in:)(v4);

  sub_2151A6C9C(0, &qword_2811994C8);
  v6 = sub_2154A1F3C();

  return v6;
}

- (void)scrollToVisibleInTextView:(id)a3
{
  v5 = a3;
  v6 = self;
  ICPDFTextFindingResult.scrollToVisible(in:)(a3);
}

+ (void)resultsInAttachment:(ICAttachment *)a3 matchingString:(NSString *)a4 textView:(ICTextView *)a5 ignoreCase:(BOOL)a6 wholeWords:(BOOL)a7 startsWith:(BOOL)a8 usePattern:(BOOL)a9 completion:(id)a10
{
  HIDWORD(v27) = a8;
  v28 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v19 = _Block_copy(a10);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5;
  *(v20 + 40) = a6;
  *(v20 + 41) = a7;
  *(v20 + 42) = BYTE4(v27);
  *(v20 + 43) = a9;
  *(v20 + 48) = v19;
  *(v20 + 56) = a1;
  v21 = sub_2154A202C();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_2154BEC98;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_2154BECA0;
  v23[5] = v22;
  v24 = v28;
  v25 = a4;
  v26 = a5;
  sub_2153717B8(0, 0, v18, &unk_2154BEDB0, v23);
}

- (_TtC11NotesEditor22ICPDFTextFindingResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end