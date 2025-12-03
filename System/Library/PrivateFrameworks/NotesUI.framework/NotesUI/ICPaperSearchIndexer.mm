@interface ICPaperSearchIndexer
+ (id)shared;
- (ICPaperSearchIndexer)init;
- (void)cancelEverythingWithCompletion:(id)completion;
- (void)needsToUpdateIndexWithManagedObjectContext:(NSManagedObjectContext *)context completionHandler:(id)handler;
- (void)updateIndexForAttachment:(NSManagedObjectID *)attachment userInitiated:(BOOL)initiated managedObjectContext:(NSManagedObjectContext *)context completionHandler:(id)handler;
- (void)updateIndexForAttachments:(NSSet *)attachments userInitiated:(BOOL)initiated managedObjectContext:(NSManagedObjectContext *)context completionHandler:(id)handler;
- (void)updateIndexWithManagedObjectContext:(NSManagedObjectContext *)context completionHandler:(id)handler;
@end

@implementation ICPaperSearchIndexer

+ (id)shared
{
  if (qword_1EDE32700 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE32708;

  return v3;
}

- (ICPaperSearchIndexer)init
{
  *(&self->super.isa + OBJC_IVAR___ICPaperSearchIndexer____lazy_storage___queue) = 0;
  v3.receiver = self;
  v3.super_class = ICPaperSearchIndexer;
  return [(ICPaperSearchIndexer *)&v3 init];
}

- (void)needsToUpdateIndexWithManagedObjectContext:(NSManagedObjectContext *)context completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00]();
  v8 = &v16 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = context;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_1D4419F94();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1D44373C8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1D44373D0;
  v13[5] = v12;
  contextCopy = context;
  selfCopy = self;
  sub_1D4315CE0(0, 0, v8, &unk_1D44373D8, v13);
}

- (void)updateIndexWithManagedObjectContext:(NSManagedObjectContext *)context completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1D4419F94();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1D44373A8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D44373B0;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_1D4315CE0(0, 0, v9, &unk_1D44373B8, v14);
}

- (void)updateIndexForAttachments:(NSSet *)attachments userInitiated:(BOOL)initiated managedObjectContext:(NSManagedObjectContext *)context completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = attachments;
  *(v15 + 24) = initiated;
  *(v15 + 32) = context;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = sub_1D4419F94();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1D4437388;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1D4437390;
  v18[5] = v17;
  attachmentsCopy = attachments;
  contextCopy = context;
  selfCopy = self;
  sub_1D4315CE0(0, 0, v13, &unk_1D4437398, v18);
}

- (void)updateIndexForAttachment:(NSManagedObjectID *)attachment userInitiated:(BOOL)initiated managedObjectContext:(NSManagedObjectContext *)context completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = attachment;
  *(v15 + 24) = initiated;
  *(v15 + 32) = context;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = sub_1D4419F94();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1D4437368;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1D4437370;
  v18[5] = v17;
  attachmentCopy = attachment;
  contextCopy = context;
  selfCopy = self;
  sub_1D4315CE0(0, 0, v13, &unk_1D4437378, v18);
}

- (void)cancelEverythingWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1D4419F94();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1D4437330;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1D4436C08;
  v12[5] = v11;
  selfCopy = self;
  sub_1D4315CE0(0, 0, v7, &unk_1D4436C10, v12);
}

@end