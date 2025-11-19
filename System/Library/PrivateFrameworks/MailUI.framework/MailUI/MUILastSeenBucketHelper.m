@interface MUILastSeenBucketHelper
- (id)lastSeenDatesForBucket:(int64_t)a3;
- (void)categoryCloudStorage:(id)a3 didChangeLastSeenDate:(id)a4 lastSeenDisplayDate:(id)a5 forCategoryType:(id)a6 inMailboxWithExternalURL:(id)a7 originator:(unint64_t)a8;
- (void)clearSessionState;
- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5;
- (void)setlastSeenDates:(id)a3 forBucket:(int64_t)a4;
- (void)updateLastSeenDates:(id)a3 forMailboxes:(id)a4 bucket:(int64_t)a5;
- (void)updateWithMailboxes:(id)a3;
@end

@implementation MUILastSeenBucketHelper

- (void)updateWithMailboxes:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214A63684();
  v4 = sub_214CCF7E4();
  MUILastSeenBucketHelper.update(mailboxes:)(v4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](self);
  MUILastSeenBucketHelper.messageRepository(_:query:countDidChange:)(a3, a4, a5);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
}

- (void)categoryCloudStorage:(id)a3 didChangeLastSeenDate:(id)a4 lastSeenDisplayDate:(id)a5 forCategoryType:(id)a6 inMailboxWithExternalURL:(id)a7 originator:(unint64_t)a8
{
  v41 = self;
  v33 = a3;
  v42 = a4;
  v38 = a5;
  v39 = a6;
  v40 = a7;
  v19 = a8;
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
  MEMORY[0x28223BE20](v33);
  v35 = v14 - v34;
  v36 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v37 = v14 - v36;
  MEMORY[0x277D82BE0](v10);
  MEMORY[0x277D82BE0](v42);
  MEMORY[0x277D82BE0](v38);
  MEMORY[0x277D82BE0](v39);
  MEMORY[0x277D82BE0](v40);
  v11 = MEMORY[0x277D82BE0](v41);
  if (v42)
  {
    v18 = v42;
    v17 = v42;
    sub_214CCD224();
    (*(v29 + 32))(v37, v32, v28);
    (*(v29 + 56))(v37, 0, 1, v28);
    v12 = MEMORY[0x277D82BD8](v17);
  }

  else
  {
    (*(v29 + 56))(v37, 1, 1, v28, v11);
  }

  if (v38)
  {
    v16 = v38;
    v15 = v38;
    sub_214CCD224();
    (*(v29 + 32))(v35, v32, v28);
    (*(v29 + 56))(v35, 0, 1, v28);
    v13 = MEMORY[0x277D82BD8](v15);
  }

  else
  {
    (*(v29 + 56))(v35, 1, 1, v28, v12);
  }

  if (v40)
  {
    v14[1] = v40;
    v14[0] = v40;
    sub_214CCD124();
    (*(v21 + 32))(v27, v24, v20);
    (*(v21 + 56))(v27, 0, 1, v20);
    MEMORY[0x277D82BD8](v14[0]);
  }

  else
  {
    (*(v21 + 56))(v27, 1, 1, v20, v13);
  }

  MUILastSeenBucketHelper.categoryCloudStorage(_:didChangeLastSeenDate:lastSeenDisplay:forCategoryType:inMailboxWithExternalURL:originator:)(v33, v37, v35, v39, v27, v19);
  sub_214B6807C(v27);
  sub_214A871C0(v35);
  sub_214A871C0(v37);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v33);
}

- (void)clearSessionState
{
  MEMORY[0x277D82BE0](self);
  MUILastSeenBucketHelper.clearState()();
  MEMORY[0x277D82BD8](self);
}

- (id)lastSeenDatesForBucket:(int64_t)a3
{
  MEMORY[0x277D82BE0](self);
  v6 = MUILastSeenBucketHelper.lastSeenDates(for:)(a3);
  MEMORY[0x277D82BD8](self);

  return v6;
}

- (void)setlastSeenDates:(id)a3 forBucket:(int64_t)a4
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  MUILastSeenBucketHelper.setlastSeenDates(_:for:)(a3, a4);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (void)updateLastSeenDates:(id)a3 forMailboxes:(id)a4 bucket:(int64_t)a5
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](self);
  sub_214A63684();
  v7 = sub_214CCF7E4();
  MUILastSeenBucketHelper.updateLastSeenDates(_:forMailboxes:bucket:)(a3, v7, a5);

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

@end