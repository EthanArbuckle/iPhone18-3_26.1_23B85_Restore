@interface DAOofParams
- (DAOofParams)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationForASSettingTask;
- (void)enableOof:(BOOL)oof From:(id)from to:(id)to withMessage:(id)message;
@end

@implementation DAOofParams

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  oofState = [(DAOofParams *)self oofState];
  startTime = [(DAOofParams *)self startTime];
  endTime = [(DAOofParams *)self endTime];
  message = [(DAOofParams *)self message];
  externalState = [(DAOofParams *)self externalState];
  externalMessage = [(DAOofParams *)self externalMessage];
  v10 = [v3 stringWithFormat:@"oofState:%d startTime:%@ endTime:%@ message:%@ externalState:%d externalMessage:%@", oofState, startTime, endTime, message, externalState, externalMessage];

  return v10;
}

- (DAOofParams)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = DAOofParams;
  v5 = [(DAOofParams *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"kDASettingsOofStateKey"];

    if (v6)
    {
      v7 = [dictionaryCopy objectForKey:@"kDASettingsOofStateKey"];
      -[DAOofParams setOofState:](v5, "setOofState:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKey:@"kDASettingsStartTimeKey"];
    [(DAOofParams *)v5 setStartTime:v8];

    v9 = [dictionaryCopy objectForKey:@"kDASettingsEndTimeKey"];
    [(DAOofParams *)v5 setEndTime:v9];

    v10 = [dictionaryCopy objectForKey:@"kDASettingsOofInternalMessageKey"];
    [(DAOofParams *)v5 setMessage:v10];

    v11 = [dictionaryCopy objectForKey:@"kDASettingsOofExternalStateKey"];

    if (v11)
    {
      v12 = [dictionaryCopy objectForKey:@"kDASettingsOofExternalStateKey"];
      -[DAOofParams setExternalState:](v5, "setExternalState:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKey:@"kDASettingsOofExternalMessageKey"];
    [(DAOofParams *)v5 setExternalMessage:v13];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[DAOofParams oofState](self, "oofState")}];
  [v3 setObject:v4 forKeyedSubscript:@"kDASettingsOofStateKey"];

  startTime = [(DAOofParams *)self startTime];

  if (startTime)
  {
    startTime2 = [(DAOofParams *)self startTime];
    [v3 setObject:startTime2 forKeyedSubscript:@"kDASettingsStartTimeKey"];
  }

  endTime = [(DAOofParams *)self endTime];

  if (endTime)
  {
    endTime2 = [(DAOofParams *)self endTime];
    [v3 setObject:endTime2 forKeyedSubscript:@"kDASettingsEndTimeKey"];
  }

  message = [(DAOofParams *)self message];

  if (message)
  {
    message2 = [(DAOofParams *)self message];
    [v3 setObject:message2 forKeyedSubscript:@"kDASettingsOofInternalMessageKey"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[DAOofParams externalState](self, "externalState")}];
  [v3 setObject:v11 forKeyedSubscript:@"kDASettingsOofExternalStateKey"];

  externalMessage = [(DAOofParams *)self externalMessage];

  if (externalMessage)
  {
    externalMessage2 = [(DAOofParams *)self externalMessage];
    [v3 setObject:externalMessage2 forKeyedSubscript:@"kDASettingsOofExternalMessageKey"];
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

  startTime = [(DAOofParams *)self startTime];

  if (startTime)
  {
    startTime2 = [(DAOofParams *)self startTime];
    v9 = [v5 stringFromDate:startTime2];
    [v3 setObject:v9 forKeyedSubscript:@"kDASettingsStartTimeKey"];
  }

  endTime = [(DAOofParams *)self endTime];

  if (endTime)
  {
    endTime2 = [(DAOofParams *)self endTime];
    v12 = [v5 stringFromDate:endTime2];
    [v3 setObject:v12 forKeyedSubscript:@"kDASettingsEndTimeKey"];
  }

  v13 = objc_opt_new();
  message = [(DAOofParams *)self message];

  if (message)
  {
    v15 = v13;
    v16 = objc_opt_new();
    [v16 setObject:&unk_2837D0000 forKeyedSubscript:@"kDASettingsAudienceKey"];
    [v16 setObject:&unk_2837D0018 forKeyedSubscript:@"kDASettingsEnabledKey"];
    message2 = [(DAOofParams *)self message];
    [v16 setObject:message2 forKeyedSubscript:@"kDASettingsReplyMessageKey"];

    v13 = v15;
    [v16 setObject:@"TEXT" forKeyedSubscript:@"kDASettingsBodyTypeKey"];
    [v15 addObject:v16];
  }

  externalMessage = [(DAOofParams *)self externalMessage];

  if (externalMessage)
  {
    v19 = objc_opt_new();
    [v19 setObject:&unk_2837D0018 forKeyedSubscript:@"kDASettingsAudienceKey"];
    if ([(DAOofParams *)self externalState])
    {
      v20 = &unk_2837D0018;
    }

    else
    {
      v20 = &unk_2837D0000;
    }

    [v19 setObject:v20 forKeyedSubscript:@"kDASettingsEnabledKey"];
    externalMessage2 = [(DAOofParams *)self externalMessage];
    [v19 setObject:externalMessage2 forKeyedSubscript:@"kDASettingsReplyMessageKey"];

    [v19 setObject:@"TEXT" forKeyedSubscript:@"kDASettingsBodyTypeKey"];
    [v13 addObject:v19];
    v22 = objc_opt_new();
    [v22 setObject:&unk_2837D0030 forKeyedSubscript:@"kDASettingsAudienceKey"];
    if ([(DAOofParams *)self externalState]== 2)
    {
      v23 = &unk_2837D0018;
    }

    else
    {
      v23 = &unk_2837D0000;
    }

    [v22 setObject:v23 forKeyedSubscript:@"kDASettingsEnabledKey"];
    externalMessage3 = [(DAOofParams *)self externalMessage];
    [v22 setObject:externalMessage3 forKeyedSubscript:@"kDASettingsReplyMessageKey"];

    [v22 setObject:@"TEXT" forKeyedSubscript:@"kDASettingsBodyTypeKey"];
    [v13 addObject:v22];
  }

  [v27 setObject:v13 forKeyedSubscript:@"kDASettingsOofMessagesKey"];

  return v27;
}

- (void)enableOof:(BOOL)oof From:(id)from to:(id)to withMessage:(id)message
{
  if (oof)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  messageCopy = message;
  toCopy = to;
  fromCopy = from;
  [(DAOofParams *)self setOofState:v9];
  [(DAOofParams *)self setStartTime:fromCopy];

  [(DAOofParams *)self setEndTime:toCopy];
  [(DAOofParams *)self setMessage:messageCopy];
}

@end