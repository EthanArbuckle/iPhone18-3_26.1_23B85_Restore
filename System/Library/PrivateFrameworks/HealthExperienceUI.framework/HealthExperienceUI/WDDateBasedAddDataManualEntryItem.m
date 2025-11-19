@interface WDDateBasedAddDataManualEntryItem
@end

@implementation WDDateBasedAddDataManualEntryItem

void __59___WDDateBasedAddDataManualEntryItem__datePickerDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _saveDisambiguatedDate:v3];
}

@end