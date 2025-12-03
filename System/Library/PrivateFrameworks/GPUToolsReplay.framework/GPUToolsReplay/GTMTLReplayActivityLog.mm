@interface GTMTLReplayActivityLog
- (GTMTLReplayActivityLog)initWithLog:(id)log;
- (id)description;
- (id)getBreadcrumbSummary;
- (id)getBreadcrumbsAsJSON;
- (id)init:(BOOL)init;
- (void)enterActivity:(id)activity;
- (void)enterArgumentBufferDownload;
- (void)enterArgumentBufferUpload;
- (void)enterCollectCounters:(id)counters statLocations:(unint64_t)locations withIndex:(unint64_t)index;
- (void)enterDebugFuncStopFromIndex:(id)index toIndex:(id)toIndex;
- (void)enterDisplayAttachmentAtIndex:(id)index;
- (void)enterHarvestResourceObjectWithAttributes:(id)attributes;
- (void)enterLoadArchiveWithPath:(id)path;
- (void)enterMessage:(id)message;
- (void)enterOptimizeRestores;
- (void)enterRewind;
- (void)leaveActivity;
- (void)logActivitiesToFile:(id)file;
- (void)logCommandBuffer:(id)buffer atIndex:(unsigned int)index;
- (void)logCommandBuffer:(id)buffer withKey:(unint64_t)key;
- (void)logMTL4Queue:(id)queue commit:(id)commit options:(id)options atIndex:(unsigned int)index;
- (void)logMTL4Queue:(id)queue commit:(id)commit options:(id)options withKeys:(id)keys;
@end

@implementation GTMTLReplayActivityLog

- (void)enterOptimizeRestores
{
  v3 = [[GTMTLReplayActivity alloc] initWithType:@"optimizeRestores"];
  [(GTMTLReplayActivityLog *)self enterActivity:v3];
}

- (void)enterDisplayAttachmentAtIndex:(id)index
{
  v4 = [[GTMTLReplayActivityDisplayAttachment alloc] initWithIndex:index];
  [(GTMTLReplayActivityLog *)self enterActivity:v4];
}

- (void)enterCollectCounters:(id)counters statLocations:(unint64_t)locations withIndex:(unint64_t)index
{
  countersCopy = counters;
  v9 = [[GTMTLReplayActivityCollectCounters alloc] initWithCounters:countersCopy statLocations:locations index:index];

  [(GTMTLReplayActivityLog *)self enterActivity:v9];
}

- (void)enterDebugFuncStopFromIndex:(id)index toIndex:(id)toIndex
{
  v5 = [[GTMTLReplayActivityDebugFuncStop alloc] initWithCurrentIndex:index targetIndex:toIndex];
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

- (void)enterHarvestResourceObjectWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [[GTMTLReplayActivityHarvestResourceObject alloc] initWithAttributes:attributesCopy];

  [(GTMTLReplayActivityLog *)self enterActivity:v5];
}

- (void)enterLoadArchiveWithPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock(&self->_lock);
  gputracePath = self->_gputracePath;
  self->_gputracePath = pathCopy;
  v6 = pathCopy;

  os_unfair_lock_unlock(&self->_lock);
  v7 = [[GTMTLReplayActivityLoadArchive alloc] initWithPath:v6];

  [(GTMTLReplayActivityLog *)self enterActivity:v7];
}

- (void)enterMessage:(id)message
{
  messageCopy = message;
  v5 = [[GTMTLReplayActivityMessage alloc] initWithMessage:messageCopy];

  [(GTMTLReplayActivityLog *)self enterActivity:v5];
}

- (void)leaveActivity
{
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_lastBreadcrumb;
  previousActivity = [(GTMTLReplayActivity *)v6 previousActivity];
  lastBreadcrumb = self->_lastBreadcrumb;
  self->_lastBreadcrumb = previousActivity;

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

- (void)enterActivity:(id)activity
{
  activityCopy = activity;
  os_unfair_lock_lock(&self->_lock);
  [(GTMTLReplayActivity *)activityCopy setPreviousActivity:self->_lastBreadcrumb];
  lastBreadcrumb = self->_lastBreadcrumb;
  self->_lastBreadcrumb = activityCopy;

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

- (void)logMTL4Queue:(id)queue commit:(id)commit options:(id)options atIndex:(unsigned int)index
{
  queueCopy = queue;
  if (queueCopy)
  {
    optionsCopy = options;
    os_unfair_lock_lock(&self->_lock);
    v11 = self->_gputracePath;
    v12 = self->_lastBreadcrumb;
    v13 = self->_lastActivity;
    [(GTMTLReplayActivity *)v12 signpostIntervalBegin:os_signpost_id_make_with_pointer(g_signpostLog, queueCopy)];
    os_unfair_lock_unlock(&self->_lock);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__GTMTLReplayActivityLog_logMTL4Queue_commit_options_atIndex___block_invoke;
    v17[3] = &unk_279657F78;
    indexCopy = index;
    v18 = queueCopy;
    v19 = v12;
    v20 = v11;
    selfCopy = self;
    v22 = v13;
    v14 = v13;
    v15 = v11;
    v16 = v12;
    [optionsCopy addFeedbackHandler:v17];
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

- (void)logMTL4Queue:(id)queue commit:(id)commit options:(id)options withKeys:(id)keys
{
  queueCopy = queue;
  keysCopy = keys;
  if (queueCopy)
  {
    optionsCopy = options;
    os_unfair_lock_lock(&self->_lock);
    v12 = self->_gputracePath;
    v13 = self->_lastBreadcrumb;
    v14 = self->_lastActivity;
    [(GTMTLReplayActivity *)v13 signpostIntervalBegin:os_signpost_id_make_with_pointer(g_signpostLog, queueCopy)];
    os_unfair_lock_unlock(&self->_lock);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __63__GTMTLReplayActivityLog_logMTL4Queue_commit_options_withKeys___block_invoke;
    v18[3] = &unk_279657F50;
    v19 = queueCopy;
    v20 = keysCopy;
    v21 = v13;
    v22 = v12;
    selfCopy = self;
    v24 = v14;
    v15 = v14;
    v16 = v12;
    v17 = v13;
    [optionsCopy addFeedbackHandler:v18];
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

- (void)logCommandBuffer:(id)buffer withKey:(unint64_t)key
{
  if (buffer)
  {
    bufferCopy = buffer;
    os_unfair_lock_lock(&self->_lock);
    v7 = self->_gputracePath;
    v8 = self->_lastBreadcrumb;
    v9 = self->_lastActivity;
    [(GTMTLReplayActivity *)v8 signpostIntervalBegin:os_signpost_id_make_with_pointer(g_signpostLog, bufferCopy)];
    os_unfair_lock_unlock(&self->_lock);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__GTMTLReplayActivityLog_logCommandBuffer_withKey___block_invoke;
    v13[3] = &unk_279657F28;
    v17 = v9;
    keyCopy = key;
    v14 = v8;
    v15 = v7;
    selfCopy = self;
    v10 = v9;
    v11 = v7;
    v12 = v8;
    [bufferCopy addCompletedHandler:v13];
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

- (void)logCommandBuffer:(id)buffer atIndex:(unsigned int)index
{
  if (buffer)
  {
    bufferCopy = buffer;
    os_unfair_lock_lock(&self->_lock);
    v7 = self->_gputracePath;
    v8 = self->_lastBreadcrumb;
    v9 = self->_lastActivity;
    [(GTMTLReplayActivity *)v8 signpostIntervalBegin:os_signpost_id_make_with_pointer(g_signpostLog, bufferCopy)];
    os_unfair_lock_unlock(&self->_lock);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__GTMTLReplayActivityLog_logCommandBuffer_atIndex___block_invoke;
    v13[3] = &unk_279657F00;
    indexCopy = index;
    v14 = v8;
    v15 = v7;
    selfCopy = self;
    v17 = v9;
    v10 = v9;
    v11 = v7;
    v12 = v8;
    [bufferCopy addCompletedHandler:v13];
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

- (void)logActivitiesToFile:(id)file
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = ArrayFromActivities(file, 1);
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:3 error:0];

  v6 = objc_alloc(MEMORY[0x277CBEBC0]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];
  v9 = [v6 initFileURLWithPath:@"GTMTLReplayActivityLog.json" relativeToURL:temporaryDirectory];

  [v5 writeToURL:v9 atomically:0];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = log;
    path = [v9 path];
    v14 = 138543362;
    v15 = path;
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

- (GTMTLReplayActivityLog)initWithLog:(id)log
{
  logCopy = log;
  v9.receiver = self;
  v9.super_class = GTMTLReplayActivityLog;
  v5 = [(GTMTLReplayActivityLog *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if (!logCopy)
    {
      v7 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v5->_log, logCopy[1]);
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_gputracePath, logCopy[2]);
    objc_storeStrong(&v6->_lastBreadcrumb, logCopy[3]);
    objc_storeStrong(&v6->_lastActivity, logCopy[4]);
    v6->_retainActivityLog = *(logCopy + 40);
  }

  v7 = v6;
LABEL_6:

  return v7;
}

- (id)init:(BOOL)init
{
  v7.receiver = self;
  v7.super_class = GTMTLReplayActivityLog;
  v4 = [(GTMTLReplayActivityLog *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_log, MEMORY[0x277D86220]);
    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_retainActivityLog = init;
  }

  return v5;
}

@end