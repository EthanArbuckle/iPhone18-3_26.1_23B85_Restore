@interface DAABLegacyContainerProvider
@end

@implementation DAABLegacyContainerProvider

__CFArray *__94___DAABLegacyContainerProvider_mergeAllRecordsIntoContainer_shouldInsertChangeHistoryRecords___block_invoke(uint64_t a1, __n128 a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 68) == 1)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  }

  else
  {
    Mutable = 0;
  }

  if (*(a1 + 40) >= 1)
  {
    v4 = 0;
    v5 = *(MEMORY[0x277D03988] + 5);
    a2.n128_u64[0] = 67240448;
    v18 = a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), v4);
      RecordID = ABRecordGetRecordID(ValueAtIndex);
      if (*(a1 + 64) != RecordID)
      {
        v8 = RecordID;
        if (*(a1 + 68) == 1)
        {
          v9 = ABAddressBookCopyArrayOfAllPeopleInSource([*(a1 + 32) addressBook], ValueAtIndex);
          if (v9)
          {
            v10 = v9;
            v24.length = CFArrayGetCount(v9);
            v24.location = 0;
            CFArrayAppendArray(Mutable, v10, v24);
            CFRelease(v10);
          }

          v11 = ABAddressBookCopyArrayOfAllGroupsInSource([*(a1 + 32) addressBook], ValueAtIndex);
          if (v11)
          {
            v12 = v11;
            v25.length = CFArrayGetCount(v11);
            v25.location = 0;
            CFArrayAppendArray(Mutable, v12, v25);
            CFRelease(v12);
          }
        }

        v13 = DALoggingwithCategory();
        if (os_log_type_enabled(v13, v5))
        {
          v14 = *(a1 + 64);
          *buf = v18.n128_u32[0];
          v20 = v8;
          v21 = 1026;
          v22 = v14;
          _os_log_impl(&dword_24844D000, v13, v5, "[mergeAllRecords] Moving all records from source ID %{public}d into source ID %{public}d ", buf, 0xEu);
        }

        [*(a1 + 32) addressBook];
        v15 = *(a1 + 56);
        ABAddressBookMoveAllRecordsInSourceToSource();
      }

      ++v4;
    }

    while (v4 < *(a1 + 40));
  }

  v16 = *MEMORY[0x277D85DE8];
  return Mutable;
}

@end