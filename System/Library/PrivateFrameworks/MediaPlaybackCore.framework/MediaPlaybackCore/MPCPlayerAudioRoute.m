@interface MPCPlayerAudioRoute
+ (id)payloadValueFromJSONValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MPCPlayerAudioRoute)initWithDictionaryRepresentation:(id)a3;
- (MPCPlayerAudioRoute)initWithNowPlayingInfoAudioRoute:(id)a3;
- (MPCPlayerAudioRoute)initWithRoute:(id)a3 spatialIsAlwaysOn:(BOOL)a4;
- (MPNowPlayingInfoAudioRoute)nowPlayingAudioRoute;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (NSString)humanDescription;
@end

@implementation MPCPlayerAudioRoute

+ (id)payloadValueFromJSONValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionaryRepresentation:v4];

  return v5;
}

- (MPNowPlayingInfoAudioRoute)nowPlayingAudioRoute
{
  v3 = objc_alloc_init(MEMORY[0x1E6970848]);
  [v3 setType:self->_type];
  [v3 setName:self->_name];
  [v3 setSupportsSpatialization:self->_supportsSpatialization];
  [v3 setSpatializationEnabled:self->_isSpatializationEnabled];

  return v3;
}

- (NSString)humanDescription
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromMPCPlayerAudioRouteType(self->_type);
  v6 = [v4 stringWithFormat:@"type: %@", v5];
  [v3 addObject:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"name: %@", self->_name];
  [v3 addObject:v7];

  multiChannelSupport = self->_multiChannelSupport;
  v9 = @"Unknown [CM-driven]";
  if (multiChannelSupport == 1)
  {
    v9 = @"Available";
  }

  if (multiChannelSupport == 2)
  {
    v10 = @"Unavailable";
  }

  else
  {
    v10 = v9;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"multichannel support: %@", v10];
  [v3 addObject:v11];

  if (self->_supportsSpatialization)
  {
    [v3 addObject:@"supportsSpatialization"];
  }

  if (self->_isSpatializationEnabled)
  {
    [v3 addObject:@"spatializationIsEnabled"];
  }

  if (self->_canRenderSpatial)
  {
    [v3 addObject:@"canRenderSpatialAudio"];
  }

  if (self->_canStreamSpatial)
  {
    [v3 addObject:@"canStreamSpatialAudio"];
  }

  v12 = [v3 componentsJoinedByString:@" "];;

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPCPlayerAudioRoute *)self humanDescription];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v14[7] = *MEMORY[0x1E69E9840];
  v13[0] = @"type";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v4 = v3;
  name = self->_name;
  if (!name)
  {
    name = &stru_1F454A698;
  }

  v14[0] = v3;
  v14[1] = name;
  v13[1] = @"name";
  v13[2] = @"rmcs";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_multiChannelSupport];
  v14[2] = v6;
  v13[3] = @"spzs";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsSpatialization];
  v14[3] = v7;
  v13[4] = @"spze";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSpatializationEnabled];
  v14[4] = v8;
  v13[5] = @"spzcs";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_canStreamSpatial];
  v14[5] = v9;
  v13[6] = @"spzcr";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_canRenderSpatial];
  v14[6] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:7];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (self->_type == v5->_type)
      {
        name = v5->_name;
        v8 = self->_name;
        v9 = v8;
        if (v8 == name)
        {
        }

        else
        {
          v10 = [(NSString *)v8 isEqual:name];

          if (!v10)
          {
            goto LABEL_15;
          }
        }

        if (self->_multiChannelSupport == v6->_multiChannelSupport && self->_supportsSpatialization == v6->_supportsSpatialization && self->_isSpatializationEnabled == v6->_isSpatializationEnabled && self->_canStreamSpatial == v6->_canStreamSpatial)
        {
          v11 = self->_canRenderSpatial == v6->_canRenderSpatial;
LABEL_16:

          goto LABEL_17;
        }
      }

LABEL_15:
      v11 = 0;
      goto LABEL_16;
    }

    v11 = 0;
  }

LABEL_17:

  return v11;
}

- (MPCPlayerAudioRoute)initWithRoute:(id)a3 spatialIsAlwaysOn:(BOOL)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = MPCPlayerAudioRoute;
  v8 = [(MPCPlayerAudioRoute *)&v17 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_13;
  }

  objc_storeStrong(&v8->_pickedRoute, a3);
  v9->_multiChannelSupport = 0;
  if (![v7 isAirPlayRoute])
  {
    if (a4)
    {
LABEL_5:
      v9->_multiChannelSupport = 1;
LABEL_6:
      *&v9->_supportsSpatialization = 257;
      LOBYTE(v10) = 1;
      goto LABEL_7;
    }

    if ([v7 isB515Route])
    {
      v15 = 1;
    }

    else
    {
      v15 = [v7 isB298Route];
    }

    if ([v7 isW1Route] & 1) != 0 || (objc_msgSend(v7, "isH1Route"))
    {
      v16 = 0;
      if (v15)
      {
LABEL_23:
        v9->_multiChannelSupport = 1;
        v9->_supportsSpatialization = [v7 supportsHeadTrackedSpatialAudio];
        v10 = [v7 supportsHeadTrackedSpatialAudio];
        if (v10)
        {
          LOBYTE(v10) = [v7 headTrackedSpatialAudioEnabled];
        }

        v9->_isSpatializationEnabled = v10;
        if (!v9->_supportsSpatialization)
        {
          LOBYTE(v10) = 0;
        }

        goto LABEL_7;
      }
    }

    else
    {
      v16 = [v7 isB507Route] ^ 1;
      if (v15)
      {
        goto LABEL_23;
      }
    }

    if (v16 && ([v7 isDeviceSpeakerRoute] & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  LOBYTE(v10) = 0;
  v9->_multiChannelSupport = 2;
  *&v9->_supportsSpatialization = 0;
LABEL_7:
  v9->_canRenderSpatial = v10;
  v9->_canStreamSpatial = v10;
  v11 = [v7 routeName];
  name = v9->_name;
  v9->_name = v11;

  v9->_type = 0;
  if ([v7 isDeviceSpeakerRoute])
  {
    v13 = 1;
  }

  else if ([v7 routeSubtype] == 5 || objc_msgSend(v7, "routeSubtype") == 6)
  {
    v13 = 2;
  }

  else if ([v7 routeSubtype] == 2 || objc_msgSend(v7, "routeSubtype") == 3)
  {
    v13 = 3;
  }

  else if ([v7 routeSubtype] == 11 || objc_msgSend(v7, "routeSubtype") == 12)
  {
    v13 = 4;
  }

  else if ([v7 routeSubtype] == 21)
  {
    v13 = 5;
  }

  else if ([v7 routeSubtype] == 7)
  {
    v13 = 6;
  }

  else if (([v7 isCarplayRoute] & 1) != 0 || objc_msgSend(v7, "routeSubtype") == 15 || objc_msgSend(v7, "routeSubtype") == 19)
  {
    v13 = 7;
  }

  else if ([v7 routeSubtype] == 10)
  {
    v13 = 8;
  }

  else
  {
    if (![v7 isAirPlayRoute])
    {
      goto LABEL_13;
    }

    v13 = 9;
  }

  v9->_type = v13;
LABEL_13:

  return v9;
}

- (MPCPlayerAudioRoute)initWithNowPlayingInfoAudioRoute:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPCPlayerAudioRoute;
  v5 = [(MPCPlayerAudioRoute *)&v9 init];
  if (v5)
  {
    v5->_type = [v4 type];
    v6 = [v4 name];
    name = v5->_name;
    v5->_name = v6;

    v5->_supportsSpatialization = [v4 supportsSpatialization];
    v5->_isSpatializationEnabled = [v4 isSpatializationEnabled];
  }

  return v5;
}

- (MPCPlayerAudioRoute)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MPCPlayerAudioRoute;
  v5 = [(MPCPlayerAudioRoute *)&v16 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 objectForKeyedSubscript:@"type"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"type"];
    v5->_type = [v7 integerValue];

    v8 = [v4 objectForKeyedSubscript:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 objectForKeyedSubscript:@"rmcs"];
    v5->_multiChannelSupport = [v10 integerValue];

    v11 = [v4 objectForKeyedSubscript:@"spzs"];
    v5->_supportsSpatialization = [v11 BOOLValue];

    v12 = [v4 objectForKeyedSubscript:@"spze"];
    v5->_isSpatializationEnabled = [v12 BOOLValue];

    v13 = [v4 objectForKeyedSubscript:@"spzcs"];
    v5->_canStreamSpatial = [v13 BOOLValue];

    v14 = [v4 objectForKeyedSubscript:@"spzcr"];
    v5->_canRenderSpatial = [v14 BOOLValue];

LABEL_4:
    v6 = v5;
  }

  return v6;
}

@end