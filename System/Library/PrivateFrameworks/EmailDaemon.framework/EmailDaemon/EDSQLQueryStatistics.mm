@interface EDSQLQueryStatistics
- (EDSQLQueryStatistics)initWithQuery:(id)a3 transactionLabel:(id)a4 firstRowExecutionTime:(id)a5 timePerRowExecutionTime:(id)a6 totalExecutionTime:(id)a7;
- (void)addStatisticWithTransactionLabel:(id)a3 firstRowExecutionTime:(id)a4 timePerRowExecutionTime:(id)a5 totalExecutionTime:(id)a6;
@end

@implementation EDSQLQueryStatistics

- (EDSQLQueryStatistics)initWithQuery:(id)a3 transactionLabel:(id)a4 firstRowExecutionTime:(id)a5 timePerRowExecutionTime:(id)a6 totalExecutionTime:(id)a7
{
  v26[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v24.receiver = self;
  v24.super_class = EDSQLQueryStatistics;
  v18 = [(EDSQLQueryStatistics *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_redactedQuery, a3);
    v25 = v14;
    v26[0] = &unk_1F45E6BB0;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    queryCountByTransactionLabel = v19->_queryCountByTransactionLabel;
    v19->_queryCountByTransactionLabel = v20;

    v19->_queryCount = 1;
    v19->_firstRowMinExecutionTime = [v15 unsignedIntegerValue];
    v19->_firstRowMaxExecutionTime = [v15 unsignedIntegerValue];
    v19->_timePerRowMinExecutionTime = [v16 unsignedIntegerValue];
    v19->_timePerRowMaxExecutionTime = [v16 unsignedIntegerValue];
    v19->_totalMinExecutionTime = [v17 unsignedIntegerValue];
    v19->_totalMaxExecutionTime = [v17 unsignedIntegerValue];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)addStatisticWithTransactionLabel:(id)a3 firstRowExecutionTime:(id)a4 timePerRowExecutionTime:(id)a5 totalExecutionTime:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(NSDictionary *)self->_queryCountByTransactionLabel mutableCopy];
  v14 = [v13 objectForKeyedSubscript:v17];
  v15 = v14;
  if (v14)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v14, "intValue") + 1}];

    v15 = v16;
    [v13 setObject:v16 forKeyedSubscript:v17];
  }

  else
  {
    [v13 setObject:&unk_1F45E6BB0 forKeyedSubscript:v17];
  }

  objc_storeStrong(&self->_queryCountByTransactionLabel, v13);
  self->_queryCount = [(EDSQLQueryStatistics *)self queryCount]+ 1;
  if ([v10 unsignedIntegerValue] >= self->_firstRowMaxExecutionTime)
  {
    self->_firstRowMaxExecutionTime = [v10 unsignedIntegerValue];
  }

  if ([v10 unsignedIntegerValue] <= self->_firstRowMinExecutionTime)
  {
    self->_firstRowMinExecutionTime = [v10 unsignedIntegerValue];
  }

  if ([v11 unsignedIntegerValue] >= self->_timePerRowMaxExecutionTime)
  {
    self->_timePerRowMaxExecutionTime = [v11 unsignedIntegerValue];
  }

  if ([v11 unsignedIntegerValue] <= self->_firstRowMinExecutionTime)
  {
    self->_firstRowMinExecutionTime = [v11 unsignedIntegerValue];
  }

  if ([v12 unsignedIntegerValue] >= self->_totalMaxExecutionTime)
  {
    self->_totalMaxExecutionTime = [v12 unsignedIntegerValue];
  }

  if ([v12 unsignedIntegerValue] <= self->_totalMinExecutionTime)
  {
    self->_totalMinExecutionTime = [v12 unsignedIntegerValue];
  }
}

@end