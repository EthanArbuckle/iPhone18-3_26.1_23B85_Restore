@interface IMDBackgroundMessageProcessingController
- (id)_scheduler;
- (id)taskIdentifierForExecutorWithGroupName:(id)name lane:(unint64_t)lane;
- (void)addPersistentTaskExecutorMonitor:(id)monitor withID:(id)d;
- (void)removePersistentTaskExecutorMonitorWithID:(id)d;
- (void)resumeExecutorWithGroupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler;
- (void)runExecutorWithTaskLimit:(int64_t)limit groupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler;
@end

@implementation IMDBackgroundMessageProcessingController

- (id)_scheduler
{
  sharedScheduler = sub_22B677814();
  if (sharedScheduler)
  {
    sharedScheduler = sub_22B6775C8();
    if (sharedScheduler)
    {
      sharedScheduler = [sub_22B6775C8() sharedScheduler];
    }
  }

  return sharedScheduler;
}

- (void)resumeExecutorWithGroupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler
{
  v16[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

  if (isInternalInstall)
  {
    v12 = [(IMDBackgroundMessageProcessingController *)self taskIdentifierForExecutorWithGroupName:nameCopy lane:lane];
    if (v12)
    {
      _scheduler = [(IMDBackgroundMessageProcessingController *)self _scheduler];
      if (_scheduler)
      {
        v16[0] = v12;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
        [_scheduler forceRunActivities:v14];
      }

      handlerCopy[2](handlerCopy);
    }

    else
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)taskIdentifierForExecutorWithGroupName:(id)name lane:(unint64_t)lane
{
  v6 = sub_22B7DB6A8();
  v8 = v7;
  selfCopy = self;
  v10 = sub_22B75F538(v6, v8, lane);

  if (v10)
  {
    v11 = v10[31];
    v12 = v10[32];

    v10 = sub_22B7DB678();
  }

  return v10;
}

- (void)runExecutorWithTaskLimit:(int64_t)limit groupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler
{
  v10 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = sub_22B7DB6A8();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  selfCopy = self;
  _Block_copy(v14);
  v20 = sub_22B75F538(v15, v17, lane);

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
    v22[7] = limit;

    sub_22B77E3D4(0, 0, v13, &unk_22B7FB6C0, v22);
  }

  else
  {
    (*(v14 + 2))(v14, 1);

    _Block_release(v14);
  }
}

- (void)addPersistentTaskExecutorMonitor:(id)monitor withID:(id)d
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
  v14[5] = monitor;
  v14[6] = v10;
  v14[7] = v12;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22B77E3D4(0, 0, v9, &unk_22B7FB5F0, v14);
}

- (void)removePersistentTaskExecutorMonitorWithID:(id)d
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
  selfCopy = self;
  sub_22B77E3D4(0, 0, v7, &unk_22B7FB5D8, v12);
}

@end