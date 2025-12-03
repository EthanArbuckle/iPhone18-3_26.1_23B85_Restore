@interface ICSystemPaperDocument
+ (id)assetsDirectoryAt:(id)at;
+ (id)databaseDirectoryAt:(id)at;
+ (void)closeContextForNote:(id)note;
- (BOOL)writeNewVersionFromSyncArchive:(id)archive error:(id *)error;
- (CRContext)coherenceContext;
- (_TtC11NotesShared21ICSystemPaperDocument)init;
- (_TtC11NotesShared21ICSystemPaperDocument)initWithPaperAttachment:(id)attachment;
- (id)archiveBundleForSyncAndReturnError:(id *)error;
- (id)toFallbackPDFData;
- (void)removeStrokesFromStyleInventory;
- (void)updateGraphDestinationsUsingInlineAttachmentIdentifierMap:(id)map completion:(id)completion;
@end

@implementation ICSystemPaperDocument

- (CRContext)coherenceContext
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment);
  selfCopy = self;
  managedObjectContext = [v2 managedObjectContext];
  if (managedObjectContext)
  {
    v5 = managedObjectContext;
    MEMORY[0x28223BE20](managedObjectContext);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43500);
    sub_2150A56D0();

    v6 = v8;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (_TtC11NotesShared21ICSystemPaperDocument)initWithPaperAttachment:(id)attachment
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment) = attachment;
  v8.receiver = self;
  v8.super_class = ObjectType;
  attachmentCopy = attachment;
  return [(ICSystemPaperDocument *)&v8 init];
}

- (id)archiveBundleForSyncAndReturnError:(id *)error
{
  selfCopy = self;
  v4 = ICSystemPaperDocument.archiveBundleForSync()();

  return v4;
}

- (BOOL)writeNewVersionFromSyncArchive:(id)archive error:(id *)error
{
  archiveCopy = archive;
  selfCopy = self;
  ICSystemPaperDocument.writeNewVersionFromSyncArchive(_:)(archiveCopy);

  return 1;
}

+ (id)databaseDirectoryAt:(id)at
{
  v3 = sub_2150A3750();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  sub_2150A36F0();
  sub_2150A36C0();
  v10 = *(v4 + 8);
  v10(v7, v3);
  v11 = sub_2150A36B0();
  v10(v9, v3);

  return v11;
}

+ (id)assetsDirectoryAt:(id)at
{
  v3 = sub_2150A3750();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_2150A36F0();
  sub_2150A36C0();
  sub_2150A36D0();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v13(v10, v3);
  v14 = sub_2150A36B0();
  v13(v12, v3);

  return v14;
}

- (void)updateGraphDestinationsUsingInlineAttachmentIdentifierMap:(id)map completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_2150A4920();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_214FE2BD4;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  ICSystemPaperDocument.updateGraphDestinations(usingInlineAttachmentIdentifierMap:completion:)(v6, v5, v7);
  sub_214D6AB7C(v5);
}

+ (void)closeContextForNote:(id)note
{
  noteCopy = note;
  _s11NotesShared21ICSystemPaperDocumentC12closeContext3forySo6ICNoteC_tFZ_0(noteCopy);
}

- (void)removeStrokesFromStyleInventory
{
  selfCopy = self;
  ICSystemPaperDocument.removeStrokesFromStyleInventory()();
}

- (id)toFallbackPDFData
{
  selfCopy = self;
  v3 = ICSystemPaperDocument.toFallbackPDFData()();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_2150A3790();
    sub_214FE1228(v3, v5);
    v6 = v7;
  }

  return v6;
}

- (_TtC11NotesShared21ICSystemPaperDocument)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end