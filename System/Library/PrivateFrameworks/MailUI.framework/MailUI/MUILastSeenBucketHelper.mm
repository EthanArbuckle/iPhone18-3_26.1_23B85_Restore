@interface MUILastSeenBucketHelper
- (id)lastSeenDatesForBucket:(int64_t)bucket;
- (void)categoryCloudStorage:(id)storage didChangeLastSeenDate:(id)date lastSeenDisplayDate:(id)displayDate forCategoryType:(id)type inMailboxWithExternalURL:(id)l originator:(unint64_t)originator;
- (void)clearSessionState;
- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change;
- (void)setlastSeenDates:(id)dates forBucket:(int64_t)bucket;
- (void)updateLastSeenDates:(id)dates forMailboxes:(id)mailboxes bucket:(int64_t)bucket;
- (void)updateWithMailboxes:(id)mailboxes;
@end

@implementation MUILastSeenBucketHelper

- (void)updateWithMailboxes:(id)mailboxes
{
  MEMORY[0x277D82BE0](mailboxes);
  MEMORY[0x277D82BE0](self);
  sub_214A63684();
  v4 = sub_214CCF7E4();
  MUILastSeenBucketHelper.update(mailboxes:)(v4);

  MEMORY[0x277D82BD8](mailboxes);
  MEMORY[0x277D82BD8](self);
}

- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change
{
  MEMORY[0x277D82BE0](repository);
  MEMORY[0x277D82BE0](query);
  MEMORY[0x277D82BE0](self);
  MUILastSeenBucketHelper.messageRepository(_:query:countDidChange:)(repository, query, change);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](query);
  MEMORY[0x277D82BD8](repository);
}

- (void)categoryCloudStorage:(id)storage didChangeLastSeenDate:(id)date lastSeenDisplayDate:(id)displayDate forCategoryType:(id)type inMailboxWithExternalURL:(id)l originator:(unint64_t)originator
{
  selfCopy = self;
  storageCopy = storage;
  dateCopy = date;
  displayDateCopy = displayDate;
  typeCopy = type;
  lCopy = l;
  originatorCopy = originator;
  v25 = 0;
  v20 = sub_214CCD154();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v24 = v14 - v23;
  v26 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v27 = v14 - v26;
  v28 = sub_214CCD254();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v32 = v14 - v31;
  v34 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](storageCopy);
  v35 = v14 - v34;
  v36 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v37 = v14 - v36;
  MEMORY[0x277D82BE0](v10);
  MEMORY[0x277D82BE0](dateCopy);
  MEMORY[0x277D82BE0](displayDateCopy);
  MEMORY[0x277D82BE0](typeCopy);
  MEMORY[0x277D82BE0](lCopy);
  v11 = MEMORY[0x277D82BE0](selfCopy);
  if (dateCopy)
  {
    v18 = dateCopy;
    v17 = dateCopy;
    sub_214CCD224();
    (*(v29 + 32))(v37, v32, v28);
    (*(v29 + 56))(v37, 0, 1, v28);
    v12 = MEMORY[0x277D82BD8](v17);
  }

  else
  {
    (*(v29 + 56))(v37, 1, 1, v28, v11);
  }

  if (displayDateCopy)
  {
    v16 = displayDateCopy;
    v15 = displayDateCopy;
    sub_214CCD224();
    (*(v29 + 32))(v35, v32, v28);
    (*(v29 + 56))(v35, 0, 1, v28);
    v13 = MEMORY[0x277D82BD8](v15);
  }

  else
  {
    (*(v29 + 56))(v35, 1, 1, v28, v12);
  }

  if (lCopy)
  {
    v14[1] = lCopy;
    v14[0] = lCopy;
    sub_214CCD124();
    (*(v21 + 32))(v27, v24, v20);
    (*(v21 + 56))(v27, 0, 1, v20);
    MEMORY[0x277D82BD8](v14[0]);
  }

  else
  {
    (*(v21 + 56))(v27, 1, 1, v20, v13);
  }

  MUILastSeenBucketHelper.categoryCloudStorage(_:didChangeLastSeenDate:lastSeenDisplay:forCategoryType:inMailboxWithExternalURL:originator:)(storageCopy, v37, v35, typeCopy, v27, originatorCopy);
  sub_214B6807C(v27);
  sub_214A871C0(v35);
  sub_214A871C0(v37);
  MEMORY[0x277D82BD8](selfCopy);
  MEMORY[0x277D82BD8](typeCopy);
  MEMORY[0x277D82BD8](storageCopy);
}

- (void)clearSessionState
{
  MEMORY[0x277D82BE0](self);
  MUILastSeenBucketHelper.clearState()();
  MEMORY[0x277D82BD8](self);
}

- (id)lastSeenDatesForBucket:(int64_t)bucket
{
  MEMORY[0x277D82BE0](self);
  v6 = MUILastSeenBucketHelper.lastSeenDates(for:)(bucket);
  MEMORY[0x277D82BD8](self);

  return v6;
}

- (void)setlastSeenDates:(id)dates forBucket:(int64_t)bucket
{
  MEMORY[0x277D82BE0](dates);
  MEMORY[0x277D82BE0](self);
  MUILastSeenBucketHelper.setlastSeenDates(_:for:)(dates, bucket);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](dates);
}

- (void)updateLastSeenDates:(id)dates forMailboxes:(id)mailboxes bucket:(int64_t)bucket
{
  MEMORY[0x277D82BE0](dates);
  MEMORY[0x277D82BE0](mailboxes);
  MEMORY[0x277D82BE0](self);
  sub_214A63684();
  v7 = sub_214CCF7E4();
  MUILastSeenBucketHelper.updateLastSeenDates(_:forMailboxes:bucket:)(dates, v7, bucket);

  MEMORY[0x277D82BD8](mailboxes);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](dates);
}

@end