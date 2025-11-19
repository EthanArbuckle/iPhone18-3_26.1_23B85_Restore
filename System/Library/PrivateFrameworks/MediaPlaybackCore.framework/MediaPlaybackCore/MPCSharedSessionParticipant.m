@interface MPCSharedSessionParticipant
+ (id)payloadValueFromJSONValue:(id)a3;
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

+ (id)payloadValueFromJSONValue:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"sessionType"];
  v5 = [v4 integerValue];

  v6 = [MPCSharedSessionParticipant alloc];
  if (v6)
  {
    v22.receiver = v6;
    v22.super_class = MPCSharedSessionParticipant;
    v7 = objc_msgSendSuper2(&v22, sel_init);
    v8 = v7;
    if (v7)
    {
      v7[2] = v5;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 objectForKeyedSubscript:@"isLocal"];
  v10 = [v9 BOOLValue];
  if (v8)
  {
    *(v8 + 8) = v10;
  }

  v12 = [v3 objectForKeyedSubscript:@"expanseID"];
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v11, v12, 24);
  }

  v14 = [v3 objectForKeyedSubscript:@"liveLinkID"];
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v13, v14, 32);
  }

  v15 = [v3 objectForKeyedSubscript:@"liveLinkServerID"];
  v16 = [v15 longLongValue];
  if (v8)
  {
    v8[5] = v16;
  }

  v18 = [v3 objectForKeyedSubscript:@"mrGroupSessionID"];
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v17, v18, 48);
  }

  v19 = [v3 objectForKeyedSubscript:@"mrUserIdentityID"];

  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v20, v19, 56);
  }

  return v8;
}

- (id)humanDescription
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    if ([*(v1 + 24) length])
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"expanseID=%@", *(v1 + 24)];
      [v2 addObject:v3];
    }

    if ([*(v1 + 32) length])
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"liveLinkID=%@", *(v1 + 32)];
      [v2 addObject:v4];
    }

    if (*(v1 + 40))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"liveLinkServerID=%ld", *(v1 + 40)];
      [v2 addObject:v5];
    }

    if ([*(v1 + 48) length])
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mrGroupSessionID=%@", *(v1 + 48)];
      [v2 addObject:v6];
    }

    if ([*(v1 + 56) length])
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mrUserIdentityID=%@", *(v1 + 56)];
      [v2 addObject:v7];
    }

    if (*(v1 + 8) == 1)
    {
      [v2 addObject:@"isLocal"];
    }

    v1 = [v2 msv_compactDescription];
  }

  return v1;
}

@end