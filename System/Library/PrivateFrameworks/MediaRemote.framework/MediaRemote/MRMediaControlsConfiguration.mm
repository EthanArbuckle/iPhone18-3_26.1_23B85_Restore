@interface MRMediaControlsConfiguration
- (BOOL)isEqual:(id)equal;
- (CGRect)sourceRect;
- (MRMediaControlsConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRMediaControlsConfiguration

- (id)description
{
  style = [(MRMediaControlsConfiguration *)self style];
  if (style > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E769E8C0[style];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  routingContextUID = [(MRMediaControlsConfiguration *)self routingContextUID];
  presentingAppBundleID = self->_presentingAppBundleID;
  v9 = MR_NSStringFromCGRect(self->_sourceRect.origin.x, self->_sourceRect.origin.y, self->_sourceRect.size.width, self->_sourceRect.size.height);
  v10 = [v5 stringWithFormat:@"<%@:%p routingContextUID=%@, style=%@, presentingAppBundleID=%@, sourcRect=%@, preferredWidth=%f>", v6, self, routingContextUID, v4, presentingAppBundleID, v9, *&self->_preferredWidth];

  return v10;
}

- (MRMediaControlsConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = MRMediaControlsConfiguration;
  v5 = [(MRMediaControlsConfiguration *)&v26 init];
  if (v5)
  {
    v5->_style = [coderCopy decodeIntegerForKey:@"style"];
    v5->_initiatorStyle = [coderCopy decodeIntegerForKey:@"initiatorStyle"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routingContextUID"];
    routingContextUID = v5->_routingContextUID;
    v5->_routingContextUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presentingAppBundleID"];
    presentingAppBundleID = v5->_presentingAppBundleID;
    v5->_presentingAppBundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nowPlayingAppBundleID"];
    nowPlayingAppBundleID = v5->_nowPlayingAppBundleID;
    v5->_nowPlayingAppBundleID = v10;

    v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"visibleMediaApps"];
    visibleMediaApps = v5->_visibleMediaApps;
    v5->_visibleMediaApps = v12;

    v5->_allowsNowPlayingApplicationLaunch = [coderCopy decodeBoolForKey:@"allowsNowPlayingApplicationLaunch"];
    v5->_sortByIsVideoRoute = [coderCopy decodeBoolForKey:@"sortByIsVideoRoute"];
    [coderCopy mr_decodeCGRectForKey:@"sourceRect"];
    v5->_sourceRect.origin.x = v14;
    v5->_sourceRect.origin.y = v15;
    v5->_sourceRect.size.width = v16;
    v5->_sourceRect.size.height = v17;
    [coderCopy decodeFloatForKey:@"preferredWidth"];
    v5->_preferredWidth = v18;
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routeUID"];
    routeUID = v5->_routeUID;
    v5->_routeUID = v19;

    v21 = MEMORY[0x1E695DF70];
    v22 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"customRows"];
    v23 = [v21 arrayWithArray:v22];
    customRows = v5->_customRows;
    v5->_customRows = v23;

    v5->_presentingAppProcessIdentifier = [coderCopy decodeInt32ForKey:@"presentingAppProcessIdentifier"];
    v5->_useGenericDevicesIconInHeader = [coderCopy decodeBoolForKey:@"useGenericDevicesIconInHeader"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  style = self->_style;
  coderCopy = coder;
  [coderCopy encodeInteger:style forKey:@"style"];
  [coderCopy encodeInteger:self->_initiatorStyle forKey:@"initiatorStyle"];
  [coderCopy encodeObject:self->_routingContextUID forKey:@"routingContextUID"];
  [coderCopy encodeObject:self->_presentingAppBundleID forKey:@"presentingAppBundleID"];
  [coderCopy encodeObject:self->_nowPlayingAppBundleID forKey:@"nowPlayingAppBundleID"];
  [coderCopy encodeObject:self->_visibleMediaApps forKey:@"visibleMediaApps"];
  [coderCopy encodeBool:self->_allowsNowPlayingApplicationLaunch forKey:@"allowsNowPlayingApplicationLaunch"];
  [coderCopy encodeBool:self->_sortByIsVideoRoute forKey:@"sortByIsVideoRoute"];
  [coderCopy mr_encodeCGRect:@"sourceRect" forKey:{self->_sourceRect.origin.x, self->_sourceRect.origin.y, self->_sourceRect.size.width, self->_sourceRect.size.height}];
  preferredWidth = self->_preferredWidth;
  *&preferredWidth = preferredWidth;
  [coderCopy encodeFloat:@"preferredWidth" forKey:preferredWidth];
  [coderCopy encodeObject:self->_routeUID forKey:@"routeUID"];
  [coderCopy encodeObject:self->_customRows forKey:@"customRows"];
  [coderCopy encodeInt32:self->_presentingAppProcessIdentifier forKey:@"presentingAppProcessIdentifier"];
  [coderCopy encodeBool:self->_useGenericDevicesIconInHeader forKey:@"useGenericDevicesIconInHeader"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MRMediaControlsConfiguration);
  v4->_style = self->_style;
  v4->_initiatorStyle = self->_initiatorStyle;
  objc_storeStrong(&v4->_routingContextUID, self->_routingContextUID);
  objc_storeStrong(&v4->_presentingAppBundleID, self->_presentingAppBundleID);
  objc_storeStrong(&v4->_nowPlayingAppBundleID, self->_nowPlayingAppBundleID);
  objc_storeStrong(&v4->_visibleMediaApps, self->_visibleMediaApps);
  v4->_allowsNowPlayingApplicationLaunch = self->_allowsNowPlayingApplicationLaunch;
  v4->_sortByIsVideoRoute = self->_sortByIsVideoRoute;
  origin = self->_sourceRect.origin;
  v4->_sourceRect.size = self->_sourceRect.size;
  v4->_sourceRect.origin = origin;
  v4->_preferredWidth = self->_preferredWidth;
  objc_storeStrong(&v4->_routeUID, self->_routeUID);
  objc_storeStrong(&v4->_customRows, self->_customRows);
  v4->_presentingAppProcessIdentifier = self->_presentingAppProcessIdentifier;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v47) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      style = [(MRMediaControlsConfiguration *)v5 style];
      style2 = [(MRMediaControlsConfiguration *)self style];
      initiatorStyle = [(MRMediaControlsConfiguration *)v5 initiatorStyle];
      initiatorStyle2 = [(MRMediaControlsConfiguration *)self initiatorStyle];
      routingContextUID = [(MRMediaControlsConfiguration *)v5 routingContextUID];
      routingContextUID2 = [(MRMediaControlsConfiguration *)self routingContextUID];
      v12 = [routingContextUID isEqualToString:routingContextUID2];
      if (style == style2 && initiatorStyle == initiatorStyle2)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      presentingAppBundleID = [(MRMediaControlsConfiguration *)v5 presentingAppBundleID];
      presentingAppBundleID2 = [(MRMediaControlsConfiguration *)self presentingAppBundleID];
      v17 = [presentingAppBundleID isEqualToString:presentingAppBundleID2];

      nowPlayingAppBundleID = [(MRMediaControlsConfiguration *)v5 nowPlayingAppBundleID];
      nowPlayingAppBundleID2 = [(MRMediaControlsConfiguration *)self nowPlayingAppBundleID];
      v20 = v17 & [nowPlayingAppBundleID isEqualToString:nowPlayingAppBundleID2];

      visibleMediaApps = [(MRMediaControlsConfiguration *)v5 visibleMediaApps];
      visibleMediaApps2 = [(MRMediaControlsConfiguration *)self visibleMediaApps];
      v23 = v14 & v20 & [visibleMediaApps isEqualToArray:visibleMediaApps2];

      LODWORD(visibleMediaApps) = [(MRMediaControlsConfiguration *)v5 allowsNowPlayingApplicationLaunch];
      LODWORD(visibleMediaApps2) = visibleMediaApps ^ [(MRMediaControlsConfiguration *)self allowsNowPlayingApplicationLaunch];
      LODWORD(visibleMediaApps) = [(MRMediaControlsConfiguration *)v5 sortByIsVideoRoute];
      LODWORD(visibleMediaApps) = v23 & ~(visibleMediaApps2 | visibleMediaApps ^ [(MRMediaControlsConfiguration *)self sortByIsVideoRoute]);
      [(MRMediaControlsConfiguration *)v5 sourceRect];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      [(MRMediaControlsConfiguration *)self sourceRect];
      v50.origin.x = v32;
      v50.origin.y = v33;
      v50.size.width = v34;
      v50.size.height = v35;
      v49.origin.x = v25;
      v49.origin.y = v27;
      v49.size.width = v29;
      v49.size.height = v31;
      v36 = visibleMediaApps & CGRectEqualToRect(v49, v50);
      [(MRMediaControlsConfiguration *)v5 preferredWidth];
      v38 = v37;
      [(MRMediaControlsConfiguration *)self preferredWidth];
      if (v38 == v39)
      {
        v40 = v36;
      }

      else
      {
        v40 = 0;
      }

      routeUID = [(MRMediaControlsConfiguration *)v5 routeUID];
      routeUID2 = [(MRMediaControlsConfiguration *)self routeUID];
      v43 = [routeUID isEqualToString:routeUID2];

      customRows = [(MRMediaControlsConfiguration *)v5 customRows];
      customRows2 = [(MRMediaControlsConfiguration *)self customRows];
      v46 = v43 & [customRows isEqualToArray:customRows2];

      LODWORD(customRows) = [(MRMediaControlsConfiguration *)v5 useGenericDevicesIconInHeader];
      v47 = v40 & v46 & (customRows ^ [(MRMediaControlsConfiguration *)self useGenericDevicesIconInHeader]^ 1);
    }

    else
    {
      LOBYTE(v47) = 0;
    }
  }

  return v47;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end