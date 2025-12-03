@interface EDPersistedBIMIInfo
- (BOOL)isEqual:(id)equal;
- (EDPersistedBIMIInfo)initWithBIMIInfo:(id)info indicatorDatabaseID:(int64_t)d evidenceDatabaseID:(int64_t)iD;
- (NSData)indicator;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation EDPersistedBIMIInfo

- (EDPersistedBIMIInfo)initWithBIMIInfo:(id)info indicatorDatabaseID:(int64_t)d evidenceDatabaseID:(int64_t)iD
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = EDPersistedBIMIInfo;
  v10 = [(EDPersistedBIMIInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bimiInfo, info);
    v11->_indicatorDatabaseID = d;
    v11->_evidenceDatabaseID = iD;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (([(EDPersistedBIMIInfo *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = equalCopy;
    indicatorDatabaseID = [(EDPersistedBIMIInfo *)self indicatorDatabaseID];
    if (indicatorDatabaseID == [(EDPersistedBIMIInfo *)v5 indicatorDatabaseID])
    {
      evidenceDatabaseID = [(EDPersistedBIMIInfo *)self evidenceDatabaseID];
      v8 = evidenceDatabaseID == [(EDPersistedBIMIInfo *)v5 evidenceDatabaseID];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  bimiInfo = [(EDPersistedBIMIInfo *)self bimiInfo];
  v6 = [v4 initWithBIMIInfo:bimiInfo indicatorDatabaseID:-[EDPersistedBIMIInfo indicatorDatabaseID](self evidenceDatabaseID:{"indicatorDatabaseID"), -[EDPersistedBIMIInfo evidenceDatabaseID](self, "evidenceDatabaseID")}];

  internalIndicator = [(EDPersistedBIMIInfo *)self internalIndicator];

  if (internalIndicator)
  {
    internalIndicator2 = [(EDPersistedBIMIInfo *)self internalIndicator];
    [v6 setIndicator:internalIndicator2];
  }

  evidence = [(EDPersistedBIMIInfo *)self evidence];
  [v6 setEvidence:evidence];

  unverifiedMessageDatabaseIDs = [(EDPersistedBIMIInfo *)self unverifiedMessageDatabaseIDs];
  [v6 setUnverifiedMessageDatabaseIDs:unverifiedMessageDatabaseIDs];

  return v6;
}

- (NSData)indicator
{
  internalIndicator = [(EDPersistedBIMIInfo *)self internalIndicator];
  v4 = internalIndicator;
  if (internalIndicator)
  {
    indicator = internalIndicator;
  }

  else
  {
    bimiInfo = [(EDPersistedBIMIInfo *)self bimiInfo];
    indicator = [bimiInfo indicator];
  }

  return indicator;
}

@end