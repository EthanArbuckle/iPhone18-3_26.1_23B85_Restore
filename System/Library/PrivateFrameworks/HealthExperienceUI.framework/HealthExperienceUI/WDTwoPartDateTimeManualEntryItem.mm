@interface WDTwoPartDateTimeManualEntryItem
@end

@implementation WDTwoPartDateTimeManualEntryItem

void __58___WDTwoPartDateTimeManualEntryItem__datePickerDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _saveDisambiguatedDate:v3];
}

void __58___WDTwoPartDateTimeManualEntryItem__timePickerDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _saveDisambiguatedDate:v3];
}

@end