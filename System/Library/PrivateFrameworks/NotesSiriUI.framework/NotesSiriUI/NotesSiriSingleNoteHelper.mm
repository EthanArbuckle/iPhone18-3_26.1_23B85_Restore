@interface NotesSiriSingleNoteHelper
- (_TtC11NotesSiriUIP33_3E7C7BF264EBD40B6730A9F9F307847625NotesSiriSingleNoteHelper)init;
- (id)noteHTMLEditorView:(id)view attachmentPresentationForContentID:(id)d;
- (id)noteHTMLEditorView:(id)view fileURLForAttachmentWithContentID:(id)d;
@end

@implementation NotesSiriSingleNoteHelper

- (id)noteHTMLEditorView:(id)view fileURLForAttachmentWithContentID:(id)d
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  if (d)
  {
    sub_25C78F034();
    d = v11;
  }

  viewCopy = view;
  selfCopy = self;
  sub_25C779F70(d, v10);

  v14 = sub_25C78E744();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v10, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    v18 = sub_25C78E714();
    (*(v15 + 8))(v10, v14);
    v17 = v18;
  }

  return v17;
}

- (id)noteHTMLEditorView:(id)view attachmentPresentationForContentID:(id)d
{
  if (d)
  {
    sub_25C78F034();
    selfCopy = self;
    v6 = sub_25C78F024();
    v7 = sub_25C77A524(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_TtC11NotesSiriUIP33_3E7C7BF264EBD40B6730A9F9F307847625NotesSiriSingleNoteHelper)init
{
  v3 = OBJC_IVAR____TtC11NotesSiriUIP33_3E7C7BF264EBD40B6730A9F9F307847625NotesSiriSingleNoteHelper_attachmentPresentations;
  sub_25C77ADD4(0, &qword_27FC14028, 0x277CBEA60);
  *(&self->super.isa + v3) = MEMORY[0x25F88CEB0](MEMORY[0x277D84F90]);
  v5.receiver = self;
  v5.super_class = type metadata accessor for NotesSiriSingleNoteHelper();
  return [(NotesSiriSingleNoteHelper *)&v5 init];
}

@end