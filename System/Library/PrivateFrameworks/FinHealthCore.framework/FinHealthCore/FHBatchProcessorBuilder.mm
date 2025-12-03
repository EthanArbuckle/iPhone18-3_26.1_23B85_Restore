@interface FHBatchProcessorBuilder
- (FHBatchProcessorBuilder)init;
- (void)addInternalState:(unint64_t)state;
@end

@implementation FHBatchProcessorBuilder

- (FHBatchProcessorBuilder)init
{
  v10.receiver = self;
  v10.super_class = FHBatchProcessorBuilder;
  v2 = [(FHBatchProcessorBuilder *)&v10 init];
  v3 = v2;
  if (v2)
  {
    databaseManager = v2->_databaseManager;
    v2->_databaseManager = 0;

    v3->_computeMerchantCounts = 0;
    startDate = v3->_startDate;
    v3->_startDate = 0;

    endDate = v3->_endDate;
    v3->_endDate = 0;

    v7 = objc_opt_new();
    internalStates = v3->_internalStates;
    v3->_internalStates = v7;
  }

  return v3;
}

- (void)addInternalState:(unint64_t)state
{
  internalStates = self->_internalStates;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  [(NSMutableSet *)internalStates addObject:v4];
}

@end