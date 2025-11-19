@interface NACAudioRoute
+ (NACAudioRoute)audioRouteWithMPAVRoute:(id)a3;
+ (id)audioRouteFromBuffer:(id)a3;
+ (id)audioRoutesFromBuffers:(id)a3;
+ (id)buffersFromAudioRoutes:(id)a3;
+ (int)_routeBufferTypeFromRouteType:(int64_t)a3;
+ (int64_t)_routeTypeFromMPAVRoute:(id)a3;
+ (int64_t)_routeTypeFromRouteBufferType:(int)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAudioRoute:(id)a3;
- (NACAudioRoute)initWithMPAVRoute:(id)a3;
- (id)buffer;
@end

@implementation NACAudioRoute

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NACAudioRoute *)self isEqualToAudioRoute:v4];

  return v5;
}

- (BOOL)isEqualToAudioRoute:(id)a3
{
  v4 = a3;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = 0;
    goto LABEL_9;
  }

  if (self == v4)
  {
    goto LABEL_10;
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v6 = [(NACAudioRoute *)v4 uniqueIdentifier];

    if (v6)
    {
      uniqueIdentifier = self->_uniqueIdentifier;
      goto LABEL_7;
    }

LABEL_10:
    v8 = 1;
    goto LABEL_9;
  }

LABEL_7:
  v7 = [(NACAudioRoute *)v4 uniqueIdentifier];
  v8 = [(NSString *)uniqueIdentifier isEqualToString:v7];

LABEL_9:
  return v8;
}

- (NACAudioRoute)initWithMPAVRoute:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NACAudioRoute;
  v5 = [(NACAudioRoute *)&v12 init];
  if (v5)
  {
    v6 = [v4 routeName];
    routeName = v5->_routeName;
    v5->_routeName = v6;

    v5->_routeType = [NACAudioRoute _routeTypeFromMPAVRoute:v4];
    v5->_picked = [v4 isPicked];
    v8 = [v4 routeUID];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = v5;
  }

  return v5;
}

+ (NACAudioRoute)audioRouteWithMPAVRoute:(id)a3
{
  v3 = a3;
  v4 = [[NACAudioRoute alloc] initWithMPAVRoute:v3];

  return v4;
}

+ (id)audioRouteFromBuffer:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 uniqueIdentifier];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [v4 routeName];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 32) = [a1 _routeTypeFromRouteBufferType:{objc_msgSend(v4, "routeType")}];
  *(v5 + 8) = [v4 supportsVolumeControl];
  LOBYTE(a1) = [v4 picked];

  *(v5 + 9) = a1;

  return v5;
}

+ (id)audioRoutesFromBuffers:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [NACAudioRoute audioRouteFromBuffer:*(*(&v13 + 1) + 8 * i), v13];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buffersFromAudioRoutes:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) buffer];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)buffer
{
  v3 = objc_opt_new();
  v4 = [(NACAudioRoute *)self uniqueIdentifier];
  [v3 setUniqueIdentifier:v4];

  v5 = [(NACAudioRoute *)self routeName];
  [v3 setRouteName:v5];

  [v3 setRouteType:{+[NACAudioRoute _routeBufferTypeFromRouteType:](NACAudioRoute, "_routeBufferTypeFromRouteType:", -[NACAudioRoute routeType](self, "routeType"))}];
  [v3 setSupportsVolumeControl:{-[NACAudioRoute supportsVolumeControl](self, "supportsVolumeControl")}];
  [v3 setPicked:{-[NACAudioRoute isPicked](self, "isPicked")}];

  return v3;
}

+ (int64_t)_routeTypeFromMPAVRoute:(id)a3
{
  v3 = a3;
  if ([v3 routeSubtype] == 1)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if ([v3 routeSubtype] == 2)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if ([v3 isAirpodsRoute])
  {
    if ([v3 isB298Route])
    {
      v4 = 5;
      goto LABEL_5;
    }

    if ([v3 isB515Route])
    {
      v4 = 6;
      goto LABEL_5;
    }

    v6 = [v3 isB688Route] == 0;
    v7 = 3;
    goto LABEL_16;
  }

  if ([v3 isB507Route])
  {
    v4 = 10;
    goto LABEL_5;
  }

  if ([v3 isPowerbeatsRoute])
  {
    v4 = 11;
    goto LABEL_5;
  }

  if ([v3 isB364Route])
  {
    v4 = 8;
    goto LABEL_5;
  }

  if ([v3 isB372Route])
  {
    v4 = 9;
    goto LABEL_5;
  }

  if ([v3 isB444Route])
  {
    v4 = 7;
    goto LABEL_5;
  }

  if ([v3 isB494Route])
  {
    v4 = 12;
    goto LABEL_5;
  }

  if ([v3 isBeatsSoloRoute])
  {
    v4 = 14;
    goto LABEL_5;
  }

  if ([v3 isB419Route])
  {
    v4 = 13;
    goto LABEL_5;
  }

  if ([v3 isBeatsStudioRoute])
  {
    v4 = 15;
    goto LABEL_5;
  }

  if ([v3 isBeatsXRoute])
  {
    v4 = 16;
    goto LABEL_5;
  }

  if ([v3 isCarplayRoute])
  {
    v4 = 21;
    goto LABEL_5;
  }

  if ([v3 isAppleTVRoute])
  {
    v4 = 22;
    goto LABEL_5;
  }

  if ([v3 isB520Route])
  {
    v6 = [v3 isStereoPair] == 0;
    v7 = 17;
    goto LABEL_16;
  }

  if ([v3 isHomePodRoute])
  {
    v6 = [v3 isStereoPair] == 0;
    v7 = 19;
LABEL_16:
    if (v6)
    {
      v4 = v7;
    }

    else
    {
      v4 = v7 + 1;
    }

    goto LABEL_5;
  }

  if ([v3 routeSubtype] == 9)
  {
    v4 = 24;
  }

  else if ([v3 routeSubtype] == 16)
  {
    v4 = 23;
  }

  else
  {
    v4 = 0;
  }

LABEL_5:

  return v4;
}

+ (int)_routeBufferTypeFromRouteType:(int64_t)a3
{
  if ((a3 - 1) > 0x17)
  {
    return 0;
  }

  else
  {
    return dword_25AEEB348[a3 - 1];
  }
}

+ (int64_t)_routeTypeFromRouteBufferType:(int)a3
{
  if ((a3 - 1) > 0x17)
  {
    return 0;
  }

  else
  {
    return qword_25AEEB3A8[a3 - 1];
  }
}

@end