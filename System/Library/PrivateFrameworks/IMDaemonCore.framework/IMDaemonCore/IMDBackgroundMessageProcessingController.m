@interface IMDBackgroundMessageProcessingController
- (id)_scheduler;
- (id)taskIdentifierForExecutorWithGroupName:(id)a3 lane:(unint64_t)a4;
- (void)addPersistentTaskExecutorMonitor:(id)a3 withID:(id)a4;
- (void)removePersistentTaskExecutorMonitorWithID:(id)a3;
- (void)resumeExecutorWithGroupName:(id)a3 lane:(unint64_t)a4 completionHandler:(id)a5;
- (void)runExecutorWithTaskLimit:(int64_t)a3 groupName:(id)a4 lane:(unint64_t)a5 completionHandler:(id)a6;
@end

@implementation IMDBackgroundMessageProcessingController

- (id)_scheduler
{
  v2 = sub_22B677814();
  if (v2)
  {
    v2 = sub_22B6775C8();
    if (v2)
    {
      v2 = [sub_22B6775C8() sharedScheduler];
    }
  }

  return v2;
}

- (void)resumeExecutorWithGroupName:(id)a3 lane:(unint64_t)a4 completionHandler:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x277D19268] sharedInstance];
  v11 = [v10 isInternalInstall];

  if (v11)
  {
    v12 = [(IMDBackgroundMessageProcessingController *)self taskIdentifierForExecutorWithGroupName:v8 lane:a4];
    if (v12)
    {
      v13 = [(IMDBackgroundMessageProcessingController *)self _scheduler];
      if (v13)
      {
        v16[0] = v12;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
        [v13 forceRunActivities:v14];
      }

      v9[2](v9);
    }

    else
    {
      v9[2](v9);
    }
  }

  else
  {
    v9[2](v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)taskIdentifierForExecutorWithGroupName:(id)a3 lane:(unint64_t)a4
{
  v6 = sub_22B7DB6A8();
  v8 = v7;
  v9 = self;
  v10 = sub_22B75F538(v6, v8, a4);

  if (v10)
  {
    v11 = v10[31];
    v12 = v10[32];

    v10 = sub_22B7DB678();
  }

  return v10;
}

- (void)runExecutorWithTaskLimit:(int64_t)a3 groupName:(id)a4 lane:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(a6);
  v15 = sub_22B7DB6A8();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  v19 = self;
  _Block_copy(v14);
  v20 = sub_22B75F538(v15, v17, a5);

  if (v20)
  {
    _Block_release(v14);
    v21 = sub_22B7DBA58();
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = sub_22B74C9C0;
    v22[5] = v18;
    v22[6] = v20;
    v22[7] = a3;

    sub_22B77E3D4(0, 0, v13, &unk_22B7FB6C0, v22);
  }

  else
  {
    (*(v14 + 2))(v14, 1);

    _Block_release(v14);
  }
}

- (void)addPersistentTaskExecutorMonitor:(id)a3 withID:(id)a4
{
  v6 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_22B7DB6A8();
  v12 = v11;
  v13 = sub_22B7DBA58();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = a3;
  v14[6] = v10;
  v14[7] = v12;
  swift_unknownObjectRetain();
  v15 = self;
  sub_22B77E3D4(0, 0, v9, &unk_22B7FB5F0, v14);
}

- (void)removePersistentTaskExecutorMonitorWithID:(id)a3
{
  v4 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_22B7DB6A8();
  v10 = v9;
  v11 = sub_22B7DBA58();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = v8;
  v12[6] = v10;
  v13 = self;
  sub_22B77E3D4(0, 0, v7, &unk_22B7FB5D8, v12);
}

@end