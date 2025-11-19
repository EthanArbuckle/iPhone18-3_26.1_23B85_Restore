@interface ClinicalDocumentDownloader
- (_TtC19HealthRecordsDaemon26ClinicalDocumentDownloader)init;
- (id)exportedInterface;
- (void)remote_beginOrResumeDownloadingAttachments:(NSArray *)a3 shouldRequestMore:(BOOL)a4 completion:(id)a5;
- (void)remote_downloadAttachment:(HKMedicalDownloadableAttachment *)a3 completion:(id)a4;
- (void)remote_pingDownloaderWithCompletion:(id)a3;
- (void)remote_triggerDownloadForAttachment:(NSUUID *)a3 completion:(id)a4;
@end

@implementation ClinicalDocumentDownloader

- (_TtC19HealthRecordsDaemon26ClinicalDocumentDownloader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remote_beginOrResumeDownloadingAttachments:(NSArray *)a3 shouldRequestMore:(BOOL)a4 completion:(id)a5
{
  sub_251AF4E18();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_251C71214();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_251C78E50;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_251C78E58;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_251B34078(0, 0, v12, &unk_251C78E60, v17);
}

- (void)remote_downloadAttachment:(HKMedicalDownloadableAttachment *)a3 completion:(id)a4
{
  sub_251AF4E18();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_251C71214();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_251C78E30;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_251C78E38;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_251B34078(0, 0, v10, &unk_251C78E40, v15);
}

- (void)remote_pingDownloaderWithCompletion:(id)a3
{
  sub_251AF4E18();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_251C71214();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_251C78E10;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_251C78E18;
  v13[5] = v12;
  v14 = self;
  sub_251B34078(0, 0, v8, &unk_251C78E20, v13);
}

- (void)remote_triggerDownloadForAttachment:(NSUUID *)a3 completion:(id)a4
{
  sub_251AF4E18();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_251C71214();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_251C78DC8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_251C775E8;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_251B34078(0, 0, v10, &unk_251C775F0, v15);
}

- (id)exportedInterface
{
  v2 = HKClinicalDocumentDownloaderInterface();

  return v2;
}

@end