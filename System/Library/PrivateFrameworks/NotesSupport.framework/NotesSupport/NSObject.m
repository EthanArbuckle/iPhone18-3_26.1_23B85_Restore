@interface NSObject
@end

@implementation NSObject

void __67__NSObject_ICLoggable__ic_loggingDescriptionFromLoggable_isPretty___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (*(a1 + 48) == 1 && (v6 = objc_opt_class(), ICDynamicCast(v6, v5), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = [v7 ic_prettyDescriptionWithTabLevel:1];
    [v9 appendFormat:@"\t%@ = %@\n", v11, v10];
  }

  else
  {
    [*(a1 + 32) appendFormat:*(a1 + 40), v11, v5];
  }
}

@end