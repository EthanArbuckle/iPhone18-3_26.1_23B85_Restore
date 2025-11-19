@interface MSASServerSideModelGroupedCommandQueue
+ (id)calloutBlockForCommand:(id)a3;
- (BOOL)hasEnqueuedItems;
- (void)MSASModel:(id)a3 didDeleteComment:(id)a4 forAssetCollection:(id)a5 inAlbum:(id)a6 info:(id)a7;
- (void)MSASModel:(id)a3 didFindDeletedAccessControl:(id)a4 inAlbum:(id)a5 info:(id)a6;
- (void)MSASModel:(id)a3 didFindDeletedAlbum:(id)a4 info:(id)a5;
- (void)MSASModel:(id)a3 didFindDeletedAssetCollection:(id)a4 inAlbum:(id)a5 info:(id)a6;
- (void)MSASModel:(id)a3 didFindDeletedInvitation:(id)a4 info:(id)a5;
- (void)MSASModel:(id)a3 didFindNewAccessControl:(id)a4 inAlbum:(id)a5 info:(id)a6;
- (void)MSASModel:(id)a3 didFindNewAlbum:(id)a4 info:(id)a5;
- (void)MSASModel:(id)a3 didFindNewAssetCollection:(id)a4 inAlbum:(id)a5 info:(id)a6;
- (void)MSASModel:(id)a3 didFindNewComment:(id)a4 forAssetCollection:(id)a5 inAlbum:(id)a6 info:(id)a7;
- (void)MSASModel:(id)a3 didFindNewInvitation:(id)a4 info:(id)a5;
- (void)flushQueue;
- (void)workQueueEnqueueCommand:(id)a3 variantParam:(id)a4 invariantParam:(id)a5;
- (void)workQueueFlushQueue;
@end

@implementation MSASServerSideModelGroupedCommandQueue

- (void)MSASModel:(id)a3 didDeleteComment:(id)a4 forAssetCollection:(id)a5 inAlbum:(id)a6 info:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(MSASGroupedQueue *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__MSASServerSideModelGroupedCommandQueue_MSASModel_didDeleteComment_forAssetCollection_inAlbum_info___block_invoke;
  block[3] = &unk_278E92688;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = self;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  dispatch_async(v15, block);
}

void __101__MSASServerSideModelGroupedCommandQueue_MSASModel_didDeleteComment_forAssetCollection_inAlbum_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v9 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"comment"];
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"assetCollection"];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"album"];
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    [v5 setObject:v8 forKey:@"info"];
  }

  [*(a1 + 64) workQueueEnqueueCommand:@"deleteComment" variantParam:v9 invariantParam:v5];
}

- (void)MSASModel:(id)a3 didFindNewComment:(id)a4 forAssetCollection:(id)a5 inAlbum:(id)a6 info:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(MSASGroupedQueue *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindNewComment_forAssetCollection_inAlbum_info___block_invoke;
  block[3] = &unk_278E92688;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = self;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  dispatch_async(v15, block);
}

void __102__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindNewComment_forAssetCollection_inAlbum_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v9 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"comment"];
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"assetCollection"];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"album"];
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    [v5 setObject:v8 forKey:@"info"];
  }

  [*(a1 + 64) workQueueEnqueueCommand:@"newComment" variantParam:v9 invariantParam:v5];
}

- (void)MSASModel:(id)a3 didFindDeletedInvitation:(id)a4 info:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(MSASGroupedQueue *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindDeletedInvitation_info___block_invoke;
  block[3] = &unk_278E92638;
  v13 = v7;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __82__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindDeletedInvitation_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v7 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"sharingRelationship"];
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"info"];
  }

  [*(a1 + 48) workQueueEnqueueCommand:@"deleteInvitation" variantParam:v7 invariantParam:v5];
}

- (void)MSASModel:(id)a3 didFindNewInvitation:(id)a4 info:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(MSASGroupedQueue *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindNewInvitation_info___block_invoke;
  block[3] = &unk_278E92638;
  v13 = v7;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __78__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindNewInvitation_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v7 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"sharingRelationship"];
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"info"];
  }

  [*(a1 + 48) workQueueEnqueueCommand:@"newInvitation" variantParam:v7 invariantParam:v5];
}

- (void)MSASModel:(id)a3 didFindDeletedAccessControl:(id)a4 inAlbum:(id)a5 info:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(MSASGroupedQueue *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __93__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindDeletedAccessControl_inAlbum_info___block_invoke;
  v16[3] = &unk_278E92660;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = self;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(v12, v16);
}

void __93__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindDeletedAccessControl_inAlbum_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v8 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"sharingRelationship"];
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"album"];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"info"];
  }

  [*(a1 + 56) workQueueEnqueueCommand:@"deleteACL" variantParam:v8 invariantParam:v5];
}

- (void)MSASModel:(id)a3 didFindNewAccessControl:(id)a4 inAlbum:(id)a5 info:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(MSASGroupedQueue *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindNewAccessControl_inAlbum_info___block_invoke;
  v16[3] = &unk_278E92660;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = self;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(v12, v16);
}

void __89__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindNewAccessControl_inAlbum_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v8 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"sharingRelationship"];
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"album"];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"info"];
  }

  [*(a1 + 56) workQueueEnqueueCommand:@"newACL" variantParam:v8 invariantParam:v5];
}

- (void)MSASModel:(id)a3 didFindDeletedAssetCollection:(id)a4 inAlbum:(id)a5 info:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(MSASGroupedQueue *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __95__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindDeletedAssetCollection_inAlbum_info___block_invoke;
  v16[3] = &unk_278E92660;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = self;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(v12, v16);
}

void __95__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindDeletedAssetCollection_inAlbum_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v8 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"assetCollection"];
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"album"];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"info"];
  }

  [*(a1 + 56) workQueueEnqueueCommand:@"deleteAssetCollection" variantParam:v8 invariantParam:v5];
}

- (void)MSASModel:(id)a3 didFindNewAssetCollection:(id)a4 inAlbum:(id)a5 info:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(MSASGroupedQueue *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindNewAssetCollection_inAlbum_info___block_invoke;
  v16[3] = &unk_278E92660;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = self;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(v12, v16);
}

void __91__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindNewAssetCollection_inAlbum_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v8 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"assetCollection"];
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"album"];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"info"];
  }

  [*(a1 + 56) workQueueEnqueueCommand:@"newAssetCollection" variantParam:v8 invariantParam:v5];
}

- (void)MSASModel:(id)a3 didFindDeletedAlbum:(id)a4 info:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(MSASGroupedQueue *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindDeletedAlbum_info___block_invoke;
  block[3] = &unk_278E92638;
  v13 = v7;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __77__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindDeletedAlbum_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v7 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"album"];
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"info"];
  }

  [*(a1 + 48) workQueueEnqueueCommand:@"deleteAlbum" variantParam:v7 invariantParam:v5];
}

- (void)MSASModel:(id)a3 didFindNewAlbum:(id)a4 info:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(MSASGroupedQueue *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindNewAlbum_info___block_invoke;
  block[3] = &unk_278E92638;
  v13 = v7;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __73__MSASServerSideModelGroupedCommandQueue_MSASModel_didFindNewAlbum_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v7 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"album"];
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"info"];
  }

  [*(a1 + 48) workQueueEnqueueCommand:@"newAlbum" variantParam:v7 invariantParam:v5];
}

- (void)workQueueEnqueueCommand:(id)a3 variantParam:(id)a4 invariantParam:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(MSASGroupedQueue *)self isShuttingDown])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v19 = 138543618;
      v20 = self;
      v21 = 2114;
      v22 = v8;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Not enqueueing command %{public}@ because we're shutting down.", &v19, 0x16u);
    }

    goto LABEL_16;
  }

  v11 = [(MSASGroupedQueue *)self model];
  if (!v11)
  {
    __assert_rtn("[MSASServerSideModelGroupedCommandQueue workQueueEnqueueCommand:variantParam:invariantParam:]", "MSASServerSideModelGroupedCommandQueue.m", 128, "self.model");
  }

  v12 = [(MSASGroupedQueue *)self model];
  v13 = [v12 commandCount];

  v14 = [MSASEnqueuedCommand commandwithCommand:v8 variantParam:v9 invariantParam:v10];
  lastEnqueuedCommand = self->_lastEnqueuedCommand;
  if (lastEnqueuedCommand && ![(MSASEnqueuedCommand *)lastEnqueuedCommand canBeGroupedWithCommand:v14])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = [(MSASEnqueuedCommand *)self->_lastEnqueuedCommand command];
      v19 = 138543874;
      v20 = self;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v18;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: New command %{public}@ cannot be grouped with command %{public}@. Flushing.", &v19, 0x20u);
    }

    goto LABEL_12;
  }

  if (v13 >= [(MSASGroupedQueue *)self maxGroupedCallbackEventBatchCount])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v19 = 138543618;
      v20 = self;
      v21 = 1024;
      LODWORD(v22) = v13;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: There are already %d commands in the queue. Flushing.", &v19, 0x12u);
    }

LABEL_12:
    [(MSASServerSideModelGroupedCommandQueue *)self workQueueFlushQueue];
    v13 = 0;
  }

  v16 = [(MSASGroupedQueue *)self model];
  [v16 enqueueCommand:v14];

  if (!v13)
  {
    [(MSASGroupedQueue *)self workQueueDidEnqueueFirstItem];
  }

  [(MSASGroupedQueue *)self workQueueDidEnqueueSubsequentItem];

LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)workQueueFlushQueue
{
  v28 = *MEMORY[0x277D85DE8];
  if (![(MSASGroupedQueue *)self isShuttingDown])
  {
    [(MSASServerSideModelGroupedCommandQueue *)self setLastEnqueuedCommand:0];
    v3 = 0;
    v4 = 0;
    v19 = 0;
    v5 = MEMORY[0x277D86220];
    *&v6 = 138544130;
    v17 = v6;
    while (1)
    {
      v7 = v4;
      v8 = v3;
      v9 = [(MSASGroupedQueue *)self model];
      v10 = [(MSASGroupedQueue *)self maxGroupedCallbackEventBatchCount];
      v18 = v4;
      v3 = [v9 nextCommandGroupMaxCount:v10 outCommand:&v18 outLastCommandIndex:&v19];
      v4 = v18;

      if (!v3)
      {
        break;
      }

      v11 = [MSASServerSideModelGroupedCommandQueue calloutBlockForCommand:v4];
      v12 = (v11)[2](v11, self, v3);

      if (v12)
      {
        v13 = [v3 objectAtIndex:0];
        v14 = [v13 invariantParam];

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = v17;
          v21 = self;
          v22 = 1024;
          v23 = v12;
          v24 = 2114;
          v25 = v4;
          v26 = 2114;
          v27 = v14;
          _os_log_debug_impl(&dword_245B99000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: Flushing %d events with command %{public}@. Invariant:%{public}@", buf, 0x26u);
        }
      }

      v15 = [(MSASGroupedQueue *)self model];
      [v15 removeCommandsUpToCommandIndex:v19];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)flushQueue
{
  v3 = [(MSASGroupedQueue *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MSASServerSideModelGroupedCommandQueue_flushQueue__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)hasEnqueuedItems
{
  v2 = [(MSASGroupedQueue *)self model];
  v3 = [v2 commandCount] > 0;

  return v3;
}

+ (id)calloutBlockForCommand:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (calloutBlockForCommand__onceToken != -1)
  {
    dispatch_once(&calloutBlockForCommand__onceToken, &__block_literal_global_8135);
  }

  v5 = [calloutBlockForCommand__commandToCalloutBlockMap objectForKey:v4];
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 138543618;
      v10 = a1;
      v11 = 2114;
      v12 = v4;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Cannot find callout block for command: %{public}@", &v9, 0x16u);
    }

    v5 = &__block_literal_global_128;
  }

  v6 = MEMORY[0x245D7BA50](v5);

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = calloutBlockForCommand__commandToCalloutBlockMap;
  calloutBlockForCommand__commandToCalloutBlockMap = v0;

  [calloutBlockForCommand__commandToCalloutBlockMap setObject:&__block_literal_global_85 forKey:@"newAlbum"];
  [calloutBlockForCommand__commandToCalloutBlockMap setObject:&__block_literal_global_91 forKey:@"deleteAlbum"];
  [calloutBlockForCommand__commandToCalloutBlockMap setObject:&__block_literal_global_95 forKey:@"newAssetCollection"];
  [calloutBlockForCommand__commandToCalloutBlockMap setObject:&__block_literal_global_99 forKey:@"deleteAssetCollection"];
  [calloutBlockForCommand__commandToCalloutBlockMap setObject:&__block_literal_global_103 forKey:@"newACL"];
  [calloutBlockForCommand__commandToCalloutBlockMap setObject:&__block_literal_global_107_8139 forKey:@"deleteACL"];
  [calloutBlockForCommand__commandToCalloutBlockMap setObject:&__block_literal_global_111 forKey:@"newInvitation"];
  [calloutBlockForCommand__commandToCalloutBlockMap setObject:&__block_literal_global_115 forKey:@"deleteInvitation"];
  [calloutBlockForCommand__commandToCalloutBlockMap setObject:&__block_literal_global_119 forKey:@"newComment"];
  v2 = calloutBlockForCommand__commandToCalloutBlockMap;

  return [v2 setObject:&__block_literal_global_123 forKey:@"deleteComment"];
}

uint64_t __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v26 = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v7)
  {
    v11 = 0;
    v27 = 0;
    v10 = 0;
    v9 = 0;
    v22 = v6;
LABEL_20:

    goto LABEL_22;
  }

  v8 = v7;
  v25 = v4;
  v9 = 0;
  v10 = 0;
  v27 = 0;
  v11 = 0;
  v12 = *v35;
  do
  {
    v13 = 0;
    do
    {
      if (*v35 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v34 + 1) + 8 * v13);
      v15 = [v14 variantParam];
      v16 = [v15 objectForKey:@"comment"];

      if (v16)
      {
        if (v27)
        {
          if (v9)
          {
            goto LABEL_9;
          }

LABEL_14:
          v18 = [v14 invariantParam];
          v9 = [v18 objectForKey:@"album"];

          if (!v10)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v17 = [v14 invariantParam];
          v27 = [v17 objectForKey:@"assetCollection"];

          if (!v9)
          {
            goto LABEL_14;
          }

LABEL_9:
          if (!v10)
          {
LABEL_15:
            v19 = [v14 invariantParam];
            v10 = [v19 objectForKey:@"info"];
          }
        }

        [v26 addObject:v16];
        v11 = (v11 + 1);
      }

      ++v13;
    }

    while (v8 != v13);
    v20 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
    v8 = v20;
  }

  while (v20);

  if (v11)
  {
    v4 = v25;
    v21 = [v25 model];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_21;
    v28[3] = &unk_278E92610;
    v29 = v25;
    v30 = v26;
    v27 = v27;
    v31 = v27;
    v9 = v9;
    v32 = v9;
    v10 = v10;
    v33 = v10;
    [v21 performBlockOnObservers:v28];

    v22 = v29;
    goto LABEL_20;
  }

  v4 = v25;
LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

void __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_21(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) model];
    [v4 MSASModel:v3 didFindDeletedComments:*(a1 + 40) forAssetCollection:*(a1 + 48) inAlbum:*(a1 + 56) info:*(a1 + 64)];
  }
}

uint64_t __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v26 = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v7)
  {
    v11 = 0;
    v27 = 0;
    v10 = 0;
    v9 = 0;
    v22 = v6;
LABEL_20:

    goto LABEL_22;
  }

  v8 = v7;
  v25 = v4;
  v9 = 0;
  v10 = 0;
  v27 = 0;
  v11 = 0;
  v12 = *v35;
  do
  {
    v13 = 0;
    do
    {
      if (*v35 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v34 + 1) + 8 * v13);
      v15 = [v14 variantParam];
      v16 = [v15 objectForKey:@"comment"];

      if (v16)
      {
        if (v27)
        {
          if (v9)
          {
            goto LABEL_9;
          }

LABEL_14:
          v18 = [v14 invariantParam];
          v9 = [v18 objectForKey:@"album"];

          if (!v10)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v17 = [v14 invariantParam];
          v27 = [v17 objectForKey:@"assetCollection"];

          if (!v9)
          {
            goto LABEL_14;
          }

LABEL_9:
          if (!v10)
          {
LABEL_15:
            v19 = [v14 invariantParam];
            v10 = [v19 objectForKey:@"info"];
          }
        }

        [v26 addObject:v16];
        v11 = (v11 + 1);
      }

      ++v13;
    }

    while (v8 != v13);
    v20 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
    v8 = v20;
  }

  while (v20);

  if (v11)
  {
    v4 = v25;
    v21 = [v25 model];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_19;
    v28[3] = &unk_278E92610;
    v29 = v25;
    v30 = v26;
    v27 = v27;
    v31 = v27;
    v9 = v9;
    v32 = v9;
    v10 = v10;
    v33 = v10;
    [v21 performBlockOnObservers:v28];

    v22 = v29;
    goto LABEL_20;
  }

  v4 = v25;
LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

void __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_19(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) model];
    [v4 MSASModel:v3 didFindNewComments:*(a1 + 40) forAssetCollection:*(a1 + 48) inAlbum:*(a1 + 56) info:*(a1 + 64)];
  }
}

uint64_t __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v21 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v7)
  {
    v10 = 0;
    v9 = 0;
    v18 = v6;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v27;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v26 + 1) + 8 * i);
      v14 = [v13 variantParam];
      v15 = [v14 objectForKey:@"sharingRelationship"];

      if (v15)
      {
        if (!v9)
        {
          v16 = [v13 invariantParam];
          v9 = [v16 objectForKey:@"info"];
        }

        [v21 addObject:v15];
        v10 = (v10 + 1);
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v8);

  if (v10)
  {
    v17 = [v4 model];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_17;
    v22[3] = &unk_278E925A8;
    v23 = v4;
    v24 = v21;
    v9 = v9;
    v25 = v9;
    [v17 performBlockOnObservers:v22];

    v18 = v23;
LABEL_15:
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

void __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_17(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) model];
    [v4 MSASModel:v3 didFindDeletedInvitations:*(a1 + 40) info:*(a1 + 48)];
  }
}

uint64_t __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v21 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v7)
  {
    v10 = 0;
    v9 = 0;
    v18 = v6;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v27;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v26 + 1) + 8 * i);
      v14 = [v13 variantParam];
      v15 = [v14 objectForKey:@"sharingRelationship"];

      if (v15)
      {
        if (!v9)
        {
          v16 = [v13 invariantParam];
          v9 = [v16 objectForKey:@"info"];
        }

        [v21 addObject:v15];
        v10 = (v10 + 1);
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v8);

  if (v10)
  {
    v17 = [v4 model];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_15;
    v22[3] = &unk_278E925A8;
    v23 = v4;
    v24 = v21;
    v9 = v9;
    v25 = v9;
    [v17 performBlockOnObservers:v22];

    v18 = v23;
LABEL_15:
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

void __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_15(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) model];
    [v4 MSASModel:v3 didFindNewInvitations:*(a1 + 40) info:*(a1 + 48)];
  }
}

uint64_t __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v26 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v7)
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v21 = v6;
LABEL_18:

    goto LABEL_20;
  }

  v8 = v7;
  v24 = v4;
  obj = v6;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *v33;
  do
  {
    v13 = 0;
    do
    {
      if (*v33 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v32 + 1) + 8 * v13);
      v15 = [v14 variantParam];
      v16 = [v15 objectForKey:@"sharingRelationship"];

      if (v16)
      {
        if (v10)
        {
          if (v9)
          {
LABEL_9:
            [v26 addObject:v16];
            v11 = (v11 + 1);
            goto LABEL_10;
          }
        }

        else
        {
          v17 = [v14 invariantParam];
          v10 = [v17 objectForKey:@"album"];

          if (v9)
          {
            goto LABEL_9;
          }
        }

        v18 = [v14 invariantParam];
        v9 = [v18 objectForKey:@"info"];

        goto LABEL_9;
      }

LABEL_10:

      ++v13;
    }

    while (v8 != v13);
    v19 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    v8 = v19;
  }

  while (v19);
  v6 = obj;

  if (v11)
  {
    v4 = v24;
    v20 = [v24 model];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_13;
    v27[3] = &unk_278E925D8;
    v28 = v24;
    v29 = v26;
    v10 = v10;
    v30 = v10;
    v9 = v9;
    v31 = v9;
    [v20 performBlockOnObservers:v27];

    v21 = v28;
    goto LABEL_18;
  }

  v4 = v24;
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

void __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_13(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) model];
    [v4 MSASModel:v3 didFindDeletedAccessControls:*(a1 + 40) inAlbum:*(a1 + 48) info:*(a1 + 56)];
  }
}

uint64_t __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v26 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v7)
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v21 = v6;
LABEL_18:

    goto LABEL_20;
  }

  v8 = v7;
  v24 = v4;
  obj = v6;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *v33;
  do
  {
    v13 = 0;
    do
    {
      if (*v33 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v32 + 1) + 8 * v13);
      v15 = [v14 variantParam];
      v16 = [v15 objectForKey:@"sharingRelationship"];

      if (v16)
      {
        if (v10)
        {
          if (v9)
          {
LABEL_9:
            [v26 addObject:v16];
            v11 = (v11 + 1);
            goto LABEL_10;
          }
        }

        else
        {
          v17 = [v14 invariantParam];
          v10 = [v17 objectForKey:@"album"];

          if (v9)
          {
            goto LABEL_9;
          }
        }

        v18 = [v14 invariantParam];
        v9 = [v18 objectForKey:@"info"];

        goto LABEL_9;
      }

LABEL_10:

      ++v13;
    }

    while (v8 != v13);
    v19 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    v8 = v19;
  }

  while (v19);
  v6 = obj;

  if (v11)
  {
    v4 = v24;
    v20 = [v24 model];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_11;
    v27[3] = &unk_278E925D8;
    v28 = v24;
    v29 = v26;
    v10 = v10;
    v30 = v10;
    v9 = v9;
    v31 = v9;
    [v20 performBlockOnObservers:v27];

    v21 = v28;
    goto LABEL_18;
  }

  v4 = v24;
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

void __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_11(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) model];
    [v4 MSASModel:v3 didFindNewAccessControls:*(a1 + 40) inAlbum:*(a1 + 48) info:*(a1 + 56)];
  }
}

uint64_t __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v26 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v7)
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v21 = v6;
LABEL_18:

    goto LABEL_20;
  }

  v8 = v7;
  v24 = v4;
  obj = v6;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *v33;
  do
  {
    v13 = 0;
    do
    {
      if (*v33 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v32 + 1) + 8 * v13);
      v15 = [v14 variantParam];
      v16 = [v15 objectForKey:@"assetCollection"];

      if (v16)
      {
        if (v10)
        {
          if (v9)
          {
LABEL_9:
            [v26 addObject:v16];
            v11 = (v11 + 1);
            goto LABEL_10;
          }
        }

        else
        {
          v17 = [v14 invariantParam];
          v10 = [v17 objectForKey:@"album"];

          if (v9)
          {
            goto LABEL_9;
          }
        }

        v18 = [v14 invariantParam];
        v9 = [v18 objectForKey:@"info"];

        goto LABEL_9;
      }

LABEL_10:

      ++v13;
    }

    while (v8 != v13);
    v19 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    v8 = v19;
  }

  while (v19);
  v6 = obj;

  if (v11)
  {
    v4 = v24;
    v20 = [v24 model];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_9;
    v27[3] = &unk_278E925D8;
    v28 = v24;
    v29 = v26;
    v10 = v10;
    v30 = v10;
    v9 = v9;
    v31 = v9;
    [v20 performBlockOnObservers:v27];

    v21 = v28;
    goto LABEL_18;
  }

  v4 = v24;
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

void __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_9(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) model];
    [v4 MSASModel:v3 didFindDeletedAssetCollections:*(a1 + 40) inAlbum:*(a1 + 48) info:*(a1 + 56)];
  }
}

uint64_t __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v26 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v7)
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v21 = v6;
LABEL_18:

    goto LABEL_20;
  }

  v8 = v7;
  v24 = v4;
  obj = v6;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *v33;
  do
  {
    v13 = 0;
    do
    {
      if (*v33 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v32 + 1) + 8 * v13);
      v15 = [v14 variantParam];
      v16 = [v15 objectForKey:@"assetCollection"];

      if (v16)
      {
        if (v10)
        {
          if (v9)
          {
LABEL_9:
            [v26 addObject:v16];
            v11 = (v11 + 1);
            goto LABEL_10;
          }
        }

        else
        {
          v17 = [v14 invariantParam];
          v10 = [v17 objectForKey:@"album"];

          if (v9)
          {
            goto LABEL_9;
          }
        }

        v18 = [v14 invariantParam];
        v9 = [v18 objectForKey:@"info"];

        goto LABEL_9;
      }

LABEL_10:

      ++v13;
    }

    while (v8 != v13);
    v19 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    v8 = v19;
  }

  while (v19);
  v6 = obj;

  if (v11)
  {
    v4 = v24;
    v20 = [v24 model];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_7;
    v27[3] = &unk_278E925D8;
    v28 = v24;
    v29 = v26;
    v10 = v10;
    v30 = v10;
    v9 = v9;
    v31 = v9;
    [v20 performBlockOnObservers:v27];

    v21 = v28;
    goto LABEL_18;
  }

  v4 = v24;
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

void __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_7(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) model];
    [v4 MSASModel:v3 didFindNewAssetCollections:*(a1 + 40) inAlbum:*(a1 + 48) info:*(a1 + 56)];
  }
}

uint64_t __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v21 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v7)
  {
    v10 = 0;
    v9 = 0;
    v18 = v6;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v27;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v26 + 1) + 8 * i);
      v14 = [v13 variantParam];
      v15 = [v14 objectForKey:@"album"];

      if (v15)
      {
        if (!v9)
        {
          v16 = [v13 invariantParam];
          v9 = [v16 objectForKey:@"info"];
        }

        [v21 addObject:v15];
        v10 = (v10 + 1);
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v8);

  if (v10)
  {
    v17 = [v4 model];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_5;
    v22[3] = &unk_278E925A8;
    v23 = v4;
    v24 = v21;
    v9 = v9;
    v25 = v9;
    [v17 performBlockOnObservers:v22];

    v18 = v23;
LABEL_15:
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

void __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) model];
    [v4 MSASModel:v3 didFindDeletedAlbums:*(a1 + 40) info:*(a1 + 48)];
  }
}

uint64_t __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v21 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v7)
  {
    v10 = 0;
    v9 = 0;
    v18 = v6;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v27;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v26 + 1) + 8 * i);
      v14 = [v13 variantParam];
      v15 = [v14 objectForKey:@"album"];

      if (v15)
      {
        if (!v9)
        {
          v16 = [v13 invariantParam];
          v9 = [v16 objectForKey:@"info"];
        }

        [v21 addObject:v15];
        v10 = (v10 + 1);
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v8);

  if (v10)
  {
    v17 = [v4 model];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_3;
    v22[3] = &unk_278E925A8;
    v23 = v4;
    v24 = v21;
    v9 = v9;
    v25 = v9;
    [v17 performBlockOnObservers:v22];

    v18 = v23;
LABEL_15:
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

void __65__MSASServerSideModelGroupedCommandQueue_calloutBlockForCommand___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) model];
    [v4 MSASModel:v3 didFindNewAlbums:*(a1 + 40) info:*(a1 + 48)];
  }
}

@end