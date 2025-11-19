@interface CRCarPlayCapabilities
+ (NSString)capabilitiesIdentifier;
+ (NSString)capabilitiesVersion;
+ (id)_newCapabilitiesFromGlobalDomainWithIdentifier:(id)a3;
+ (id)carPlayCapabilitiesCache;
+ (id)fetchCarCapabilitiesWithIdentifier:(id)a3;
+ (void)_resetCapabilitiesGlobalDomain;
+ (void)invalidateCarPlayCapabilitiesCache;
+ (void)setCapabilitiesIdentifier:(id)a3;
+ (void)setCapabilitiesVersion:(id)a3;
+ (void)setCarPlayCapabilitiesCache:(id)a3;
+ (void)waitForCarCapabilitiesValuesWithReply:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCapabilities:(id)a3;
- (CRCarPlayCapabilities)init;
- (CRCarPlayCapabilities)initWithCoder:(id)a3;
- (CRCarPlayCapabilities)initWithDictionaryRepresentation:(id)a3;
- (CRCarPlayCapabilities)initWithVersion:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)informativeText;
- (void)encodeWithCoder:(id)a3;
- (void)persistCapabilitiesToGlobalDomain;
@end

@implementation CRCarPlayCapabilities

+ (NSString)capabilitiesIdentifier
{
  v2 = a1;
  objc_sync_enter(v2);
  if (sCRCarPlayCapabilitiesIdentifier)
  {
    v3 = [sCRCarPlayCapabilitiesIdentifier copy];
  }

  else
  {
    v3 = @"CarCapabilitiesDefaultIdentifier";
  }

  objc_sync_exit(v2);

  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[CRCarPlayCapabilities capabilitiesIdentifier];
  }

  return v3;
}

- (CRCarPlayCapabilities)init
{
  v12.receiver = self;
  v12.super_class = CRCarPlayCapabilities;
  v2 = [(CRCarPlayCapabilities *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] string];
    version = v2->_version;
    v2->_version = v3;

    *&v2->_disabledFeature = xmmword_1C825B9F0;
    *&v2->_liveActivitiesMode = vdupq_n_s64(2uLL);
    v2->_userInterfaceStyle = 2;
    v5 = [MEMORY[0x1E696B098] valueWithEdgeInsets:{*MEMORY[0x1E696A2A0], *(MEMORY[0x1E696A2A0] + 8), *(MEMORY[0x1E696A2A0] + 16), *(MEMORY[0x1E696A2A0] + 24)}];
    viewAreaInsets = v2->_viewAreaInsets;
    v2->_viewAreaInsets = v5;

    v7 = [MEMORY[0x1E696B098] valueWithEdgeInsets:{13.0, 0.0, 0.0, 0.0}];
    dashboardRoundedCorners = v2->_dashboardRoundedCorners;
    v2->_dashboardRoundedCorners = v7;

    v9 = [MEMORY[0x1E695DF20] dictionary];
    userInfo = v2->_userInfo;
    v2->_userInfo = v9;
  }

  return v2;
}

- (CRCarPlayCapabilities)initWithVersion:(id)a3
{
  v4 = a3;
  v5 = [(CRCarPlayCapabilities *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    version = v5->_version;
    v5->_version = v6;
  }

  return v5;
}

- (id)description
{
  v3 = CRIsTestContext();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  version = self->_version;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_disabledFeature];
  if (v3)
  {
    v21 = *&self->_nowPlayingAlbumArtMode;
    lodWidgetsMode = self->_lodWidgetsMode;
    viewAreaInsets = self->_viewAreaInsets;
    dashboardRoundedCorners = self->_dashboardRoundedCorners;
    userInterfaceStyle = self->_userInterfaceStyle;
    v11 = v4;
    userInfo = self->_userInfo;
    v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_persisted];
    v14 = [v11 stringWithFormat:@"<%@: %p> version = %@, disabledFeature = %@, nowPlayingAlbumArtMode = %ld, liveActivitiesMode = %ld, lodWidgetsMode = %ld, userInterfaceStyle = %ld, viewAreaInset = %@, dashboardRoundedCorners = %@, userInfo = %@, persisted = %@, zoomFactor = %@", v5, self, version, v6, v21, lodWidgetsMode, userInterfaceStyle, viewAreaInsets, dashboardRoundedCorners, userInfo, v13, self->_zoomFactor];
  }

  else
  {
    v13 = [CARSessionConfiguration descriptionForCapability:self->_nowPlayingAlbumArtMode];
    v15 = [CARSessionConfiguration descriptionForCapability:self->_liveActivitiesMode];
    v16 = [CARSessionConfiguration descriptionForCapability:self->_lodWidgetsMode];
    v17 = [CARSessionConfiguration descriptionForUserInterfaceStyle:self->_userInterfaceStyle];
    v22 = *&self->_viewAreaInsets;
    v18 = self->_userInfo;
    v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_persisted];
    v14 = [v4 stringWithFormat:@"<%@: %p> version = %@, disabledFeature = %@, nowPlayingAlbumArtMode = %@, liveActivitiesMode = %@, lodWidgetsMode = %@, userInterfaceStyle = %@, viewAreaInset = %@, dashboardRoundedCorners = %@, userInfo = %@, persisted = %@, zoomFactor = %@", v5, self, version, v6, v13, v15, v16, v17, v22, v18, v19, self->_zoomFactor];
  }

  return v14;
}

- (id)informativeText
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = [objc_opt_class() capabilitiesIdentifier];
  version = self->_version;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_disabledFeature];
  v6 = [CARSessionConfiguration descriptionForCapability:self->_nowPlayingAlbumArtMode];
  v7 = [CARSessionConfiguration descriptionForCapability:self->_liveActivitiesMode];
  v8 = [CARSessionConfiguration descriptionForCapability:self->_lodWidgetsMode];
  v9 = [CARSessionConfiguration descriptionForUserInterfaceStyle:self->_userInterfaceStyle];
  v14 = *&self->_viewAreaInsets;
  userInfo = self->_userInfo;
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_persisted];
  v12 = [v15 stringWithFormat:@"vehicle identifier = %@\nplist version = %@\ndisabledFeature mask = %@\nnowPlayingAlbumArtMode = %@\nliveActivitiesMode = %@\nlodWidgetsMode = %@\nuserInterfaceStyle = %@\nviewAreaInset = %@\ndashboardRoundedCorners = %@\nuserInfo = %@, persisted = %@\nzoomFactor = %@", v3, version, v5, v6, v7, v8, v9, v14, userInfo, v11, self->_zoomFactor];

  return v12;
}

+ (void)setCapabilitiesIdentifier:(id)a3
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v6 = sCRCarPlayCapabilitiesIdentifier;
  if (v4)
  {
    if (([sCRCarPlayCapabilitiesIdentifier isEqualToString:v4] & 1) == 0)
    {
      v7 = CarGeneralLogging();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        +[CRCarPlayCapabilities setCapabilitiesIdentifier:];
      }

      v8 = [v4 copy];
      v9 = sCRCarPlayCapabilitiesIdentifier;
      sCRCarPlayCapabilitiesIdentifier = v8;
    }
  }

  else
  {
    sCRCarPlayCapabilitiesIdentifier = @"CarCapabilitiesDefaultIdentifier";
  }

  objc_sync_exit(v5);
}

+ (void)setCapabilitiesVersion:(id)a3
{
  if (a3)
  {
    v3 = *MEMORY[0x1E695E890];
    v4 = *MEMORY[0x1E695E8B8];
    v5 = *MEMORY[0x1E695E898];
    v6 = a3;
    v7 = CFPreferencesCopyValue(@"CarCapabilities", v3, v4, v5);
    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
    }

    value = v10;

    [value setObject:v6 forKey:@"CarCapabilitiesContentVersion"];
    CFPreferencesSetValue(@"CarCapabilities", value, v3, v4, v5);
    CFPreferencesSynchronize(v3, v4, v5);
  }
}

+ (NSString)capabilitiesVersion
{
  if (capabilitiesVersion_onceToken != -1)
  {
    +[CRCarPlayCapabilities capabilitiesVersion];
  }

  v3 = capabilitiesVersion_sCapabilitiesVersion;

  return v3;
}

void __44__CRCarPlayCapabilities_capabilitiesVersion__block_invoke()
{
  v0 = *MEMORY[0x1E695E890];
  v1 = *MEMORY[0x1E695E8B8];
  v2 = *MEMORY[0x1E695E898];
  v7 = CFPreferencesCopyValue(@"CarCapabilities", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v3 = [v7 objectForKey:@"CarCapabilitiesContentVersion"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] string];
  }

  v6 = capabilitiesVersion_sCapabilitiesVersion;
  capabilitiesVersion_sCapabilitiesVersion = v5;

  CFPreferencesSynchronize(v0, v1, v2);
}

- (CRCarPlayCapabilities)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CRCarPlayCapabilities;
  v5 = [(CRCarPlayCapabilities *)&v12 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"CRCapabilitiesVersionKey"])
    {
      v6 = [v4 decodeObjectForKey:@"CRCapabilitiesVersionKey"];
      [(CRCarPlayCapabilities *)v5 setVersion:v6];
    }

    if ([v4 containsValueForKey:@"CapabilitiesViewAreaInsetKey"])
    {
      v7 = [v4 decodeObjectForKey:@"CapabilitiesViewAreaInsetKey"];
      [(CRCarPlayCapabilities *)v5 setViewAreaInsets:v7];
    }

    if ([v4 containsValueForKey:@"CapabilitiesDashboardRoundedCornersKey"])
    {
      v8 = [v4 decodeObjectForKey:@"CapabilitiesDashboardRoundedCornersKey"];
      [(CRCarPlayCapabilities *)v5 setDashboardRoundedCorners:v8];
    }

    if ([v4 containsValueForKey:@"CapabilitiesNowPlayingAlbumArtKey"])
    {
      -[CRCarPlayCapabilities setNowPlayingAlbumArtMode:](v5, "setNowPlayingAlbumArtMode:", [v4 decodeIntegerForKey:@"CapabilitiesNowPlayingAlbumArtKey"]);
    }

    if ([v4 containsValueForKey:@"CapabilitiesLiveActivitiesKey"])
    {
      -[CRCarPlayCapabilities setLiveActivitiesMode:](v5, "setLiveActivitiesMode:", [v4 decodeIntegerForKey:@"CapabilitiesLiveActivitiesKey"]);
    }

    if ([v4 containsValueForKey:@"CapabilitiesLodWidgetsKey"])
    {
      -[CRCarPlayCapabilities setLodWidgetsMode:](v5, "setLodWidgetsMode:", [v4 decodeIntegerForKey:@"CapabilitiesLodWidgetsKey"]);
    }

    if ([v4 containsValueForKey:@"CRCapabilitiesDisabledFeatureKey"])
    {
      -[CRCarPlayCapabilities setDisabledFeature:](v5, "setDisabledFeature:", [v4 decodeIntegerForKey:@"CRCapabilitiesDisabledFeatureKey"]);
    }

    if ([v4 containsValueForKey:@"CRCapabilitiesUserInterfaceStyleKey"])
    {
      -[CRCarPlayCapabilities setUserInterfaceStyle:](v5, "setUserInterfaceStyle:", [v4 decodeIntegerForKey:@"CRCapabilitiesUserInterfaceStyleKey"]);
    }

    if ([v4 containsValueForKey:@"CRCapabilitiesUserInfoKey"])
    {
      v9 = [v4 decodeObjectForKey:@"CRCapabilitiesUserInfoKey"];
      [(CRCarPlayCapabilities *)v5 setUserInfo:v9];
    }

    if ([v4 containsValueForKey:@"CRCapabilitiesZoomFactorKeyKey"])
    {
      v10 = [v4 decodeObjectForKey:@"CRCapabilitiesZoomFactorKeyKey"];
      [(CRCarPlayCapabilities *)v5 setZoomFactor:v10];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  version = self->_version;
  v9 = v4;
  if (version)
  {
    [v4 encodeObject:version forKey:@"CRCapabilitiesVersionKey"];
    v4 = v9;
  }

  viewAreaInsets = self->_viewAreaInsets;
  if (viewAreaInsets)
  {
    [v9 encodeObject:viewAreaInsets forKey:@"CapabilitiesViewAreaInsetKey"];
    v4 = v9;
  }

  dashboardRoundedCorners = self->_dashboardRoundedCorners;
  if (dashboardRoundedCorners)
  {
    [v9 encodeObject:dashboardRoundedCorners forKey:@"CapabilitiesDashboardRoundedCornersKey"];
    v4 = v9;
  }

  [v4 encodeInteger:self->_nowPlayingAlbumArtMode forKey:@"CapabilitiesNowPlayingAlbumArtKey"];
  [v9 encodeInteger:self->_liveActivitiesMode forKey:@"CapabilitiesLiveActivitiesKey"];
  [v9 encodeInteger:self->_lodWidgetsMode forKey:@"CapabilitiesLodWidgetsKey"];
  [v9 encodeInteger:self->_disabledFeature forKey:@"CRCapabilitiesDisabledFeatureKey"];
  [v9 encodeInteger:self->_userInterfaceStyle forKey:@"CRCapabilitiesUserInterfaceStyleKey"];
  [v9 encodeObject:self->_userInfo forKey:@"CRCapabilitiesUserInfoKey"];
  zoomFactor = self->_zoomFactor;
  if (zoomFactor)
  {
    [v9 encodeObject:zoomFactor forKey:@"CRCapabilitiesZoomFactorKeyKey"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 88), self->_version);
    *(v5 + 16) = self->_disabledFeature;
    *(v5 + 24) = self->_nowPlayingAlbumArtMode;
    *(v5 + 32) = self->_liveActivitiesMode;
    *(v5 + 40) = self->_lodWidgetsMode;
    *(v5 + 64) = self->_userInterfaceStyle;
    objc_storeStrong((v5 + 48), self->_viewAreaInsets);
    objc_storeStrong((v5 + 56), self->_dashboardRoundedCorners);
    objc_storeStrong((v5 + 80), self->_userInfo);
    objc_storeStrong((v5 + 72), self->_zoomFactor);
    *(v5 + 8) = self->_persisted;
  }

  return v5;
}

- (BOOL)isEqualToCapabilities:(id)a3
{
  v4 = a3;
  v5 = [(CRCarPlayCapabilities *)self version];
  v6 = [v4 version];
  v7 = [v5 isEqualToString:v6];

  if (v7 && (v8 = -[CRCarPlayCapabilities disabledFeature](self, "disabledFeature"), v8 == [v4 disabledFeature]) && (v9 = -[CRCarPlayCapabilities nowPlayingAlbumArtMode](self, "nowPlayingAlbumArtMode"), v9 == objc_msgSend(v4, "nowPlayingAlbumArtMode")) && (v10 = -[CRCarPlayCapabilities liveActivitiesMode](self, "liveActivitiesMode"), v10 == objc_msgSend(v4, "liveActivitiesMode")) && (v11 = -[CRCarPlayCapabilities lodWidgetsMode](self, "lodWidgetsMode"), v11 == objc_msgSend(v4, "lodWidgetsMode")) && (-[CRCarPlayCapabilities viewAreaInsets](self, "viewAreaInsets"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "edgeInsetsValue"), v14 = v13, v16 = v15, v18 = v17, v20 = v19, objc_msgSend(v4, "viewAreaInsets"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "edgeInsetsValue"), v52.top = v22, v52.left = v23, v52.bottom = v24, v52.right = v25, v50.top = v14, v50.left = v16, v50.bottom = v18, v50.right = v20, v26 = NSEdgeInsetsEqual(v50, v52), v21, v12, v26) && (-[CRCarPlayCapabilities dashboardRoundedCorners](self, "dashboardRoundedCorners"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "edgeInsetsValue"), v29 = v28, v31 = v30, v33 = v32, v35 = v34, objc_msgSend(v4, "dashboardRoundedCorners"), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "edgeInsetsValue"), v53.top = v37, v53.left = v38, v53.bottom = v39, v53.right = v40, v51.top = v29, v51.left = v31, v51.bottom = v33, v51.right = v35, v41 = NSEdgeInsetsEqual(v51, v53), v36, v27, v41) && (v42 = -[CRCarPlayCapabilities userInterfaceStyle](self, "userInterfaceStyle"), v42 == objc_msgSend(v4, "userInterfaceStyle")) && (-[CRCarPlayCapabilities userInfo](self, "userInfo"), v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "userInfo"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v43, "isEqualToDictionary:", v44), v44, v43, v45))
  {
    v46 = [(CRCarPlayCapabilities *)self zoomFactor];
    v47 = [v4 zoomFactor];
    v48 = BSEqualObjects();
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRCarPlayCapabilities *)self isEqualToCapabilities:v4];
  }

  return v5;
}

- (CRCarPlayCapabilities)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CRCarPlayCapabilities;
  v5 = [(CRCarPlayCapabilities *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"CRCapabilitiesVersionKey"];
    version = v5->_version;
    v5->_version = v6;

    v8 = [v4 objectForKeyedSubscript:@"CRCapabilitiesDisabledFeatureKey"];
    v5->_disabledFeature = [v8 integerValue];

    v9 = [v4 objectForKeyedSubscript:@"CapabilitiesNowPlayingAlbumArtKey"];
    v5->_nowPlayingAlbumArtMode = [v9 integerValue];

    v10 = [v4 objectForKeyedSubscript:@"CapabilitiesLiveActivitiesKey"];
    v5->_liveActivitiesMode = [v10 integerValue];

    v11 = [v4 objectForKeyedSubscript:@"CapabilitiesLodWidgetsKey"];
    v5->_lodWidgetsMode = [v11 integerValue];

    v12 = [v4 objectForKeyedSubscript:@"CapabilitiesViewAreaInsetKey"];
    v13 = MEMORY[0x1E696B098];
    v28 = NSRectFromString(v12);
    v14 = [v13 valueWithEdgeInsets:{v28.origin.x, v28.origin.y, v28.size.width, v28.size.height}];
    viewAreaInsets = v5->_viewAreaInsets;
    v5->_viewAreaInsets = v14;

    v16 = [v4 objectForKeyedSubscript:@"CapabilitiesDashboardRoundedCornersKey"];
    v17 = MEMORY[0x1E696B098];
    v29 = NSRectFromString(v16);
    v18 = [v17 valueWithEdgeInsets:{v29.origin.x, v29.origin.y, v29.size.width, v29.size.height}];
    dashboardRoundedCorners = v5->_dashboardRoundedCorners;
    v5->_dashboardRoundedCorners = v18;

    v20 = [v4 objectForKeyedSubscript:@"CRCapabilitiesUserInterfaceStyleKey"];
    v5->_userInterfaceStyle = [v20 integerValue];

    v21 = [v4 objectForKeyedSubscript:@"CRCapabilitiesUserInfoKey"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v21;

    objc_opt_class();
    v23 = [v4 objectForKeyedSubscript:@"CRCapabilitiesZoomFactorKeyKey"];
    if (v23 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    zoomFactor = v5->_zoomFactor;
    v5->_zoomFactor = v24;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_version forKeyedSubscript:@"CRCapabilitiesVersionKey"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_disabledFeature];
  [v3 setObject:v4 forKeyedSubscript:@"CRCapabilitiesDisabledFeatureKey"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_nowPlayingAlbumArtMode];
  [v3 setObject:v5 forKeyedSubscript:@"CapabilitiesNowPlayingAlbumArtKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_liveActivitiesMode];
  [v3 setObject:v6 forKeyedSubscript:@"CapabilitiesLiveActivitiesKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_lodWidgetsMode];
  [v3 setObject:v7 forKeyedSubscript:@"CapabilitiesLodWidgetsKey"];

  [(NSValue *)self->_viewAreaInsets edgeInsetsValue];
  v8 = NSStringFromRect(v13);
  [v3 setObject:v8 forKeyedSubscript:@"CapabilitiesViewAreaInsetKey"];

  [(NSValue *)self->_dashboardRoundedCorners edgeInsetsValue];
  v9 = NSStringFromRect(v14);
  [v3 setObject:v9 forKeyedSubscript:@"CapabilitiesDashboardRoundedCornersKey"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_userInterfaceStyle];
  [v3 setObject:v10 forKeyedSubscript:@"CRCapabilitiesUserInterfaceStyleKey"];

  [v3 setObject:self->_userInfo forKeyedSubscript:@"CRCapabilitiesUserInfoKey"];
  [v3 setObject:self->_zoomFactor forKeyedSubscript:@"CRCapabilitiesZoomFactorKeyKey"];

  return v3;
}

+ (id)fetchCarCapabilitiesWithIdentifier:(id)a3
{
  v4 = [a1 _newCapabilitiesFromGlobalDomainWithIdentifier:a3];
  if (([v4 persisted] & 1) == 0)
  {
    v5 = [a1 carPlayCapabilitiesCache];

    if (v5)
    {
      v6 = [a1 carPlayCapabilitiesCache];

      v4 = v6;
    }
  }

  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[CRCarPlayCapabilities fetchCarCapabilitiesWithIdentifier:];
  }

  return v4;
}

+ (id)_newCapabilitiesFromGlobalDomainWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E695E890];
  v5 = *MEMORY[0x1E695E8B8];
  v6 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(*MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v7 = CFPreferencesCopyValue(@"CarCapabilities", v4, v5, v6);
  v8 = [v7 objectForKey:v3];
  v9 = CarGeneralLogging();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      +[CRCarPlayCapabilities _newCapabilitiesFromGlobalDomainWithIdentifier:];
    }

    v11 = [[CRCarPlayCapabilities alloc] initWithDictionaryRepresentation:v8];
    v12 = v11;
    v13 = 1;
  }

  else
  {
    if (v10)
    {
      +[CRCarPlayCapabilities _newCapabilitiesFromGlobalDomainWithIdentifier:];
    }

    v11 = objc_opt_new();
    v12 = v11;
    v13 = 0;
  }

  [(CRCarPlayCapabilities *)v11 setPersisted:v13];

  return v12;
}

- (void)persistCapabilitiesToGlobalDomain
{
  v0 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x2Au);
}

+ (void)_resetCapabilitiesGlobalDomain
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "+[CRCarPlayCapabilities _resetCapabilitiesGlobalDomain]";
  _os_log_debug_impl(&dword_1C81FC000, log, OS_LOG_TYPE_DEBUG, "%s: resetting car capabilities to global domain", &v1, 0xCu);
}

+ (void)waitForCarCapabilitiesValuesWithReply:(id)a3
{
  v36[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CRCarPlayCapabilities capabilitiesIdentifier];
  if ([v5 isEqualToString:@"CarCapabilitiesDefaultIdentifier"])
  {

    v6 = +[CRCarPlayCapabilities capabilitiesIdentifier];

    v5 = v6;
  }

  if (v5 && ([v5 isEqualToString:@"CarCapabilitiesDefaultIdentifier"] & 1) == 0)
  {
    [a1 invalidateCarPlayCapabilitiesCache];
    v7 = [CRCarPlayCapabilities fetchCarCapabilitiesWithIdentifier:v5];
    v8 = [v7 version];
    if (v8 && ([v7 version], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "integerValue"), v11 = objc_msgSend(@"5", "integerValue"), v9, v8, v10 > v11))
    {
      v12 = CarGeneralLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "+[CRCarPlayCapabilities waitForCarCapabilitiesValuesWithReply:]";
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_impl(&dword_1C81FC000, v12, OS_LOG_TYPE_DEFAULT, "%s: CarCapabilities available for current session: %@", buf, 0x16u);
      }

      if (!v4)
      {
        goto LABEL_13;
      }

      v13 = [v7 dictionaryRepresentation];
      v4[2](v4, v13, 0);
    }

    else
    {
      v24 = [MEMORY[0x1E695DF00] date];
      v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48038E8];
      v15 = MEMORY[0x1E695DFD8];
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v23 = objc_opt_class();
      v18 = [v15 setWithObjects:{v16, v17, v23, objc_opt_class(), 0}];
      [v14 setClasses:v18 forSelector:sel_requestCarCapabilitiesStatus_withReply_ argumentIndex:0 ofReply:1];

      v19 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.app.service" options:4096];
      [v19 setRemoteObjectInterface:v14];
      [v19 resume];
      v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_156];
      v35 = @"CRCarPlayCapabilitiesIdentifierKey";
      v36[0] = v5;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v32 = __Block_byref_object_copy__7;
      v33 = __Block_byref_object_dispose__7;
      v34 = 0;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __63__CRCarPlayCapabilities_waitForCarCapabilitiesValuesWithReply___block_invoke_157;
      v25[3] = &unk_1E82FD510;
      v29 = buf;
      v30 = a1;
      v28 = v4;
      v13 = v24;
      v26 = v13;
      v22 = v19;
      v27 = v22;
      [v20 requestCarCapabilitiesStatus:v21 withReply:v25];

      _Block_object_dispose(buf, 8);
    }

LABEL_13:
  }
}

void __63__CRCarPlayCapabilities_waitForCarCapabilitiesValuesWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __63__CRCarPlayCapabilities_waitForCarCapabilitiesValuesWithReply___block_invoke_cold_1(v2, v3);
  }
}

void __63__CRCarPlayCapabilities_waitForCarCapabilitiesValuesWithReply___block_invoke_157(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __63__CRCarPlayCapabilities_waitForCarCapabilitiesValuesWithReply___block_invoke_157_cold_1();
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [*(a1 + 64) setCarPlayCapabilitiesCache:?];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = [*(*(*(a1 + 56) + 8) + 40) dictionaryRepresentation];
    (*(v6 + 16))(v6, v7, 0);
  }

  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v9 = @"Found";
    }

    else
    {
      v9 = @"Did not find";
    }

    [*(a1 + 32) timeIntervalSinceNow];
    v11 = *(*(*(a1 + 56) + 8) + 40);
    v12 = 136315906;
    v13 = "+[CRCarPlayCapabilities waitForCarCapabilitiesValuesWithReply:]_block_invoke";
    v14 = 2112;
    v15 = v9;
    v16 = 2048;
    v17 = fabs(v10);
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@ capabilities values after waiting %f s: %@", &v12, 0x2Au);
  }

  [*(a1 + 40) invalidate];
}

+ (void)invalidateCarPlayCapabilitiesCache
{
  obj = a1;
  objc_sync_enter(obj);
  v2 = sCRCarPlayCapabilitiesCache;
  sCRCarPlayCapabilitiesCache = 0;

  objc_sync_exit(obj);
}

+ (void)setCarPlayCapabilitiesCache:(id)a3
{
  v9 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  v5 = [v9 version];
  v6 = [v5 integerValue];

  if (v6 >= 1)
  {
    v7 = [v9 copy];
    v8 = sCRCarPlayCapabilitiesCache;
    sCRCarPlayCapabilitiesCache = v7;
  }

  objc_sync_exit(v4);
}

+ (id)carPlayCapabilitiesCache
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = sCRCarPlayCapabilitiesCache;
  objc_sync_exit(v2);

  return v3;
}

+ (void)fetchCarCapabilitiesWithIdentifier:.cold.1()
{
  v5 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)_newCapabilitiesFromGlobalDomainWithIdentifier:.cold.1()
{
  v0 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x2Au);
}

+ (void)_newCapabilitiesFromGlobalDomainWithIdentifier:.cold.2()
{
  v0 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __63__CRCarPlayCapabilities_waitForCarCapabilitiesValuesWithReply___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "CRCarPlayAppService error: %@", &v2, 0xCu);
}

@end