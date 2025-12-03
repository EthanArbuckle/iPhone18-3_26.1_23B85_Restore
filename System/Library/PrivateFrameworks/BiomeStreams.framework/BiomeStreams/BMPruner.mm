@interface BMPruner
- (BMPruner)initWithStoreStream:(id)stream remote:(id)remote;
- (void)deleteWithPolicy:(id)policy eventsPassingTest:(id)test;
@end

@implementation BMPruner

- (BMPruner)initWithStoreStream:(id)stream remote:(id)remote
{
  streamCopy = stream;
  remoteCopy = remote;
  v12.receiver = self;
  v12.super_class = BMPruner;
  v9 = [(BMPruner *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storeStream, stream);
    objc_storeStrong(&v10->_remote, remote);
  }

  return v10;
}

- (void)deleteWithPolicy:(id)policy eventsPassingTest:(id)test
{
  v23 = *MEMORY[0x1E69E9840];
  policyCopy = policy;
  testCopy = test;
  policyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.biome.deletion-policy.%@", policyCopy];
  [policyCopy UTF8String];
  v9 = os_transaction_create();

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  storeStream = self->_storeStream;
  remote = self->_remote;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47__BMPruner_deleteWithPolicy_eventsPassingTest___block_invoke;
  v16[3] = &unk_1E6E52A50;
  v12 = testCopy;
  v17 = v12;
  v18 = &v19;
  [(BMStoreStream *)storeStream pruneEventsOfRemote:remote withReason:2 policyID:policyCopy usingPredicateBlock:v16];

  v13 = MEMORY[0x1E698E988];
  identifier = [(BMStoreStream *)self->_storeStream identifier];
  [v13 sendDeletionPolicyMetrics:policyCopy stream:identifier numDeleted:*(v20 + 6) exception:0];

  _Block_object_dispose(&v19, 8);
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __47__BMPruner_deleteWithPolicy_eventsPassingTest___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

@end