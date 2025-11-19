@interface CNDASearchQueryConsumer
- (CNDASearchQueryConsumer)initWithLatch:(id)a3;
- (void)searchQuery:(id)a3 finishedWithError:(id)a4;
- (void)searchQuery:(id)a3 returnedResults:(id)a4;
@end

@implementation CNDASearchQueryConsumer

- (CNDASearchQueryConsumer)initWithLatch:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CNDASearchQueryConsumer;
  v6 = [(CNDASearchQueryConsumer *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_latch, a3);
    v8 = objc_opt_new();
    results = v7->_results;
    v7->_results = v8;

    v10 = v7;
  }

  return v7;
}

id __44__CNDASearchQueryConsumer_SuccessfulResults__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 result];
  if ([v2 isSuccess])
  {
    v3 = [v2 value];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (void)searchQuery:(id)a3 returnedResults:(id)a4
{
  results = self->_results;
  v7 = a3;
  [(NSMutableArray *)results addObjectsFromArray:a4];
  LOBYTE(a4) = [v7 isQueryRunning];

  if ((a4 & 1) == 0)
  {
    v8 = [MEMORY[0x277CFBEA0] successWithValue:self->_results];
    result = self->_result;
    self->_result = v8;

    latch = self->_latch;

    [(CNCountdownLatch *)latch countDown];
  }
}

- (void)searchQuery:(id)a3 finishedWithError:(id)a4
{
  if (!self->_result)
  {
    v6 = [MEMORY[0x277CFBEA0] failureWithError:a4];
    result = self->_result;
    self->_result = v6;

    latch = self->_latch;

    [(CNCountdownLatch *)latch countDown];
  }
}

@end