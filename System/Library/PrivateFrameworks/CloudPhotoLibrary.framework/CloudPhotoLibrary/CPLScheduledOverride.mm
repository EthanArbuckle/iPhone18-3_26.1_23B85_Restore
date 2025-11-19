@interface CPLScheduledOverride
@end

@implementation CPLScheduledOverride

void __54___CPLScheduledOverride__scheduleEndWithTimeInterval___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v3 removeObjectForKey:*(*(a1 + 40) + 16)];

    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v4 removeObjectForKey:*(*(a1 + 40) + 24)];

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
    [WeakRetained scheduledOverrideDidEnd:*(a1 + 40)];

    dispatch_source_cancel(*(a1 + 32));
    v6 = *(a1 + 40);
    v7 = *(v6 + 8);
    *(v6 + 8) = 0;
  }
}

void __70___CPLScheduledOverride_nextTimeIntervalToUseGivenCurrent_expiryDate___block_invoke()
{
  v0 = nextTimeIntervalToUseGivenCurrent_expiryDate__budgetOverrideTimeIntervalHeuristics;
  nextTimeIntervalToUseGivenCurrent_expiryDate__budgetOverrideTimeIntervalHeuristics = &unk_1F57EF8C0;
}

@end