@interface GEOAPDailyCountsQueueElem
- (BOOL)isEqual:(id)equal;
- (GEOAPDailyCountsQueueElem)initWithType:(int)type usageString:(id)string usageBool:(id)bool appId:(id)id createTime:(id)time;
- (id)copy;
- (unint64_t)hash;
@end

@implementation GEOAPDailyCountsQueueElem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    usageString = [(GEOAPDailyCountsQueueElem *)self usageString];
    usageString2 = [v5 usageString];
    v8 = (usageString != 0) ^ (usageString2 != 0);

    if (v8)
    {
      goto LABEL_18;
    }

    usageBool = [(GEOAPDailyCountsQueueElem *)self usageBool];
    usageBool2 = [v5 usageBool];
    v11 = (usageBool != 0) ^ (usageBool2 != 0);

    if (v11)
    {
      goto LABEL_18;
    }

    usageString3 = [(GEOAPDailyCountsQueueElem *)self usageString];
    if (usageString3)
    {
      v13 = usageString3;
      usageString4 = [v5 usageString];

      if (usageString4)
      {
        usageString5 = [(GEOAPDailyCountsQueueElem *)self usageString];
        usageString6 = [v5 usageString];
        v17 = [usageString5 isEqualToString:usageString6];

        if (!v17)
        {
          goto LABEL_18;
        }
      }
    }

    usageBool3 = [(GEOAPDailyCountsQueueElem *)self usageBool];
    if (usageBool3)
    {
      v19 = usageBool3;
      usageBool4 = [v5 usageBool];

      if (usageBool4)
      {
        usageBool5 = [(GEOAPDailyCountsQueueElem *)self usageBool];
        bOOLValue = [usageBool5 BOOLValue];
        usageBool6 = [v5 usageBool];
        bOOLValue2 = [usageBool6 BOOLValue];

        if (bOOLValue != bOOLValue2)
        {
          goto LABEL_18;
        }
      }
    }

    createTime = [v5 createTime];
    createTime2 = [(GEOAPQueueElem *)self createTime];
    [createTime timeIntervalSinceDate:createTime2];
    v28 = v27;

    LODWORD(createTime) = [(GEOAPDailyCountsQueueElem *)self countType];
    if (createTime != [v5 countType])
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

      appId = [(GEOAPDailyCountsQueueElem *)self appId];
      appId2 = [v5 appId];
      v31 = [appId isEqualToString:appId2];
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

- (GEOAPDailyCountsQueueElem)initWithType:(int)type usageString:(id)string usageBool:(id)bool appId:(id)id createTime:(id)time
{
  stringCopy = string;
  boolCopy = bool;
  idCopy = id;
  timeCopy = time;
  v20.receiver = self;
  v20.super_class = GEOAPDailyCountsQueueElem;
  v17 = [(GEOAPQueueElem *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->super._createTime, time);
    v18->_countType = type;
    objc_storeStrong(&v18->_usageString, string);
    objc_storeStrong(&v18->_usageBool, bool);
    objc_storeStrong(&v18->_appId, id);
  }

  return v18;
}

@end