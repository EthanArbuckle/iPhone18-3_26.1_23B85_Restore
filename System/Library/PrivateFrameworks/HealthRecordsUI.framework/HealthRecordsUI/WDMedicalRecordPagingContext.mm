@interface WDMedicalRecordPagingContext
+ (id)sortDateComponentsOfDate:(id)a3;
+ (id)sortDateComponentsOfDateComponents:(id)a3 withDayOffset:(int64_t)a4;
- (BOOL)shouldQueryForNextBatch;
- (WDMedicalRecordPagingContext)init;
- (void)resetPagingContext;
@end

@implementation WDMedicalRecordPagingContext

- (WDMedicalRecordPagingContext)init
{
  v5.receiver = self;
  v5.super_class = WDMedicalRecordPagingContext;
  v2 = [(WDMedicalRecordPagingContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WDMedicalRecordPagingContext *)v2 resetPagingContext];
  }

  return v3;
}

- (BOOL)shouldQueryForNextBatch
{
  if (![(WDMedicalRecordPagingContext *)self hasMoreData]|| [(WDMedicalRecordPagingContext *)self fetchingCurrentPage])
  {
    return 0;
  }

  return [(WDMedicalRecordPagingContext *)self pagingContextReady];
}

- (void)resetPagingContext
{
  *&self->_shouldClearDisplayItemGroups = 257;
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  computingDaySummaries = self->_computingDaySummaries;
  self->_computingDaySummaries = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  unprocessedRecords = self->_unprocessedRecords;
  self->_unprocessedRecords = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  contextDependentBlockQueue = self->_contextDependentBlockQueue;
  self->_contextDependentBlockQueue = v7;

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  removedRecords = self->_removedRecords;
  self->_removedRecords = v9;
}

+ (id)sortDateComponentsOfDate:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 hk_gregorianCalendarWithLocalTimeZone];
  v6 = [v5 components:30 fromDate:v4];

  return v6;
}

+ (id)sortDateComponentsOfDateComponents:(id)a3 withDayOffset:(int64_t)a4
{
  v5 = MEMORY[0x1E695DEE8];
  v6 = a3;
  v7 = [v5 hk_gregorianCalendarWithLocalTimeZone];
  v8 = [v7 dateFromComponents:v6];

  v9 = [v7 dateByAddingUnit:16 value:a4 toDate:v8 options:0];
  v10 = [v7 components:30 fromDate:v9];

  return v10;
}

@end