@interface BRQueryStitchingContext
- (BRQueryStitchingContext)initWithQuery:(id)a3;
- (void)performAsyncOnReceiver:(id)a3;
@end

@implementation BRQueryStitchingContext

- (BRQueryStitchingContext)initWithQuery:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BRQueryStitchingContext;
  v6 = [(BRQueryStitchingContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_query, a3);
    v8 = [v5 receiver];
    receiver = v7->_receiver;
    v7->_receiver = v8;
  }

  return v7;
}

- (void)performAsyncOnReceiver:(id)a3
{
  v4 = a3;
  query = self->_query;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__BRQueryStitchingContext_performAsyncOnReceiver___block_invoke;
  v7[3] = &unk_1E7A15078;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(BRQuery *)query _performBlockAsync:v7];
}

@end