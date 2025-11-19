@interface BWUBNRFProcessorCompletionStatus
- (BOOL)waitForCompletionWithDescriptionOut:(uint64_t)a1;
- (void)dealloc;
- (void)initWithCompletionStatus:(void *)a1;
@end

@implementation BWUBNRFProcessorCompletionStatus

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWUBNRFProcessorCompletionStatus;
  [(BWUBNRFProcessorCompletionStatus *)&v3 dealloc];
}

- (void)initWithCompletionStatus:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v5.receiver = a1;
  v5.super_class = BWUBNRFProcessorCompletionStatus;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  if (v3)
  {
    v3[1] = a2;
  }

  return v3;
}

- (BOOL)waitForCompletionWithDescriptionOut:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  [*(a1 + 8) waitForCompletion];
  v4 = [objc_msgSend(*(a1 + 8) "metalExecutionStatus")];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = BWMTLCommandBufferStatusToShortString([objc_msgSend(*(a1 + 8) "metalExecutionStatus")]);
  v8 = [objc_msgSend(*(a1 + 8) "metalExecutionStatus")];
  v9 = v4 == 4;
  v10 = v4 == 4;
  if (v9)
  {
    v11 = [v5 stringWithFormat:@"<%@ %p>: Status: %@. Completed command buffers:%d", v6, a1, v7, v8, v13];
  }

  else
  {
    v11 = [v5 stringWithFormat:@"<%@ %p>: Status: %@. Completed command buffers:%d. Failed command buffers: %@", v6, a1, v7, v8, objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 8), "metalExecutionStatus"), "failedCommandBuffers"), "componentsJoinedByString:", @", ")];
  }

  if (a2)
  {
    *a2 = v11;
  }

  return v10;
}

@end