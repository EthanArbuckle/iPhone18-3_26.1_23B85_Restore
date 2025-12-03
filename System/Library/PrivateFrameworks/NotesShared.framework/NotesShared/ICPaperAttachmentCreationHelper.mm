@interface ICPaperAttachmentCreationHelper
+ (BOOL)createPaperDocumentForAttachment:(id)attachment fromLegacyMediaAtURL:(id)l error:(id *)error;
+ (id)createSystemPaperAttachmentWithPKDrawing:(id)drawing inNote:(id)note;
+ (void)copyNewPaperBundleToAttachment:(ICAttachment *)attachment fromURL:(NSURL *)l completionHandler:(id)handler;
+ (void)createPaperDocumentForAttachment:(ICAttachment *)attachment fromLegacyMediaAtURL:(NSURL *)l completionHandler:(id)handler;
- (ICPaperAttachmentCreationHelper)init;
@end

@implementation ICPaperAttachmentCreationHelper

+ (void)copyNewPaperBundleToAttachment:(ICAttachment *)attachment fromURL:(NSURL *)l completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = attachment;
  v13[3] = l;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_2150A5120();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2150C8AE8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2150C8AF0;
  v16[5] = v15;
  attachmentCopy = attachment;
  lCopy = l;
  sub_21501779C(0, 0, v11, &unk_2150C8AF8, v16);
}

+ (void)createPaperDocumentForAttachment:(ICAttachment *)attachment fromLegacyMediaAtURL:(NSURL *)l completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = attachment;
  v13[3] = l;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_2150A5120();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2150C8AC8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2150C8AD0;
  v16[5] = v15;
  attachmentCopy = attachment;
  lCopy = l;
  sub_21501779C(0, 0, v11, &unk_2150C8AD8, v16);
}

+ (BOOL)createPaperDocumentForAttachment:(id)attachment fromLegacyMediaAtURL:(id)l error:(id *)error
{
  v6 = sub_2150A3750();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  swift_getObjCClassMetadata();
  attachmentCopy = attachment;
  static ICPaperAttachmentCreationHelper.createPaperDocument(for:fromLegacyMediaAt:)(attachmentCopy, v9);
  (*(v7 + 8))(v9, v6);

  return 1;
}

+ (id)createSystemPaperAttachmentWithPKDrawing:(id)drawing inNote:(id)note
{
  v6 = sub_2150A48F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  drawingCopy = drawing;
  noteCopy = note;
  sub_2150A48E0();

  swift_getObjCClassMetadata();
  v12 = static ICPaperAttachmentCreationHelper.createSystemPaperAttachment(with:in:)(v9, noteCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (ICPaperAttachmentCreationHelper)init
{
  v3.receiver = self;
  v3.super_class = ICPaperAttachmentCreationHelper;
  return [(ICPaperAttachmentCreationHelper *)&v3 init];
}

@end