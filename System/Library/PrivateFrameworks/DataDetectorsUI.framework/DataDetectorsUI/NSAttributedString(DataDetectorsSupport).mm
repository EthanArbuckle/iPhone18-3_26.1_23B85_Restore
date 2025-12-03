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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self forKey:@"TextStorage"];
  v6 = [self attribute:@"DDContext" atIndex:a3 effectiveRange:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [dictionary addEntriesFromDictionary:v6];
  }

  return dictionary;
}

- (uint64_t)dd_resultAtLocation:()DataDetectorsSupport
{
  v3 = [self attribute:*MEMORY[0x277D041D8] atIndex:a3 effectiveRange:0];
  objc_opt_class();
  coreResult = 0;
  if (objc_opt_isKindOfClass())
  {
    coreResult = [v3 coreResult];
  }

  return coreResult;
}

@end