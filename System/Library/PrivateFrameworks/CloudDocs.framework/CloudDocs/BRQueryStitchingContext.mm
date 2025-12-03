@interface BRQueryStitchingContext
- (BRQueryStitchingContext)initWithQuery:(id)query;
- (void)performAsyncOnReceiver:(id)receiver;
@end

@implementation BRQueryStitchingContext

- (BRQueryStitchingContext)initWithQuery:(id)query
{
  queryCopy = query;
  v11.receiver = self;
  v11.super_class = BRQueryStitchingContext;
  v6 = [(BRQueryStitchingContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_query, query);
    receiver = [queryCopy receiver];
    receiver = v7->_receiver;
    v7->_receiver = receiver;
  }

  return v7;
}

- (void)performAsyncOnReceiver:(id)receiver
{
  receiverCopy = receiver;
  query = self->_query;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__BRQueryStitchingContext_performAsyncOnReceiver___block_invoke;
  v7[3] = &unk_1E7A15078;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  [(BRQuery *)query _performBlockAsync:v7];
}

@end