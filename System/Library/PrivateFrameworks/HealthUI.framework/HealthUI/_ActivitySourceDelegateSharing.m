@interface _ActivitySourceDelegateSharing
- (_ActivitySourceDelegateSharing)initWithTimescopeToSummariesTable:(id)a3 activityValue:(int64_t)a4 displayTypeController:(id)a5 unitPreferenceController:(id)a6 calendar:(id)a7;
- (id)_filterSummaries:(id)a3 dateRange:(id)a4;
- (id)activitySummariesForDateRange:(id)a3 timeScope:(int64_t)a4;
@end

@implementation _ActivitySourceDelegateSharing

- (_ActivitySourceDelegateSharing)initWithTimescopeToSummariesTable:(id)a3 activityValue:(int64_t)a4 displayTypeController:(id)a5 unitPreferenceController:(id)a6 calendar:(id)a7
{
  v13 = a3;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = _ActivitySourceDelegateSharing;
  v15 = [(_ActivitySourceDelegate *)&v18 initWithActivityValue:a4 displayTypeController:a5 unitPreferenceController:a6];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_timescopeToSummariesTable, a3);
    objc_storeStrong(&v16->_calendar, a7);
  }

  return v16;
}

- (id)activitySummariesForDateRange:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = [(_ActivitySourceDelegateSharing *)self timescopeToSummariesTable];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [(_ActivitySourceDelegateSharing *)self _filterSummaries:v9 dateRange:v6];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (id)_filterSummaries:(id)a3 dateRange:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61___ActivitySourceDelegateSharing__filterSummaries_dateRange___block_invoke;
  v10[3] = &unk_1E81BA5E0;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [a3 hk_filter:v10];

  return v8;
}

@end