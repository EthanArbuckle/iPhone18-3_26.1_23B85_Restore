@interface CalDAVPostWithSharedAsResponse
- (id)copyDefaultParserForContentType:(id)a3;
@end

@implementation CalDAVPostWithSharedAsResponse

- (id)copyDefaultParserForContentType:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277CFDCA8]);
  v5 = *MEMORY[0x277CFDE90];
  v6 = objc_opt_class();
  v7 = [(CalDAVPostWithSharedAsResponse *)self url];
  v8 = [v4 initWithRootElementNameSpace:v5 name:@"shared-as" parseClass:v6 baseURL:v7];

  return v8;
}

@end