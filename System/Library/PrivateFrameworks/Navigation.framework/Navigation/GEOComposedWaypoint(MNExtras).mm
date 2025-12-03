@interface GEOComposedWaypoint(MNExtras)
- (id)_spokenPlaceName;
- (id)bestDisplayName:()MNExtras;
- (id)bestSpokenName;
- (id)directionsListAddress;
- (id)humanDescription;
- (id)humanDescriptionWithAddressAndLatLng;
- (id)humanDescriptionWithLatLng;
- (id)localeIdentifier;
- (id)navAnnouncementAddressAndSubstituteType:()MNExtras;
- (id)navAnnouncementNameAndSubstituteType:()MNExtras;
- (id)navDisplayAddress;
- (id)navDisplayAddressAndSubstituteType:()MNExtras;
- (id)navDisplayNameAndSubstituteType:()MNExtras;
- (id)navDisplayNameWithSpecialContacts:()MNExtras;
- (id)navDisplayNameWithSpecialContacts:()MNExtras substituteType:;
@end

@implementation GEOComposedWaypoint(MNExtras)

- (id)navDisplayAddress
{
  geoMapItem = [self geoMapItem];

  if (geoMapItem)
  {
    geoMapItem2 = [self geoMapItem];
    v4 = navDisplayAddressForMapItem(geoMapItem2, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)humanDescriptionWithAddressAndLatLng
{
  array = [MEMORY[0x1E695DF70] array];
  navDisplayName = [self navDisplayName];
  geoMapItem = [self geoMapItem];
  if (geoMapItem && (v5 = geoMapItem, [self geoMapItem], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "contactAddressType"), v6, v5, v7))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [self navDisplayNameWithSpecialContacts:0];
    v10 = [self navDisplayNameWithSpecialContacts:1];
    v11 = [v8 stringWithFormat:@"%@ (%@)", v9, v10];
    [array addObject:v11];
  }

  else if (navDisplayName)
  {
    [array addObject:navDisplayName];
  }

  navDisplayAddress = [self navDisplayAddress];
  if (navDisplayAddress)
  {
    [array addObject:navDisplayAddress];
  }

  v13 = MEMORY[0x1E696AEC0];
  latLng = [self latLng];
  [latLng lat];
  v16 = v15;
  latLng2 = [self latLng];
  [latLng2 lng];
  v19 = [v13 stringWithFormat:@"%.6f, %.6f", v16, v18];
  [array addObject:v19];

  v20 = [array componentsJoinedByString:@" | "];

  return v20;
}

- (id)humanDescriptionWithLatLng
{
  geoMapItem = [self geoMapItem];

  if (geoMapItem)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [self navDisplayNameWithSpecialContacts:0];
    latLng = [self latLng];
    [latLng lat];
    v7 = v6;
    latLng2 = [self latLng];
    [latLng2 lng];
    humanDescription = [v3 stringWithFormat:@"%@ <%f, %f>", v4, v7, v9];
  }

  else
  {
    humanDescription = [self humanDescription];
  }

  return humanDescription;
}

- (id)humanDescription
{
  geoMapItem = [self geoMapItem];

  if (geoMapItem)
  {
    v3 = [self navDisplayNameWithSpecialContacts:0];
  }

  else if ([self hasLatLng])
  {
    v4 = MEMORY[0x1E696AEC0];
    latLng = [self latLng];
    [latLng lat];
    v7 = v6;
    latLng2 = [self latLng];
    [latLng2 lng];
    v3 = [v4 stringWithFormat:@"(%f, %f)", v7, v9];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_spokenPlaceName
{
  geoMapItem = [self geoMapItem];
  localeIdentifier = [self localeIdentifier];
  v4 = [geoMapItem spokenNameForLocale:localeIdentifier];

  if ([v4 length])
  {
    _navigation_stringByMarkingAsNormalText = [v4 _navigation_stringByMarkingAsNormalText];
    goto LABEL_7;
  }

  if ([MEMORY[0x1E69A1D18] canSpeakWrittenPlaceNames])
  {
    _navigation_stringByMarkingAsNormalText = [self name];
    if ([_navigation_stringByMarkingAsNormalText length])
    {
      goto LABEL_7;
    }
  }

  _navigation_stringByMarkingAsNormalText = 0;
LABEL_7:

  return _navigation_stringByMarkingAsNormalText;
}

- (id)navAnnouncementAddressAndSubstituteType:()MNExtras
{
  geoMapItem = [self geoMapItem];
  if (geoMapItem)
  {
    localeIdentifier = [self localeIdentifier];
    navDisplayAddress = [geoMapItem _spokenAddressForLocale:localeIdentifier];

    if ([navDisplayAddress length])
    {
      if (a3)
      {
        *a3 = 2;
      }

      _navigation_stringByMarkingAsNormalText = [navDisplayAddress _navigation_stringByMarkingAsNormalText];
LABEL_12:
      v9 = _navigation_stringByMarkingAsNormalText;

      goto LABEL_16;
    }
  }

  if ([MEMORY[0x1E69A1D18] canSpeakWrittenAddresses])
  {
    navDisplayAddress = [self navDisplayAddress];
    if ([navDisplayAddress length])
    {
      if (a3)
      {
        *a3 = 2;
      }

      _navigation_stringByMarkingAsNormalText = [navDisplayAddress _navigation_stringByMarkingAsAddress];
      goto LABEL_12;
    }
  }

  v9 = 0;
  if (a3)
  {
    *a3 = 0;
  }

LABEL_16:

  return v9;
}

- (id)navAnnouncementNameAndSubstituteType:()MNExtras
{
  geoMapItem = [self geoMapItem];
  v6 = geoMapItem;
  if (geoMapItem)
  {
    contactSpokenName = [geoMapItem contactSpokenName];
    if ([contactSpokenName length])
    {
      if (a3)
      {
        *a3 = 3;
      }

      goto LABEL_12;
    }
  }

  _spokenPlaceName = [self _spokenPlaceName];
  if ([_spokenPlaceName length])
  {
    if (a3)
    {
      *a3 = 4;
    }

    contactSpokenName = _spokenPlaceName;
  }

  else
  {
    contactSpokenName = 0;
  }

LABEL_12:

  return contactSpokenName;
}

- (id)localeIdentifier
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  _navigation_isNavd = [processInfo _navigation_isNavd];

  if (_navigation_isNavd)
  {
    currentLocale = +[MNUserOptionsEngine sharedInstance];
    [currentLocale currentVoiceLanguage];
  }

  else
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [currentLocale localeIdentifier];
  }
  v3 = ;

  return v3;
}

- (id)navDisplayNameWithSpecialContacts:()MNExtras substituteType:
{
  geoMapItem = [self geoMapItem];

  if (geoMapItem)
  {
    geoMapItem2 = [self geoMapItem];
    name = navDisplayNameForMapItem(geoMapItem2, a3, a4);
  }

  else
  {
    name = [self name];
  }

  return name;
}

- (id)navDisplayNameWithSpecialContacts:()MNExtras
{
  geoMapItem = [self geoMapItem];
  v5 = navDisplayNameForMapItem(geoMapItem, a3, 0);

  return v5;
}

- (id)navDisplayNameAndSubstituteType:()MNExtras
{
  geoMapItem = [self geoMapItem];

  if (geoMapItem)
  {
    [self navDisplayNameWithSpecialContacts:1 substituteType:a3];
  }

  else
  {
    [self name];
  }
  v6 = ;

  return v6;
}

- (id)navDisplayAddressAndSubstituteType:()MNExtras
{
  geoMapItem = [self geoMapItem];
  v5 = navDisplayAddressForMapItem(geoMapItem, a3);

  return v5;
}

- (id)directionsListAddress
{
  geoMapItem = [self geoMapItem];

  if (geoMapItem)
  {
    geoMapItem2 = [self geoMapItem];
    addressObject = [geoMapItem2 addressObject];
    v5 = [addressObject fullAddressWithMultiline:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)bestSpokenName
{
  v15 = *MEMORY[0x1E69E9840];
  waypointCategory = [self waypointCategory];
  contactSpokenName = 0;
  if (waypointCategory <= 6)
  {
    if ((waypointCategory - 1) >= 5)
    {
      if (waypointCategory)
      {
        if (waypointCategory != 6)
        {
          goto LABEL_15;
        }

        _spokenPlaceName = [self _spokenPlaceName];
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_7:
    geoMapItem = [self geoMapItem];
    contactSpokenName = [geoMapItem contactSpokenName];

    goto LABEL_15;
  }

  if ((waypointCategory - 9) < 4)
  {
    goto LABEL_7;
  }

  if (waypointCategory != 7)
  {
    if (waypointCategory != 8)
    {
      goto LABEL_15;
    }

LABEL_10:
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "[GEOComposedWaypoint(MNExtras) bestSpokenName]";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/GEOComposedWaypoint+MNExtras.m";
      v13 = 1024;
      v14 = 87;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v9, 0x1Cu);
    }

    _spokenPlaceName = [self navAnnouncementName];
    goto LABEL_14;
  }

  _spokenPlaceName = [self navAnnouncementAddress];
LABEL_14:
  contactSpokenName = _spokenPlaceName;
LABEL_15:
  v7 = *MEMORY[0x1E69E9840];

  return contactSpokenName;
}

- (id)bestDisplayName:()MNExtras
{
  v16 = *MEMORY[0x1E69E9840];
  waypointCategory = [self waypointCategory];
  if (waypointCategory > 0xC)
  {
    goto LABEL_11;
  }

  if (((1 << waypointCategory) & 0x1646) != 0)
  {
LABEL_3:
    navDisplayName = [self navDisplayName];
    goto LABEL_6;
  }

  if (((1 << waypointCategory) & 0x838) != 0)
  {
    navDisplayName = [self navDisplayNameWithSpecialContacts:a3];
    goto LABEL_6;
  }

  if (waypointCategory == 7)
  {
    navDisplayName = [self navDisplayAddress];
  }

  else
  {
LABEL_11:
    if (!waypointCategory)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315650;
        v11 = "[GEOComposedWaypoint(MNExtras) bestDisplayName:]";
        v12 = 2080;
        v13 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/GEOComposedWaypoint+MNExtras.m";
        v14 = 1024;
        v15 = 56;
        _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v10, 0x1Cu);
      }

      goto LABEL_3;
    }

    navDisplayName = 0;
  }

LABEL_6:
  v7 = *MEMORY[0x1E69E9840];

  return navDisplayName;
}

@end