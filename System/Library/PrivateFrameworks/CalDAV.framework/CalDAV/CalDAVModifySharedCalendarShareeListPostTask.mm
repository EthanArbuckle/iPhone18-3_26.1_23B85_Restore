@interface CalDAVModifySharedCalendarShareeListPostTask
- (id)copyDefaultParserForContentType:(id)type;
@end

@implementation CalDAVModifySharedCalendarShareeListPostTask

- (id)copyDefaultParserForContentType:(id)type
{
  v4 = objc_alloc(MEMORY[0x277CFDCA8]);
  v5 = *MEMORY[0x277CFDEF8];
  v6 = *MEMORY[0x277CFDF98];
  v7 = objc_opt_class();
  v8 = [(CalDAVModifySharedCalendarShareeListPostTask *)self url];
  v9 = [v4 initWithRootElementNameSpace:v5 name:v6 parseClass:v7 baseURL:v8];

  return v9;
}

@end