@interface ICNoteTimelineControllerInternal
+ (id)ascendingTimelineSectionsForNoteObjectIds:(id)ids dates:(id)dates referenceDate:(id)date direction:(int64_t)direction;
+ (void)setTimeZone:(id)zone;
- (_TtC7NotesUI32ICNoteTimelineControllerInternal)init;
@end

@implementation ICNoteTimelineControllerInternal

+ (id)ascendingTimelineSectionsForNoteObjectIds:(id)ids dates:(id)dates referenceDate:(id)date direction:(int64_t)direction
{
  v7 = sub_1D4417434();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D41766C0(0, &qword_1EDE32768);
  v11 = sub_1D4419E44();
  v12 = sub_1D4419E44();
  sub_1D44173F4();
  _s7NotesUI32ICNoteTimelineControllerInternalC09ascendingD8Sections3for5dates13referenceDate9directionSaySo0cD7SectionCGSaySo17NSManagedObjectIDCG_Say10Foundation0L0VGAQSo35ICFolderCustomNoteSortTypeDirectionVtFZ_0(v11, v12, v10, direction);

  (*(v8 + 8))(v10, v7);
  sub_1D41766C0(0, &qword_1EDE326C8);
  v13 = sub_1D4419E24();

  return v13;
}

+ (void)setTimeZone:(id)zone
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC118);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = sub_1D44175E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  sub_1D44175D4();
  if (qword_1EDE32D40 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_1EDE32D48);
  sub_1D4417514();
  v14 = sub_1D4417544();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v5, 0, 1, v14);
  swift_beginAccess();
  sub_1D43DB4D4(v5, v13);
  if (!(*(v15 + 48))(v13, 1, v14))
  {
    (*(v7 + 16))(v10, v12, v6);
    sub_1D4417524();
  }

  swift_endAccess();
  (*(v7 + 8))(v12, v6);
}

- (_TtC7NotesUI32ICNoteTimelineControllerInternal)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ICNoteTimelineControllerInternal *)&v3 init];
}

@end