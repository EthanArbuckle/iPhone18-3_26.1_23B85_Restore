@interface DACheckSubscribedCalendarIsJunkContext
- (DACheckSubscribedCalendarIsJunkContext)initWithURLString:(id)a3 completionBlock:(id)a4;
- (void)finishedWithError:(id)a3;
@end

@implementation DACheckSubscribedCalendarIsJunkContext

- (DACheckSubscribedCalendarIsJunkContext)initWithURLString:(id)a3 completionBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = DACheckSubscribedCalendarIsJunkContext;
  v9 = [(DACheckSubscribedCalendarIsJunkContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_urlString, a3);
    v11 = _Block_copy(v8);
    completionBlock = v10->_completionBlock;
    v10->_completionBlock = v11;
  }

  return v10;
}

- (void)finishedWithError:(id)a3
{
  v4 = a3;
  if (self->_completionBlock)
  {
    queue = self->_queue;
    if (queue)
    {
      v6 = queue;
    }

    else
    {
      v6 = dispatch_get_global_queue(0, 0);
    }

    v7 = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__DACheckSubscribedCalendarIsJunkContext_finishedWithError___block_invoke;
    v8[3] = &unk_27851FED8;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

void __60__DACheckSubscribedCalendarIsJunkContext_finishedWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v4 = [v2 urlString];
  (*(v3 + 16))(v3, v4, [*(a1 + 32) junkStatus], *(a1 + 40));
}

@end