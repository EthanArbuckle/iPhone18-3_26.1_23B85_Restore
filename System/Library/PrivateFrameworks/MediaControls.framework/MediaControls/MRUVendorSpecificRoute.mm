@interface MRUVendorSpecificRoute
- (BOOL)isDisplayedAsPicked;
- (BOOL)isGroup;
- (BOOL)isKnown;
- (BOOL)supportsAirPlayGrouping;
- (BOOL)supportsGrouping;
- (MRUVendorSpecificRoute)initWithDevice:(id)device;
- (MRUVendorSpecificRoute)preferredSubroute;
- (NSArray)endpoints;
- (NSArray)subroutes;
- (NSString)protocolIdentifier;
- (id)routeName;
- (id)routeUID;
- (int64_t)moreCapableTypeBetween:(int64_t)between otherType:(int64_t)type;
- (int64_t)routeType;
- (int64_t)vendorSpecificRouteType;
- (void)addSubRoute:(id)route;
- (void)setExpanded:(BOOL)expanded;
@end

@implementation MRUVendorSpecificRoute

- (MRUVendorSpecificRoute)initWithDevice:(id)device
{
  deviceCopy = device;
  v32.receiver = self;
  v32.super_class = MRUVendorSpecificRoute;
  v6 = [(MRUVendorSpecificRoute *)&v32 init];
  v7 = v6;
  if (v6)
  {
    v6->_shouldBeDisplayed = 1;
    if (deviceCopy)
    {
      objc_storeStrong(&v6->_device, device);
      if ([(MRUVendorSpecificRoute *)v7 isGroup])
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
        subrouteMap = v7->_subrouteMap;
        v7->_subrouteMap = v8;

        v7->_expanded = 0;
      }

      else
      {
        protocolType = [deviceCopy protocolType];
        v15 = protocolType;
        if (protocolType)
        {
          v16 = MEMORY[0x1E69A8A40];
          identifier = [protocolType identifier];
          v18 = [v16 symbolForTypeIdentifier:identifier error:0];

          if (v18)
          {
            mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen scale];
            v21 = [v18 imageForSize:20.0 scale:{20.0, v20}];

            v22 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v21, "CGImage")}];
            v23 = [v22 imageWithRenderingMode:2];

            if (v23)
            {
              v24 = v23;
            }

            else
            {
              v24 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"airplayvideo"];
            }

            protocolIcon = v7->_protocolIcon;
            v7->_protocolIcon = v24;

            localizedDescription = [v15 localizedDescription];

            if (localizedDescription)
            {
              localizedDescription2 = [v15 localizedDescription];
            }

            else
            {
              localizedDescription2 = @"Unknown Protocol";
            }

            protocolName = v7->_protocolName;
            v7->_protocolName = &localizedDescription2->isa;
          }
        }

        else
        {
          v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"airplayvideo"];
          v27 = v7->_protocolIcon;
          v7->_protocolIcon = v26;

          v18 = v7->_protocolName;
          v7->_protocolName = @"Unknown Protocol";
        }
      }
    }

    else
    {
      v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"airplayvideo"];
      v11 = v7->_protocolIcon;
      v7->_protocolIcon = v10;

      v12 = +[MRUStringsProvider vendorSpecificAirPlay];
      v13 = v7->_protocolName;
      v7->_protocolName = v12;
    }
  }

  return v7;
}

- (id)routeName
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(MRUVendorSpecificRoute *)self isGroup])
  {
    endpoints = [(DADevice *)self->_device endpoints];
    allValues = [endpoints allValues];
    firstObject = [allValues firstObject];
    name = [firstObject name];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    endpoints2 = [(DADevice *)self->_device endpoints];
    allValues2 = [endpoints2 allValues];

    v9 = [allValues2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(allValues2);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          underlyingDADevice = [v13 underlyingDADevice];

          if (!underlyingDADevice)
          {
            name2 = [v13 name];

            name = name2;
            goto LABEL_14;
          }
        }

        v10 = [allValues2 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    if ([(MRUVendorSpecificRoute *)self isAirPlayRoute])
    {
      [(MPAVRoute *)self->_underlyingNativeRoute routeName];
    }

    else
    {
      [(DADevice *)self->_device name];
    }
    name = ;
  }

  return name;
}

- (id)routeUID
{
  if (self->_underlyingNativeRoute)
  {
    [(MPAVRoute *)self->_underlyingNativeRoute routeUID];
  }

  else
  {
    [(DADevice *)self->_device identifier];
  }
  v2 = ;

  return v2;
}

- (int64_t)vendorSpecificRouteType
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(MRUVendorSpecificRoute *)self isGroup])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subroutes = [(MRUVendorSpecificRoute *)self subroutes];
    v4 = [subroutes countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(subroutes);
          }

          v6 = -[MRUVendorSpecificRoute moreCapableTypeBetween:otherType:](self, "moreCapableTypeBetween:otherType:", v6, [*(*(&v11 + 1) + 8 * i) vendorSpecificRouteType]);
        }

        v5 = [subroutes countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  if ([(MRUVendorSpecificRoute *)self isAirPlayRoute])
  {
    if (([(MPAVRoute *)self->_underlyingNativeRoute routeType]- 1) >= 2)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  device = self->_device;

  return [(DADevice *)device type];
}

- (int64_t)routeType
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(MRUVendorSpecificRoute *)self isGroup])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    subroutes = [(MRUVendorSpecificRoute *)self subroutes];
    v4 = [subroutes countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = 0;
      v6 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(subroutes);
          }

          v5 |= [*(*(&v10 + 1) + 8 * i) routeType] == 1;
        }

        v4 = [subroutes countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
      v4 = v5 & 1;
    }

    return v4;
  }

  if (![(MRUVendorSpecificRoute *)self isAirPlayRoute])
  {
    return ([(DADevice *)self->_device flags]>> 2) & 1;
  }

  underlyingNativeRoute = self->_underlyingNativeRoute;

  return [(MPAVRoute *)underlyingNativeRoute routeType];
}

- (BOOL)isGroup
{
  endpoints = [(DADevice *)self->_device endpoints];
  v3 = [endpoints count] > 1;

  return v3;
}

- (NSArray)subroutes
{
  allValues = [(NSMutableDictionary *)self->_subrouteMap allValues];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__MRUVendorSpecificRoute_subroutes__block_invoke;
  v5[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v5[4] = 577;
  v3 = [allValues sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __35__MRUVendorSpecificRoute_subroutes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 protocolName];
  v8 = [v6 protocolName];
  v9 = [v7 compare:v8 options:*(a1 + 32)];

  if (!v9)
  {
    v10 = [v5 routeUID];
    v11 = [v6 routeUID];
    v9 = [v10 compare:v11 options:*(a1 + 32)];
  }

  return v9;
}

- (NSArray)endpoints
{
  endpoints = [(DADevice *)self->_device endpoints];
  allValues = [endpoints allValues];
  v4 = [allValues sortedArrayUsingComparator:&__block_literal_global_39];

  return v4;
}

BOOL __35__MRUVendorSpecificRoute_endpoints__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  return v5 < v6;
}

- (BOOL)supportsAirPlayGrouping
{
  if ([(MRUVendorSpecificRoute *)self isGroup]|| ![(MRUVendorSpecificRoute *)self isAirPlayRoute])
  {
    return 0;
  }

  underlyingNativeRoute = self->_underlyingNativeRoute;

  return [(MPAVRoute *)underlyingNativeRoute supportsAirPlayGrouping];
}

- (BOOL)supportsGrouping
{
  if ([(MRUVendorSpecificRoute *)self isGroup])
  {
    return 0;
  }

  if ([(MRUVendorSpecificRoute *)self isAirPlayRoute])
  {
    underlyingNativeRoute = self->_underlyingNativeRoute;

    return [(MPAVRoute *)underlyingNativeRoute supportsAirPlayGrouping];
  }

  else
  {
    device = self->_device;

    return [(DADevice *)device supportsGrouping];
  }
}

- (BOOL)isDisplayedAsPicked
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(MRUVendorSpecificRoute *)self isGroup])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subroutes = [(MRUVendorSpecificRoute *)self subroutes];
    v4 = [subroutes countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(subroutes);
          }

          if ([*(*(&v11 + 1) + 8 * v7) isDisplayedAsPicked])
          {

            return 1;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [subroutes countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    return 0;
  }

  if (![(MRUVendorSpecificRoute *)self isAirPlayRoute])
  {
    return self->_isPicked;
  }

  underlyingNativeRoute = self->_underlyingNativeRoute;

  return [(MPAVRoute *)underlyingNativeRoute isDisplayedAsPicked];
}

- (BOOL)isKnown
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(MRUVendorSpecificRoute *)self isGroup])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subroutes = [(MRUVendorSpecificRoute *)self subroutes];
    v4 = [subroutes countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(subroutes);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        isKnown = [v8 isKnown];
        if ([v8 isAirPlayRoute])
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [subroutes countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      isKnown = 0;
    }

    return isKnown;
  }

  else
  {
    if ([(MRUVendorSpecificRoute *)self isAirPlayRoute])
    {
      v10 = 248;
    }

    else
    {
      v10 = 216;
    }

    v11 = *(&self->super.super.isa + v10);

    return [v11 isKnown];
  }
}

- (NSString)protocolIdentifier
{
  protocolType = [(DADevice *)self->_device protocolType];
  identifier = [protocolType identifier];

  return identifier;
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  v14 = *MEMORY[0x1E69E9840];
  self->_expanded = expanded;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_subrouteMap allValues];
  v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v8++) setShouldBeDisplayed:expandedCopy];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addSubRoute:(id)route
{
  subrouteMap = self->_subrouteMap;
  routeCopy = route;
  routeUID = [routeCopy routeUID];
  [(NSMutableDictionary *)subrouteMap setObject:routeCopy forKeyedSubscript:routeUID];

  [routeCopy setParentRoute:self];
  [routeCopy setShouldBeDisplayed:self->_expanded];
}

- (MRUVendorSpecificRoute)preferredSubroute
{
  v16 = *MEMORY[0x1E69E9840];
  tempPreferredSubrouteOverride = self->_tempPreferredSubrouteOverride;
  if (tempPreferredSubrouteOverride)
  {
    v3 = tempPreferredSubrouteOverride;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allValues = [(NSMutableDictionary *)self->_subrouteMap allValues];
    v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 isPreferredRoute])
          {
            v3 = v9;

            goto LABEL_13;
          }
        }

        v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v3 = 0;
  }

LABEL_13:

  return v3;
}

- (int64_t)moreCapableTypeBetween:(int64_t)between otherType:(int64_t)type
{
  if (between <= type)
  {
    return type;
  }

  else
  {
    return between;
  }
}

@end