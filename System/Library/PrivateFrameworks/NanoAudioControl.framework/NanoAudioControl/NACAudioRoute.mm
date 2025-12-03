@interface NACAudioRoute
+ (NACAudioRoute)audioRouteWithMPAVRoute:(id)route;
+ (id)audioRouteFromBuffer:(id)buffer;
+ (id)audioRoutesFromBuffers:(id)buffers;
+ (id)buffersFromAudioRoutes:(id)routes;
+ (int)_routeBufferTypeFromRouteType:(int64_t)type;
+ (int64_t)_routeTypeFromMPAVRoute:(id)route;
+ (int64_t)_routeTypeFromRouteBufferType:(int)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAudioRoute:(id)route;
- (NACAudioRoute)initWithMPAVRoute:(id)route;
- (id)buffer;
@end

@implementation NACAudioRoute

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NACAudioRoute *)self isEqualToAudioRoute:equalCopy];

  return v5;
}

- (BOOL)isEqualToAudioRoute:(id)route
{
  routeCopy = route;
  if (!routeCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = 0;
    goto LABEL_9;
  }

  if (self == routeCopy)
  {
    goto LABEL_10;
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    uniqueIdentifier = [(NACAudioRoute *)routeCopy uniqueIdentifier];

    if (uniqueIdentifier)
    {
      uniqueIdentifier = self->_uniqueIdentifier;
      goto LABEL_7;
    }

LABEL_10:
    v8 = 1;
    goto LABEL_9;
  }

LABEL_7:
  uniqueIdentifier2 = [(NACAudioRoute *)routeCopy uniqueIdentifier];
  v8 = [(NSString *)uniqueIdentifier isEqualToString:uniqueIdentifier2];

LABEL_9:
  return v8;
}

- (NACAudioRoute)initWithMPAVRoute:(id)route
{
  routeCopy = route;
  v12.receiver = self;
  v12.super_class = NACAudioRoute;
  v5 = [(NACAudioRoute *)&v12 init];
  if (v5)
  {
    routeName = [routeCopy routeName];
    routeName = v5->_routeName;
    v5->_routeName = routeName;

    v5->_routeType = [NACAudioRoute _routeTypeFromMPAVRoute:routeCopy];
    v5->_picked = [routeCopy isPicked];
    routeUID = [routeCopy routeUID];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = routeUID;

    v10 = v5;
  }

  return v5;
}

+ (NACAudioRoute)audioRouteWithMPAVRoute:(id)route
{
  routeCopy = route;
  v4 = [[NACAudioRoute alloc] initWithMPAVRoute:routeCopy];

  return v4;
}

+ (id)audioRouteFromBuffer:(id)buffer
{
  bufferCopy = buffer;
  v5 = objc_opt_new();
  uniqueIdentifier = [bufferCopy uniqueIdentifier];
  v7 = *(v5 + 16);
  *(v5 + 16) = uniqueIdentifier;

  routeName = [bufferCopy routeName];
  v9 = *(v5 + 24);
  *(v5 + 24) = routeName;

  *(v5 + 32) = [self _routeTypeFromRouteBufferType:{objc_msgSend(bufferCopy, "routeType")}];
  *(v5 + 8) = [bufferCopy supportsVolumeControl];
  LOBYTE(self) = [bufferCopy picked];

  *(v5 + 9) = self;

  return v5;
}

+ (id)audioRoutesFromBuffers:(id)buffers
{
  v18 = *MEMORY[0x277D85DE8];
  buffersCopy = buffers;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = buffersCopy;
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

+ (id)buffersFromAudioRoutes:(id)routes
{
  v18 = *MEMORY[0x277D85DE8];
  routesCopy = routes;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = routesCopy;
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

        buffer = [*(*(&v13 + 1) + 8 * i) buffer];
        [v4 addObject:buffer];
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
  uniqueIdentifier = [(NACAudioRoute *)self uniqueIdentifier];
  [v3 setUniqueIdentifier:uniqueIdentifier];

  routeName = [(NACAudioRoute *)self routeName];
  [v3 setRouteName:routeName];

  [v3 setRouteType:{+[NACAudioRoute _routeBufferTypeFromRouteType:](NACAudioRoute, "_routeBufferTypeFromRouteType:", -[NACAudioRoute routeType](self, "routeType"))}];
  [v3 setSupportsVolumeControl:{-[NACAudioRoute supportsVolumeControl](self, "supportsVolumeControl")}];
  [v3 setPicked:{-[NACAudioRoute isPicked](self, "isPicked")}];

  return v3;
}

+ (int64_t)_routeTypeFromMPAVRoute:(id)route
{
  routeCopy = route;
  if ([routeCopy routeSubtype] == 1)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if ([routeCopy routeSubtype] == 2)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if ([routeCopy isAirpodsRoute])
  {
    if ([routeCopy isB298Route])
    {
      v4 = 5;
      goto LABEL_5;
    }

    if ([routeCopy isB515Route])
    {
      v4 = 6;
      goto LABEL_5;
    }

    v6 = [routeCopy isB688Route] == 0;
    v7 = 3;
    goto LABEL_16;
  }

  if ([routeCopy isB507Route])
  {
    v4 = 10;
    goto LABEL_5;
  }

  if ([routeCopy isPowerbeatsRoute])
  {
    v4 = 11;
    goto LABEL_5;
  }

  if ([routeCopy isB364Route])
  {
    v4 = 8;
    goto LABEL_5;
  }

  if ([routeCopy isB372Route])
  {
    v4 = 9;
    goto LABEL_5;
  }

  if ([routeCopy isB444Route])
  {
    v4 = 7;
    goto LABEL_5;
  }

  if ([routeCopy isB494Route])
  {
    v4 = 12;
    goto LABEL_5;
  }

  if ([routeCopy isBeatsSoloRoute])
  {
    v4 = 14;
    goto LABEL_5;
  }

  if ([routeCopy isB419Route])
  {
    v4 = 13;
    goto LABEL_5;
  }

  if ([routeCopy isBeatsStudioRoute])
  {
    v4 = 15;
    goto LABEL_5;
  }

  if ([routeCopy isBeatsXRoute])
  {
    v4 = 16;
    goto LABEL_5;
  }

  if ([routeCopy isCarplayRoute])
  {
    v4 = 21;
    goto LABEL_5;
  }

  if ([routeCopy isAppleTVRoute])
  {
    v4 = 22;
    goto LABEL_5;
  }

  if ([routeCopy isB520Route])
  {
    v6 = [routeCopy isStereoPair] == 0;
    v7 = 17;
    goto LABEL_16;
  }

  if ([routeCopy isHomePodRoute])
  {
    v6 = [routeCopy isStereoPair] == 0;
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

  if ([routeCopy routeSubtype] == 9)
  {
    v4 = 24;
  }

  else if ([routeCopy routeSubtype] == 16)
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

+ (int)_routeBufferTypeFromRouteType:(int64_t)type
{
  if ((type - 1) > 0x17)
  {
    return 0;
  }

  else
  {
    return dword_25AEEB348[type - 1];
  }
}

+ (int64_t)_routeTypeFromRouteBufferType:(int)type
{
  if ((type - 1) > 0x17)
  {
    return 0;
  }

  else
  {
    return qword_25AEEB3A8[type - 1];
  }
}

@end