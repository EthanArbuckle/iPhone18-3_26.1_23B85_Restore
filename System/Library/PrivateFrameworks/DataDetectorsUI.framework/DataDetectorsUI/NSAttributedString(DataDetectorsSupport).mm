@interface NSAttributedString(DataDetectorsSupport)
+ (uint64_t)dd_isTransientAttribute:()DataDetectorsSupport;
- (id)dd_contextAtLocation:()DataDetectorsSupport;
- (uint64_t)dd_resultAtLocation:()DataDetectorsSupport;
@end

@implementation NSAttributedString(DataDetectorsSupport)

+ (uint64_t)dd_isTransientAttribute:()DataDetectorsSupport
{
  v3 = a3;
  if (v3)
  {
    if (qword_280B12328 != -1)
    {
      +[NSAttributedString(DataDetectorsSupport) dd_isTransientAttribute:];
    }

    v4 = [_MergedGlobals_12 containsObject:v3];

    return v4;
  }

  else
  {

    return 0;
  }
}

- (id)dd_contextAtLocation:()DataDetectorsSupport
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  [v5 setObject:a1 forKey:@"TextStorage"];
  v6 = [a1 attribute:@"DDContext" atIndex:a3 effectiveRange:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 addEntriesFromDictionary:v6];
  }

  return v5;
}

- (uint64_t)dd_resultAtLocation:()DataDetectorsSupport
{
  v3 = [a1 attribute:*MEMORY[0x277D041D8] atIndex:a3 effectiveRange:0];
  objc_opt_class();
  v4 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 coreResult];
  }

  return v4;
}

@end