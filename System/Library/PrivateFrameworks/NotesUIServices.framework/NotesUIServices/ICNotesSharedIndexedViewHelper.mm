@interface ICNotesSharedIndexedViewHelper
+ (id)makeNoteSearchResultViewWithNote:(id)note attachmentURL:(id)l;
- (ICNotesSharedIndexedViewHelper)init;
@end

@implementation ICNotesSharedIndexedViewHelper

+ (id)makeNoteSearchResultViewWithNote:(id)note attachmentURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15070, &qword_25C7AB768);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  if (l)
  {
    sub_25C7AA4EC();
    v9 = sub_25C7AA4FC();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_25C7AA4FC();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = swift_unknownObjectRetain();
  v12 = _sSo30ICNotesSharedIndexedViewHelperC15NotesUIServicesE020makeNoteSearchResultD04with13attachmentURLSo28CSSearchableItemAttributeSetCSgSo017ICSearchIndexableI0_p_10Foundation0N0VSgtFZ_0(v11, v8);
  swift_unknownObjectRelease();
  sub_25C79C9E8(v8, &qword_27FC15070, &qword_25C7AB768);

  return v12;
}

- (ICNotesSharedIndexedViewHelper)init
{
  v3.receiver = self;
  v3.super_class = ICNotesSharedIndexedViewHelper;
  return [(ICNotesSharedIndexedViewHelper *)&v3 init];
}

@end