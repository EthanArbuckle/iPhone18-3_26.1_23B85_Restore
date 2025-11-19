@interface MUPlaceItemHeaderViewModel
- (BOOL)hasEnclosingPlace;
- (BOOL)hasInitialData;
- (BOOL)supportsContactAddressDescription;
- (MUPlaceItemHeaderViewModel)initWithPlaceItem:(id)a3;
- (id)_formattedDistanceString;
- (id)_userSpecificPlaceSecondaryName;
- (id)addressDescriptionForContact;
- (id)enclosingPlaceAttributedStringWithFont:(id)a3 labelColor:(id)a4 tokenColor:(id)a5 showContainmentPercent:(double)a6;
- (id)placeSecondaryName;
- (id)transitLabelItems;
@end

@implementation MUPlaceItemHeaderViewModel

- (BOOL)supportsContactAddressDescription
{
  IsEnabled_MapsWally = MapsFeature_IsEnabled_MapsWally();
  if (IsEnabled_MapsWally)
  {
    placeItem = self->_placeItem;

    LOBYTE(IsEnabled_MapsWally) = [(_MKPlaceItem *)placeItem representsPerson];
  }

  return IsEnabled_MapsWally;
}

- (id)transitLabelItems
{
  if ([(MUPlaceItemHeaderViewModel *)self isUserSpecificPlaceItem])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MUPlaceItemHeaderViewModel;
    v3 = [(MUPlaceHeaderViewModel *)&v5 transitLabelItems];
  }

  return v3;
}

- (id)_formattedDistanceString
{
  v3 = [MEMORY[0x1E696F268] sharedLocationManager];
  v4 = [v3 lastLocation];

  if (!v4)
  {
    goto LABEL_9;
  }

  [v4 coordinate];
  v6 = 0;
  if (fabs(v7) > 180.0 || v5 < -90.0 || v5 > 90.0)
  {
    goto LABEL_10;
  }

  v8 = [MEMORY[0x1E696F268] sharedLocationManager];
  v9 = [v8 isAuthorizedForPreciseLocation];

  if (!v9)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  [v4 coordinate];
  v10 = [(_MKPlaceItem *)self->_placeItem mapItem];
  [v10 _coordinate];
  GEOCalculateDistance();
  v12 = v11;

  if (!self->_distanceFormatter)
  {
    v13 = objc_alloc_init(MEMORY[0x1E696F1C8]);
    distanceFormatter = self->_distanceFormatter;
    self->_distanceFormatter = v13;

    [(MKDistanceFormatter *)self->_distanceFormatter setUnitStyle:1];
  }

  v15 = _MULocalizedStringFromThisBundle(@"[distance] away");
  v16 = [(MKDistanceFormatter *)self->_distanceFormatter stringFromDistance:v12];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v15, v16];

LABEL_10:

  return v6;
}

- (id)enclosingPlaceAttributedStringWithFont:(id)a3 labelColor:(id)a4 tokenColor:(id)a5 showContainmentPercent:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(MUPlaceItemHeaderViewModel *)self isUserSpecificPlaceItem])
  {
    v13 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = MUPlaceItemHeaderViewModel;
    v13 = [(MUPlaceHeaderViewModel *)&v15 enclosingPlaceAttributedStringWithFont:v10 labelColor:v11 tokenColor:v12 showContainmentPercent:a6];
  }

  return v13;
}

- (BOOL)hasEnclosingPlace
{
  if ([(MUPlaceItemHeaderViewModel *)self isUserSpecificPlaceItem])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = MUPlaceItemHeaderViewModel;
  return [(MUPlaceHeaderViewModel *)&v4 hasEnclosingPlace];
}

- (id)_userSpecificPlaceSecondaryName
{
  if (([(_MKPlaceItem *)self->_placeItem options]& 1) != 0)
  {
    v5 = _MULocalizedStringFromThisBundle(@"NEAR_BY_PLACE_HEADER_STRING");
    v12 = [MEMORY[0x1E696F268] sharedLocationManager];
    v13 = [v12 isAuthorizedForPreciseLocation];

    v14 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v15 = [v14 _geoAddress];
    v16 = [v15 structuredAddress];
    v17 = v16;
    if (v13)
    {
      v18 = [v16 fullThoroughfare];

      if ([v18 length])
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v5, v18];
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v18 = [v16 locality];

      if ([v18 length])
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v5, v18];
        v19 = [(_MKPlaceItem *)self->_placeItem mapItem];
        v20 = [v19 _geoAddress];
        v21 = [v20 structuredAddress];
        v22 = [v21 administrativeAreaCode];

        if ([v22 length])
        {
          v23 = [(__CFString *)v11 stringByAppendingFormat:@", %@", v22];

          v11 = v23;
        }

        goto LABEL_16;
      }
    }

    v11 = &stru_1F44CA030;
    goto LABEL_16;
  }

  if ((-[_MKPlaceItem options](self->_placeItem, "options") & 2) == 0 || (-[_MKPlaceItem secondaryName](self->_placeItem, "secondaryName"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 length], v3, !v4))
  {
    v11 = [(MUPlaceItemHeaderViewModel *)self _formattedDistanceString];
    goto LABEL_18;
  }

  v5 = [(MUPlaceItemHeaderViewModel *)self _formattedDistanceString];
  if ([v5 length])
  {
    v6 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    v7 = [v6 layoutDirection];

    v8 = MEMORY[0x1E696AEC0];
    if (v7 == 1)
    {
      v9 = _MULocalizedStringFromThisBundle(@"Delimiter");
      v10 = [(_MKPlaceItem *)self->_placeItem secondaryName];
      v11 = [v8 localizedStringWithFormat:@"%@%@%@", v5, v9, v10];
    }

    else
    {
      v25 = [(_MKPlaceItem *)self->_placeItem secondaryName];
      v26 = _MULocalizedStringFromThisBundle(@"Delimiter");
      v11 = [v8 localizedStringWithFormat:@"%@%@%@", v25, v26, v5];
    }
  }

  else
  {
    v11 = v5;
  }

LABEL_17:

LABEL_18:

  return v11;
}

- (id)addressDescriptionForContact
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (!MapsFeature_IsEnabled_MapsWally() || ![(_MKPlaceItem *)self->_placeItem representsPerson])
  {
    goto LABEL_15;
  }

  v4 = self->_placeItem;
  v5 = [(_MKPlaceItem *)v4 contact];
  v6 = [v5 postalAddresses];
  v7 = [v6 firstObject];

  if ([v5 _mapkit_isSharedLocationContact])
  {

LABEL_15:
    v2 = 0;
    goto LABEL_16;
  }

  v8 = [v7 label];
  v9 = [v8 isEqual:*MEMORY[0x1E695CB60]];

  if (v9)
  {
    v10 = @"Contact Home Address [Placecard]";
  }

  else
  {
    v11 = [v7 label];
    v12 = [v11 isEqual:*MEMORY[0x1E695CBD8]];

    if (v12)
    {
      v10 = @"Contact Work Address [Placecard]";
    }

    else
    {
      v13 = [v7 label];
      v14 = [v13 isEqual:*MEMORY[0x1E695CBC8]];

      if (v14)
      {
        v10 = @"Contact School Address [Placecard]";
      }

      else
      {
        v10 = @"Contact Other Address [Placecard]";
      }
    }
  }

  v15 = _MULocalizedStringFromThisBundle(v10);
  v16 = +[MUInfoCardStyle secondaryTextColor];
  if (v15)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v15];
    v22[0] = *MEMORY[0x1E69DB648];
    v18 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB980]];
    v22[1] = *MEMORY[0x1E69DB650];
    v23[0] = v18;
    v23[1] = v16;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    [v17 addAttributes:v19 range:{0, objc_msgSend(v17, "length")}];

    v2 = [v17 copy];
  }

  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_16:
  v20 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)placeSecondaryName
{
  if (![(MUPlaceItemHeaderViewModel *)self isUserSpecificPlaceItem])
  {
    if (![(MUPlaceItemHeaderViewModel *)self showNearbyStringForContactPlaceItem])
    {
      v15.receiver = self;
      v15.super_class = MUPlaceItemHeaderViewModel;
      v3 = [(MUPlaceHeaderViewModel *)&v15 placeSecondaryName];
      goto LABEL_15;
    }

    if (!MapsFeature_IsEnabled_MapsWally() || ![(_MKPlaceItem *)self->_placeItem representsPerson])
    {
LABEL_14:
      v3 = [(MUPlaceItemHeaderViewModel *)self _formattedDistanceString];
      goto LABEL_15;
    }

    v4 = [(_MKPlaceItem *)self->_placeItem contact];
    v5 = [v4 postalAddresses];
    v6 = [v5 firstObject];

    v7 = [v4 _mapkit_isSharedLocationContact];
    v8 = [(MUPlaceItemHeaderViewModel *)self _formattedDistanceString];
    v9 = [v6 value];
    v10 = [v9 street];

    if (v7)
    {
      v11 = _MULocalizedStringFromThisBundle(@"Contact Shared Address [Placecard]");
      if (![v10 length])
      {
        v12 = v8;
LABEL_12:
        v9 = v12;
        v13 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v11 = _MULocalizedStringFromThisBundle(@"Contact Address [Placecard]");
      if (![v10 length])
      {
        v13 = 1;
LABEL_13:

        if (!v13)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:v11, v10, v8];
    goto LABEL_12;
  }

  v3 = [(MUPlaceItemHeaderViewModel *)self _userSpecificPlaceSecondaryName];
LABEL_15:
  v9 = v3;
LABEL_16:

  return v9;
}

- (BOOL)hasInitialData
{
  if ([(MUPlaceItemHeaderViewModel *)self isUserSpecificPlaceItem])
  {
    return 1;
  }

  if ([(MUPlaceItemHeaderViewModel *)self showNearbyStringForContactPlaceItem])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = MUPlaceItemHeaderViewModel;
  return [(MUPlaceHeaderViewModel *)&v4 hasInitialData];
}

- (MUPlaceItemHeaderViewModel)initWithPlaceItem:(id)a3
{
  v4 = MEMORY[0x1E696F190];
  v5 = a3;
  v6 = [v4 sharedImageManager];
  v7 = [(MUPlaceItemHeaderViewModel *)self initWithPlaceItem:v5 imageManager:v6 isDeveloperPlaceCard:0 developerPlaceCardAuditToken:0];

  return v7;
}

@end