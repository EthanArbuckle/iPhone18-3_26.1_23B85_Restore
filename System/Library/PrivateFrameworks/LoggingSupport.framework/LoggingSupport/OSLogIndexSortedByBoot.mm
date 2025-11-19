@interface OSLogIndexSortedByBoot
@end

@implementation OSLogIndexSortedByBoot

uint64_t ___OSLogIndexSortedByBoot_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = **(a1 + 32);
  v6 = a3;
  v7 = _os_trace_uuid_map_lookup(v5, [a2 bootUUID]);
  v8 = **(a1 + 32);
  v9 = [v6 bootUUID];

  v10 = _os_trace_uuid_map_lookup(v8, v9);
  if (v7 == v10)
  {
    return 0;
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if (v7 > v10)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  else if (v7 < v10)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

@end