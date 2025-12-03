@interface MPCSharedSessionParticipant
+ (id)payloadValueFromJSONValue:(id)value;
- (id)humanDescription;
- (id)mpc_jsonValue;
@end

@implementation MPCSharedSessionParticipant

- (id)mpc_jsonValue
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self)
  {
    sessionType = self->_sessionType;
  }

  else
  {
    sessionType = 0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:sessionType];
  [v3 setObject:v5 forKeyedSubscript:@"sessionType"];

  if (self)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_local];
    [v3 setObject:v6 forKeyedSubscript:@"isLocal"];

    expanseIdentifier = self->_expanseIdentifier;
  }

  else
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:0];
    [v3 setObject:v17 forKeyedSubscript:@"isLocal"];

    expanseIdentifier = 0;
  }

  v8 = expanseIdentifier;
  [v3 setObject:v8 forKeyedSubscript:@"expanseID"];

  if (self)
  {
    liveLinkIdentifier = self->_liveLinkIdentifier;
  }

  else
  {
    liveLinkIdentifier = 0;
  }

  v10 = liveLinkIdentifier;
  [v3 setObject:v10 forKeyedSubscript:@"liveLinkID"];

  if (self)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_liveLinkServiceIdentifier];
    [v3 setObject:v11 forKeyedSubscript:@"liveLinkServerID"];

    mediaRemoteGroupSessionIdentifier = self->_mediaRemoteGroupSessionIdentifier;
  }

  else
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    [v3 setObject:v18 forKeyedSubscript:@"liveLinkServerID"];

    mediaRemoteGroupSessionIdentifier = 0;
  }

  v13 = mediaRemoteGroupSessionIdentifier;
  [v3 setObject:v13 forKeyedSubscript:@"mrGroupSessionID"];

  if (self)
  {
    mediaRemoteUserIdentityIdentifier = self->_mediaRemoteUserIdentityIdentifier;
  }

  else
  {
    mediaRemoteUserIdentityIdentifier = 0;
  }

  v15 = mediaRemoteUserIdentityIdentifier;
  [v3 setObject:v15 forKeyedSubscript:@"mrUserIdentityID"];

  return v3;
}

+ (id)payloadValueFromJSONValue:(id)value
{
  valueCopy = value;
  v4 = [valueCopy objectForKeyedSubscript:@"sessionType"];
  integerValue = [v4 integerValue];

  v6 = [MPCSharedSessionParticipant alloc];
  if (v6)
  {
    v22.receiver = v6;
    v22.super_class = MPCSharedSessionParticipant;
    v7 = objc_msgSendSuper2(&v22, sel_init);
    v8 = v7;
    if (v7)
    {
      v7[2] = integerValue;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [valueCopy objectForKeyedSubscript:@"isLocal"];
  bOOLValue = [v9 BOOLValue];
  if (v8)
  {
    *(v8 + 8) = bOOLValue;
  }

  v12 = [valueCopy objectForKeyedSubscript:@"expanseID"];
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v11, v12, 24);
  }

  v14 = [valueCopy objectForKeyedSubscript:@"liveLinkID"];
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v13, v14, 32);
  }

  v15 = [valueCopy objectForKeyedSubscript:@"liveLinkServerID"];
  longLongValue = [v15 longLongValue];
  if (v8)
  {
    v8[5] = longLongValue;
  }

  v18 = [valueCopy objectForKeyedSubscript:@"mrGroupSessionID"];
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v17, v18, 48);
  }

  v19 = [valueCopy objectForKeyedSubscript:@"mrUserIdentityID"];

  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v20, v19, 56);
  }

  return v8;
}

- (id)humanDescription
{
  selfCopy = self;
  if (self)
  {
    array = [MEMORY[0x1E695DF70] array];
    if ([*(selfCopy + 24) length])
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"expanseID=%@", *(selfCopy + 24)];
      [array addObject:v3];
    }

    if ([*(selfCopy + 32) length])
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"liveLinkID=%@", *(selfCopy + 32)];
      [array addObject:v4];
    }

    if (*(selfCopy + 40))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"liveLinkServerID=%ld", *(selfCopy + 40)];
      [array addObject:v5];
    }

    if ([*(selfCopy + 48) length])
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mrGroupSessionID=%@", *(selfCopy + 48)];
      [array addObject:v6];
    }

    if ([*(selfCopy + 56) length])
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mrUserIdentityID=%@", *(selfCopy + 56)];
      [array addObject:v7];
    }

    if (*(selfCopy + 8) == 1)
    {
      [array addObject:@"isLocal"];
    }

    selfCopy = [array msv_compactDescription];
  }

  return selfCopy;
}

@end