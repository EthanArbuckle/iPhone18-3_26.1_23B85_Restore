@interface _CNOperationQueueScheduler
+ (id)operationWithQualityOfService:(unint64_t)service block:(id)block;
- (NSString)description;
- (_CNOperationQueueScheduler)initWithMaxConcurrentOperationCount:(int64_t)count qualityOfService:(unint64_t)service;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)blockWithCurrentQualityOfServiceForBlock:(id)block ifAllowedForRequestedQualityOfService:(unint64_t)service;
- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)_enqueueBlock:(id)block qualityOfService:(unint64_t)service;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation _CNOperationQueueScheduler

- (_CNOperationQueueScheduler)initWithMaxConcurrentOperationCount:(int64_t)count qualityOfService:(unint64_t)service
{
  v12.receiver = self;
  v12.super_class = _CNOperationQueueScheduler;
  v6 = [(_CNOperationQueueScheduler *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    queue = v6->_queue;
    v6->_queue = v7;

    [(NSOperationQueue *)v6->_queue setMaxConcurrentOperationCount:count];
    if (service <= 2)
    {
      if (!service)
      {
LABEL_14:
        v10 = v6;
        goto LABEL_15;
      }

      if (service == 2)
      {
        v9 = 9;
        goto LABEL_13;
      }
    }

    else
    {
      switch(service)
      {
        case 3uLL:
          v9 = 17;
          goto LABEL_13;
        case 5uLL:
          v9 = 33;
          goto LABEL_13;
        case 4uLL:
          v9 = 25;
LABEL_13:
          [(NSOperationQueue *)v6->_queue setQualityOfService:v9];
          v6->_isQualityOfServiceSpecified = 1;
          goto LABEL_14;
      }
    }

    v9 = -1;
    goto LABEL_13;
  }

LABEL_15:

  return v6;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"width" unsignedInteger:{-[NSOperationQueue maxConcurrentOperationCount](self->_queue, "maxConcurrentOperationCount")}];
  v5 = [v3 appendName:@"blocks" unsignedInteger:{-[NSOperationQueue operationCount](self->_queue, "operationCount")}];
  build = [v3 build];

  return build;
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  v6 = [(_CNOperationQueueScheduler *)self blockWithCurrentQualityOfServiceForBlock:block ifAllowedForRequestedQualityOfService:?];
  [(_CNOperationQueueScheduler *)self _enqueueBlock:v6 qualityOfService:service];
}

- (void)_enqueueBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v7 = [objc_opt_class() operationWithQualityOfService:service block:blockCopy];

  [(NSOperationQueue *)self->_queue addOperation:v7];
}

- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v7 = objc_alloc_init(CNOperationQueueSchedulerCancelationToken);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70___CNOperationQueueScheduler_performCancelableBlock_qualityOfService___block_invoke;
  aBlock[3] = &unk_1E6ED52C0;
  v8 = blockCopy;
  v23 = v8;
  v9 = v7;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(_CNOperationQueueScheduler *)self blockWithCurrentQualityOfServiceForBlock:v10 ifAllowedForRequestedQualityOfService:service];

  v12 = [objc_opt_class() operationWithQualityOfService:service block:v11];
  objc_initWeak(&location, v12);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __70___CNOperationQueueScheduler_performCancelableBlock_qualityOfService___block_invoke_2;
  v18 = &unk_1E6ED6498;
  objc_copyWeak(&v19, &location);
  [(CNCancelationToken *)v9 addCancelationBlock:&v15];
  [(NSOperationQueue *)self->_queue addOperation:v12, v15, v16, v17, v18];
  v13 = v9;
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v13;
}

- (id)blockWithCurrentQualityOfServiceForBlock:(id)block ifAllowedForRequestedQualityOfService:(unint64_t)service
{
  blockCopy = block;
  v7 = _Block_copy(blockCopy);
  if (!service && !self->_isQualityOfServiceSpecified)
  {
    v8 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, blockCopy);

    v7 = v8;
  }

  v9 = _Block_copy(v7);

  return v9;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v9 = objc_alloc_init(CNOperationQueueSchedulerCancelationToken);
  v10 = [(_CNOperationQueueScheduler *)self blockWithCurrentQualityOfServiceForBlock:blockCopy ifAllowedForRequestedQualityOfService:service];

  v11 = +[CNScheduler globalAsyncScheduler];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __71___CNOperationQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  v20 = &unk_1E6ED64C0;
  v12 = v9;
  v21 = v12;
  selfCopy = self;
  v23 = v10;
  serviceCopy = service;
  v13 = v10;
  v14 = [v11 afterDelay:&v17 performBlock:delay];

  [(CNCancelationToken *)v12 addCancelable:v14, v17, v18, v19, v20];
  v15 = v12;

  return v12;
}

+ (id)operationWithQualityOfService:(unint64_t)service block:(id)block
{
  v5 = [MEMORY[0x1E696AAE0] blockOperationWithBlock:block];
  v6 = v5;
  if (service - 2 >= 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = 8 * (service - 2) + 9;
  }

  if ([v5 qualityOfService] != v7)
  {
    [v6 setQualityOfService:v7];
  }

  return v6;
}

@end