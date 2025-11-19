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
  v2 = [a1 geoMapItem];

  if (v2)
  {
    v3 = [a1 geoMapItem];
    v4 = navDisplayAddressForMapItem(v3, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)humanDescriptionWithAddressAndLatLng
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1 navDisplayName];
  v4 = [a1 geoMapItem];
  if (v4 && (v5 = v4, [a1 geoMapItem], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "contactAddressType"), v6, v5, v7))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [a1 navDisplayNameWithSpecialContacts:0];
    v10 = [a1 navDisplayNameWithSpecialContacts:1];
    v11 = [v8 stringWithFormat:@"%@ (%@)", v9, v10];
    [v2 addObject:v11];
  }

  else if (v3)
  {
    [v2 addObject:v3];
  }

  v12 = [a1 navDisplayAddress];
  if (v12)
  {
    [v2 addObject:v12];
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = [a1 latLng];
  [v14 lat];
  v16 = v15;
  v17 = [a1 latLng];
  [v17 lng];
  v19 = [v13 stringWithFormat:@"%.6f, %.6f", v16, v18];
  [v2 addObject:v19];

  v20 = [v2 componentsJoinedByString:@" | "];

  return v20;
}

- (id)humanDescriptionWithLatLng
{
  v2 = [a1 geoMapItem];

  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [a1 navDisplayNameWithSpecialContacts:0];
    v5 = [a1 latLng];
    [v5 lat];
    v7 = v6;
    v8 = [a1 latLng];
    [v8 lng];
    v10 = [v3 stringWithFormat:@"%@ <%f, %f>", v4, v7, v9];
  }

  else
  {
    v10 = [a1 humanDescription];
  }

  return v10;
}

- (id)humanDescription
{
  v2 = [a1 geoMapItem];

  if (v2)
  {
    v3 = [a1 navDisplayNameWithSpecialContacts:0];
  }

  else if ([a1 hasLatLng])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [a1 latLng];
    [v5 lat];
    v7 = v6;
    v8 = [a1 latLng];
    [v8 lng];
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
  v2 = [a1 geoMapItem];
  v3 = [a1 localeIdentifier];
  v4 = [v2 spokenNameForLocale:v3];

  if ([v4 length])
  {
    v5 = [v4 _navigation_stringByMarkingAsNormalText];
    goto LABEL_7;
  }

  if ([MEMORY[0x1E69A1D18] canSpeakWrittenPlaceNames])
  {
    v5 = [a1 name];
    if ([v5 length])
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)navAnnouncementAddressAndSubstituteType:()MNExtras
{
  v5 = [a1 geoMapItem];
  if (v5)
  {
    v6 = [a1 localeIdentifier];
    v7 = [v5 _spokenAddressForLocale:v6];

    if ([v7 length])
    {
      if (a3)
      {
        *a3 = 2;
      }

      v8 = [v7 _navigation_stringByMarkingAsNormalText];
LABEL_12:
      v9 = v8;

      goto LABEL_16;
    }
  }

  if ([MEMORY[0x1E69A1D18] canSpeakWrittenAddresses])
  {
    v7 = [a1 navDisplayAddress];
    if ([v7 length])
    {
      if (a3)
      {
        *a3 = 2;
      }

      v8 = [v7 _navigation_stringByMarkingAsAddress];
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
  v5 = [a1 geoMapItem];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 contactSpokenName];
    if ([v7 length])
    {
      if (a3)
      {
        *a3 = 3;
      }

      goto LABEL_12;
    }
  }

  v8 = [a1 _spokenPlaceName];
  if ([v8 length])
  {
    if (a3)
    {
      *a3 = 4;
    }

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

LABEL_12:

  return v7;
}

- (id)localeIdentifier
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 _navigation_isNavd];

  if (v1)
  {
    v2 = +[MNUserOptionsEngine sharedInstance];
    [v2 currentVoiceLanguage];
  }

  else
  {
    v2 = [MEMORY[0x1E695DF58] currentLocale];
    [v2 localeIdentifier];
  }
  v3 = ;

  return v3;
}

- (id)navDisplayNameWithSpecialContacts:()MNExtras substituteType:
{
  v7 = [a1 geoMapItem];

  if (v7)
  {
    v8 = [a1 geoMapItem];
    v9 = navDisplayNameForMapItem(v8, a3, a4);
  }

  else
  {
    v9 = [a1 name];
  }

  return v9;
}

- (id)navDisplayNameWithSpecialContacts:()MNExtras
{
  v4 = [a1 geoMapItem];
  v5 = navDisplayNameForMapItem(v4, a3, 0);

  return v5;
}

- (id)navDisplayNameAndSubstituteType:()MNExtras
{
  v5 = [a1 geoMapItem];

  if (v5)
  {
    [a1 navDisplayNameWithSpecialContacts:1 substituteType:a3];
  }

  else
  {
    [a1 name];
  }
  v6 = ;

  return v6;
}

- (id)navDisplayAddressAndSubstituteType:()MNExtras
{
  v4 = [a1 geoMapItem];
  v5 = navDisplayAddressForMapItem(v4, a3);

  return v5;
}

- (id)directionsListAddress
{
  v2 = [a1 geoMapItem];

  if (v2)
  {
    v3 = [a1 geoMapItem];
    v4 = [v3 addressObject];
    v5 = [v4 fullAddressWithMultiline:0];
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
  v2 = [a1 waypointCategory];
  v3 = 0;
  if (v2 <= 6)
  {
    if ((v2 - 1) >= 5)
    {
      if (v2)
      {
        if (v2 != 6)
        {
          goto LABEL_15;
        }

        v4 = [a1 _spokenPlaceName];
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_7:
    v5 = [a1 geoMapItem];
    v3 = [v5 contactSpokenName];

    goto LABEL_15;
  }

  if ((v2 - 9) < 4)
  {
    goto LABEL_7;
  }

  if (v2 != 7)
  {
    if (v2 != 8)
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

    v4 = [a1 navAnnouncementName];
    goto LABEL_14;
  }

  v4 = [a1 navAnnouncementAddress];
LABEL_14:
  v3 = v4;
LABEL_15:
  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)bestDisplayName:()MNExtras
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [a1 waypointCategory];
  if (v5 > 0xC)
  {
    goto LABEL_11;
  }

  if (((1 << v5) & 0x1646) != 0)
  {
LABEL_3:
    v6 = [a1 navDisplayName];
    goto LABEL_6;
  }

  if (((1 << v5) & 0x838) != 0)
  {
    v6 = [a1 navDisplayNameWithSpecialContacts:a3];
    goto LABEL_6;
  }

  if (v5 == 7)
  {
    v6 = [a1 navDisplayAddress];
  }

  else
  {
LABEL_11:
    if (!v5)
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

    v6 = 0;
  }

LABEL_6:
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end