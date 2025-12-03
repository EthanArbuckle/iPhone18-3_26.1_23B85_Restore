@interface EDSQLQueryStatistics
- (EDSQLQueryStatistics)initWithQuery:(id)query transactionLabel:(id)label firstRowExecutionTime:(id)time timePerRowExecutionTime:(id)executionTime totalExecutionTime:(id)totalExecutionTime;
- (void)addStatisticWithTransactionLabel:(id)label firstRowExecutionTime:(id)time timePerRowExecutionTime:(id)executionTime totalExecutionTime:(id)totalExecutionTime;
@end

@implementation EDSQLQueryStatistics

- (EDSQLQueryStatistics)initWithQuery:(id)query transactionLabel:(id)label firstRowExecutionTime:(id)time timePerRowExecutionTime:(id)executionTime totalExecutionTime:(id)totalExecutionTime
{
  v26[1] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  labelCopy = label;
  timeCopy = time;
  executionTimeCopy = executionTime;
  totalExecutionTimeCopy = totalExecutionTime;
  v24.receiver = self;
  v24.super_class = EDSQLQueryStatistics;
  v18 = [(EDSQLQueryStatistics *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_redactedQuery, query);
    v25 = labelCopy;
    v26[0] = &unk_1F45E6BB0;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    queryCountByTransactionLabel = v19->_queryCountByTransactionLabel;
    v19->_queryCountByTransactionLabel = v20;

    v19->_queryCount = 1;
    v19->_firstRowMinExecutionTime = [timeCopy unsignedIntegerValue];
    v19->_firstRowMaxExecutionTime = [timeCopy unsignedIntegerValue];
    v19->_timePerRowMinExecutionTime = [executionTimeCopy unsignedIntegerValue];
    v19->_timePerRowMaxExecutionTime = [executionTimeCopy unsignedIntegerValue];
    v19->_totalMinExecutionTime = [totalExecutionTimeCopy unsignedIntegerValue];
    v19->_totalMaxExecutionTime = [totalExecutionTimeCopy unsignedIntegerValue];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)addStatisticWithTransactionLabel:(id)label firstRowExecutionTime:(id)time timePerRowExecutionTime:(id)executionTime totalExecutionTime:(id)totalExecutionTime
{
  labelCopy = label;
  timeCopy = time;
  executionTimeCopy = executionTime;
  totalExecutionTimeCopy = totalExecutionTime;
  v13 = [(NSDictionary *)self->_queryCountByTransactionLabel mutableCopy];
  v14 = [v13 objectForKeyedSubscript:labelCopy];
  v15 = v14;
  if (v14)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v14, "intValue") + 1}];

    v15 = v16;
    [v13 setObject:v16 forKeyedSubscript:labelCopy];
  }

  else
  {
    [v13 setObject:&unk_1F45E6BB0 forKeyedSubscript:labelCopy];
  }

  objc_storeStrong(&self->_queryCountByTransactionLabel, v13);
  self->_queryCount = [(EDSQLQueryStatistics *)self queryCount]+ 1;
  if ([timeCopy unsignedIntegerValue] >= self->_firstRowMaxExecutionTime)
  {
    self->_firstRowMaxExecutionTime = [timeCopy unsignedIntegerValue];
  }

  if ([timeCopy unsignedIntegerValue] <= self->_firstRowMinExecutionTime)
  {
    self->_firstRowMinExecutionTime = [timeCopy unsignedIntegerValue];
  }

  if ([executionTimeCopy unsignedIntegerValue] >= self->_timePerRowMaxExecutionTime)
  {
    self->_timePerRowMaxExecutionTime = [executionTimeCopy unsignedIntegerValue];
  }

  if ([executionTimeCopy unsignedIntegerValue] <= self->_firstRowMinExecutionTime)
  {
    self->_firstRowMinExecutionTime = [executionTimeCopy unsignedIntegerValue];
  }

  if ([totalExecutionTimeCopy unsignedIntegerValue] >= self->_totalMaxExecutionTime)
  {
    self->_totalMaxExecutionTime = [totalExecutionTimeCopy unsignedIntegerValue];
  }

  if ([totalExecutionTimeCopy unsignedIntegerValue] <= self->_totalMinExecutionTime)
  {
    self->_totalMinExecutionTime = [totalExecutionTimeCopy unsignedIntegerValue];
  }
}

@end