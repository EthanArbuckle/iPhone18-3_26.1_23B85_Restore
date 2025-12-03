@interface MUPlaceItemHeaderViewModel
- (BOOL)hasEnclosingPlace;
- (BOOL)hasInitialData;
- (BOOL)supportsContactAddressDescription;
- (MUPlaceItemHeaderViewModel)initWithPlaceItem:(id)item;
- (id)_formattedDistanceString;
- (id)_userSpecificPlaceSecondaryName;
- (id)addressDescriptionForContact;
- (id)enclosingPlaceAttributedStringWithFont:(id)font labelColor:(id)color tokenColor:(id)tokenColor showContainmentPercent:(double)percent;
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
    transitLabelItems = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MUPlaceItemHeaderViewModel;
    transitLabelItems = [(MUPlaceHeaderViewModel *)&v5 transitLabelItems];
  }

  return transitLabelItems;
}

- (id)_formattedDistanceString
{
  mEMORY[0x1E696F268] = [MEMORY[0x1E696F268] sharedLocationManager];
  lastLocation = [mEMORY[0x1E696F268] lastLocation];

  if (!lastLocation)
  {
    goto LABEL_9;
  }

  [lastLocation coordinate];
  v6 = 0;
  if (fabs(v7) > 180.0 || v5 < -90.0 || v5 > 90.0)
  {
    goto LABEL_10;
  }

  mEMORY[0x1E696F268]2 = [MEMORY[0x1E696F268] sharedLocationManager];
  isAuthorizedForPreciseLocation = [mEMORY[0x1E696F268]2 isAuthorizedForPreciseLocation];

  if (!isAuthorizedForPreciseLocation)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  [lastLocation coordinate];
  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  [mapItem _coordinate];
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

- (id)enclosingPlaceAttributedStringWithFont:(id)font labelColor:(id)color tokenColor:(id)tokenColor showContainmentPercent:(double)percent
{
  fontCopy = font;
  colorCopy = color;
  tokenColorCopy = tokenColor;
  if ([(MUPlaceItemHeaderViewModel *)self isUserSpecificPlaceItem])
  {
    v13 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = MUPlaceItemHeaderViewModel;
    v13 = [(MUPlaceHeaderViewModel *)&v15 enclosingPlaceAttributedStringWithFont:fontCopy labelColor:colorCopy tokenColor:tokenColorCopy showContainmentPercent:percent];
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
    _formattedDistanceString2 = _MULocalizedStringFromThisBundle(@"NEAR_BY_PLACE_HEADER_STRING");
    mEMORY[0x1E696F268] = [MEMORY[0x1E696F268] sharedLocationManager];
    isAuthorizedForPreciseLocation = [mEMORY[0x1E696F268] isAuthorizedForPreciseLocation];

    mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
    _geoAddress = [mapItem _geoAddress];
    structuredAddress = [_geoAddress structuredAddress];
    v17 = structuredAddress;
    if (isAuthorizedForPreciseLocation)
    {
      fullThoroughfare = [structuredAddress fullThoroughfare];

      if ([fullThoroughfare length])
      {
        _formattedDistanceString = [MEMORY[0x1E696AEC0] stringWithFormat:_formattedDistanceString2, fullThoroughfare];
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      fullThoroughfare = [structuredAddress locality];

      if ([fullThoroughfare length])
      {
        _formattedDistanceString = [MEMORY[0x1E696AEC0] stringWithFormat:_formattedDistanceString2, fullThoroughfare];
        mapItem2 = [(_MKPlaceItem *)self->_placeItem mapItem];
        _geoAddress2 = [mapItem2 _geoAddress];
        structuredAddress2 = [_geoAddress2 structuredAddress];
        administrativeAreaCode = [structuredAddress2 administrativeAreaCode];

        if ([administrativeAreaCode length])
        {
          v23 = [(__CFString *)_formattedDistanceString stringByAppendingFormat:@", %@", administrativeAreaCode];

          _formattedDistanceString = v23;
        }

        goto LABEL_16;
      }
    }

    _formattedDistanceString = &stru_1F44CA030;
    goto LABEL_16;
  }

  if ((-[_MKPlaceItem options](self->_placeItem, "options") & 2) == 0 || (-[_MKPlaceItem secondaryName](self->_placeItem, "secondaryName"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 length], v3, !v4))
  {
    _formattedDistanceString = [(MUPlaceItemHeaderViewModel *)self _formattedDistanceString];
    goto LABEL_18;
  }

  _formattedDistanceString2 = [(MUPlaceItemHeaderViewModel *)self _formattedDistanceString];
  if ([_formattedDistanceString2 length])
  {
    currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    layoutDirection = [currentTraitCollection layoutDirection];

    v8 = MEMORY[0x1E696AEC0];
    if (layoutDirection == 1)
    {
      v9 = _MULocalizedStringFromThisBundle(@"Delimiter");
      secondaryName = [(_MKPlaceItem *)self->_placeItem secondaryName];
      _formattedDistanceString = [v8 localizedStringWithFormat:@"%@%@%@", _formattedDistanceString2, v9, secondaryName];
    }

    else
    {
      secondaryName2 = [(_MKPlaceItem *)self->_placeItem secondaryName];
      v26 = _MULocalizedStringFromThisBundle(@"Delimiter");
      _formattedDistanceString = [v8 localizedStringWithFormat:@"%@%@%@", secondaryName2, v26, _formattedDistanceString2];
    }
  }

  else
  {
    _formattedDistanceString = _formattedDistanceString2;
  }

LABEL_17:

LABEL_18:

  return _formattedDistanceString;
}

- (id)addressDescriptionForContact
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (!MapsFeature_IsEnabled_MapsWally() || ![(_MKPlaceItem *)self->_placeItem representsPerson])
  {
    goto LABEL_15;
  }

  v4 = self->_placeItem;
  contact = [(_MKPlaceItem *)v4 contact];
  postalAddresses = [contact postalAddresses];
  firstObject = [postalAddresses firstObject];

  if ([contact _mapkit_isSharedLocationContact])
  {

LABEL_15:
    v2 = 0;
    goto LABEL_16;
  }

  label = [firstObject label];
  v9 = [label isEqual:*MEMORY[0x1E695CB60]];

  if (v9)
  {
    v10 = @"Contact Home Address [Placecard]";
  }

  else
  {
    label2 = [firstObject label];
    v12 = [label2 isEqual:*MEMORY[0x1E695CBD8]];

    if (v12)
    {
      v10 = @"Contact Work Address [Placecard]";
    }

    else
    {
      label3 = [firstObject label];
      v14 = [label3 isEqual:*MEMORY[0x1E695CBC8]];

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
      placeSecondaryName = [(MUPlaceHeaderViewModel *)&v15 placeSecondaryName];
      goto LABEL_15;
    }

    if (!MapsFeature_IsEnabled_MapsWally() || ![(_MKPlaceItem *)self->_placeItem representsPerson])
    {
LABEL_14:
      placeSecondaryName = [(MUPlaceItemHeaderViewModel *)self _formattedDistanceString];
      goto LABEL_15;
    }

    contact = [(_MKPlaceItem *)self->_placeItem contact];
    postalAddresses = [contact postalAddresses];
    firstObject = [postalAddresses firstObject];

    _mapkit_isSharedLocationContact = [contact _mapkit_isSharedLocationContact];
    _formattedDistanceString = [(MUPlaceItemHeaderViewModel *)self _formattedDistanceString];
    value = [firstObject value];
    street = [value street];

    if (_mapkit_isSharedLocationContact)
    {
      v11 = _MULocalizedStringFromThisBundle(@"Contact Shared Address [Placecard]");
      if (![street length])
      {
        v12 = _formattedDistanceString;
LABEL_12:
        value = v12;
        v13 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v11 = _MULocalizedStringFromThisBundle(@"Contact Address [Placecard]");
      if (![street length])
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

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:v11, street, _formattedDistanceString];
    goto LABEL_12;
  }

  placeSecondaryName = [(MUPlaceItemHeaderViewModel *)self _userSpecificPlaceSecondaryName];
LABEL_15:
  value = placeSecondaryName;
LABEL_16:

  return value;
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

- (MUPlaceItemHeaderViewModel)initWithPlaceItem:(id)item
{
  v4 = MEMORY[0x1E696F190];
  itemCopy = item;
  sharedImageManager = [v4 sharedImageManager];
  v7 = [(MUPlaceItemHeaderViewModel *)self initWithPlaceItem:itemCopy imageManager:sharedImageManager isDeveloperPlaceCard:0 developerPlaceCardAuditToken:0];

  return v7;
}

@end