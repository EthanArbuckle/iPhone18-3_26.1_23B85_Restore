@interface DAOofParams
- (DAOofParams)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationForASSettingTask;
- (void)enableOof:(BOOL)a3 From:(id)a4 to:(id)a5 withMessage:(id)a6;
@end

@implementation DAOofParams

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [(DAOofParams *)self oofState];
  v5 = [(DAOofParams *)self startTime];
  v6 = [(DAOofParams *)self endTime];
  v7 = [(DAOofParams *)self message];
  v8 = [(DAOofParams *)self externalState];
  v9 = [(DAOofParams *)self externalMessage];
  v10 = [v3 stringWithFormat:@"oofState:%d startTime:%@ endTime:%@ message:%@ externalState:%d externalMessage:%@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (DAOofParams)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DAOofParams;
  v5 = [(DAOofParams *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"kDASettingsOofStateKey"];

    if (v6)
    {
      v7 = [v4 objectForKey:@"kDASettingsOofStateKey"];
      -[DAOofParams setOofState:](v5, "setOofState:", [v7 intValue]);
    }

    v8 = [v4 objectForKey:@"kDASettingsStartTimeKey"];
    [(DAOofParams *)v5 setStartTime:v8];

    v9 = [v4 objectForKey:@"kDASettingsEndTimeKey"];
    [(DAOofParams *)v5 setEndTime:v9];

    v10 = [v4 objectForKey:@"kDASettingsOofInternalMessageKey"];
    [(DAOofParams *)v5 setMessage:v10];

    v11 = [v4 objectForKey:@"kDASettingsOofExternalStateKey"];

    if (v11)
    {
      v12 = [v4 objectForKey:@"kDASettingsOofExternalStateKey"];
      -[DAOofParams setExternalState:](v5, "setExternalState:", [v12 intValue]);
    }

    v13 = [v4 objectForKey:@"kDASettingsOofExternalMessageKey"];
    [(DAOofParams *)v5 setExternalMessage:v13];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[DAOofParams oofState](self, "oofState")}];
  [v3 setObject:v4 forKeyedSubscript:@"kDASettingsOofStateKey"];

  v5 = [(DAOofParams *)self startTime];

  if (v5)
  {
    v6 = [(DAOofParams *)self startTime];
    [v3 setObject:v6 forKeyedSubscript:@"kDASettingsStartTimeKey"];
  }

  v7 = [(DAOofParams *)self endTime];

  if (v7)
  {
    v8 = [(DAOofParams *)self endTime];
    [v3 setObject:v8 forKeyedSubscript:@"kDASettingsEndTimeKey"];
  }

  v9 = [(DAOofParams *)self message];

  if (v9)
  {
    v10 = [(DAOofParams *)self message];
    [v3 setObject:v10 forKeyedSubscript:@"kDASettingsOofInternalMessageKey"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[DAOofParams externalState](self, "externalState")}];
  [v3 setObject:v11 forKeyedSubscript:@"kDASettingsOofExternalStateKey"];

  v12 = [(DAOofParams *)self externalMessage];

  if (v12)
  {
    v13 = [(DAOofParams *)self externalMessage];
    [v3 setObject:v13 forKeyedSubscript:@"kDASettingsOofExternalMessageKey"];
  }

  return v3;
}

- (id)dictionaryRepresentationForASSettingTask
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[DAOofParams oofState](self, "oofState")}];
  v27 = v3;
  [v3 setObject:v4 forKeyedSubscript:@"kDASettingsOofStateKey"];

  v5 = objc_opt_new();
  v26 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v5 setLocale:?];
  [v5 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'.000Z'"];
  v6 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v5 setTimeZone:v6];

  v7 = [(DAOofParams *)self startTime];

  if (v7)
  {
    v8 = [(DAOofParams *)self startTime];
    v9 = [v5 stringFromDate:v8];
    [v3 setObject:v9 forKeyedSubscript:@"kDASettingsStartTimeKey"];
  }

  v10 = [(DAOofParams *)self endTime];

  if (v10)
  {
    v11 = [(DAOofParams *)self endTime];
    v12 = [v5 stringFromDate:v11];
    [v3 setObject:v12 forKeyedSubscript:@"kDASettingsEndTimeKey"];
  }

  v13 = objc_opt_new();
  v14 = [(DAOofParams *)self message];

  if (v14)
  {
    v15 = v13;
    v16 = objc_opt_new();
    [v16 setObject:&unk_2854C8DD8 forKeyedSubscript:@"kDASettingsAudienceKey"];
    [v16 setObject:&unk_2854C8DF0 forKeyedSubscript:@"kDASettingsEnabledKey"];
    v17 = [(DAOofParams *)self message];
    [v16 setObject:v17 forKeyedSubscript:@"kDASettingsReplyMessageKey"];

    v13 = v15;
    [v16 setObject:@"TEXT" forKeyedSubscript:@"kDASettingsBodyTypeKey"];
    [v15 addObject:v16];
  }

  v18 = [(DAOofParams *)self externalMessage];

  if (v18)
  {
    v19 = objc_opt_new();
    [v19 setObject:&unk_2854C8DF0 forKeyedSubscript:@"kDASettingsAudienceKey"];
    if ([(DAOofParams *)self externalState])
    {
      v20 = &unk_2854C8DF0;
    }

    else
    {
      v20 = &unk_2854C8DD8;
    }

    [v19 setObject:v20 forKeyedSubscript:@"kDASettingsEnabledKey"];
    v21 = [(DAOofParams *)self externalMessage];
    [v19 setObject:v21 forKeyedSubscript:@"kDASettingsReplyMessageKey"];

    [v19 setObject:@"TEXT" forKeyedSubscript:@"kDASettingsBodyTypeKey"];
    [v13 addObject:v19];
    v22 = objc_opt_new();
    [v22 setObject:&unk_2854C8E08 forKeyedSubscript:@"kDASettingsAudienceKey"];
    if ([(DAOofParams *)self externalState]== 2)
    {
      v23 = &unk_2854C8DF0;
    }

    else
    {
      v23 = &unk_2854C8DD8;
    }

    [v22 setObject:v23 forKeyedSubscript:@"kDASettingsEnabledKey"];
    v24 = [(DAOofParams *)self externalMessage];
    [v22 setObject:v24 forKeyedSubscript:@"kDASettingsReplyMessageKey"];

    [v22 setObject:@"TEXT" forKeyedSubscript:@"kDASettingsBodyTypeKey"];
    [v13 addObject:v22];
  }

  [v27 setObject:v13 forKeyedSubscript:@"kDASettingsOofMessagesKey"];

  return v27;
}

- (void)enableOof:(BOOL)a3 From:(id)a4 to:(id)a5 withMessage:(id)a6
{
  if (a3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v12 = a6;
  v10 = a5;
  v11 = a4;
  [(DAOofParams *)self setOofState:v9];
  [(DAOofParams *)self setStartTime:v11];

  [(DAOofParams *)self setEndTime:v10];
  [(DAOofParams *)self setMessage:v12];
}

@end