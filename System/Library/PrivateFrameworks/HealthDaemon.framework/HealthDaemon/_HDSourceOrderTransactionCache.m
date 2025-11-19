@interface _HDSourceOrderTransactionCache
- (_HDSourceOrderTransactionCache)init;
- (id)initWithProfile:(id *)a1;
- (id)orderedSourceIDsForBundleIdentifier:(void *)a3 database:(uint64_t)a4 error:;
@end

@implementation _HDSourceOrderTransactionCache

- (id)initWithProfile:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = _HDSourceOrderTransactionCache;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return a1;
}

- (id)orderedSourceIDsForBundleIdentifier:(void *)a3 database:(uint64_t)a4 error:
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = *(a1 + 24);
    if (!v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = *(a1 + 24);
      *(a1 + 24) = v10;

      v9 = *(a1 + 24);
    }

    v12 = [v9 objectForKeyedSubscript:v7];
    if (!v12)
    {
      v13 = v7;
      v14 = v8;
      v15 = HDSourceEntityPredicateForSourceWithBundleIdentifier(v13);
      v16 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"uuid" entityClass:objc_opt_class() ascending:1];
      v21[0] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
      v18 = [HDSourceEntity sourcesWithPredicate:v15 orderingTerms:v17 includeDeleted:0 database:v14 error:a4];

      if (v18)
      {
        v12 = [v18 hk_map:&__block_literal_global_390];
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        [*(a1 + 24) setObject:v12 forKeyedSubscript:v13];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

- (_HDSourceOrderTransactionCache)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = NSStringFromSelector(a2);
  [v3 raise:*MEMORY[0x277CBE660] format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

@end