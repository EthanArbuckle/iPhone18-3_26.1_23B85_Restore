@interface EDPersistedBIMIInfo
- (BOOL)isEqual:(id)a3;
- (EDPersistedBIMIInfo)initWithBIMIInfo:(id)a3 indicatorDatabaseID:(int64_t)a4 evidenceDatabaseID:(int64_t)a5;
- (NSData)indicator;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation EDPersistedBIMIInfo

- (EDPersistedBIMIInfo)initWithBIMIInfo:(id)a3 indicatorDatabaseID:(int64_t)a4 evidenceDatabaseID:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = EDPersistedBIMIInfo;
  v10 = [(EDPersistedBIMIInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bimiInfo, a3);
    v11->_indicatorDatabaseID = a4;
    v11->_evidenceDatabaseID = a5;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (([(EDPersistedBIMIInfo *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = v4;
    v6 = [(EDPersistedBIMIInfo *)self indicatorDatabaseID];
    if (v6 == [(EDPersistedBIMIInfo *)v5 indicatorDatabaseID])
    {
      v7 = [(EDPersistedBIMIInfo *)self evidenceDatabaseID];
      v8 = v7 == [(EDPersistedBIMIInfo *)v5 evidenceDatabaseID];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(EDPersistedBIMIInfo *)self bimiInfo];
  v6 = [v4 initWithBIMIInfo:v5 indicatorDatabaseID:-[EDPersistedBIMIInfo indicatorDatabaseID](self evidenceDatabaseID:{"indicatorDatabaseID"), -[EDPersistedBIMIInfo evidenceDatabaseID](self, "evidenceDatabaseID")}];

  v7 = [(EDPersistedBIMIInfo *)self internalIndicator];

  if (v7)
  {
    v8 = [(EDPersistedBIMIInfo *)self internalIndicator];
    [v6 setIndicator:v8];
  }

  v9 = [(EDPersistedBIMIInfo *)self evidence];
  [v6 setEvidence:v9];

  v10 = [(EDPersistedBIMIInfo *)self unverifiedMessageDatabaseIDs];
  [v6 setUnverifiedMessageDatabaseIDs:v10];

  return v6;
}

- (NSData)indicator
{
  v3 = [(EDPersistedBIMIInfo *)self internalIndicator];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(EDPersistedBIMIInfo *)self bimiInfo];
    v5 = [v6 indicator];
  }

  return v5;
}

@end