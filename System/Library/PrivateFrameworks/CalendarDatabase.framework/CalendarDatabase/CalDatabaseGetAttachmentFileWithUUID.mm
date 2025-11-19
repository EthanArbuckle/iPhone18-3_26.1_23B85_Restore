@interface CalDatabaseGetAttachmentFileWithUUID
@end

@implementation CalDatabaseGetAttachmentFileWithUUID

uint64_t ___CalDatabaseGetAttachmentFileWithUUID_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(v2, 1, v3, -1, 0);
}

uint64_t ___CalDatabaseGetAttachmentFileWithUUID_block_invoke_2(uint64_t a1, const void *a2, _BYTE *a3)
{
  v6 = _CalCalendarItemGetDescription(a2);
  if (v6 && [*(a1 + 40) isEqualToString:v6])
  {
    *(*(*(a1 + 32) + 8) + 24) = CFRetain(a2);
    *a3 = 1;
  }

  return MEMORY[0x1EEE66BB8]();
}

@end