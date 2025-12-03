@interface AttachmentsViewModel
- (_TtC13CalendarUIKit20AttachmentsViewModel)init;
- (void)attachmentDownloadErrorWithIsSubscribedCalendar:(BOOL)calendar;
- (void)openExternalAttachmentURLInBrowser:(id)browser;
- (void)presentPreviewWithURL:(id)l fileName:(id)name ekAttachment:(id)attachment;
- (void)promptToDownloadAttachmentFromHost:(id)host promptToDownloadCallBack:(id)back;
- (void)updateAttachmentDownloadProgressWithIdentifier:(id)identifier downloadedBytes:(id)bytes outOfTotalBytes:(id)totalBytes;
- (void)updateAttachmentStatusWithIdentifier:(id)identifier isLoading:(BOOL)loading;
@end

@implementation AttachmentsViewModel

- (void)presentPreviewWithURL:(id)l fileName:(id)name ekAttachment:(id)attachment
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  if (l)
  {
    sub_1CAD4BFC4();
    v12 = sub_1CAD4BFF4();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_1CAD4BFF4();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  if (name)
  {
    v14 = sub_1CAD4DF94();
    name = v15;
  }

  else
  {
    v14 = 0;
  }

  attachmentCopy = attachment;
  selfCopy = self;
  sub_1CABC4680(v11, v14, name, attachmentCopy);

  sub_1CAB21B68(v11, &qword_1EC465450);
}

- (void)openExternalAttachmentURLInBrowser:(id)browser
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463938);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  if (browser)
  {
    sub_1CAD4BFC4();
    v14 = sub_1CAD4BFF4();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v14 = sub_1CAD4BFF4();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  sub_1CAB23A9C(v13, v11, &qword_1EC465450);
  sub_1CAD4BFF4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v15 + 32))(v7, v11, v14);
    v16 = type metadata accessor for AttachmentAlert(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    selfCopy = self;
    sub_1CABC3F6C(v7);

    sub_1CAB21B68(v13, &qword_1EC465450);
  }
}

- (void)promptToDownloadAttachmentFromHost:(id)host promptToDownloadCallBack:(id)back
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463938);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v19 - v9);
  v11 = _Block_copy(back);
  v12 = v11;
  if (host)
  {
    v13 = sub_1CAD4DF94();
    v4 = v14;
    if (v12)
    {
      v15 = v13;
      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      if (v4)
      {
        *v10 = v15;
        v10[1] = v4;
        v10[2] = sub_1CABC6E74;
        v10[3] = v16;
        v17 = type metadata accessor for AttachmentAlert(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
        selfCopy = self;
        sub_1CAB380F0(sub_1CABC6E74);
        sub_1CABC3F6C(v10);

        sub_1CABC6E64(sub_1CABC6E74);
        return;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (!v11)
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    swift_allocObject();
    __break(1u);
  }

  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
}

- (void)attachmentDownloadErrorWithIsSubscribedCalendar:(BOOL)calendar
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for AttachmentAlert(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AttachmentAlert(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  selfCopy = self;
  sub_1CABC3F6C(v6);
}

- (void)updateAttachmentStatusWithIdentifier:(id)identifier isLoading:(BOOL)loading
{
  if (identifier)
  {
    loadingCopy = loading;
    v6 = sub_1CAD4DF94();
    v8 = v7;
    v9 = *(&self->super.isa + OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel_updateAttachmentStatus);
    selfCopy = self;
    v9(v6, v8, loadingCopy);
  }

  else
  {
    __break(1u);
  }
}

- (void)updateAttachmentDownloadProgressWithIdentifier:(id)identifier downloadedBytes:(id)bytes outOfTotalBytes:(id)totalBytes
{
  if (identifier)
  {
    v8 = sub_1CAD4DF94();
    v10 = v9;
    if (bytes)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = 0;
  v10 = 0;
  if (!bytes)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!totalBytes)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  selfCopy = self;
  totalBytesCopy = totalBytes;
  bytesCopy = bytes;
  v13 = sub_1CABC6BE8(bytesCopy, totalBytesCopy);
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  (*(&selfCopy->super.isa + OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel_updateDownloadProgress))(v8, v10, v13, v14);
}

- (_TtC13CalendarUIKit20AttachmentsViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end