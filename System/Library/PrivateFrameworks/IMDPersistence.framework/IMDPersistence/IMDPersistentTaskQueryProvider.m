@interface IMDPersistentTaskQueryProvider
+ (BOOL)_shouldExplainQueryPlans;
+ (void)_notifyPTasksUpdatedImmediately:(BOOL)a3;
- (BOOL)isBlocking;
- (IMDPersistentTaskQueryProvider)initWithBlockingDatabaseCalls:(BOOL)a3;
- (void)_performHandoffBlock:(id)a3 delay:(double)a4;
- (void)clearAllTasksInLane:(unint64_t)a3 flags:(id)a4 completionBlock:(id)a5;
- (void)clearTasksWithRowIDs:(id)a3 completionBlock:(id)a4;
- (void)incrementRetryCountForTasksWithRowIDs:(id)a3 completionBlock:(id)a4;
- (void)loadPTaskReportsForGroups:(id)a3 excludingReasons:(id)a4 loadFullReports:(BOOL)a5 completionBlock:(id)a6;
- (void)loadPTasksWithPredicate:(id)a3 sortDescriptors:(id)a4 limit:(int64_t)a5 completionBlock:(id)a6;
- (void)loadRecentTasksWithFlags:(id)a3 groups:(id)a4 lanes:(id)a5 excludingReasons:(id)a6 limit:(int64_t)a7 completionBlock:(id)a8;
- (void)remainingPTaskGUIDsFromGUIDs:(id)a3 flag:(unint64_t)a4 lane:(unint64_t)a5 completionBlock:(id)a6;
- (void)resumeReindexSchedulingWithCompletionBlock:(id)a3;
- (void)scheduleFullReindexWithContext:(id)a3 completionBlock:(id)a4;
- (void)scheduleGUIDs:(id)a3 flag:(unint64_t)a4 lane:(unint64_t)a5 reason:(int64_t)a6 userInfo:(id)a7 completionBlock:(id)a8;
- (void)scheduleMessageGUIDsInChatRowIDs:(id)a3 afterDate:(id)a4 flag:(unint64_t)a5 lane:(unint64_t)a6 reason:(int64_t)a7 completionBlock:(id)a8;
- (void)scheduleMessageGUIDsUpToLimit:(int64_t)a3 flag:(unint64_t)a4 lane:(unint64_t)a5 reason:(int64_t)a6 userInfo:(id)a7 completionBlock:(id)a8;
- (void)storeTasks:(id)a3;
- (void)suspendReindexSchedulingWithCompletionBlock:(id)a3;
@end

@implementation IMDPersistentTaskQueryProvider

- (IMDPersistentTaskQueryProvider)initWithBlockingDatabaseCalls:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = IMDPersistentTaskQueryProvider;
  result = [(IMDPersistentTaskQueryProvider *)&v5 init];
  if (result)
  {
    result->_isBlocking = a3;
  }

  return result;
}

- (BOOL)isBlocking
{
  if (self->_isBlocking)
  {
    return 1;
  }

  else
  {
    return IMIsRunningInUnitTesting();
  }
}

- (void)_performHandoffBlock:(id)a3 delay:(double)a4
{
  v8 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, a3);
  if (a4 == 0.0)
  {
    isBlocking = objc_msgSend_isBlocking(self, v6, v7);
    IMDPersistencePerformBlockWithHandoffIfNeeded(v8, isBlocking, v14);
  }

  else
  {
    v9 = objc_msgSend_currentConnection(MEMORY[0x1E696B0B8], v6, v7);

    if (v9)
    {
      if (qword_1EBA53F08 != -1)
      {
        sub_1B7CEE50C();
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1B7B31750;
      block[3] = &unk_1E7CB6A70;
      *&block[4] = a4;
      dispatch_async(qword_1EBA53F00, block);
      v10 = MEMORY[0x1E696B0B8];
      v11 = qword_1EBA53F00;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1B7B317C0;
      v17[3] = &unk_1E7CB7F60;
      v17[4] = self;
      v18 = v8;
      objc_msgSend__handoffCurrentReplyToQueue_block_(v10, v12, v11, v17);
    }

    else
    {
      v15 = dispatch_time(0, (a4 * 1000000000.0));
      v16 = _IMDPersistenceGetThreadedStoreQueue();
      dispatch_after(v15, v16, v8);
    }
  }
}

+ (void)_notifyPTasksUpdatedImmediately:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B318D0;
  v3[3] = &unk_1E7CB7FB0;
  v5 = a3;
  v4 = &unk_1F2F9FCD0;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

+ (BOOL)_shouldExplainQueryPlans
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, v2);
  if (objc_msgSend_isInternalInstall(v3, v4, v5))
  {
    v6 = IMGetDomainBoolForKey();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)storeTasks:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_1B7AEE088(0, &qword_1EDBE5A20, off_1E7CB5138);
  v5 = sub_1B7CFECE0();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = ObjectType;
  v11[4] = sub_1B7C3D8AC;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B7AE14D0;
  v11[3] = &unk_1F2FA40D0;
  v7 = _Block_copy(v11);
  v8 = self;

  v9 = [(IMDPersistentTaskQueryProvider *)v8 isBlocking];
  IMDPersistencePerformBlock(v7, v9, v10);

  _Block_release(v7);
}

- (void)clearTasksWithRowIDs:(id)a3 completionBlock:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v6 = sub_1B7CFECE0();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = sub_1B7C3D8F4;
  v8[4] = v7;
  v11[4] = sub_1B7C3D8A0;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B7AE14D0;
  v11[3] = &unk_1F2FA4080;
  v9 = _Block_copy(v11);
  v10 = self;

  [(IMDPersistentTaskQueryProvider *)v10 _performHandoffBlock:v9];

  _Block_release(v9);
}

- (void)loadRecentTasksWithFlags:(id)a3 groups:(id)a4 lanes:(id)a5 excludingReasons:(id)a6 limit:(int64_t)a7 completionBlock:(id)a8
{
  v12 = _Block_copy(a8);
  if (a3)
  {
    sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
    a3 = sub_1B7CFECE0();
  }

  if (a4)
  {
    sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
    a4 = sub_1B7CFECE0();
  }

  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v13 = sub_1B7CFECE0();
  v14 = sub_1B7CFECE0();
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = v13;
  v16[5] = v14;
  v16[6] = a7;
  v16[7] = self;
  v16[8] = sub_1B7C3D950;
  v16[9] = v15;
  v19[4] = sub_1B7C3D86C;
  v19[5] = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1B7AE14D0;
  v19[3] = &unk_1F2FA4008;
  v17 = _Block_copy(v19);
  v18 = self;

  [(IMDPersistentTaskQueryProvider *)v18 _performHandoffBlock:v17];

  _Block_release(v17);
}

- (void)loadPTaskReportsForGroups:(id)a3 excludingReasons:(id)a4 loadFullReports:(BOOL)a5 completionBlock:(id)a6
{
  v10 = _Block_copy(a6);
  if (a3)
  {
    sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
    a3 = sub_1B7CFECE0();
  }

  if (a4)
  {
    sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
    v11 = sub_1B7CFECE0();
  }

  else
  {
    v11 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = self;
  *(v13 + 32) = a3;
  *(v13 + 40) = v11;
  *(v13 + 48) = sub_1B7C3D7A8;
  *(v13 + 56) = v12;
  v16[4] = sub_1B7C3D7D4;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1B7AE14D0;
  v16[3] = &unk_1F2FA3F90;
  v14 = _Block_copy(v16);
  v15 = self;

  [(IMDPersistentTaskQueryProvider *)v15 _performHandoffBlock:v14];

  _Block_release(v14);
}

- (void)scheduleMessageGUIDsInChatRowIDs:(id)a3 afterDate:(id)a4 flag:(unint64_t)a5 lane:(unint64_t)a6 reason:(int64_t)a7 completionBlock:(id)a8
{
  v28 = a6;
  v29 = a7;
  v27 = a5;
  v31 = self;
  ObjectType = swift_getObjectType();
  v9 = sub_1B7CFE120();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v16 = _Block_copy(a8);
  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v26 = sub_1B7CFECE0();
  sub_1B7CFE0F0();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v28;
  *(v21 + 2) = v27;
  *(v21 + 3) = v22;
  *(v21 + 4) = v29;
  (*(v10 + 32))(&v21[v18], v13, v9);
  *&v21[v19] = v26;
  v23 = &v21[v20];
  *v23 = sub_1B7C3D8F4;
  v23[1] = v17;
  *&v21[(v20 + 23) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
  aBlock[4] = sub_1B7C3D6F8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7AE14D0;
  aBlock[3] = &unk_1F2FA3F18;
  v24 = _Block_copy(aBlock);
  v25 = v31;

  [(IMDPersistentTaskQueryProvider *)v25 _performHandoffBlock:v24];
  _Block_release(v24);

  (*(v10 + 8))(v15, v9);
}

- (void)incrementRetryCountForTasksWithRowIDs:(id)a3 completionBlock:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v6 = sub_1B7CFECE0();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = sub_1B7C3D8F4;
  v8[4] = v7;
  v11[4] = sub_1B7C3D6EC;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B7AE14D0;
  v11[3] = &unk_1F2FA3EA0;
  v9 = _Block_copy(v11);
  v10 = self;

  [(IMDPersistentTaskQueryProvider *)v10 _performHandoffBlock:v9];

  _Block_release(v9);
}

- (void)scheduleFullReindexWithContext:(id)a3 completionBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = self;
  v8[4] = sub_1B7C3D8F4;
  v8[5] = v7;
  v14[4] = sub_1B7C3D690;
  v14[5] = v8;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1B7AE14D0;
  v14[3] = &unk_1F2FA3D88;
  v9 = _Block_copy(v14);
  v10 = a3;
  v11 = self;
  v12 = v10;
  v13 = v11;

  [(IMDPersistentTaskQueryProvider *)v13 _performHandoffBlock:v9];

  _Block_release(v9);
}

- (void)resumeReindexSchedulingWithCompletionBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1B7C3B758(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)suspendReindexSchedulingWithCompletionBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = self;
  sub_1B7C36318();
  v4[2](v4);

  _Block_release(v4);
}

- (void)scheduleMessageGUIDsUpToLimit:(int64_t)a3 flag:(unint64_t)a4 lane:(unint64_t)a5 reason:(int64_t)a6 userInfo:(id)a7 completionBlock:(id)a8
{
  v14 = _Block_copy(a8);
  if (a7)
  {
    v15 = sub_1B7CFE990();
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a3;
  v17[7] = self;
  v17[8] = sub_1B7C3D8F0;
  v17[9] = v16;
  v20[4] = sub_1B7C3D4F4;
  v20[5] = v17;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1B7AE14D0;
  v20[3] = &unk_1F2FA3C70;
  v18 = _Block_copy(v20);
  v19 = self;

  [(IMDPersistentTaskQueryProvider *)v19 _performHandoffBlock:v18];

  _Block_release(v18);
}

- (void)scheduleGUIDs:(id)a3 flag:(unint64_t)a4 lane:(unint64_t)a5 reason:(int64_t)a6 userInfo:(id)a7 completionBlock:(id)a8
{
  v13 = _Block_copy(a8);
  v14 = sub_1B7CFECE0();
  if (a7)
  {
    a7 = sub_1B7CFE990();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = self;
  sub_1B7C36E10(v14, a4, a5, a6, a7, sub_1B7C14DEC, v15);
}

- (void)clearAllTasksInLane:(unint64_t)a3 flags:(id)a4 completionBlock:(id)a5
{
  v7 = _Block_copy(a5);
  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v8 = sub_1B7CFECE0();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v8;
  v10[4] = self;
  v10[5] = sub_1B7AF5954;
  v10[6] = v9;
  v13[4] = sub_1B7C3D370;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B7AE14D0;
  v13[3] = &unk_1F2F9F730;
  v11 = _Block_copy(v13);
  v12 = self;

  [(IMDPersistentTaskQueryProvider *)v12 _performHandoffBlock:v11];

  _Block_release(v11);
}

- (void)remainingPTaskGUIDsFromGUIDs:(id)a3 flag:(unint64_t)a4 lane:(unint64_t)a5 completionBlock:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = sub_1B7CFECE0();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = sub_1B7C3D35C;
  v10[4] = v9;
  v13[4] = sub_1B7C3D364;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B7AE14D0;
  v13[3] = &unk_1F2FA3AB8;
  v11 = _Block_copy(v13);
  v12 = self;

  [(IMDPersistentTaskQueryProvider *)v12 _performHandoffBlock:v11];

  _Block_release(v11);
}

- (void)loadPTasksWithPredicate:(id)a3 sortDescriptors:(id)a4 limit:(int64_t)a5 completionBlock:(id)a6
{
  v10 = _Block_copy(a6);
  if (a4)
  {
    sub_1B7AEE088(0, &unk_1EDBE5900, 0x1E696AEB0);
    a4 = sub_1B7CFECE0();
  }

  _Block_copy(v10);
  v11 = a3;
  v12 = self;
  sub_1B7C3C834(a3, a4, a5, v12, v10);
  _Block_release(v10);
  _Block_release(v10);
}

@end