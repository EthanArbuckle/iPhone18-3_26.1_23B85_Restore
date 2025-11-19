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
- (MUPlaceDataAvailability)initWithMapItem:(id)a3 options:(unint64_t)a4;
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
  v2 = [(MKMapItem *)self->_mapItem _trailHead];
  v3 = [v2 trails];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)supportsEVCharging
{
  if (!MapsFeature_IsEnabled_RealTimeEVCharger())
  {
    return 0;
  }

  v3 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v4 = [v3 _evCharger];
  v5 = [v4 plugs];

  v6 = [v5 count] != 0;
  return v6;
}

- (BOOL)supportsMessagesForBusiness
{
  v2 = [(MKMapItem *)self->_mapItem _messageURLString];
  v3 = [v2 length] != 0;

  return v3;
}

- (BOOL)supportsInlineRatings
{
  IsEnabled_SydneyARP = MapsFeature_IsEnabled_SydneyARP();
  if (IsEnabled_SydneyARP)
  {
    v4 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v5 = [v4 _hasUserRatingScore];

    v6 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v7 = [v6 _hasAppleRatings];

    if (!v5 || v7)
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
  v3 = [(MKMapItem *)self->_mapItem _enrichmentInfo];
  result = 0;
  if (v3)
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
  v2 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v3 = [v2 _placeQuestionnaire];

  if ([v3 canCollectRatings])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 canCollectPhotos];
  }

  return v4;
}

- (BOOL)supportsPlaceDescription
{
  v2 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v3 = [v2 _hasPlaceDescription];

  return v3;
}

- (BOOL)supportsMessageHours
{
  v2 = self->_mapItem;
  v3 = [(MKMapItem *)v2 _geoMapItem];
  v4 = [v3 _messageLink];
  v5 = [v4 timeZone];

  if (!v5)
  {
    goto LABEL_6;
  }

  if (![(MKMapItem *)v2 _isMapItemTypeBrand])
  {
    goto LABEL_6;
  }

  v6 = [(MKMapItem *)v2 _messageBusinessHours];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [(MKMapItem *)v2 _geoMapItem];
  v9 = [v8 _messageLink];
  v10 = [v9 timeZone];

  if (v10)
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
  v3 = [(MKMapItem *)v2 _geoMapItem];
  v4 = [v3 _placeType];

  if (v4 != 5 && v4 != 10)
  {
    v8 = MEMORY[0x1E69A1E80];
    v9 = [(MKMapItem *)v2 _geoMapItem];
    [v9 coordinate];
    if ([v8 isLocationShiftRequiredForCoordinate:?])
    {
    }

    else
    {
      v10 = [(MKMapItem *)v2 _geoMapItem];
      v11 = [v10 referenceFrame];

      if (v11 != 2)
      {
        v12 = [(MKMapItem *)v2 _geoMapItem];
        [v12 coordinate];
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
  v3 = [(MKMapItem *)self->_mapItem _reviews];
  v4 = [v3 count];

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
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(MKMapItem *)self->_mapItem _isMapItemTypeBrand];
    if (v3)
    {
      LOBYTE(v3) = [(MKMapItem *)self->_mapItem _isStandAloneBrand]^ 1;
    }
  }

  return v3;
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
  v3 = [(MKMapItem *)self->_mapItem _browseCategory_isVenueItem];
  mapItem = self->_mapItem;
  if (!v3)
  {
    v5 = [(MKMapItem *)mapItem _browseCategory_canDisplayBrowseCategoriesForPlace];
    if (!v5)
    {
      return v5;
    }

    return (BYTE2(self->_placeCardOptions) >> 1) & 1;
  }

  if (([(MKMapItem *)mapItem _browseCategory_canDisplayBrowseCategoriesForVenue]& 1) != 0)
  {
    return (BYTE2(self->_placeCardOptions) >> 1) & 1;
  }

  LOBYTE(v5) = 0;
  return v5;
}

- (BOOL)shouldShowRatingsAndReviewsModule
{
  v3 = [(MUPlaceDataAvailability *)self supportsAppleRatings];
  if (v3 && [(MUPlaceDataAvailability *)self _hasAppleRatingsCategories])
  {
    return 1;
  }

  v5 = [(MKMapItem *)self->_mapItem _reviews];
  v6 = [v5 count];

  v7 = [(MKMapItem *)self->_mapItem _hasUserRatingScore];
  v8 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v9 = [v8 _hasPlaceCollectionPullQuotes];

  v10 = [(MKMapItem *)self->_mapItem _tips];
  v11 = [v10 count];

  result = 1;
  if ((v3 | v7 ^ 1) == 1)
  {
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9;
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
  v2 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v3 = [v2 _appleRatings];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) ratingType] == 1)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(MKMapItem *)self->_mapItem _annotatedItemList];
  v4 = displayStyleForAnnotatedItemList() == 2;

  return v4;
}

- (BOOL)supportsAnnotatedPhotos
{
  placeCardOptions = self->_placeCardOptions;
  v3 = [(MKMapItem *)self->_mapItem _annotatedItemList];
  v4 = displayStyleForAnnotatedItemList() == 1;

  return v4;
}

- (BOOL)supportsVenueTextInfo
{
  if (![(MKMapItem *)self->_mapItem _hasVenueFeatureType]|| [(MKMapItem *)self->_mapItem _venueFeatureType]!= 2)
  {
    return 0;
  }

  v3 = [(MKMapItem *)self->_mapItem _venueInfo];
  v4 = [v3 contents];
  v5 = [v4 items];
  v6 = [v5 count] != 0;

  return v6;
}

- (BOOL)supportsEncyclopedicDescription
{
  v2 = [(MKMapItem *)self->_mapItem _encyclopedicInfo];
  v3 = [v2 hasTextBlock];

  return v3;
}

- (BOOL)supportsCuratedGuidesCarousel
{
  if ((self->_placeCardOptions & 0x40000000) == 0)
  {
    return 0;
  }

  v3 = [(MKMapItem *)self->_mapItem _placeCollections];
  v2 = [v3 count] != 0;

  return v2;
}

- (BOOL)supportsHours
{
  v2 = self->_mapItem;
  v3 = [(MKMapItem *)v2 timeZone];

  if (v3)
    LOBYTE(v3) = (-[MKMapItem _isMapItemTypeBrand](v2, "_isMapItemTypeBrand") & 1) == 0 && (-[MKMapItem _businessHours](v2, "_businessHours"), v4 = {;
  }

  return v3;
}

- (BOOL)suportsOfficialApp
{
  if ((self->_placeCardOptions & 0x20) == 0)
  {
    return 0;
  }

  v3 = [(MKMapItem *)self->_mapItem _preferedAppAdamID];
  v2 = v3 != 0;

  return v2;
}

- (BOOL)supportsHeaderContainment
{
  v2 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v3 = [v2 _containedPlace];
  v4 = [v3 parent];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)supportsRelatedPlaces
{
  if ((self->_placeCardOptions & 0x4000000) != 0)
  {
    return 0;
  }

  v2 = [(MKMapItem *)self->_mapItem _relatedPlaceLists];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)supportsAmenities
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(MKMapItem *)self->_mapItem _amenities];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (![v7 isApplePayAmenity] || (objc_msgSend(v7, "isAmenityPresent") & 1) != 0)
        {
          v8 = 1;
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v4 = [(MKMapItem *)v3 place];
  v5 = [v4 firstBusiness];
  if ([v5 photosCount])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(MKMapItem *)v3 _geoMapItem];
    v6 = [v7 _hasCaptionedPhotoAlbum];
  }

  if (MapKitIdiomIsMacCatalyst())
  {
    v8 = (self->_placeCardOptions & 0x2000000) == 0;
    v6 |= v8 & [(MKMapItem *)v3 _hasLookAroundStorefront];
  }

  return v6 & 1;
}

- (MUPlaceDataAvailability)initWithMapItem:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MUPlaceDataAvailability;
  v8 = [(MUPlaceDataAvailability *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapItem, a3);
    v9->_placeCardOptions = a4;
    v9->_myPlacesEnabled = MapsFeature_IsEnabled_MyPlacesFeatures();
    v9->_hikingIOSEnabled = MapsFeature_IsEnabled_HikingiOS();
  }

  return v9;
}

@end