@interface IMDCollaborationNoticeStore
- (IMDCollaborationNoticeStore)init;
- (id)deleteAllNoticesWithCollaborationIdentifier:(id)a3;
- (id)deleteNotice:(id)a3;
- (id)deleteNoticeWithGUIDString:(id)a3;
- (id)noticesForURLs:(id)a3;
- (void)deleteNoticesForURLs:(id)a3;
- (void)saveNotice:(id)a3;
@end

@implementation IMDCollaborationNoticeStore

- (void)saveNotice:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22B7B9200(v4);
}

- (id)noticesForURLs:(id)a3
{
  sub_22B7DA828();
  v4 = sub_22B7DB918();
  v5 = self;
  v6 = sub_22B7B9AFC(v4);

  if (v6)
  {
    sub_22B4D01A0(0, &qword_27D8CFB10, 0x277D1A938);
    v7 = sub_22B7DB8F8();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)deleteNotice:(id)a3
{
  v5 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = a3;
  v10 = self;
  v11 = [v9 guidString];
  v12 = sub_22B7DB6A8();
  v14 = v13;

  sub_22B7BABDC(v12, v14, v8);

  v15 = sub_22B7DA828();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v8, 1, v15);
  v18 = 0;
  if (v17 != 1)
  {
    v19 = sub_22B7DA788();
    (*(v16 + 8))(v8, v15);
    v18 = v19;
  }

  return v18;
}

- (id)deleteNoticeWithGUIDString:(id)a3
{
  v4 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_22B7DB6A8();
  v10 = v9;
  v11 = self;
  sub_22B7BABDC(v8, v10, v7);

  v12 = sub_22B7DA828();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v7, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_22B7DA788();
    (*(v13 + 8))(v7, v12);
    v15 = v16;
  }

  return v15;
}

- (id)deleteAllNoticesWithCollaborationIdentifier:(id)a3
{
  v4 = sub_22B7DB6A8();
  v6 = v5;
  v7 = self;
  sub_22B7BB4EC(v4, v6);

  v8 = sub_22B7DB8F8();

  return v8;
}

- (void)deleteNoticesForURLs:(id)a3
{
  sub_22B7DA828();
  v4 = sub_22B7DB918();
  v5 = self;
  sub_22B7BBD60(v4);
}

- (IMDCollaborationNoticeStore)init
{
  *(&self->super.isa + OBJC_IVAR___IMDCollaborationNoticeStore____lazy_storage___persistenceContainer) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CollaborationNoticeStore();
  return [(IMDCollaborationNoticeStore *)&v3 init];
}

@end