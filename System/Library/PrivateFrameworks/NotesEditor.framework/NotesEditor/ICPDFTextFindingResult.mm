@interface ICPDFTextFindingResult
+ (void)resultsInAttachment:(ICAttachment *)attachment matchingString:(NSString *)string textView:(ICTextView *)view ignoreCase:(BOOL)case wholeWords:(BOOL)words startsWith:(BOOL)with usePattern:(BOOL)pattern completion:(id)self0;
- (_TtC11NotesEditor22ICPDFTextFindingResult)init;
- (id)framesForHighlightInTextView:(id)view;
- (int64_t)compare:(id)compare;
- (void)scrollToVisibleInTextView:(id)view;
- (void)selectInTextView:(id)view;
@end

@implementation ICPDFTextFindingResult

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  selfCopy = self;
  v8.super.isa = compareCopy;
  v6 = ICPDFTextFindingResult.compare(_:)(v8);

  return v6;
}

- (void)selectInTextView:(id)view
{
  selfCopy = self;
  viewCopy = view;
  range = [(ICTextFindingResult *)selfCopy range];
  if (viewCopy)
  {
    [viewCopy setSelectedRange_];
  }
}

- (id)framesForHighlightInTextView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  ICPDFTextFindingResult.framesForHighlight(in:)(viewCopy);

  sub_2151A6C9C(0, &qword_2811994C8);
  v6 = sub_2154A1F3C();

  return v6;
}

- (void)scrollToVisibleInTextView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  ICPDFTextFindingResult.scrollToVisible(in:)(view);
}

+ (void)resultsInAttachment:(ICAttachment *)attachment matchingString:(NSString *)string textView:(ICTextView *)view ignoreCase:(BOOL)case wholeWords:(BOOL)words startsWith:(BOOL)with usePattern:(BOOL)pattern completion:(id)self0
{
  HIDWORD(v27) = with;
  attachmentCopy = attachment;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v19 = _Block_copy(completion);
  v20 = swift_allocObject();
  *(v20 + 16) = attachment;
  *(v20 + 24) = string;
  *(v20 + 32) = view;
  *(v20 + 40) = case;
  *(v20 + 41) = words;
  *(v20 + 42) = BYTE4(v27);
  *(v20 + 43) = pattern;
  *(v20 + 48) = v19;
  *(v20 + 56) = self;
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
  v24 = attachmentCopy;
  stringCopy = string;
  viewCopy = view;
  sub_2153717B8(0, 0, v18, &unk_2154BEDB0, v23);
}

- (_TtC11NotesEditor22ICPDFTextFindingResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end