@interface MTCompanionSyncRequest
+ (MTCompanionSyncRequest)requestWithType:(unint64_t)a3;
- (MTCompanionSyncRequest)initWithRequestType:(unint64_t)a3;
- (NSString)description;
- (void)addCompletionBlock:(id)a3;
- (void)complete:(id)a3;
@end

@implementation MTCompanionSyncRequest

+ (MTCompanionSyncRequest)requestWithType:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithRequestType:a3];

  return v3;
}

- (MTCompanionSyncRequest)initWithRequestType:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = MTCompanionSyncRequest;
  v4 = [(MTCompanionSyncRequest *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_requestType = a3;
    v6 = objc_opt_new();
    completionBlocks = v5->_completionBlocks;
    v5->_completionBlocks = v6;

    v8 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTCompanionSyncRequest.serialqueue", +[MTScheduler defaultPriority]);
    serializer = v5->_serializer;
    v5->_serializer = v8;
  }

  return v5;
}

- (void)complete:(id)a3
{
  v4 = a3;
  serializer = self->_serializer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__MTCompanionSyncRequest_complete___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NAScheduler *)serializer performBlock:v7];
}

void __35__MTCompanionSyncRequest_complete___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    v3 = *(v1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __35__MTCompanionSyncRequest_complete___block_invoke_2;
    v5[3] = &unk_1E7B0FF88;
    v6 = *(a1 + 40);
    [v3 na_each:v5];
    v4 = *(a1 + 40);
    if (!v4)
    {
      *(*(a1 + 32) + 8) = 1;
      v4 = *(a1 + 40);
    }

    objc_storeStrong((*(a1 + 32) + 24), v4);
  }
}

- (void)addCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    serializer = self->_serializer;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__MTCompanionSyncRequest_addCompletionBlock___block_invoke;
    v7[3] = &unk_1E7B0CA00;
    v7[4] = self;
    v8 = v4;
    [(NAScheduler *)serializer performBlock:v7];
  }
}

void __45__MTCompanionSyncRequest_addCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) & 1) != 0 || (v3 = *(v2 + 32), v4 = _Block_copy(*(a1 + 40)), [v3 addObject:v4], v4, v2 = *(a1 + 32), (*(v2 + 8)))
  {
    v5 = *(v2 + 24);
  }

  else if (!*(v2 + 24))
  {
    return;
  }

  v6 = *(*(a1 + 40) + 16);

  v6();
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MTCompanionSyncRequest *)self requestDescription];
  v6 = [v3 stringWithFormat:@"<%@: %p %@ >", v4, self, v5];

  return v6;
}

@end