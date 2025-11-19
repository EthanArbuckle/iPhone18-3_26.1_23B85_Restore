@interface MRMediaControlsConfiguration
- (BOOL)isEqual:(id)a3;
- (CGRect)sourceRect;
- (MRMediaControlsConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRMediaControlsConfiguration

- (id)description
{
  v3 = [(MRMediaControlsConfiguration *)self style];
  if (v3 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E769E8C0[v3];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = [(MRMediaControlsConfiguration *)self routingContextUID];
  presentingAppBundleID = self->_presentingAppBundleID;
  v9 = MR_NSStringFromCGRect(self->_sourceRect.origin.x, self->_sourceRect.origin.y, self->_sourceRect.size.width, self->_sourceRect.size.height);
  v10 = [v5 stringWithFormat:@"<%@:%p routingContextUID=%@, style=%@, presentingAppBundleID=%@, sourcRect=%@, preferredWidth=%f>", v6, self, v7, v4, presentingAppBundleID, v9, *&self->_preferredWidth];

  return v10;
}

- (MRMediaControlsConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = MRMediaControlsConfiguration;
  v5 = [(MRMediaControlsConfiguration *)&v26 init];
  if (v5)
  {
    v5->_style = [v4 decodeIntegerForKey:@"style"];
    v5->_initiatorStyle = [v4 decodeIntegerForKey:@"initiatorStyle"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routingContextUID"];
    routingContextUID = v5->_routingContextUID;
    v5->_routingContextUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentingAppBundleID"];
    presentingAppBundleID = v5->_presentingAppBundleID;
    v5->_presentingAppBundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nowPlayingAppBundleID"];
    nowPlayingAppBundleID = v5->_nowPlayingAppBundleID;
    v5->_nowPlayingAppBundleID = v10;

    v12 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"visibleMediaApps"];
    visibleMediaApps = v5->_visibleMediaApps;
    v5->_visibleMediaApps = v12;

    v5->_allowsNowPlayingApplicationLaunch = [v4 decodeBoolForKey:@"allowsNowPlayingApplicationLaunch"];
    v5->_sortByIsVideoRoute = [v4 decodeBoolForKey:@"sortByIsVideoRoute"];
    [v4 mr_decodeCGRectForKey:@"sourceRect"];
    v5->_sourceRect.origin.x = v14;
    v5->_sourceRect.origin.y = v15;
    v5->_sourceRect.size.width = v16;
    v5->_sourceRect.size.height = v17;
    [v4 decodeFloatForKey:@"preferredWidth"];
    v5->_preferredWidth = v18;
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routeUID"];
    routeUID = v5->_routeUID;
    v5->_routeUID = v19;

    v21 = MEMORY[0x1E695DF70];
    v22 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"customRows"];
    v23 = [v21 arrayWithArray:v22];
    customRows = v5->_customRows;
    v5->_customRows = v23;

    v5->_presentingAppProcessIdentifier = [v4 decodeInt32ForKey:@"presentingAppProcessIdentifier"];
    v5->_useGenericDevicesIconInHeader = [v4 decodeBoolForKey:@"useGenericDevicesIconInHeader"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  style = self->_style;
  v6 = a3;
  [v6 encodeInteger:style forKey:@"style"];
  [v6 encodeInteger:self->_initiatorStyle forKey:@"initiatorStyle"];
  [v6 encodeObject:self->_routingContextUID forKey:@"routingContextUID"];
  [v6 encodeObject:self->_presentingAppBundleID forKey:@"presentingAppBundleID"];
  [v6 encodeObject:self->_nowPlayingAppBundleID forKey:@"nowPlayingAppBundleID"];
  [v6 encodeObject:self->_visibleMediaApps forKey:@"visibleMediaApps"];
  [v6 encodeBool:self->_allowsNowPlayingApplicationLaunch forKey:@"allowsNowPlayingApplicationLaunch"];
  [v6 encodeBool:self->_sortByIsVideoRoute forKey:@"sortByIsVideoRoute"];
  [v6 mr_encodeCGRect:@"sourceRect" forKey:{self->_sourceRect.origin.x, self->_sourceRect.origin.y, self->_sourceRect.size.width, self->_sourceRect.size.height}];
  preferredWidth = self->_preferredWidth;
  *&preferredWidth = preferredWidth;
  [v6 encodeFloat:@"preferredWidth" forKey:preferredWidth];
  [v6 encodeObject:self->_routeUID forKey:@"routeUID"];
  [v6 encodeObject:self->_customRows forKey:@"customRows"];
  [v6 encodeInt32:self->_presentingAppProcessIdentifier forKey:@"presentingAppProcessIdentifier"];
  [v6 encodeBool:self->_useGenericDevicesIconInHeader forKey:@"useGenericDevicesIconInHeader"];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v47) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRMediaControlsConfiguration *)v5 style];
      v7 = [(MRMediaControlsConfiguration *)self style];
      v8 = [(MRMediaControlsConfiguration *)v5 initiatorStyle];
      v9 = [(MRMediaControlsConfiguration *)self initiatorStyle];
      v10 = [(MRMediaControlsConfiguration *)v5 routingContextUID];
      v11 = [(MRMediaControlsConfiguration *)self routingContextUID];
      v12 = [v10 isEqualToString:v11];
      if (v6 == v7 && v8 == v9)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      v15 = [(MRMediaControlsConfiguration *)v5 presentingAppBundleID];
      v16 = [(MRMediaControlsConfiguration *)self presentingAppBundleID];
      v17 = [v15 isEqualToString:v16];

      v18 = [(MRMediaControlsConfiguration *)v5 nowPlayingAppBundleID];
      v19 = [(MRMediaControlsConfiguration *)self nowPlayingAppBundleID];
      v20 = v17 & [v18 isEqualToString:v19];

      v21 = [(MRMediaControlsConfiguration *)v5 visibleMediaApps];
      v22 = [(MRMediaControlsConfiguration *)self visibleMediaApps];
      v23 = v14 & v20 & [v21 isEqualToArray:v22];

      LODWORD(v21) = [(MRMediaControlsConfiguration *)v5 allowsNowPlayingApplicationLaunch];
      LODWORD(v22) = v21 ^ [(MRMediaControlsConfiguration *)self allowsNowPlayingApplicationLaunch];
      LODWORD(v21) = [(MRMediaControlsConfiguration *)v5 sortByIsVideoRoute];
      LODWORD(v21) = v23 & ~(v22 | v21 ^ [(MRMediaControlsConfiguration *)self sortByIsVideoRoute]);
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
      v36 = v21 & CGRectEqualToRect(v49, v50);
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

      v41 = [(MRMediaControlsConfiguration *)v5 routeUID];
      v42 = [(MRMediaControlsConfiguration *)self routeUID];
      v43 = [v41 isEqualToString:v42];

      v44 = [(MRMediaControlsConfiguration *)v5 customRows];
      v45 = [(MRMediaControlsConfiguration *)self customRows];
      v46 = v43 & [v44 isEqualToArray:v45];

      LODWORD(v44) = [(MRMediaControlsConfiguration *)v5 useGenericDevicesIconInHeader];
      v47 = v40 & v46 & (v44 ^ [(MRMediaControlsConfiguration *)self useGenericDevicesIconInHeader]^ 1);
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