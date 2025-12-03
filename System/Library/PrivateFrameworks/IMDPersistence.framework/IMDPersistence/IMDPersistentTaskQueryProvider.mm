@interface IMDPersistentTaskQueryProvider
+ (BOOL)_shouldExplainQueryPlans;
+ (void)_notifyPTasksUpdatedImmediately:(BOOL)immediately;
- (BOOL)isBlocking;
- (IMDPersistentTaskQueryProvider)initWithBlockingDatabaseCalls:(BOOL)calls;
- (void)_performHandoffBlock:(id)block delay:(double)delay;
- (void)clearAllTasksInLane:(unint64_t)lane flags:(id)flags completionBlock:(id)block;
- (void)clearTasksWithRowIDs:(id)ds completionBlock:(id)block;
- (void)incrementRetryCountForTasksWithRowIDs:(id)ds completionBlock:(id)block;
- (void)loadPTaskReportsForGroups:(id)groups excludingReasons:(id)reasons loadFullReports:(BOOL)reports completionBlock:(id)block;
- (void)loadPTasksWithPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit completionBlock:(id)block;
- (void)loadRecentTasksWithFlags:(id)flags groups:(id)groups lanes:(id)lanes excludingReasons:(id)reasons limit:(int64_t)limit completionBlock:(id)block;
- (void)remainingPTaskGUIDsFromGUIDs:(id)ds flag:(unint64_t)flag lane:(unint64_t)lane completionBlock:(id)block;
- (void)resumeReindexSchedulingWithCompletionBlock:(id)block;
- (void)scheduleFullReindexWithContext:(id)context completionBlock:(id)block;
- (void)scheduleGUIDs:(id)ds flag:(unint64_t)flag lane:(unint64_t)lane reason:(int64_t)reason userInfo:(id)info completionBlock:(id)block;
- (void)scheduleMessageGUIDsInChatRowIDs:(id)ds afterDate:(id)date flag:(unint64_t)flag lane:(unint64_t)lane reason:(int64_t)reason completionBlock:(id)block;
- (void)scheduleMessageGUIDsUpToLimit:(int64_t)limit flag:(unint64_t)flag lane:(unint64_t)lane reason:(int64_t)reason userInfo:(id)info completionBlock:(id)block;
- (void)storeTasks:(id)tasks;
- (void)suspendReindexSchedulingWithCompletionBlock:(id)block;
@end

@implementation IMDPersistentTaskQueryProvider

- (IMDPersistentTaskQueryProvider)initWithBlockingDatabaseCalls:(BOOL)calls
{
  v5.receiver = self;
  v5.super_class = IMDPersistentTaskQueryProvider;
  result = [(IMDPersistentTaskQueryProvider *)&v5 init];
  if (result)
  {
    result->_isBlocking = calls;
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

- (void)_performHandoffBlock:(id)block delay:(double)delay
{
  v8 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  if (delay == 0.0)
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
      *&block[4] = delay;
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
      v15 = dispatch_time(0, (delay * 1000000000.0));
      v16 = _IMDPersistenceGetThreadedStoreQueue();
      dispatch_after(v15, v16, v8);
    }
  }
}

+ (void)_notifyPTasksUpdatedImmediately:(BOOL)immediately
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B318D0;
  v3[3] = &unk_1E7CB7FB0;
  immediatelyCopy = immediately;
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

- (void)storeTasks:(id)tasks
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
  selfCopy = self;

  isBlocking = [(IMDPersistentTaskQueryProvider *)selfCopy isBlocking];
  IMDPersistencePerformBlock(v7, isBlocking, v10);

  _Block_release(v7);
}

- (void)clearTasksWithRowIDs:(id)ds completionBlock:(id)block
{
  v5 = _Block_copy(block);
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
  selfCopy = self;

  [(IMDPersistentTaskQueryProvider *)selfCopy _performHandoffBlock:v9];

  _Block_release(v9);
}

- (void)loadRecentTasksWithFlags:(id)flags groups:(id)groups lanes:(id)lanes excludingReasons:(id)reasons limit:(int64_t)limit completionBlock:(id)block
{
  v12 = _Block_copy(block);
  if (flags)
  {
    sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
    flags = sub_1B7CFECE0();
  }

  if (groups)
  {
    sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
    groups = sub_1B7CFECE0();
  }

  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v13 = sub_1B7CFECE0();
  v14 = sub_1B7CFECE0();
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = swift_allocObject();
  v16[2] = flags;
  v16[3] = groups;
  v16[4] = v13;
  v16[5] = v14;
  v16[6] = limit;
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
  selfCopy = self;

  [(IMDPersistentTaskQueryProvider *)selfCopy _performHandoffBlock:v17];

  _Block_release(v17);
}

- (void)loadPTaskReportsForGroups:(id)groups excludingReasons:(id)reasons loadFullReports:(BOOL)reports completionBlock:(id)block
{
  v10 = _Block_copy(block);
  if (groups)
  {
    sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
    groups = sub_1B7CFECE0();
  }

  if (reasons)
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
  *(v13 + 16) = reports;
  *(v13 + 24) = self;
  *(v13 + 32) = groups;
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
  selfCopy = self;

  [(IMDPersistentTaskQueryProvider *)selfCopy _performHandoffBlock:v14];

  _Block_release(v14);
}

- (void)scheduleMessageGUIDsInChatRowIDs:(id)ds afterDate:(id)date flag:(unint64_t)flag lane:(unint64_t)lane reason:(int64_t)reason completionBlock:(id)block
{
  laneCopy = lane;
  reasonCopy = reason;
  flagCopy = flag;
  selfCopy = self;
  ObjectType = swift_getObjectType();
  v9 = sub_1B7CFE120();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v16 = _Block_copy(block);
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
  v22 = laneCopy;
  *(v21 + 2) = flagCopy;
  *(v21 + 3) = v22;
  *(v21 + 4) = reasonCopy;
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
  v25 = selfCopy;

  [(IMDPersistentTaskQueryProvider *)v25 _performHandoffBlock:v24];
  _Block_release(v24);

  (*(v10 + 8))(v15, v9);
}

- (void)incrementRetryCountForTasksWithRowIDs:(id)ds completionBlock:(id)block
{
  v5 = _Block_copy(block);
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
  selfCopy = self;

  [(IMDPersistentTaskQueryProvider *)selfCopy _performHandoffBlock:v9];

  _Block_release(v9);
}

- (void)scheduleFullReindexWithContext:(id)context completionBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = context;
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
  contextCopy = context;
  selfCopy = self;
  v12 = contextCopy;
  v13 = selfCopy;

  [(IMDPersistentTaskQueryProvider *)v13 _performHandoffBlock:v9];

  _Block_release(v9);
}

- (void)resumeReindexSchedulingWithCompletionBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_1B7C3B758(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)suspendReindexSchedulingWithCompletionBlock:(id)block
{
  v4 = _Block_copy(block);
  selfCopy = self;
  sub_1B7C36318();
  v4[2](v4);

  _Block_release(v4);
}

- (void)scheduleMessageGUIDsUpToLimit:(int64_t)limit flag:(unint64_t)flag lane:(unint64_t)lane reason:(int64_t)reason userInfo:(id)info completionBlock:(id)block
{
  v14 = _Block_copy(block);
  if (info)
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
  v17[3] = flag;
  v17[4] = lane;
  v17[5] = reason;
  v17[6] = limit;
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
  selfCopy = self;

  [(IMDPersistentTaskQueryProvider *)selfCopy _performHandoffBlock:v18];

  _Block_release(v18);
}

- (void)scheduleGUIDs:(id)ds flag:(unint64_t)flag lane:(unint64_t)lane reason:(int64_t)reason userInfo:(id)info completionBlock:(id)block
{
  v13 = _Block_copy(block);
  v14 = sub_1B7CFECE0();
  if (info)
  {
    info = sub_1B7CFE990();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  selfCopy = self;
  sub_1B7C36E10(v14, flag, lane, reason, info, sub_1B7C14DEC, v15);
}

- (void)clearAllTasksInLane:(unint64_t)lane flags:(id)flags completionBlock:(id)block
{
  v7 = _Block_copy(block);
  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v8 = sub_1B7CFECE0();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  v10[2] = lane;
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
  selfCopy = self;

  [(IMDPersistentTaskQueryProvider *)selfCopy _performHandoffBlock:v11];

  _Block_release(v11);
}

- (void)remainingPTaskGUIDsFromGUIDs:(id)ds flag:(unint64_t)flag lane:(unint64_t)lane completionBlock:(id)block
{
  v7 = _Block_copy(block);
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
  selfCopy = self;

  [(IMDPersistentTaskQueryProvider *)selfCopy _performHandoffBlock:v11];

  _Block_release(v11);
}

- (void)loadPTasksWithPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit completionBlock:(id)block
{
  v10 = _Block_copy(block);
  if (descriptors)
  {
    sub_1B7AEE088(0, &unk_1EDBE5900, 0x1E696AEB0);
    descriptors = sub_1B7CFECE0();
  }

  _Block_copy(v10);
  predicateCopy = predicate;
  selfCopy = self;
  sub_1B7C3C834(predicate, descriptors, limit, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);
}

@end