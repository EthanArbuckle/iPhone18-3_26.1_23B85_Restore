@interface SUUIMetricsDOMChange
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (SUUIMetricsDOMChange)initWithReportDomBuildTimesMessagePayload:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SUUIMetricsDOMChange

- (SUUIMetricsDOMChange)initWithReportDomBuildTimesMessagePayload:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"buildStartTime"];
  v6 = [v4 objectForKeyedSubscript:@"buildEndTime"];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [(SUUIMetricsDOMChange *)self init];
    if (v9)
    {
      [SUUIMetricsUtilities timeIntervalFromJSTime:v5];
      [(SUUIMetricsDOMChange *)v9 setBuildStartTime:?];
      [SUUIMetricsUtilities timeIntervalFromJSTime:v7];
      [(SUUIMetricsDOMChange *)v9 setBuildEndTime:?];
      v10 = [v4 objectForKeyedSubscript:@"messageWasDeferred"];
      -[SUUIMetricsDOMChange setFromDeferredMessage:](v9, "setFromDeferredMessage:", [v10 BOOLValue]);
    }

    self = v9;
    v8 = self;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(SUUIMetricsDOMChange *)self buildStartTime];
  [v4 setBuildStartTime:?];
  [(SUUIMetricsDOMChange *)self buildEndTime];
  [v4 setBuildEndTime:?];
  [(SUUIMetricsDOMChange *)self renderStartTime];
  [v4 setRenderStartTime:?];
  [(SUUIMetricsDOMChange *)self renderEndTime];
  [v4 setRenderEndTime:?];
  [v4 setFromDeferredMessage:{-[SUUIMetricsDOMChange isFromDeferredMessage](self, "isFromDeferredMessage")}];
  return v4;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"buildStartTime";
  [(SUUIMetricsDOMChange *)self buildStartTime];
  v3 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
  v10[0] = v3;
  v9[1] = @"buildEndTime";
  [(SUUIMetricsDOMChange *)self buildEndTime];
  v4 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
  v10[1] = v4;
  v9[2] = @"renderStartTime";
  [(SUUIMetricsDOMChange *)self renderStartTime];
  v5 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
  v10[2] = v5;
  v9[3] = @"renderEndTime";
  [(SUUIMetricsDOMChange *)self renderEndTime];
  v6 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (unint64_t)hash
{
  [(SUUIMetricsDOMChange *)self buildStartTime];
  v4 = v3;
  [(SUUIMetricsDOMChange *)self buildEndTime];
  v6 = v4 + 10 * v5;
  [(SUUIMetricsDOMChange *)self renderStartTime];
  v8 = v6 + 100 * v7;
  [(SUUIMetricsDOMChange *)self renderEndTime];
  v10 = v8 + 1000 * v9;
  v11 = [(SUUIMetricsDOMChange *)self isFromDeferredMessage];
  v12 = 10000;
  if (!v11)
  {
    v12 = 0;
  }

  return v10 + v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(SUUIMetricsDOMChange *)self buildStartTime];
      v7 = v6;
      [(SUUIMetricsDOMChange *)v5 buildStartTime];
      if (v7 == v8 && ([(SUUIMetricsDOMChange *)self buildEndTime], v10 = v9, [(SUUIMetricsDOMChange *)v5 buildEndTime], v10 == v11) && ([(SUUIMetricsDOMChange *)self renderStartTime], v13 = v12, [(SUUIMetricsDOMChange *)v5 renderStartTime], v13 == v14) && ([(SUUIMetricsDOMChange *)self renderEndTime], v16 = v15, [(SUUIMetricsDOMChange *)v5 renderEndTime], v16 == v17))
      {
        v18 = [(SUUIMetricsDOMChange *)self isFromDeferredMessage];
        v19 = v18 ^ [(SUUIMetricsDOMChange *)v5 isFromDeferredMessage]^ 1;
      }

      else
      {
        LOBYTE(v19) = 0;
      }
    }

    else
    {
      LOBYTE(v19) = 0;
    }
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(SUUIMetricsDOMChange *)self buildStartTime];
  v7 = v6;
  [(SUUIMetricsDOMChange *)self buildEndTime];
  v9 = v8;
  [(SUUIMetricsDOMChange *)self renderStartTime];
  v11 = v10;
  [(SUUIMetricsDOMChange *)self renderEndTime];
  v13 = [v3 stringWithFormat:@"<%@:%p buildStartTime = %f; buildEndTime = %f; renderStartTime = %f; renderEndTime = %f>", v5, self, v7, v9, v11, v12];;

  return v13;
}

@end