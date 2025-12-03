@interface _ActivitySourceDelegateSharing
- (_ActivitySourceDelegateSharing)initWithTimescopeToSummariesTable:(id)table activityValue:(int64_t)value displayTypeController:(id)controller unitPreferenceController:(id)preferenceController calendar:(id)calendar;
- (id)_filterSummaries:(id)summaries dateRange:(id)range;
- (id)activitySummariesForDateRange:(id)range timeScope:(int64_t)scope;
@end

@implementation _ActivitySourceDelegateSharing

- (_ActivitySourceDelegateSharing)initWithTimescopeToSummariesTable:(id)table activityValue:(int64_t)value displayTypeController:(id)controller unitPreferenceController:(id)preferenceController calendar:(id)calendar
{
  tableCopy = table;
  calendarCopy = calendar;
  v18.receiver = self;
  v18.super_class = _ActivitySourceDelegateSharing;
  v15 = [(_ActivitySourceDelegate *)&v18 initWithActivityValue:value displayTypeController:controller unitPreferenceController:preferenceController];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_timescopeToSummariesTable, table);
    objc_storeStrong(&v16->_calendar, calendar);
  }

  return v16;
}

- (id)activitySummariesForDateRange:(id)range timeScope:(int64_t)scope
{
  rangeCopy = range;
  timescopeToSummariesTable = [(_ActivitySourceDelegateSharing *)self timescopeToSummariesTable];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
  v9 = [timescopeToSummariesTable objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [(_ActivitySourceDelegateSharing *)self _filterSummaries:v9 dateRange:rangeCopy];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (id)_filterSummaries:(id)summaries dateRange:(id)range
{
  rangeCopy = range;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61___ActivitySourceDelegateSharing__filterSummaries_dateRange___block_invoke;
  v10[3] = &unk_1E81BA5E0;
  v10[4] = self;
  v11 = rangeCopy;
  v7 = rangeCopy;
  v8 = [summaries hk_filter:v10];

  return v8;
}

@end