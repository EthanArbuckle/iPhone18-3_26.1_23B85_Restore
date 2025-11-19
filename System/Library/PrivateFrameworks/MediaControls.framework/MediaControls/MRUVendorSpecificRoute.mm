@interface MRUVendorSpecificRoute
- (BOOL)isDisplayedAsPicked;
- (BOOL)isGroup;
- (BOOL)isKnown;
- (BOOL)supportsAirPlayGrouping;
- (BOOL)supportsGrouping;
- (MRUVendorSpecificRoute)initWithDevice:(id)a3;
- (MRUVendorSpecificRoute)preferredSubroute;
- (NSArray)endpoints;
- (NSArray)subroutes;
- (NSString)protocolIdentifier;
- (id)routeName;
- (id)routeUID;
- (int64_t)moreCapableTypeBetween:(int64_t)a3 otherType:(int64_t)a4;
- (int64_t)routeType;
- (int64_t)vendorSpecificRouteType;
- (void)addSubRoute:(id)a3;
- (void)setExpanded:(BOOL)a3;
@end

@implementation MRUVendorSpecificRoute

- (MRUVendorSpecificRoute)initWithDevice:(id)a3
{
  v5 = a3;
  v32.receiver = self;
  v32.super_class = MRUVendorSpecificRoute;
  v6 = [(MRUVendorSpecificRoute *)&v32 init];
  v7 = v6;
  if (v6)
  {
    v6->_shouldBeDisplayed = 1;
    if (v5)
    {
      objc_storeStrong(&v6->_device, a3);
      if ([(MRUVendorSpecificRoute *)v7 isGroup])
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
        subrouteMap = v7->_subrouteMap;
        v7->_subrouteMap = v8;

        v7->_expanded = 0;
      }

      else
      {
        v14 = [v5 protocolType];
        v15 = v14;
        if (v14)
        {
          v16 = MEMORY[0x1E69A8A40];
          v17 = [v14 identifier];
          v18 = [v16 symbolForTypeIdentifier:v17 error:0];

          if (v18)
          {
            v19 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v19 scale];
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

            v28 = [v15 localizedDescription];

            if (v28)
            {
              v29 = [v15 localizedDescription];
            }

            else
            {
              v29 = @"Unknown Protocol";
            }

            protocolName = v7->_protocolName;
            v7->_protocolName = &v29->isa;
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
    v3 = [(DADevice *)self->_device endpoints];
    v4 = [v3 allValues];
    v5 = [v4 firstObject];
    v6 = [v5 name];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(DADevice *)self->_device endpoints];
    v8 = [v7 allValues];

    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v13 underlyingDADevice];

          if (!v14)
          {
            v15 = [v13 name];

            v6 = v15;
            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
    v6 = ;
  }

  return v6;
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
    v3 = [(MRUVendorSpecificRoute *)self subroutes];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v3);
          }

          v6 = -[MRUVendorSpecificRoute moreCapableTypeBetween:otherType:](self, "moreCapableTypeBetween:otherType:", v6, [*(*(&v11 + 1) + 8 * i) vendorSpecificRouteType]);
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    v3 = [(MRUVendorSpecificRoute *)self subroutes];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v3);
          }

          v5 |= [*(*(&v10 + 1) + 8 * i) routeType] == 1;
        }

        v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = [(DADevice *)self->_device endpoints];
  v3 = [v2 count] > 1;

  return v3;
}

- (NSArray)subroutes
{
  v2 = [(NSMutableDictionary *)self->_subrouteMap allValues];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__MRUVendorSpecificRoute_subroutes__block_invoke;
  v5[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v5[4] = 577;
  v3 = [v2 sortedArrayUsingComparator:v5];

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
  v2 = [(DADevice *)self->_device endpoints];
  v3 = [v2 allValues];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_39];

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
    v3 = [(MRUVendorSpecificRoute *)self subroutes];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v11 + 1) + 8 * v7) isDisplayedAsPicked])
          {

            return 1;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    v3 = [(MRUVendorSpecificRoute *)self subroutes];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [v8 isKnown];
        if ([v8 isAirPlayRoute])
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
      v9 = 0;
    }

    return v9;
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
  v2 = [(DADevice *)self->_device protocolType];
  v3 = [v2 identifier];

  return v3;
}

- (void)setExpanded:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  self->_expanded = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMutableDictionary *)self->_subrouteMap allValues];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setShouldBeDisplayed:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addSubRoute:(id)a3
{
  subrouteMap = self->_subrouteMap;
  v6 = a3;
  v5 = [v6 routeUID];
  [(NSMutableDictionary *)subrouteMap setObject:v6 forKeyedSubscript:v5];

  [v6 setParentRoute:self];
  [v6 setShouldBeDisplayed:self->_expanded];
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
    v4 = [(NSMutableDictionary *)self->_subrouteMap allValues];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 isPreferredRoute])
          {
            v3 = v9;

            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (int64_t)moreCapableTypeBetween:(int64_t)a3 otherType:(int64_t)a4
{
  if (a3 <= a4)
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

@end