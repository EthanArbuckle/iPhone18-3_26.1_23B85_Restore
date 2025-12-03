@interface MUPlaceDataAvailability
- (BOOL)_hasAppleRatingsCategories;
- (BOOL)canShowDirections;
- (BOOL)hasRatingsOrReviews;
- (BOOL)isRouteCreationAvailable;
- (BOOL)shouldShowRatingsAndReviewsModule;
- (BOOL)showEditAddressForHome;
- (BOOL)suportsOfficialApp;
- (BOOL)supportsAcceptsPayments;
- (BOOL)supportsAmenities;
- (BOOL)supportsAnnotatedPhotos;
- (BOOL)supportsAnnotatedTextList;
- (BOOL)supportsBrowseCategory;
- (BOOL)supportsCuratedGuidesCarousel;
- (BOOL)supportsEVCharging;
- (BOOL)supportsEncyclopedicDescription;
- (BOOL)supportsHeaderContainment;
- (BOOL)supportsHikingTrails;
- (BOOL)supportsHours;
- (BOOL)supportsInlineMap;
- (BOOL)supportsInlinePOIMap;
- (BOOL)supportsInlineRatings;
- (BOOL)supportsInlineReportAnIssue;
- (BOOL)supportsMessageHours;
- (BOOL)supportsMessagesForBusiness;
- (BOOL)supportsPhotoOnlyDataCollection;
- (BOOL)supportsPhotoSlider;
- (BOOL)supportsPlaceDescription;
- (BOOL)supportsPlaceEnrichment;
- (BOOL)supportsRelatedPlaces;
- (BOOL)supportsReportAnIssue;
- (BOOL)supportsReportsInReview;
- (BOOL)supportsShowingCoordinates;
- (BOOL)supportsVenueTextInfo;
- (MUPlaceDataAvailability)initWithMapItem:(id)item options:(unint64_t)options;
@end

@implementation MUPlaceDataAvailability

- (BOOL)supportsAcceptsPayments
{
  IsEnabled_ApplePayEnhancementsEnabled = MapsFeature_IsEnabled_ApplePayEnhancementsEnabled();
  if (IsEnabled_ApplePayEnhancementsEnabled)
  {

    LOBYTE(IsEnabled_ApplePayEnhancementsEnabled) = [(MUPlaceDataAvailability *)self supportsAmenities];
  }

  return IsEnabled_ApplePayEnhancementsEnabled;
}

- (BOOL)isRouteCreationAvailable
{
  if (self->_hikingIOSEnabled)
  {
    return (BYTE5(self->_placeCardOptions) >> 2) & 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (BOOL)supportsHikingTrails
{
  _trailHead = [(MKMapItem *)self->_mapItem _trailHead];
  trails = [_trailHead trails];
  v4 = trails != 0;

  return v4;
}

- (BOOL)supportsEVCharging
{
  if (!MapsFeature_IsEnabled_RealTimeEVCharger())
  {
    return 0;
  }

  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  _evCharger = [_geoMapItem _evCharger];
  plugs = [_evCharger plugs];

  v6 = [plugs count] != 0;
  return v6;
}

- (BOOL)supportsMessagesForBusiness
{
  _messageURLString = [(MKMapItem *)self->_mapItem _messageURLString];
  v3 = [_messageURLString length] != 0;

  return v3;
}

- (BOOL)supportsInlineRatings
{
  IsEnabled_SydneyARP = MapsFeature_IsEnabled_SydneyARP();
  if (IsEnabled_SydneyARP)
  {
    _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
    _hasUserRatingScore = [_geoMapItem _hasUserRatingScore];

    _geoMapItem2 = [(MKMapItem *)self->_mapItem _geoMapItem];
    _hasAppleRatings = [_geoMapItem2 _hasAppleRatings];

    if (!_hasUserRatingScore || _hasAppleRatings)
    {
      IsEnabled_SydneyARP = [(MUPlaceDataAvailability *)self supportsCallToAction];
      if (IsEnabled_SydneyARP)
      {
        LOBYTE(IsEnabled_SydneyARP) = ![(MUPlaceDataAvailability *)self supportsPhotoOnlyDataCollection];
      }
    }

    else
    {
      LOBYTE(IsEnabled_SydneyARP) = 0;
    }
  }

  return IsEnabled_SydneyARP;
}

- (BOOL)canShowDirections
{
  if ((self->_placeCardOptions & 8) != 0)
  {
    return 0;
  }

  else
  {
    return [(MKMapItem *)self->_mapItem _canGetDirections];
  }
}

- (BOOL)supportsPlaceEnrichment
{
  _enrichmentInfo = [(MKMapItem *)self->_mapItem _enrichmentInfo];
  result = 0;
  if (_enrichmentInfo)
  {
    placeCardOptions = self->_placeCardOptions;

    if ((placeCardOptions & 0x20000000) != 0)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)showEditAddressForHome
{
  if (self->_myPlacesEnabled)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    return (BYTE2(self->_placeCardOptions) >> 3) & 1;
  }

  return v2;
}

- (BOOL)supportsPhotoOnlyDataCollection
{
  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  _placeQuestionnaire = [_geoMapItem _placeQuestionnaire];

  if ([_placeQuestionnaire canCollectRatings])
  {
    canCollectPhotos = 0;
  }

  else
  {
    canCollectPhotos = [_placeQuestionnaire canCollectPhotos];
  }

  return canCollectPhotos;
}

- (BOOL)supportsPlaceDescription
{
  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  _hasPlaceDescription = [_geoMapItem _hasPlaceDescription];

  return _hasPlaceDescription;
}

- (BOOL)supportsMessageHours
{
  v2 = self->_mapItem;
  _geoMapItem = [(MKMapItem *)v2 _geoMapItem];
  _messageLink = [_geoMapItem _messageLink];
  timeZone = [_messageLink timeZone];

  if (!timeZone)
  {
    goto LABEL_6;
  }

  if (![(MKMapItem *)v2 _isMapItemTypeBrand])
  {
    goto LABEL_6;
  }

  _messageBusinessHours = [(MKMapItem *)v2 _messageBusinessHours];
  if (!_messageBusinessHours)
  {
    goto LABEL_6;
  }

  v7 = _messageBusinessHours;
  _geoMapItem2 = [(MKMapItem *)v2 _geoMapItem];
  _messageLink2 = [_geoMapItem2 _messageLink];
  timeZone2 = [_messageLink2 timeZone];

  if (timeZone2)
  {
    v11 = 1;
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  return v11;
}

- (BOOL)supportsShowingCoordinates
{
  v2 = self->_mapItem;
  _geoMapItem = [(MKMapItem *)v2 _geoMapItem];
  _placeType = [_geoMapItem _placeType];

  if (_placeType != 5 && _placeType != 10)
  {
    v8 = MEMORY[0x1E69A1E80];
    _geoMapItem2 = [(MKMapItem *)v2 _geoMapItem];
    [_geoMapItem2 coordinate];
    if ([v8 isLocationShiftRequiredForCoordinate:?])
    {
    }

    else
    {
      _geoMapItem3 = [(MKMapItem *)v2 _geoMapItem];
      referenceFrame = [_geoMapItem3 referenceFrame];

      if (referenceFrame != 2)
      {
        _geoMapItem4 = [(MKMapItem *)v2 _geoMapItem];
        [_geoMapItem4 coordinate];
        v14 = v13;
        v16 = v15;

        v17 = CLLocationCoordinate2DMake(v14, v16);
        v6 = CLLocationCoordinate2DIsValid(v17);
        goto LABEL_7;
      }
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (BOOL)supportsReportsInReview
{
  if ((self->_placeCardOptions & 0x400000000) != 0 || !MapsFeature_IsEnabled_RAPSydney() || (self->_placeCardOptions & 0x20000000) == 0)
  {
    return 0;
  }

  return [(MUPlaceDataAvailability *)self supportsReportAnIssue];
}

- (BOOL)supportsInlineReportAnIssue
{
  if ((self->_placeCardOptions & 0x400000000) != 0 || !MapsFeature_IsEnabled_RAPSydney() || (self->_placeCardOptions & 0x20000000) == 0 || ![(MUPlaceDataAvailability *)self supportsReportAnIssue])
  {
    return 0;
  }

  mapItem = self->_mapItem;

  return [(MKMapItem *)mapItem _isMapItemTypeBusiness];
}

- (BOOL)supportsReportAnIssue
{
  if ((self->_placeCardOptions & 0x40) != 0)
  {
    return 0;
  }

  else
  {
    return _MKRAPIsAvailable();
  }
}

- (BOOL)hasRatingsOrReviews
{
  _reviews = [(MKMapItem *)self->_mapItem _reviews];
  v4 = [_reviews count];

  result = [(MKMapItem *)self->_mapItem _hasUserRatingScore];
  if (v4)
  {
    return 1;
  }

  return result;
}

- (BOOL)supportsInlinePOIMap
{
  if (self->_placeCardOptions)
  {
    LOBYTE(_isMapItemTypeBrand) = 0;
  }

  else
  {
    _isMapItemTypeBrand = [(MKMapItem *)self->_mapItem _isMapItemTypeBrand];
    if (_isMapItemTypeBrand)
    {
      LOBYTE(_isMapItemTypeBrand) = [(MKMapItem *)self->_mapItem _isStandAloneBrand]^ 1;
    }
  }

  return _isMapItemTypeBrand;
}

- (BOOL)supportsInlineMap
{
  if (self->_placeCardOptions)
  {
    return 0;
  }

  if (([(MKMapItem *)self->_mapItem _isMapItemTypeBrand]& 1) != 0)
  {
    return 0;
  }

  [(MKMapItem *)self->_mapItem _coordinate];
  return fabs(v4) <= 180.0 && v5 >= -90.0 && v5 <= 90.0;
}

- (BOOL)supportsBrowseCategory
{
  _browseCategory_isVenueItem = [(MKMapItem *)self->_mapItem _browseCategory_isVenueItem];
  mapItem = self->_mapItem;
  if (!_browseCategory_isVenueItem)
  {
    _browseCategory_canDisplayBrowseCategoriesForPlace = [(MKMapItem *)mapItem _browseCategory_canDisplayBrowseCategoriesForPlace];
    if (!_browseCategory_canDisplayBrowseCategoriesForPlace)
    {
      return _browseCategory_canDisplayBrowseCategoriesForPlace;
    }

    return (BYTE2(self->_placeCardOptions) >> 1) & 1;
  }

  if (([(MKMapItem *)mapItem _browseCategory_canDisplayBrowseCategoriesForVenue]& 1) != 0)
  {
    return (BYTE2(self->_placeCardOptions) >> 1) & 1;
  }

  LOBYTE(_browseCategory_canDisplayBrowseCategoriesForPlace) = 0;
  return _browseCategory_canDisplayBrowseCategoriesForPlace;
}

- (BOOL)shouldShowRatingsAndReviewsModule
{
  supportsAppleRatings = [(MUPlaceDataAvailability *)self supportsAppleRatings];
  if (supportsAppleRatings && [(MUPlaceDataAvailability *)self _hasAppleRatingsCategories])
  {
    return 1;
  }

  _reviews = [(MKMapItem *)self->_mapItem _reviews];
  v6 = [_reviews count];

  _hasUserRatingScore = [(MKMapItem *)self->_mapItem _hasUserRatingScore];
  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  _hasPlaceCollectionPullQuotes = [_geoMapItem _hasPlaceCollectionPullQuotes];

  _tips = [(MKMapItem *)self->_mapItem _tips];
  v11 = [_tips count];

  result = 1;
  if ((supportsAppleRatings | _hasUserRatingScore ^ 1) == 1)
  {
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = _hasPlaceCollectionPullQuotes;
    }

    return v6 || v12;
  }

  return result;
}

- (BOOL)_hasAppleRatingsCategories
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  _appleRatings = [_geoMapItem _appleRatings];

  v4 = [_appleRatings countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(_appleRatings);
        }

        if ([*(*(&v9 + 1) + 8 * i) ratingType] == 1)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [_appleRatings countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)supportsAnnotatedTextList
{
  placeCardOptions = self->_placeCardOptions;
  _annotatedItemList = [(MKMapItem *)self->_mapItem _annotatedItemList];
  v4 = displayStyleForAnnotatedItemList() == 2;

  return v4;
}

- (BOOL)supportsAnnotatedPhotos
{
  placeCardOptions = self->_placeCardOptions;
  _annotatedItemList = [(MKMapItem *)self->_mapItem _annotatedItemList];
  v4 = displayStyleForAnnotatedItemList() == 1;

  return v4;
}

- (BOOL)supportsVenueTextInfo
{
  if (![(MKMapItem *)self->_mapItem _hasVenueFeatureType]|| [(MKMapItem *)self->_mapItem _venueFeatureType]!= 2)
  {
    return 0;
  }

  _venueInfo = [(MKMapItem *)self->_mapItem _venueInfo];
  contents = [_venueInfo contents];
  items = [contents items];
  v6 = [items count] != 0;

  return v6;
}

- (BOOL)supportsEncyclopedicDescription
{
  _encyclopedicInfo = [(MKMapItem *)self->_mapItem _encyclopedicInfo];
  hasTextBlock = [_encyclopedicInfo hasTextBlock];

  return hasTextBlock;
}

- (BOOL)supportsCuratedGuidesCarousel
{
  if ((self->_placeCardOptions & 0x40000000) == 0)
  {
    return 0;
  }

  _placeCollections = [(MKMapItem *)self->_mapItem _placeCollections];
  v2 = [_placeCollections count] != 0;

  return v2;
}

- (BOOL)supportsHours
{
  v2 = self->_mapItem;
  timeZone = [(MKMapItem *)v2 timeZone];

  if (timeZone)
    LOBYTE(timeZone) = (-[MKMapItem _isMapItemTypeBrand](v2, "_isMapItemTypeBrand") & 1) == 0 && (-[MKMapItem _businessHours](v2, "_businessHours"), v4 = {;
  }

  return timeZone;
}

- (BOOL)suportsOfficialApp
{
  if ((self->_placeCardOptions & 0x20) == 0)
  {
    return 0;
  }

  _preferedAppAdamID = [(MKMapItem *)self->_mapItem _preferedAppAdamID];
  v2 = _preferedAppAdamID != 0;

  return v2;
}

- (BOOL)supportsHeaderContainment
{
  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  _containedPlace = [_geoMapItem _containedPlace];
  parent = [_containedPlace parent];
  v5 = parent != 0;

  return v5;
}

- (BOOL)supportsRelatedPlaces
{
  if ((self->_placeCardOptions & 0x4000000) != 0)
  {
    return 0;
  }

  _relatedPlaceLists = [(MKMapItem *)self->_mapItem _relatedPlaceLists];
  v3 = [_relatedPlaceLists count] != 0;

  return v3;
}

- (BOOL)supportsAmenities
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _amenities = [(MKMapItem *)self->_mapItem _amenities];
  v3 = [_amenities countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(_amenities);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (![v7 isApplePayAmenity] || (objc_msgSend(v7, "isAmenityPresent") & 1) != 0)
        {
          v8 = 1;
          goto LABEL_13;
        }
      }

      v4 = [_amenities countByEnumeratingWithState:&v11 objects:v15 count:16];
      v8 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)supportsPhotoSlider
{
  v3 = self->_mapItem;
  place = [(MKMapItem *)v3 place];
  firstBusiness = [place firstBusiness];
  if ([firstBusiness photosCount])
  {
    _hasCaptionedPhotoAlbum = 1;
  }

  else
  {
    _geoMapItem = [(MKMapItem *)v3 _geoMapItem];
    _hasCaptionedPhotoAlbum = [_geoMapItem _hasCaptionedPhotoAlbum];
  }

  if (MapKitIdiomIsMacCatalyst())
  {
    v8 = (self->_placeCardOptions & 0x2000000) == 0;
    _hasCaptionedPhotoAlbum |= v8 & [(MKMapItem *)v3 _hasLookAroundStorefront];
  }

  return _hasCaptionedPhotoAlbum & 1;
}

- (MUPlaceDataAvailability)initWithMapItem:(id)item options:(unint64_t)options
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = MUPlaceDataAvailability;
  v8 = [(MUPlaceDataAvailability *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapItem, item);
    v9->_placeCardOptions = options;
    v9->_myPlacesEnabled = MapsFeature_IsEnabled_MyPlacesFeatures();
    v9->_hikingIOSEnabled = MapsFeature_IsEnabled_HikingiOS();
  }

  return v9;
}

@end