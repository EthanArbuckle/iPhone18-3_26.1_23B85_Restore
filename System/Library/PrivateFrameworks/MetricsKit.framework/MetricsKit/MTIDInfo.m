@interface MTIDInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isValueExpired;
- (MTIDInfo)initWithScheme:(id)a3 secret:(id)a4 idString:(id)a5 dsId:(id)a6 effectiveDate:(id)a7 expirationDate:(id)a8 shouldGenerateMetricsFields:(BOOL)a9;
- (NSDictionary)metricsFields;
- (NSString)description;
- (NSString)idNamespace;
- (double)lifespan;
- (id)debugInfo;
- (int64_t)idType;
@end

@implementation MTIDInfo

- (int64_t)idType
{
  v2 = [(MTIDInfo *)self scheme];
  v3 = [v2 idType];

  return v3;
}

- (MTIDInfo)initWithScheme:(id)a3 secret:(id)a4 idString:(id)a5 dsId:(id)a6 effectiveDate:(id)a7 expirationDate:(id)a8 shouldGenerateMetricsFields:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v26.receiver = self;
  v26.super_class = MTIDInfo;
  v21 = [(MTIDInfo *)&v26 init];
  v22 = v21;
  if (v21)
  {
    [(MTIDInfo *)v21 setScheme:v15];
    [(MTIDInfo *)v22 setSecret:v16];
    [(MTIDInfo *)v22 setIdString:v17];
    [(MTIDInfo *)v22 setDsId:v18];
    [(MTIDInfo *)v22 setExpirationDate:v20];
    [(MTIDInfo *)v22 setEffectiveDate:v19];
    [(MTIDInfo *)v22 setShouldGenerateMetricsFields:a9];
    v23 = +[MTFrameworkEnvironment sharedEnvironment];
    v24 = [v23 date];
    [(MTIDInfo *)v22 setComputedDate:v24];
  }

  return v22;
}

- (NSString)idNamespace
{
  v2 = [(MTIDInfo *)self scheme];
  v3 = [v2 idNamespace];

  return v3;
}

- (double)lifespan
{
  v2 = [(MTIDInfo *)self scheme];
  v3 = [v2 lifespan];

  return v3;
}

- (BOOL)isValueExpired
{
  v2 = [(MTIDInfo *)self expirationDate];
  if (v2)
  {
    v3 = +[MTFrameworkEnvironment sharedEnvironment];
    v4 = [v3 date];

    v5 = [v4 compare:v2] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDictionary)metricsFields
{
  v3 = [(MTIDInfo *)self idString];
  if (v3 && (v4 = v3, v5 = [(MTIDInfo *)self shouldGenerateMetricsFields], v4, v5))
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v7 = [(MTIDInfo *)self idType];
    if (v7 == 1)
    {
      v15 = [(MTIDInfo *)self idString];
      [v6 setObject:v15 forKeyedSubscript:@"clientId"];

      [v6 setObject:@"device" forKeyedSubscript:@"xpClientIdSource"];
    }

    else if (v7 == 2)
    {
      v8 = [(MTIDInfo *)self idString];
      [v6 setObject:v8 forKeyedSubscript:@"userId"];

      v9 = [(MTIDInfo *)self isSynchronized]? @"synchronized" : @"unsynchronized";
      [v6 setObject:v9 forKeyedSubscript:@"xpUserIdSyncState"];
      [(MTIDInfo *)self lifespan];
      if (v10 > 0.0)
      {
        v11 = MEMORY[0x277CCABB0];
        [(MTIDInfo *)self lifespan];
        v13 = [v11 numberWithDouble:v12 * 1000.0];
        [v6 setObject:v13 forKeyedSubscript:@"xpUserIdLifespan"];
      }
    }

    v14 = [v6 copy];
  }

  else
  {
    v14 = MEMORY[0x277CBEC10];
  }

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MTIDInfo *)self idString];
  v7 = [(MTIDInfo *)self scheme];
  v8 = [v7 idNamespace];
  v9 = [v3 stringWithFormat:@"<%@: %p, idString: %@, namespace: %@ >", v5, self, v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(MTIDInfo *)self scheme];
    v7 = [v6 idNamespace];
    v8 = [v5 scheme];
    v9 = [v8 idNamespace];
    if ([v7 isEqual:v9])
    {
      v10 = [(MTIDInfo *)self idString];
      v11 = [v5 idString];
      if ([v10 isEqual:v11])
      {
        v12 = [(MTIDInfo *)self expirationDate];
        v13 = [v5 expirationDate];
        if (v12 == v13)
        {
          v15 = 1;
        }

        else
        {
          v18 = v13;
          v17 = [(MTIDInfo *)self expirationDate];
          [v5 expirationDate];
          v14 = v19 = v12;
          v15 = [v17 isEqual:v14];

          v12 = v19;
          v13 = v18;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)debugInfo
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(MTIDInfo *)self idString];
  [v3 setObject:v4 forKeyedSubscript:@"ID"];

  v5 = [(MTIDInfo *)self scheme];
  v6 = [v5 idNamespace];
  [v3 setObject:v6 forKeyedSubscript:@"namespace"];

  v7 = [(MTIDInfo *)self secret];
  v8 = [v7 debugInfo];
  [v3 setObject:v8 forKeyedSubscript:@"secret"];

  v9 = [(MTIDInfo *)self effectiveDate];
  v10 = [v9 description];
  [v3 setObject:v10 forKeyedSubscript:@"effectiveDate"];

  v11 = [(MTIDInfo *)self expirationDate];
  v12 = [v11 description];
  [v3 setObject:v12 forKeyedSubscript:@"expirationDate"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[MTIDInfo isSynchronized](self, "isSynchronized")}];
  [v3 setObject:v13 forKeyedSubscript:@"isSynchronized"];

  v14 = [(MTIDInfo *)self dsId];
  [v3 setObject:v14 forKeyedSubscript:@"dsId"];

  v15 = [v3 copy];

  return v15;
}

@end