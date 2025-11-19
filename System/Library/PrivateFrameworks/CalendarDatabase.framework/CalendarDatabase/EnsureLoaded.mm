@interface EnsureLoaded
@end

@implementation EnsureLoaded

uint64_t ___EnsureLoaded_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(*(a1 + 32) + 16);
  ID = CPRecordGetID();
  result = sqlite3_bind_int(v4, 1, ID);
  v8 = *(*(a1 + 32) + 48);
  if (v8)
  {
    v9 = *(a2 + 8);

    return sqlite3_bind_int(v9, 2, v8);
  }

  return result;
}

@end