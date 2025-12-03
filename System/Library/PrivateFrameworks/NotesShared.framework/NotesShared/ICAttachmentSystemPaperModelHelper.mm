@interface ICAttachmentSystemPaperModelHelper
+ (BOOL)canDisplayPaperAtURL:(id)l;
+ (int64_t)minimumSupportedNotesVersionForPaperAtURL:(id)l greaterOrEqualToVersion:(int64_t)version;
- (_TtC11NotesShared34ICAttachmentSystemPaperModelHelper)init;
@end

@implementation ICAttachmentSystemPaperModelHelper

+ (int64_t)minimumSupportedNotesVersionForPaperAtURL:(id)l greaterOrEqualToVersion:(int64_t)version
{
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  v9 = _s11NotesShared34ICAttachmentSystemPaperModelHelperC016minimumSupporteda10VersionForE02at04baseJ0So07ICNotesJ0V10Foundation3URLV_AHtFZ_0(v8, version);
  (*(v6 + 8))(v8, v5);
  return v9;
}

+ (BOOL)canDisplayPaperAtURL:(id)l
{
  v3 = sub_2150A3750();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF0);
  v7 = sub_2150A46F0();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

- (_TtC11NotesShared34ICAttachmentSystemPaperModelHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ICAttachmentSystemPaperModelHelper();
  return [(ICAttachmentSystemPaperModelHelper *)&v3 init];
}

@end