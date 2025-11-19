@interface CSStoreEnumerateTables
@end

@implementation CSStoreEnumerateTables

void ___CSStoreEnumerateTables_block_invoke(uint64_t a1, CSStore2::Table *this, BOOL *a3)
{
  v6 = CSStore2::Table::copyCFName(this);
  if (v6)
  {
    v7 = v6;
    v10 = 0;
    v8 = (4 * *this);
    v9 = (*(this + 1) - 72);
    (*(*(a1 + 32) + 16))();
    *a3 = v10 != 0;
    CFRelease(v7);
  }
}

@end