@interface SUUIMetricsTemplateLoad
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUUIMetricsTemplateLoad

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SUUIMetricsTemplateLoad *)self requestStartTime];
  [v4 setRequestStartTime:?];
  [(SUUIMetricsTemplateLoad *)self responseStartTime];
  [v4 setResponseStartTime:?];
  [(SUUIMetricsTemplateLoad *)self responseEndTime];
  [v4 setResponseEndTime:?];
  [v4 setResponseWasCached:{-[SUUIMetricsTemplateLoad responseWasCached](self, "responseWasCached")}];
  return v4;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"requestStartTime";
  [(SUUIMetricsTemplateLoad *)self requestStartTime];
  v3 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
  v10[0] = v3;
  v9[1] = @"responseStartTime";
  [(SUUIMetricsTemplateLoad *)self responseStartTime];
  v4 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
  v10[1] = v4;
  v9[2] = @"responseEndTime";
  [(SUUIMetricsTemplateLoad *)self responseEndTime];
  v5 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
  v10[2] = v5;
  v9[3] = @"responseWasCached";
  v6 = [SUUIMetricsUtilities jsTimeFromTimeInterval:[(SUUIMetricsTemplateLoad *)self responseWasCached]];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

@end