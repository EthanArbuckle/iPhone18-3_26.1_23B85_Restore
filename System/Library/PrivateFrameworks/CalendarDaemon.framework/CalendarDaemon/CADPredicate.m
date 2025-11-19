@interface CADPredicate
+ (id)conciseCalendarList:(id)a3;
+ (void)setValidator:(Class)a3;
- (BOOL)evaluateWithObject:(id)a3;
- (id)concisePublicDescription;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)a3;
- (id)matchingDatesForEvent:(void *)a3 modifiedProperties:(unint64_t)a4 dates:(id)a5 inRange:(id)a6 database:(CalDatabase *)a7 outReset:(BOOL *)a8;
- (void)beginSignpostWithHandle:(id)a3 signpostID:(unint64_t)a4;
@end

@implementation CADPredicate

+ (void)setValidator:(Class)a3
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  __CADPredicateValidator = a3;
  objc_sync_exit(obj);
}

- (BOOL)evaluateWithObject:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  if (__CADPredicateValidator)
  {
    v6 = [__CADPredicateValidator evaluatePredicate:self withObject:v4];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v5);

  return v6;
}

- (id)matchingDatesForEvent:(void *)a3 modifiedProperties:(unint64_t)a4 dates:(id)a5 inRange:(id)a6 database:(CalDatabase *)a7 outReset:(BOOL *)a8
{
  if (a8)
  {
    *a8 = 1;
  }

  return 0;
}

- (void)beginSignpostWithHandle:(id)a3 signpostID:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [(CADPredicate *)self predicateFormat];
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v10;
    _os_signpost_emit_with_name_impl(&dword_22430B000, v7, OS_SIGNPOST_INTERVAL_BEGIN, a4, "EKPredicateSearch", "predicateClass=%@; predicateFormat=%@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)conciseCalendarList:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{(4 * objc_msgSend(v3, "count")) | 2}];
    -[__CFString appendString:](v4, "appendString:", @"(");
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v20;
      v10 = *MEMORY[0x277CF7570];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          if (v8)
          {
            [(__CFString *)v4 appendString:@", "];
          }

          v13 = [v12 databaseID];
          v14 = [v12 entityID];
          if (v13 == v10)
          {
            [(__CFString *)v4 appendFormat:@"%i", v14, v17];
          }

          else
          {
            [(__CFString *)v4 appendFormat:@"%i/%i", v13, v14];
          }

          v8 = 1;
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [(__CFString *)v4 appendString:@""]);
    v3 = v18;
  }

  else
  {
    v4 = @"(null)";
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)concisePublicDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end