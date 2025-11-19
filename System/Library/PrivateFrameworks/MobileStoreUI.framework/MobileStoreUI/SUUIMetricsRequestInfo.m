@interface SUUIMetricsRequestInfo
- (NSDictionary)dictionaryRepresentation;
- (SUUIMetricsRequestInfo)initWithReportRequestTimesMessagePayload:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUUIMetricsRequestInfo

- (SUUIMetricsRequestInfo)initWithReportRequestTimesMessagePayload:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"requestStartTime"];
  v6 = [v4 objectForKeyedSubscript:@"responseStartTime"];
  v7 = [v4 objectForKeyedSubscript:@"responseEndTime"];
  v8 = v7;
  v9 = 0;
  if (v5 && v6 && v7)
  {
    v10 = [(SUUIMetricsRequestInfo *)self init];
    if (v10)
    {
      [SUUIMetricsUtilities timeIntervalFromJSTime:v5];
      [(SUUIMetricsRequestInfo *)v10 setRequestStartTime:?];
      [SUUIMetricsUtilities timeIntervalFromJSTime:v6];
      [(SUUIMetricsRequestInfo *)v10 setResponseStartTime:?];
      [SUUIMetricsUtilities timeIntervalFromJSTime:v8];
      [(SUUIMetricsRequestInfo *)v10 setResponseEndTime:?];
      v11 = [v4 objectForKeyedSubscript:@"responseWasCached"];

      if (v11)
      {
        v12 = [v4 objectForKeyedSubscript:@"responseWasCached"];
        -[SUUIMetricsRequestInfo setResponseWasCached:](v10, "setResponseWasCached:", [v12 BOOLValue]);
      }
    }

    self = v10;
    v9 = self;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SUUIMetricsRequestInfo *)self requestStartTime];
  [v4 setRequestStartTime:?];
  [(SUUIMetricsRequestInfo *)self responseStartTime];
  [v4 setResponseStartTime:?];
  [(SUUIMetricsRequestInfo *)self responseEndTime];
  [v4 setResponseEndTime:?];
  if ([(SUUIMetricsRequestInfo *)self hasResponseWasCachedValue])
  {
    [v4 setResponseWasCached:{-[SUUIMetricsRequestInfo responseWasCached](self, "responseWasCached")}];
    [v4 setHasResponseWasCachedValue:1];
  }

  return v4;
}

- (NSDictionary)dictionaryRepresentation
{
  v12[4] = *MEMORY[0x277D85DE8];
  if ([(SUUIMetricsRequestInfo *)self hasResponseWasCachedValue])
  {
    v11[0] = @"requestStartTime";
    [(SUUIMetricsRequestInfo *)self requestStartTime];
    v3 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
    v12[0] = v3;
    v11[1] = @"responseStartTime";
    [(SUUIMetricsRequestInfo *)self responseStartTime];
    v4 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
    v12[1] = v4;
    v11[2] = @"responseEndTime";
    [(SUUIMetricsRequestInfo *)self responseEndTime];
    v5 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
    v12[2] = v5;
    v11[3] = @"responseWasCached";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUUIMetricsRequestInfo responseWasCached](self, "responseWasCached")}];
    v12[3] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  }

  else
  {
    v9[0] = @"requestStartTime";
    [(SUUIMetricsRequestInfo *)self requestStartTime];
    v3 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
    v10[0] = v3;
    v9[1] = @"responseStartTime";
    [(SUUIMetricsRequestInfo *)self responseStartTime];
    v4 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
    v10[1] = v4;
    v9[2] = @"responseEndTime";
    [(SUUIMetricsRequestInfo *)self responseEndTime];
    v5 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
    v10[2] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  }

  return v7;
}

@end