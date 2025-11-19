@interface GTMTLReplayActivityLog
- (GTMTLReplayActivityLog)initWithLog:(id)a3;
- (id)description;
- (id)getBreadcrumbSummary;
- (id)getBreadcrumbsAsJSON;
- (id)init:(BOOL)a3;
- (void)enterActivity:(id)a3;
- (void)enterArgumentBufferDownload;
- (void)enterArgumentBufferUpload;
- (void)enterCollectCounters:(id)a3 statLocations:(unint64_t)a4 withIndex:(unint64_t)a5;
- (void)enterDebugFuncStopFromIndex:(id)a3 toIndex:(id)a4;
- (void)enterDisplayAttachmentAtIndex:(id)a3;
- (void)enterHarvestResourceObjectWithAttributes:(id)a3;
- (void)enterLoadArchiveWithPath:(id)a3;
- (void)enterMessage:(id)a3;
- (void)enterOptimizeRestores;
- (void)enterRewind;
- (void)leaveActivity;
- (void)logActivitiesToFile:(id)a3;
- (void)logCommandBuffer:(id)a3 atIndex:(unsigned int)a4;
- (void)logCommandBuffer:(id)a3 withKey:(unint64_t)a4;
- (void)logMTL4Queue:(id)a3 commit:(id)a4 options:(id)a5 atIndex:(unsigned int)a6;
- (void)logMTL4Queue:(id)a3 commit:(id)a4 options:(id)a5 withKeys:(id)a6;
@end

@implementation GTMTLReplayActivityLog

- (void)enterOptimizeRestores
{
  v3 = [[GTMTLReplayActivity alloc] initWithType:@"optimizeRestores"];
  [(GTMTLReplayActivityLog *)self enterActivity:v3];
}

- (void)enterDisplayAttachmentAtIndex:(id)a3
{
  v4 = [[GTMTLReplayActivityDisplayAttachment alloc] initWithIndex:a3];
  [(GTMTLReplayActivityLog *)self enterActivity:v4];
}

- (void)enterCollectCounters:(id)a3 statLocations:(unint64_t)a4 withIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = [[GTMTLReplayActivityCollectCounters alloc] initWithCounters:v8 statLocations:a4 index:a5];

  [(GTMTLReplayActivityLog *)self enterActivity:v9];
}

- (void)enterDebugFuncStopFromIndex:(id)a3 toIndex:(id)a4
{
  v5 = [[GTMTLReplayActivityDebugFuncStop alloc] initWithCurrentIndex:a3 targetIndex:a4];
  [(GTMTLReplayActivityLog *)self enterActivity:v5];
}

- (void)enterArgumentBufferDownload
{
  v3 = [[GTMTLReplayActivity alloc] initWithType:@"argumentBufferDownload"];
  [(GTMTLReplayActivityLog *)self enterActivity:v3];
}

- (void)enterArgumentBufferUpload
{
  v3 = [[GTMTLReplayActivity alloc] initWithType:@"argumentBufferUpload"];
  [(GTMTLReplayActivityLog *)self enterActivity:v3];
}

- (void)enterRewind
{
  v3 = [[GTMTLReplayActivity alloc] initWithType:@"rewind"];
  [(GTMTLReplayActivityLog *)self enterActivity:v3];
}

- (void)enterHarvestResourceObjectWithAttributes:(id)a3
{
  v4 = a3;
  v5 = [[GTMTLReplayActivityHarvestResourceObject alloc] initWithAttributes:v4];

  [(GTMTLReplayActivityLog *)self enterActivity:v5];
}

- (void)enterLoadArchiveWithPath:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  gputracePath = self->_gputracePath;
  self->_gputracePath = v4;
  v6 = v4;

  os_unfair_lock_unlock(&self->_lock);
  v7 = [[GTMTLReplayActivityLoadArchive alloc] initWithPath:v6];

  [(GTMTLReplayActivityLog *)self enterActivity:v7];
}

- (void)enterMessage:(id)a3
{
  v4 = a3;
  v5 = [[GTMTLReplayActivityMessage alloc] initWithMessage:v4];

  [(GTMTLReplayActivityLog *)self enterActivity:v5];
}

- (void)leaveActivity
{
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_lastBreadcrumb;
  v3 = [(GTMTLReplayActivity *)v6 previousActivity];
  lastBreadcrumb = self->_lastBreadcrumb;
  self->_lastBreadcrumb = v3;

  if (!self->_lastBreadcrumb && self->_retainActivityLog)
  {
    v5 = [(GTMTLReplayActivity *)v6 copy];

    [(GTMTLReplayActivity *)v5 setEndTime:mach_absolute_time()];
    [(GTMTLReplayActivity *)v5 setPreviousActivity:self->_lastActivity];
    objc_storeStrong(&self->_lastActivity, v5);
    v6 = v5;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)enterActivity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(GTMTLReplayActivity *)v4 setPreviousActivity:self->_lastBreadcrumb];
  lastBreadcrumb = self->_lastBreadcrumb;
  self->_lastBreadcrumb = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)getBreadcrumbsAsJSON
{
  os_unfair_lock_lock(&self->_lock);
  v3 = ArrayFromActivities(self->_lastBreadcrumb, 1);
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:3 error:0];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)getBreadcrumbSummary
{
  os_unfair_lock_lock(&self->_lock);
  v3 = BreadcrumbSummary(self->_lastBreadcrumb);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)logMTL4Queue:(id)a3 commit:(id)a4 options:(id)a5 atIndex:(unsigned int)a6
{
  v9 = a3;
  if (v9)
  {
    v10 = a5;
    os_unfair_lock_lock(&self->_lock);
    v11 = self->_gputracePath;
    v12 = self->_lastBreadcrumb;
    v13 = self->_lastActivity;
    [(GTMTLReplayActivity *)v12 signpostIntervalBegin:os_signpost_id_make_with_pointer(g_signpostLog, v9)];
    os_unfair_lock_unlock(&self->_lock);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__GTMTLReplayActivityLog_logMTL4Queue_commit_options_atIndex___block_invoke;
    v17[3] = &unk_279657F78;
    v23 = a6;
    v18 = v9;
    v19 = v12;
    v20 = v11;
    v21 = self;
    v22 = v13;
    v14 = v13;
    v15 = v11;
    v16 = v12;
    [v10 addFeedbackHandler:v17];
  }
}

void __62__GTMTLReplayActivityLog_logMTL4Queue_commit_options_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = g_signpostLog;
  v5 = os_signpost_id_make_with_pointer(g_signpostLog, *(a1 + 32));
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      v7 = [v3 error];
      *buf = 134217984;
      v21 = [v7 code];
      _os_signpost_emit_with_name_impl(&dword_24D764000, v4, OS_SIGNPOST_INTERVAL_END, v6, "Replayer-3-commandQueue", "%lu", buf, 0xCu);
    }
  }

  v8 = [v3 error];

  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*(a1 + 72), @"GTErrorKeyFunctionIndex"}];
    v19[0] = v9;
    v18[1] = @"GTErrorKeyMTL4CommitFeedback";
    v10 = GTMTLReplay_dictionaryFromCommitFeedback(v3);
    v19[1] = v10;
    v18[2] = @"GTErrorKeyReplayerContext";
    v11 = BreadcrumbSummary(*(a1 + 40));
    v19[2] = v11;
    v18[3] = @"GTErrorKeyReplayerBreadcrumbs";
    v12 = ArrayFromActivities(*(a1 + 40), 1);
    v13 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v12 options:3 error:0];
    v19[3] = v13;
    v18[4] = @"GTErrorKeyGputracePath";
    v14 = *(a1 + 48);
    v15 = v14;
    if (!v14)
    {
      v15 = [MEMORY[0x277CBEB68] null];
    }

    v19[4] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
    if (!v14)
    {
    }

    [*(a1 + 56) logActivitiesToFile:*(a1 + 64)];
    GTMTLReplay_handleMTL4CommitFeedbackError(v3, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)logMTL4Queue:(id)a3 commit:(id)a4 options:(id)a5 withKeys:(id)a6
{
  v9 = a3;
  v10 = a6;
  if (v9)
  {
    v11 = a5;
    os_unfair_lock_lock(&self->_lock);
    v12 = self->_gputracePath;
    v13 = self->_lastBreadcrumb;
    v14 = self->_lastActivity;
    [(GTMTLReplayActivity *)v13 signpostIntervalBegin:os_signpost_id_make_with_pointer(g_signpostLog, v9)];
    os_unfair_lock_unlock(&self->_lock);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __63__GTMTLReplayActivityLog_logMTL4Queue_commit_options_withKeys___block_invoke;
    v18[3] = &unk_279657F50;
    v19 = v9;
    v20 = v10;
    v21 = v13;
    v22 = v12;
    v23 = self;
    v24 = v14;
    v15 = v14;
    v16 = v12;
    v17 = v13;
    [v11 addFeedbackHandler:v18];
  }
}

void __63__GTMTLReplayActivityLog_logMTL4Queue_commit_options_withKeys___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = g_signpostLog;
  v5 = os_signpost_id_make_with_pointer(g_signpostLog, *(a1 + 32));
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      v7 = [v3 error];
      *buf = 134217984;
      v20 = [v7 code];
      _os_signpost_emit_with_name_impl(&dword_24D764000, v4, OS_SIGNPOST_INTERVAL_END, v6, "Replayer-3-commandQueue", "%lu", buf, 0xCu);
    }
  }

  v8 = [v3 error];

  if (v8)
  {
    v18[0] = *(a1 + 40);
    v17[0] = @"GTErrorKeyTraceStreamID";
    v17[1] = @"GTErrorKeyMTL4CommitFeedback";
    v9 = GTMTLReplay_dictionaryFromCommitFeedback(v3);
    v18[1] = v9;
    v17[2] = @"GTErrorKeyReplayerContext";
    v10 = BreadcrumbSummary(*(a1 + 48));
    v18[2] = v10;
    v17[3] = @"GTErrorKeyReplayerBreadcrumbs";
    v11 = ArrayFromActivities(*(a1 + 48), 1);
    v12 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v11 options:3 error:{0, @"GTErrorKeyTraceStreamID", @"GTErrorKeyMTL4CommitFeedback", @"GTErrorKeyReplayerContext", @"GTErrorKeyReplayerBreadcrumbs"}];
    v18[3] = v12;
    v17[4] = @"GTErrorKeyGputracePath";
    v13 = *(a1 + 56);
    v14 = v13;
    if (!v13)
    {
      v14 = [MEMORY[0x277CBEB68] null];
    }

    v18[4] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
    if (!v13)
    {
    }

    [*(a1 + 64) logActivitiesToFile:*(a1 + 72)];
    GTMTLReplay_handleMTL4CommitFeedbackError(v3, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)logCommandBuffer:(id)a3 withKey:(unint64_t)a4
{
  if (a3)
  {
    v6 = a3;
    os_unfair_lock_lock(&self->_lock);
    v7 = self->_gputracePath;
    v8 = self->_lastBreadcrumb;
    v9 = self->_lastActivity;
    [(GTMTLReplayActivity *)v8 signpostIntervalBegin:os_signpost_id_make_with_pointer(g_signpostLog, v6)];
    os_unfair_lock_unlock(&self->_lock);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__GTMTLReplayActivityLog_logCommandBuffer_withKey___block_invoke;
    v13[3] = &unk_279657F28;
    v17 = v9;
    v18 = a4;
    v14 = v8;
    v15 = v7;
    v16 = self;
    v10 = v9;
    v11 = v7;
    v12 = v8;
    [v6 addCompletedHandler:v13];
  }
}

void __51__GTMTLReplayActivityLog_logCommandBuffer_withKey___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = g_signpostLog;
  v5 = os_signpost_id_make_with_pointer(g_signpostLog, v3);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 134217984;
      v19 = [v3 status];
      _os_signpost_emit_with_name_impl(&dword_24D764000, v4, OS_SIGNPOST_INTERVAL_END, v6, "Replayer-3-commandQueue", "%lu", buf, 0xCu);
    }
  }

  if ([v3 status] == 5)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*(a1 + 64), @"GTErrorKeyTraceStreamID"}];
    v17[0] = v7;
    v16[1] = @"GTErrorKeyMTLCommandBuffer";
    v8 = GTMTLReplay_dictionaryFromCommandBuffer(v3);
    v17[1] = v8;
    v16[2] = @"GTErrorKeyReplayerContext";
    v9 = BreadcrumbSummary(*(a1 + 32));
    v17[2] = v9;
    v16[3] = @"GTErrorKeyReplayerBreadcrumbs";
    v10 = ArrayFromActivities(*(a1 + 32), 1);
    v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:3 error:0];
    v17[3] = v11;
    v16[4] = @"GTErrorKeyGputracePath";
    v12 = *(a1 + 40);
    v13 = v12;
    if (!v12)
    {
      v13 = [MEMORY[0x277CBEB68] null];
    }

    v17[4] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
    if (!v12)
    {
    }

    [*(a1 + 48) logActivitiesToFile:*(a1 + 56)];
    GTMTLReplay_handleCommandBufferError(v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)logCommandBuffer:(id)a3 atIndex:(unsigned int)a4
{
  if (a3)
  {
    v6 = a3;
    os_unfair_lock_lock(&self->_lock);
    v7 = self->_gputracePath;
    v8 = self->_lastBreadcrumb;
    v9 = self->_lastActivity;
    [(GTMTLReplayActivity *)v8 signpostIntervalBegin:os_signpost_id_make_with_pointer(g_signpostLog, v6)];
    os_unfair_lock_unlock(&self->_lock);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__GTMTLReplayActivityLog_logCommandBuffer_atIndex___block_invoke;
    v13[3] = &unk_279657F00;
    v18 = a4;
    v14 = v8;
    v15 = v7;
    v16 = self;
    v17 = v9;
    v10 = v9;
    v11 = v7;
    v12 = v8;
    [v6 addCompletedHandler:v13];
  }
}

void __51__GTMTLReplayActivityLog_logCommandBuffer_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = g_signpostLog;
  v5 = os_signpost_id_make_with_pointer(g_signpostLog, v3);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 134217984;
      v19 = [v3 status];
      _os_signpost_emit_with_name_impl(&dword_24D764000, v4, OS_SIGNPOST_INTERVAL_END, v6, "Replayer-3-commandQueue", "%lu", buf, 0xCu);
    }
  }

  if ([v3 status] == 5)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*(a1 + 64), @"GTErrorKeyFunctionIndex"}];
    v17[0] = v7;
    v16[1] = @"GTErrorKeyMTLCommandBuffer";
    v8 = GTMTLReplay_dictionaryFromCommandBuffer(v3);
    v17[1] = v8;
    v16[2] = @"GTErrorKeyReplayerContext";
    v9 = BreadcrumbSummary(*(a1 + 32));
    v17[2] = v9;
    v16[3] = @"GTErrorKeyReplayerBreadcrumbs";
    v10 = ArrayFromActivities(*(a1 + 32), 1);
    v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:3 error:0];
    v17[3] = v11;
    v16[4] = @"GTErrorKeyGputracePath";
    v12 = *(a1 + 40);
    v13 = v12;
    if (!v12)
    {
      v13 = [MEMORY[0x277CBEB68] null];
    }

    v17[4] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
    if (!v12)
    {
    }

    [*(a1 + 48) logActivitiesToFile:*(a1 + 56)];
    GTMTLReplay_handleCommandBufferError(v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)logActivitiesToFile:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = ArrayFromActivities(a3, 1);
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:3 error:0];

  v6 = objc_alloc(MEMORY[0x277CBEBC0]);
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 temporaryDirectory];
  v9 = [v6 initFileURLWithPath:@"GTMTLReplayActivityLog.json" relativeToURL:v8];

  [v5 writeToURL:v9 atomically:0];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = log;
    v12 = [v9 path];
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_24D764000, v11, OS_LOG_TYPE_INFO, "logPath:\t%{public}@", &v14, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = ArrayFromActivities(self->_lastBreadcrumb, 1);
  v4 = [v3 description];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (GTMTLReplayActivityLog)initWithLog:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GTMTLReplayActivityLog;
  v5 = [(GTMTLReplayActivityLog *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if (!v4)
    {
      v7 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v5->_log, v4[1]);
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_gputracePath, v4[2]);
    objc_storeStrong(&v6->_lastBreadcrumb, v4[3]);
    objc_storeStrong(&v6->_lastActivity, v4[4]);
    v6->_retainActivityLog = *(v4 + 40);
  }

  v7 = v6;
LABEL_6:

  return v7;
}

- (id)init:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = GTMTLReplayActivityLog;
  v4 = [(GTMTLReplayActivityLog *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_log, MEMORY[0x277D86220]);
    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_retainActivityLog = a3;
  }

  return v5;
}

@end