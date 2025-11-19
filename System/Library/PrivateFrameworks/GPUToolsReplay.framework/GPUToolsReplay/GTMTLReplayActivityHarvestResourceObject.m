@interface GTMTLReplayActivityHarvestResourceObject
- (GTMTLReplayActivityHarvestResourceObject)initWithAttributes:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)jsonObject;
- (id)summary;
- (void)outputToLog:(id)a3;
@end

@implementation GTMTLReplayActivityHarvestResourceObject

- (void)outputToLog:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a3, OS_LOG_TYPE_INFO))
  {
    activityType = self->super._activityType;
    attributes = self->_attributes;
    v8 = 138543618;
    v9 = activityType;
    v10 = 2114;
    v11 = attributes;
    _os_log_impl(&dword_24D764000, a3, OS_LOG_TYPE_INFO, "%{public}@:\t%{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)jsonObject
{
  v24 = *MEMORY[0x277D85DE8];
  v22[0] = self->super._activityType;
  v21[0] = @"activityType";
  v21[1] = @"attributes";
  v3 = self->_attributes;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v3];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(NSDictionary *)v5 objectForKeyedSubscript:v10, v17];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 setObject:@"(custom data)" forKey:v10];
        }
      }

      v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v22[1] = v4;
  v21[2] = @"activityStartTime";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityStartTime];
  v22[2] = v12;
  v21[3] = @"activityEndTime";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityEndTime];
  v22[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)summary
{
  v2 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:@"type"];
  if (!v2)
  {
    v3 = @"a";
    goto LABEL_9;
  }

  objc_opt_class();
  v3 = @"a";
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:
    v6 = @"resource";
    goto LABEL_21;
  }

  v4 = [v2 unsignedLongLongValue];
  if (v4 > 23)
  {
    if (v4 == 24)
    {
      v5 = "Indirect command buffer";
      goto LABEL_19;
    }

    if (v4 != 39)
    {
      if (v4 == 48)
      {
        v5 = "Pipeline Binaries";
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v5 = "Rasterization rate map";
  }

  else
  {
    if (v4 == 1)
    {
      v5 = "Texture";
      goto LABEL_19;
    }

    if (v4 != 2)
    {
      if (v4 == 22)
      {
        v5 = "Threadgroup buffer";
        goto LABEL_19;
      }

LABEL_16:
      v5 = "Resource";
      goto LABEL_19;
    }

    v5 = "Buffer";
  }

LABEL_19:
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  if (v4 == 24)
  {
    v3 = @"an";
  }

LABEL_21:
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting %@ %@", v3, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = GTMTLReplayActivityHarvestResourceObject;
  v4 = [(GTMTLReplayActivity *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 5, self->_attributes);
  }

  return v5;
}

- (GTMTLReplayActivityHarvestResourceObject)initWithAttributes:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GTMTLReplayActivityHarvestResourceObject;
  v6 = [(GTMTLReplayActivity *)&v9 initWithType:@"harvestResourceObject"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributes, a3);
  }

  return v7;
}

@end