@interface GEOAPDailyCountsQueueElem
- (BOOL)isEqual:(id)a3;
- (GEOAPDailyCountsQueueElem)initWithType:(int)a3 usageString:(id)a4 usageBool:(id)a5 appId:(id)a6 createTime:(id)a7;
- (id)copy;
- (unint64_t)hash;
@end

@implementation GEOAPDailyCountsQueueElem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GEOAPDailyCountsQueueElem *)self usageString];
    v7 = [v5 usageString];
    v8 = (v6 != 0) ^ (v7 != 0);

    if (v8)
    {
      goto LABEL_18;
    }

    v9 = [(GEOAPDailyCountsQueueElem *)self usageBool];
    v10 = [v5 usageBool];
    v11 = (v9 != 0) ^ (v10 != 0);

    if (v11)
    {
      goto LABEL_18;
    }

    v12 = [(GEOAPDailyCountsQueueElem *)self usageString];
    if (v12)
    {
      v13 = v12;
      v14 = [v5 usageString];

      if (v14)
      {
        v15 = [(GEOAPDailyCountsQueueElem *)self usageString];
        v16 = [v5 usageString];
        v17 = [v15 isEqualToString:v16];

        if (!v17)
        {
          goto LABEL_18;
        }
      }
    }

    v18 = [(GEOAPDailyCountsQueueElem *)self usageBool];
    if (v18)
    {
      v19 = v18;
      v20 = [v5 usageBool];

      if (v20)
      {
        v21 = [(GEOAPDailyCountsQueueElem *)self usageBool];
        v22 = [v21 BOOLValue];
        v23 = [v5 usageBool];
        v24 = [v23 BOOLValue];

        if (v22 != v24)
        {
          goto LABEL_18;
        }
      }
    }

    v25 = [v5 createTime];
    v26 = [(GEOAPQueueElem *)self createTime];
    [v25 timeIntervalSinceDate:v26];
    v28 = v27;

    LODWORD(v25) = [(GEOAPDailyCountsQueueElem *)self countType];
    if (v25 != [v5 countType])
    {
LABEL_18:
      v32 = 0;
    }

    else
    {
      if (v28 < 0.0)
      {
        v28 = -v28;
      }

      v29 = [(GEOAPDailyCountsQueueElem *)self appId];
      v30 = [v5 appId];
      v31 = [v29 isEqualToString:v30];
      if (v28 < 1.0)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (unint64_t)hash
{
  countType = self->_countType;
  v4 = [(NSString *)self->_usageString hash]^ countType;
  v5 = [(NSNumber *)self->_usageBool hash];
  return v4 ^ v5 ^ [(NSString *)self->_appId hash];
}

- (id)copy
{
  v3 = [GEOAPDailyCountsQueueElem alloc];
  countType = self->_countType;
  usageString = self->_usageString;
  usageBool = self->_usageBool;
  appId = self->_appId;
  createTime = self->super._createTime;

  return [(GEOAPDailyCountsQueueElem *)v3 initWithType:countType usageString:usageString usageBool:usageBool appId:appId createTime:createTime];
}

- (GEOAPDailyCountsQueueElem)initWithType:(int)a3 usageString:(id)a4 usageBool:(id)a5 appId:(id)a6 createTime:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = GEOAPDailyCountsQueueElem;
  v17 = [(GEOAPQueueElem *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->super._createTime, a7);
    v18->_countType = a3;
    objc_storeStrong(&v18->_usageString, a4);
    objc_storeStrong(&v18->_usageBool, a5);
    objc_storeStrong(&v18->_appId, a6);
  }

  return v18;
}

@end