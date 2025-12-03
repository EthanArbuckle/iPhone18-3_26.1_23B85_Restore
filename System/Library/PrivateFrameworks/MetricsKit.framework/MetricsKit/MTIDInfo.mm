@interface MTIDInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isValueExpired;
- (MTIDInfo)initWithScheme:(id)scheme secret:(id)secret idString:(id)string dsId:(id)id effectiveDate:(id)date expirationDate:(id)expirationDate shouldGenerateMetricsFields:(BOOL)fields;
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
  scheme = [(MTIDInfo *)self scheme];
  idType = [scheme idType];

  return idType;
}

- (MTIDInfo)initWithScheme:(id)scheme secret:(id)secret idString:(id)string dsId:(id)id effectiveDate:(id)date expirationDate:(id)expirationDate shouldGenerateMetricsFields:(BOOL)fields
{
  schemeCopy = scheme;
  secretCopy = secret;
  stringCopy = string;
  idCopy = id;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  v26.receiver = self;
  v26.super_class = MTIDInfo;
  v21 = [(MTIDInfo *)&v26 init];
  v22 = v21;
  if (v21)
  {
    [(MTIDInfo *)v21 setScheme:schemeCopy];
    [(MTIDInfo *)v22 setSecret:secretCopy];
    [(MTIDInfo *)v22 setIdString:stringCopy];
    [(MTIDInfo *)v22 setDsId:idCopy];
    [(MTIDInfo *)v22 setExpirationDate:expirationDateCopy];
    [(MTIDInfo *)v22 setEffectiveDate:dateCopy];
    [(MTIDInfo *)v22 setShouldGenerateMetricsFields:fields];
    v23 = +[MTFrameworkEnvironment sharedEnvironment];
    date = [v23 date];
    [(MTIDInfo *)v22 setComputedDate:date];
  }

  return v22;
}

- (NSString)idNamespace
{
  scheme = [(MTIDInfo *)self scheme];
  idNamespace = [scheme idNamespace];

  return idNamespace;
}

- (double)lifespan
{
  scheme = [(MTIDInfo *)self scheme];
  lifespan = [scheme lifespan];

  return lifespan;
}

- (BOOL)isValueExpired
{
  expirationDate = [(MTIDInfo *)self expirationDate];
  if (expirationDate)
  {
    v3 = +[MTFrameworkEnvironment sharedEnvironment];
    date = [v3 date];

    v5 = [date compare:expirationDate] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDictionary)metricsFields
{
  idString = [(MTIDInfo *)self idString];
  if (idString && (v4 = idString, v5 = [(MTIDInfo *)self shouldGenerateMetricsFields], v4, v5))
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    idType = [(MTIDInfo *)self idType];
    if (idType == 1)
    {
      idString2 = [(MTIDInfo *)self idString];
      [v6 setObject:idString2 forKeyedSubscript:@"clientId"];

      [v6 setObject:@"device" forKeyedSubscript:@"xpClientIdSource"];
    }

    else if (idType == 2)
    {
      idString3 = [(MTIDInfo *)self idString];
      [v6 setObject:idString3 forKeyedSubscript:@"userId"];

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
  idString = [(MTIDInfo *)self idString];
  scheme = [(MTIDInfo *)self scheme];
  idNamespace = [scheme idNamespace];
  v9 = [v3 stringWithFormat:@"<%@: %p, idString: %@, namespace: %@ >", v5, self, idString, idNamespace];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    scheme = [(MTIDInfo *)self scheme];
    idNamespace = [scheme idNamespace];
    scheme2 = [v5 scheme];
    idNamespace2 = [scheme2 idNamespace];
    if ([idNamespace isEqual:idNamespace2])
    {
      idString = [(MTIDInfo *)self idString];
      idString2 = [v5 idString];
      if ([idString isEqual:idString2])
      {
        expirationDate = [(MTIDInfo *)self expirationDate];
        expirationDate2 = [v5 expirationDate];
        if (expirationDate == expirationDate2)
        {
          v15 = 1;
        }

        else
        {
          v18 = expirationDate2;
          expirationDate3 = [(MTIDInfo *)self expirationDate];
          [v5 expirationDate];
          v14 = v19 = expirationDate;
          v15 = [expirationDate3 isEqual:v14];

          expirationDate = v19;
          expirationDate2 = v18;
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  idString = [(MTIDInfo *)self idString];
  [dictionary setObject:idString forKeyedSubscript:@"ID"];

  scheme = [(MTIDInfo *)self scheme];
  idNamespace = [scheme idNamespace];
  [dictionary setObject:idNamespace forKeyedSubscript:@"namespace"];

  secret = [(MTIDInfo *)self secret];
  debugInfo = [secret debugInfo];
  [dictionary setObject:debugInfo forKeyedSubscript:@"secret"];

  effectiveDate = [(MTIDInfo *)self effectiveDate];
  v10 = [effectiveDate description];
  [dictionary setObject:v10 forKeyedSubscript:@"effectiveDate"];

  expirationDate = [(MTIDInfo *)self expirationDate];
  v12 = [expirationDate description];
  [dictionary setObject:v12 forKeyedSubscript:@"expirationDate"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[MTIDInfo isSynchronized](self, "isSynchronized")}];
  [dictionary setObject:v13 forKeyedSubscript:@"isSynchronized"];

  dsId = [(MTIDInfo *)self dsId];
  [dictionary setObject:dsId forKeyedSubscript:@"dsId"];

  v15 = [dictionary copy];

  return v15;
}

@end