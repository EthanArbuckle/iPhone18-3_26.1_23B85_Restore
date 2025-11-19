@interface OSLogUUIDMapAddFromCatalog
@end

@implementation OSLogUUIDMapAddFromCatalog

uint64_t ___OSLogUUIDMapAddFromCatalog_block_invoke(uint64_t a1, void *a2)
{
  v9[5] = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___OSLogUUIDMapAddFromCatalog_block_invoke_2;
  v8[3] = &__block_descriptor_40_e40_v16__0__catalog_uuidlocation_s_QQ_16C__8l;
  v4 = *(a1 + 32);
  v5 = a2[7];
  v8[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___catalog_procinfo_for_each_uuidinfo_block_invoke;
  v9[3] = &unk_2787AD6E8;
  v9[4] = v8;
  hashtable_iterate(v5, v9);
  _os_trace_uuid_map_insert(*(a1 + 32), a2 + 3);
  result = _os_trace_uuid_map_insert(*(a1 + 32), a2 + 5);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___OSLogUUIDMapAddFromCatalog_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  result = _os_trace_uuid_map_lookup(v4, a3);
  if (!result)
  {

    return _os_trace_uuid_map_insert(v4, a3);
  }

  return result;
}

@end