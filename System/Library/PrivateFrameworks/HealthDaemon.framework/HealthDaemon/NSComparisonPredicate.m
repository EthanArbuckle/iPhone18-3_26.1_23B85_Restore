@interface NSComparisonPredicate
@end

@implementation NSComparisonPredicate

void __71__NSComparisonPredicate_SQLitePredicate___checkTypeForValue_inKeyPath___block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _MergedGlobals_208;
  _MergedGlobals_208 = v0;

  v2 = +[HDDatabase allCurrentAndFutureEntityClasses];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        HDSQLiteEntityEnumerateColumns();
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __71__NSComparisonPredicate_SQLitePredicate___checkTypeForValue_inKeyPath___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = [v2 name];
  v3 = MEMORY[0x277CCABB0];
  v4 = [v2 keyPathType];

  v5 = [v3 numberWithUnsignedChar:v4];
  v6 = [_MergedGlobals_208 objectForKeyedSubscript:v8];

  if (v6)
  {
    v7 = [_MergedGlobals_208 objectForKeyedSubscript:v8];
    [v7 addObject:v5];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v5, 0}];
    [_MergedGlobals_208 setObject:v7 forKeyedSubscript:v8];
  }
}

@end