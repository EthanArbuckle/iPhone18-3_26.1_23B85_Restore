@interface MOEvent
+ (id)FormatDate:(id)a3;
+ (id)describeCategory:(unint64_t)a3;
+ (id)describeProvider:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFitnessPlusSession;
- (BOOL)isGComplete;
- (BOOL)isHighConfidence;
- (BOOL)isHomeWorkVisit;
- (BOOL)isInvalid;
- (BOOL)itemIsPinned;
- (CLLocation)workoutLocationStart;
- (GEOAddressObject)geoAddressObject;
- (MOEvent)initWithCoder:(id)a3;
- (MOEvent)initWithEventIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 creationDate:(id)a6 provider:(unint64_t)a7 category:(unint64_t)a8;
- (MOEventExtendedAttributes)extendedAttributes;
- (MOWeather)predominantWeather;
- (NSArray)interactionContacts;
- (NSArray)interactions;
- (NSArray)itemRecipients;
- (NSArray)itemSenders;
- (NSArray)mediaPlaySessions;
- (NSArray)photoMemoryAssets;
- (NSArray)tripParts;
- (NSArray)workoutLocationRoute;
- (NSData)placeMapItem;
- (NSDate)sourceCreationDate;
- (NSDictionary)contactClassificationMap;
- (NSDictionary)patterns;
- (NSDictionary)scoredTopics;
- (NSDictionary)trends;
- (NSNumber)categoryMuid;
- (NSNumber)densityScanDuration;
- (NSNumber)densityScore;
- (NSNumber)interactionContactScore;
- (NSNumber)itemAttributionsCount;
- (NSNumber)mediaRepetitions;
- (NSNumber)mediaSumTimePlayed;
- (NSNumber)motionStepCount;
- (NSNumber)pCount;
- (NSNumber)workoutDuration;
- (NSNumber)workoutTotalDistance;
- (NSNumber)workoutTotalEnergyBurned;
- (NSSet)interactionMechanisms;
- (NSString)interactionGroupName;
- (NSString)mediaAlbum;
- (NSString)mediaArtist;
- (NSString)mediaGenre;
- (NSString)mediaPlayerBundleId;
- (NSString)mediaProductId;
- (NSString)mediaTitle;
- (NSString)mediaType;
- (NSString)photoMemoryTitle;
- (NSString)placeName;
- (NSString)poiCategory;
- (NSString)suggestedEventIdentifier;
- (NSString)suggestedEventTitle;
- (NSString)tripTitle;
- (NSString)workoutType;
- (NSURL)itemURL;
- (PHAsset)photoAsset;
- (PPEvent)suggestedEvent;
- (PPScoredContact)interactionScoredContact;
- (RTAddress)address;
- (RTLocation)location;
- (double)confidenceScore;
- (double)duration;
- (double)familiarityIndexLOI;
- (double)placeNameConfidence;
- (id)bundleSourceType;
- (id)copy;
- (id)describeCategory;
- (id)describeProvider;
- (id)description;
- (id)formatAddressWithFormatOption:(id)a3;
- (id)formatAdministrativeAreaWithFormatOption:(id)a3;
- (id)formatCountryWithFormatOption:(id)a3;
- (id)formatLocalityWithFormatOption:(id)a3;
- (int64_t)gaPR;
- (unint64_t)hash;
- (unint64_t)itemShareDirection;
- (unint64_t)itemSyndicationStatus;
- (unint64_t)lifeEventCategory;
- (unint64_t)mode;
- (unint64_t)motionType;
- (unint64_t)photoMemoryCategory;
- (unint64_t)photoMomentSource;
- (unint64_t)placeDiscovery;
- (unint64_t)placeSource;
- (unint64_t)placeType;
- (unint64_t)placeUserType;
- (unint64_t)suggestedEventCategory;
- (unint64_t)timeAtHomeSubType;
- (void)encodeWithCoder:(id)a3;
- (void)initSubEvent;
- (void)setAddress:(id)a3;
- (void)setCategoryMuid:(id)a3;
- (void)setConfidenceScore:(double)a3;
- (void)setContactClassificationMap:(id)a3;
- (void)setDensityScanDuration:(id)a3;
- (void)setDensityScore:(id)a3;
- (void)setExtendedAttributes:(id)a3;
- (void)setFamiliarityIndexLOI:(double)a3;
- (void)setGaPR:(int64_t)a3;
- (void)setGeoAddressObject:(id)a3;
- (void)setInteractionContactScore:(id)a3;
- (void)setInteractionContacts:(id)a3;
- (void)setInteractionGroupName:(id)a3;
- (void)setInteractionMechanisms:(id)a3;
- (void)setInteractionScoredContact:(id)a3;
- (void)setInteractions:(id)a3;
- (void)setItemAttributionsCount:(id)a3;
- (void)setItemRecipients:(id)a3;
- (void)setItemSenders:(id)a3;
- (void)setItemShareDirection:(unint64_t)a3;
- (void)setItemSyndicationStatus:(unint64_t)a3;
- (void)setItemURL:(id)a3;
- (void)setLifeEventCategory:(unint64_t)a3;
- (void)setLocation:(id)a3;
- (void)setMediaAlbum:(id)a3;
- (void)setMediaArtist:(id)a3;
- (void)setMediaGenre:(id)a3;
- (void)setMediaPlaySessions:(id)a3;
- (void)setMediaPlayerBundleId:(id)a3;
- (void)setMediaProductId:(id)a3;
- (void)setMediaRepetitions:(id)a3;
- (void)setMediaSumTimePlayed:(id)a3;
- (void)setMediaTitle:(id)a3;
- (void)setMediaType:(id)a3;
- (void)setMode:(unint64_t)a3;
- (void)setMotionStepCount:(id)a3;
- (void)setMotionType:(unint64_t)a3;
- (void)setPCount:(id)a3;
- (void)setPatterns:(id)a3;
- (void)setPhotoAsset:(id)a3;
- (void)setPhotoMemoryAssets:(id)a3;
- (void)setPhotoMemoryCategory:(unint64_t)a3;
- (void)setPhotoMemoryTitle:(id)a3;
- (void)setPhotoMomentSource:(unint64_t)a3;
- (void)setPlaceDiscovery:(unint64_t)a3;
- (void)setPlaceMapItem:(id)a3;
- (void)setPlaceName:(id)a3;
- (void)setPlaceNameConfidence:(double)a3;
- (void)setPlaceSource:(unint64_t)a3;
- (void)setPlaceType:(unint64_t)a3;
- (void)setPlaceUserType:(unint64_t)a3;
- (void)setPoiCategory:(id)a3;
- (void)setPredominantWeather:(id)a3;
- (void)setScoredTopics:(id)a3;
- (void)setSuggestedEvent:(id)a3;
- (void)setSuggestedEventCategory:(unint64_t)a3;
- (void)setSuggestedEventIdentifier:(id)a3;
- (void)setSuggestedEventTitle:(id)a3;
- (void)setTimeAtHomeSubType:(unint64_t)a3;
- (void)setTrends:(id)a3;
- (void)setTripParts:(id)a3;
- (void)setTripTitle:(id)a3;
- (void)setWorkoutDuration:(id)a3;
- (void)setWorkoutLocationRoute:(id)a3;
- (void)setWorkoutLocationStart:(id)a3;
- (void)setWorkoutTotalDistance:(id)a3;
- (void)setWorkoutTotalEnergyBurned:(id)a3;
- (void)setWorkoutType:(id)a3;
@end

@implementation MOEvent

- (id)bundleSourceType
{
  v2 = [(MOEvent *)self category]- 1;
  if (v2 <= 0x18 && ((0x1F1E2BFu >> v2) & 1) != 0)
  {
    v3 = *off_2787733F8[v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MOEvent)initWithEventIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 creationDate:(id)a6 provider:(unint64_t)a7 category:(unint64_t)a8
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = v19;
  if (!v16)
  {
    v30 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:];
    }

    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = v31;
    v33 = @"Invalid parameter not satisfying: eventIdentifier";
    v34 = a2;
    v35 = self;
    v36 = 31;
    goto LABEL_20;
  }

  if (!v17)
  {
    v37 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:];
    }

    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = v31;
    v33 = @"Invalid parameter not satisfying: startDate";
    v34 = a2;
    v35 = self;
    v36 = 32;
    goto LABEL_20;
  }

  if (!v18)
  {
    v38 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:];
    }

    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = v31;
    v33 = @"Invalid parameter not satisfying: endDate";
    v34 = a2;
    v35 = self;
    v36 = 33;
    goto LABEL_20;
  }

  if (!v19)
  {
    v39 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:];
    }

    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = v31;
    v33 = @"Invalid parameter not satisfying: creationDate";
    v34 = a2;
    v35 = self;
    v36 = 34;
LABEL_20:
    [v31 handleFailureInMethod:v34 object:v35 file:@"MOEvent.m" lineNumber:v36 description:v33];

    v29 = 0;
    goto LABEL_21;
  }

  v41.receiver = self;
  v41.super_class = MOEvent;
  v21 = [(MOEvent *)&v41 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_eventIdentifier, a3);
    v23 = [v17 copy];
    startDate = v22->_startDate;
    v22->_startDate = v23;

    v25 = [v18 copy];
    endDate = v22->_endDate;
    v22->_endDate = v25;

    v27 = [v20 copy];
    creationDate = v22->_creationDate;
    v22->_creationDate = v27;

    v22->_provider = a7;
    v22->_category = a8;
    [(MOEvent *)v22 initSubEvent];
  }

  self = v22;
  v29 = self;
LABEL_21:

  return v29;
}

- (void)initSubEvent
{
  category = self->_category;
  if (category == 1)
  {
    v6 = off_278772B38;
    v7 = 120;
  }

  else
  {
    if (category != 2)
    {
      if (category != 16)
      {
        return;
      }

      v4 = objc_alloc_init(MOEventMotionActivity);
      motionActivityEvent = self->_motionActivityEvent;
      self->_motionActivityEvent = v4;
    }

    v6 = off_278772B68;
    v7 = 128;
  }

  v8 = objc_alloc_init(*v6);
  v9 = *(&self->super.isa + v7);
  *(&self->super.isa + v7) = v8;

  MEMORY[0x2821F96F8]();
}

+ (id)describeProvider:(unint64_t)a3
{
  if (a3 >= 0xD)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown (%lu)", a3];
  }

  else
  {
    v3 = off_278774C08[a3];
  }

  return v3;
}

+ (id)describeCategory:(unint64_t)a3
{
  if (a3 - 1 > 0x18)
  {
    return @"Unknown Category";
  }

  else
  {
    return off_278774C70[a3 - 1];
  }
}

- (id)describeCategory
{
  v2 = [(MOEvent *)self category];

  return [MOEvent describeCategory:v2];
}

- (id)describeProvider
{
  v2 = [(MOEvent *)self provider];

  return [MOEvent describeProvider:v2];
}

- (unint64_t)photoMomentSource
{
  result = self->_photoEvent;
  if (result)
  {
    return [result photoMomentSource];
  }

  return result;
}

- (MOEventExtendedAttributes)extendedAttributes
{
  photoEvent = self->_photoEvent;
  if (photoEvent)
  {
    photoEvent = [photoEvent extendedAttributes];
    v2 = vars8;
  }

  return photoEvent;
}

- (PHAsset)photoAsset
{
  photoEvent = self->_photoEvent;
  if (photoEvent)
  {
    photoEvent = [photoEvent photoAsset];
    v2 = vars8;
  }

  return photoEvent;
}

- (NSString)photoMemoryTitle
{
  photoEvent = self->_photoEvent;
  if (photoEvent)
  {
    photoEvent = [photoEvent photoMemoryTitle];
    v2 = vars8;
  }

  return photoEvent;
}

- (NSArray)photoMemoryAssets
{
  photoEvent = self->_photoEvent;
  if (photoEvent)
  {
    photoEvent = [photoEvent photoMemoryAssets];
    v2 = vars8;
  }

  return photoEvent;
}

- (unint64_t)photoMemoryCategory
{
  result = self->_photoEvent;
  if (result)
  {
    return [result photoMemoryCategory];
  }

  return result;
}

- (unint64_t)timeAtHomeSubType
{
  result = self->_analyticsEvent;
  if (result)
  {
    return [result timeAtHomeSubType];
  }

  return result;
}

- (BOOL)isHighConfidence
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    LOBYTE(routineEvent) = [(MOEventRoutine *)routineEvent isHighConfidence];
  }

  return routineEvent;
}

- (BOOL)isInvalid
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    LOBYTE(routineEvent) = [(MOEventRoutine *)routineEvent isInvalid];
  }

  return routineEvent;
}

- (unint64_t)placeType
{
  result = self->_routineEvent;
  if (result)
  {
    return [result placeType];
  }

  return result;
}

- (unint64_t)placeUserType
{
  result = self->_routineEvent;
  if (result)
  {
    return [result placeUserType];
  }

  return result;
}

- (NSString)placeName
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent placeName];
    v2 = vars8;
  }

  return routineEvent;
}

- (double)placeNameConfidence
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    return 0.0;
  }

  [(MOEventRoutine *)routineEvent placeNameConfidence];
  return result;
}

- (unint64_t)placeDiscovery
{
  result = self->_routineEvent;
  if (result)
  {
    return [result placeDiscovery];
  }

  return result;
}

- (RTLocation)location
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent location];
    v2 = vars8;
  }

  return routineEvent;
}

- (RTAddress)address
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent address];
    v2 = vars8;
  }

  return routineEvent;
}

- (GEOAddressObject)geoAddressObject
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent geoAddressObject];
    v2 = vars8;
  }

  return routineEvent;
}

- (unint64_t)mode
{
  result = self->_routineEvent;
  if (result)
  {
    return [result mode];
  }

  return result;
}

- (NSData)placeMapItem
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent placeMapItem];
    v2 = vars8;
  }

  return routineEvent;
}

- (NSString)poiCategory
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent poiCategory];
    v2 = vars8;
  }

  return routineEvent;
}

- (NSNumber)categoryMuid
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent categoryMuid];
    v2 = vars8;
  }

  return routineEvent;
}

- (unint64_t)placeSource
{
  result = self->_routineEvent;
  if (result)
  {
    return [result placeSource];
  }

  return result;
}

- (double)familiarityIndexLOI
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    return 0.0;
  }

  [(MOEventRoutine *)routineEvent familiarityIndexLOI];
  return result;
}

- (NSString)workoutType
{
  workoutEvent = self->_workoutEvent;
  if (workoutEvent)
  {
    workoutEvent = [workoutEvent workoutType];
    v2 = vars8;
  }

  return workoutEvent;
}

- (NSNumber)workoutTotalDistance
{
  workoutEvent = self->_workoutEvent;
  if (workoutEvent)
  {
    workoutEvent = [workoutEvent workoutTotalDistance];
    v2 = vars8;
  }

  return workoutEvent;
}

- (NSNumber)workoutTotalEnergyBurned
{
  workoutEvent = self->_workoutEvent;
  if (workoutEvent)
  {
    workoutEvent = [workoutEvent workoutTotalEnergyBurned];
    v2 = vars8;
  }

  return workoutEvent;
}

- (NSNumber)workoutDuration
{
  workoutEvent = self->_workoutEvent;
  if (workoutEvent)
  {
    workoutEvent = [workoutEvent workoutDuration];
    v2 = vars8;
  }

  return workoutEvent;
}

- (CLLocation)workoutLocationStart
{
  workoutEvent = self->_workoutEvent;
  if (workoutEvent)
  {
    workoutEvent = [workoutEvent workoutLocationStart];
    v2 = vars8;
  }

  return workoutEvent;
}

- (NSArray)workoutLocationRoute
{
  workoutEvent = self->_workoutEvent;
  if (workoutEvent)
  {
    workoutEvent = [workoutEvent workoutLocationRoute];
    v2 = vars8;
  }

  return workoutEvent;
}

- (NSNumber)motionStepCount
{
  motionActivityEvent = self->_motionActivityEvent;
  if (motionActivityEvent)
  {
    motionActivityEvent = [motionActivityEvent motionStepCount];
    v2 = vars8;
  }

  return motionActivityEvent;
}

- (BOOL)isFitnessPlusSession
{
  workoutEvent = self->_workoutEvent;
  if (workoutEvent)
  {
    LOBYTE(workoutEvent) = [(MOEventWorkout *)workoutEvent isFitnessPlusSession];
  }

  return workoutEvent;
}

- (NSString)suggestedEventTitle
{
  proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
  if (proactiveSuggestedEvent)
  {
    proactiveSuggestedEvent = [proactiveSuggestedEvent suggestedEventTitle];
    v2 = vars8;
  }

  return proactiveSuggestedEvent;
}

- (NSString)suggestedEventIdentifier
{
  proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
  if (proactiveSuggestedEvent)
  {
    proactiveSuggestedEvent = [proactiveSuggestedEvent suggestedEventIdentifier];
    v2 = vars8;
  }

  return proactiveSuggestedEvent;
}

- (unint64_t)suggestedEventCategory
{
  result = self->_proactiveSuggestedEvent;
  if (result)
  {
    return [result suggestedEventCategory];
  }

  return result;
}

- (PPEvent)suggestedEvent
{
  proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
  if (proactiveSuggestedEvent)
  {
    proactiveSuggestedEvent = [proactiveSuggestedEvent suggestedEvent];
    v2 = vars8;
  }

  return proactiveSuggestedEvent;
}

- (NSString)tripTitle
{
  travelEvent = self->_travelEvent;
  if (travelEvent)
  {
    travelEvent = [travelEvent tripTitle];
    v2 = vars8;
  }

  return travelEvent;
}

- (NSArray)tripParts
{
  travelEvent = self->_travelEvent;
  if (travelEvent)
  {
    travelEvent = [travelEvent tripParts];
    v2 = vars8;
  }

  return travelEvent;
}

- (NSString)mediaTitle
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaTitle];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSString)mediaAlbum
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaAlbum];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSString)mediaPlayerBundleId
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaPlayerBundleId];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSString)mediaProductId
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaProductId];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSString)mediaGenre
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaGenre];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSString)mediaType
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaType];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSString)mediaArtist
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaArtist];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSNumber)mediaRepetitions
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaRepetitions];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSNumber)mediaSumTimePlayed
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaSumTimePlayed];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSArray)mediaPlaySessions
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaPlaySessions];
    v2 = vars8;
  }

  return mediaEvent;
}

- (MOWeather)predominantWeather
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent predominantWeather];
    v2 = vars8;
  }

  return routineEvent;
}

- (NSURL)itemURL
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (sharedWithYouEvent)
  {
    sharedWithYouEvent = [sharedWithYouEvent itemURL];
    v2 = vars8;
  }

  return sharedWithYouEvent;
}

- (NSArray)itemSenders
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (sharedWithYouEvent)
  {
    sharedWithYouEvent = [sharedWithYouEvent itemSenders];
    v2 = vars8;
  }

  return sharedWithYouEvent;
}

- (NSArray)itemRecipients
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (sharedWithYouEvent)
  {
    sharedWithYouEvent = [sharedWithYouEvent itemRecipients];
    v2 = vars8;
  }

  return sharedWithYouEvent;
}

- (unint64_t)itemShareDirection
{
  result = self->_sharedWithYouEvent;
  if (result)
  {
    return [result itemShareDirection];
  }

  return result;
}

- (BOOL)itemIsPinned
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (sharedWithYouEvent)
  {
    LOBYTE(sharedWithYouEvent) = [(MOEventSharedWithYou *)sharedWithYouEvent itemIsPinned];
  }

  return sharedWithYouEvent;
}

- (unint64_t)itemSyndicationStatus
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (sharedWithYouEvent)
  {
    return [(MOEventSharedWithYou *)sharedWithYouEvent itemSyndicationStatus];
  }

  else
  {
    return 1;
  }
}

- (NSNumber)itemAttributionsCount
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (sharedWithYouEvent)
  {
    sharedWithYouEvent = [sharedWithYouEvent itemAttributionsCount];
    v2 = vars8;
  }

  return sharedWithYouEvent;
}

- (NSNumber)interactionContactScore
{
  significantContactEvent = self->_significantContactEvent;
  if (significantContactEvent)
  {
    significantContactEvent = [significantContactEvent interactionContactScore];
    v2 = vars8;
  }

  return significantContactEvent;
}

- (PPScoredContact)interactionScoredContact
{
  significantContactEvent = self->_significantContactEvent;
  if (significantContactEvent)
  {
    significantContactEvent = [significantContactEvent interactionScoredContact];
    v2 = vars8;
  }

  return significantContactEvent;
}

- (NSString)interactionGroupName
{
  significantContactEvent = self->_significantContactEvent;
  if (significantContactEvent)
  {
    significantContactEvent = [significantContactEvent interactionGroupName];
    v2 = vars8;
  }

  return significantContactEvent;
}

- (NSArray)interactionContacts
{
  significantContactEvent = self->_significantContactEvent;
  if (significantContactEvent)
  {
    significantContactEvent = [significantContactEvent interactionContacts];
    v2 = vars8;
  }

  return significantContactEvent;
}

- (NSDictionary)contactClassificationMap
{
  significantContactEvent = self->_significantContactEvent;
  if (significantContactEvent)
  {
    significantContactEvent = [significantContactEvent contactClassificationMap];
    v2 = vars8;
  }

  return significantContactEvent;
}

- (NSSet)interactionMechanisms
{
  significantContactEvent = self->_significantContactEvent;
  if (significantContactEvent)
  {
    significantContactEvent = [significantContactEvent interactionMechanisms];
    v2 = vars8;
  }

  return significantContactEvent;
}

- (NSArray)interactions
{
  significantContactEvent = self->_significantContactEvent;
  if (significantContactEvent)
  {
    significantContactEvent = [significantContactEvent interactions];
    v2 = vars8;
  }

  return significantContactEvent;
}

- (BOOL)isGComplete
{
  peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
  if (peopleDiscoveryEvent)
  {
    LOBYTE(peopleDiscoveryEvent) = [(MOEventPeopleDiscovery *)peopleDiscoveryEvent isGComplete];
  }

  return peopleDiscoveryEvent;
}

- (int64_t)gaPR
{
  result = self->_peopleDiscoveryEvent;
  if (result)
  {
    return [result gaPR];
  }

  return result;
}

- (NSNumber)pCount
{
  peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
  if (peopleDiscoveryEvent)
  {
    peopleDiscoveryEvent = [peopleDiscoveryEvent pCount];
    v2 = vars8;
  }

  return peopleDiscoveryEvent;
}

- (NSNumber)densityScore
{
  peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
  if (peopleDiscoveryEvent)
  {
    peopleDiscoveryEvent = [peopleDiscoveryEvent densityScore];
    v2 = vars8;
  }

  return peopleDiscoveryEvent;
}

- (NSNumber)densityScanDuration
{
  peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
  if (peopleDiscoveryEvent)
  {
    peopleDiscoveryEvent = [peopleDiscoveryEvent densityScanDuration];
    v2 = vars8;
  }

  return peopleDiscoveryEvent;
}

- (NSDictionary)scoredTopics
{
  portraitEvent = self->_portraitEvent;
  if (portraitEvent)
  {
    portraitEvent = [portraitEvent scoredTopics];
    v2 = vars8;
  }

  return portraitEvent;
}

- (unint64_t)motionType
{
  result = self->_motionActivityEvent;
  if (result)
  {
    return [result motionType];
  }

  return result;
}

- (NSDictionary)trends
{
  analyticsEvent = self->_analyticsEvent;
  if (analyticsEvent)
  {
    analyticsEvent = [analyticsEvent trends];
    v2 = vars8;
  }

  return analyticsEvent;
}

- (NSDictionary)patterns
{
  analyticsEvent = self->_analyticsEvent;
  if (analyticsEvent)
  {
    analyticsEvent = [analyticsEvent patterns];
    v2 = vars8;
  }

  return analyticsEvent;
}

- (unint64_t)lifeEventCategory
{
  result = self->_lifeEventsEvent;
  if (result)
  {
    return [result lifeEventCategory];
  }

  return result;
}

- (double)confidenceScore
{
  lifeEventsEvent = self->_lifeEventsEvent;
  if (!lifeEventsEvent)
  {
    return 0.0;
  }

  [(MOEventLifeEvents *)lifeEventsEvent confidenceScore];
  return result;
}

- (void)setPhotoMomentSource:(unint64_t)a3
{
  photoEvent = self->_photoEvent;
  if (!photoEvent)
  {
    v6 = objc_alloc_init(MOEventPhoto);
    v7 = self->_photoEvent;
    self->_photoEvent = v6;

    photoEvent = self->_photoEvent;
  }

  [(MOEventPhoto *)photoEvent setPhotoMomentSource:a3];
}

- (void)setExtendedAttributes:(id)a3
{
  v4 = a3;
  if (v4)
  {
    photoEvent = self->_photoEvent;
    v8 = v4;
    if (!photoEvent)
    {
      v6 = objc_alloc_init(MOEventPhoto);
      v7 = self->_photoEvent;
      self->_photoEvent = v6;

      photoEvent = self->_photoEvent;
    }

    [(MOEventPhoto *)photoEvent setExtendedAttributes:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setPhotoAsset:(id)a3
{
  v4 = a3;
  if (v4)
  {
    photoEvent = self->_photoEvent;
    v8 = v4;
    if (!photoEvent)
    {
      v6 = objc_alloc_init(MOEventPhoto);
      v7 = self->_photoEvent;
      self->_photoEvent = v6;

      photoEvent = self->_photoEvent;
    }

    [(MOEventPhoto *)photoEvent setPhotoAsset:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setPhotoMemoryTitle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    photoEvent = self->_photoEvent;
    v8 = v4;
    if (!photoEvent)
    {
      v6 = objc_alloc_init(MOEventPhoto);
      v7 = self->_photoEvent;
      self->_photoEvent = v6;

      photoEvent = self->_photoEvent;
    }

    [(MOEventPhoto *)photoEvent setPhotoMemoryTitle:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setPhotoMemoryAssets:(id)a3
{
  v4 = a3;
  if (v4)
  {
    photoEvent = self->_photoEvent;
    v8 = v4;
    if (!photoEvent)
    {
      v6 = objc_alloc_init(MOEventPhoto);
      v7 = self->_photoEvent;
      self->_photoEvent = v6;

      photoEvent = self->_photoEvent;
    }

    [(MOEventPhoto *)photoEvent setPhotoMemoryAssets:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setPhotoMemoryCategory:(unint64_t)a3
{
  photoEvent = self->_photoEvent;
  if (!photoEvent)
  {
    v6 = objc_alloc_init(MOEventPhoto);
    v7 = self->_photoEvent;
    self->_photoEvent = v6;

    photoEvent = self->_photoEvent;
  }

  [(MOEventPhoto *)photoEvent setPhotoMemoryCategory:a3];
}

- (void)setTimeAtHomeSubType:(unint64_t)a3
{
  analyticsEvent = self->_analyticsEvent;
  if (!analyticsEvent)
  {
    v6 = objc_alloc_init(MOEventAnalytics);
    v7 = self->_analyticsEvent;
    self->_analyticsEvent = v6;

    analyticsEvent = self->_analyticsEvent;
  }

  [(MOEventAnalytics *)analyticsEvent setTimeAtHomeSubType:a3];
}

- (void)setPlaceType:(unint64_t)a3
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    v6 = objc_alloc_init(MOEventRoutine);
    v7 = self->_routineEvent;
    self->_routineEvent = v6;

    routineEvent = self->_routineEvent;
  }

  [(MOEventRoutine *)routineEvent setPlaceType:a3];
}

- (void)setPlaceUserType:(unint64_t)a3
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    v6 = objc_alloc_init(MOEventRoutine);
    v7 = self->_routineEvent;
    self->_routineEvent = v6;

    routineEvent = self->_routineEvent;
  }

  [(MOEventRoutine *)routineEvent setPlaceUserType:a3];
}

- (void)setPlaceName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    routineEvent = self->_routineEvent;
    v8 = v4;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setPlaceName:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setPlaceNameConfidence:(double)a3
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    v6 = objc_alloc_init(MOEventRoutine);
    v7 = self->_routineEvent;
    self->_routineEvent = v6;

    routineEvent = self->_routineEvent;
  }

  [(MOEventRoutine *)routineEvent setPlaceNameConfidence:a3];
}

- (void)setPlaceDiscovery:(unint64_t)a3
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    v6 = objc_alloc_init(MOEventRoutine);
    v7 = self->_routineEvent;
    self->_routineEvent = v6;

    routineEvent = self->_routineEvent;
  }

  [(MOEventRoutine *)routineEvent setPlaceDiscovery:a3];
}

- (void)setLocation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    routineEvent = self->_routineEvent;
    v8 = v4;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setLocation:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setAddress:(id)a3
{
  v4 = a3;
  if (v4)
  {
    routineEvent = self->_routineEvent;
    v8 = v4;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setAddress:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setGeoAddressObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    routineEvent = self->_routineEvent;
    v8 = v4;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setGeoAddressObject:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setMode:(unint64_t)a3
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    v6 = objc_alloc_init(MOEventRoutine);
    v7 = self->_routineEvent;
    self->_routineEvent = v6;

    routineEvent = self->_routineEvent;
  }

  [(MOEventRoutine *)routineEvent setMode:a3];
}

- (void)setPlaceMapItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    routineEvent = self->_routineEvent;
    v8 = v4;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setPlaceMapItem:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setPoiCategory:(id)a3
{
  v4 = a3;
  if (v4)
  {
    routineEvent = self->_routineEvent;
    v8 = v4;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setPoiCategory:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setCategoryMuid:(id)a3
{
  v4 = a3;
  if (v4)
  {
    routineEvent = self->_routineEvent;
    v8 = v4;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setCategoryMuid:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setPlaceSource:(unint64_t)a3
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    v6 = objc_alloc_init(MOEventRoutine);
    v7 = self->_routineEvent;
    self->_routineEvent = v6;

    routineEvent = self->_routineEvent;
  }

  [(MOEventRoutine *)routineEvent setPlaceSource:a3];
}

- (void)setFamiliarityIndexLOI:(double)a3
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    v6 = objc_alloc_init(MOEventRoutine);
    v7 = self->_routineEvent;
    self->_routineEvent = v6;

    routineEvent = self->_routineEvent;
  }

  [(MOEventRoutine *)routineEvent setFamiliarityIndexLOI:a3];
}

- (void)setWorkoutType:(id)a3
{
  v4 = a3;
  if (v4)
  {
    workoutEvent = self->_workoutEvent;
    v8 = v4;
    if (!workoutEvent)
    {
      v6 = objc_alloc_init(MOEventWorkout);
      v7 = self->_workoutEvent;
      self->_workoutEvent = v6;

      workoutEvent = self->_workoutEvent;
    }

    [(MOEventWorkout *)workoutEvent setWorkoutType:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setWorkoutTotalDistance:(id)a3
{
  v4 = a3;
  if (v4)
  {
    workoutEvent = self->_workoutEvent;
    v8 = v4;
    if (!workoutEvent)
    {
      v6 = objc_alloc_init(MOEventWorkout);
      v7 = self->_workoutEvent;
      self->_workoutEvent = v6;

      workoutEvent = self->_workoutEvent;
    }

    [(MOEventWorkout *)workoutEvent setWorkoutTotalDistance:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setWorkoutTotalEnergyBurned:(id)a3
{
  v4 = a3;
  if (v4)
  {
    workoutEvent = self->_workoutEvent;
    v8 = v4;
    if (!workoutEvent)
    {
      v6 = objc_alloc_init(MOEventWorkout);
      v7 = self->_workoutEvent;
      self->_workoutEvent = v6;

      workoutEvent = self->_workoutEvent;
    }

    [(MOEventWorkout *)workoutEvent setWorkoutTotalEnergyBurned:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setWorkoutDuration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    workoutEvent = self->_workoutEvent;
    v8 = v4;
    if (!workoutEvent)
    {
      v6 = objc_alloc_init(MOEventWorkout);
      v7 = self->_workoutEvent;
      self->_workoutEvent = v6;

      workoutEvent = self->_workoutEvent;
    }

    [(MOEventWorkout *)workoutEvent setWorkoutDuration:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setWorkoutLocationStart:(id)a3
{
  v4 = a3;
  if (v4)
  {
    workoutEvent = self->_workoutEvent;
    v8 = v4;
    if (!workoutEvent)
    {
      v6 = objc_alloc_init(MOEventWorkout);
      v7 = self->_workoutEvent;
      self->_workoutEvent = v6;

      workoutEvent = self->_workoutEvent;
    }

    [(MOEventWorkout *)workoutEvent setWorkoutLocationStart:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setWorkoutLocationRoute:(id)a3
{
  v4 = a3;
  if (v4)
  {
    workoutEvent = self->_workoutEvent;
    v8 = v4;
    if (!workoutEvent)
    {
      v6 = objc_alloc_init(MOEventWorkout);
      v7 = self->_workoutEvent;
      self->_workoutEvent = v6;

      workoutEvent = self->_workoutEvent;
    }

    [(MOEventWorkout *)workoutEvent setWorkoutLocationRoute:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setMotionStepCount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    motionActivityEvent = self->_motionActivityEvent;
    v8 = v4;
    if (!motionActivityEvent)
    {
      v6 = objc_alloc_init(MOEventMotionActivity);
      v7 = self->_motionActivityEvent;
      self->_motionActivityEvent = v6;

      motionActivityEvent = self->_motionActivityEvent;
    }

    [(MOEventMotionActivity *)motionActivityEvent setMotionStepCount:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setSuggestedEventTitle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
    v8 = v4;
    if (!proactiveSuggestedEvent)
    {
      v6 = objc_alloc_init(MOEventProactiveSuggested);
      v7 = self->_proactiveSuggestedEvent;
      self->_proactiveSuggestedEvent = v6;

      proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
    }

    [(MOEventProactiveSuggested *)proactiveSuggestedEvent setSuggestedEventTitle:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setSuggestedEventIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
    v8 = v4;
    if (!proactiveSuggestedEvent)
    {
      v6 = objc_alloc_init(MOEventProactiveSuggested);
      v7 = self->_proactiveSuggestedEvent;
      self->_proactiveSuggestedEvent = v6;

      proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
    }

    [(MOEventProactiveSuggested *)proactiveSuggestedEvent setSuggestedEventIdentifier:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setSuggestedEventCategory:(unint64_t)a3
{
  proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
  if (!proactiveSuggestedEvent)
  {
    v6 = objc_alloc_init(MOEventProactiveSuggested);
    v7 = self->_proactiveSuggestedEvent;
    self->_proactiveSuggestedEvent = v6;

    proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
  }

  [(MOEventProactiveSuggested *)proactiveSuggestedEvent setSuggestedEventCategory:a3];
}

- (void)setSuggestedEvent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
    v8 = v4;
    if (!proactiveSuggestedEvent)
    {
      v6 = objc_alloc_init(MOEventProactiveSuggested);
      v7 = self->_proactiveSuggestedEvent;
      self->_proactiveSuggestedEvent = v6;

      proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
    }

    [(MOEventProactiveSuggested *)proactiveSuggestedEvent setSuggestedEvent:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setTripTitle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    travelEvent = self->_travelEvent;
    v8 = v4;
    if (!travelEvent)
    {
      v6 = objc_alloc_init(MOEventTravel);
      v7 = self->_travelEvent;
      self->_travelEvent = v6;

      travelEvent = self->_travelEvent;
    }

    [(MOEventTravel *)travelEvent setTripTitle:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setTripParts:(id)a3
{
  v4 = a3;
  if (v4)
  {
    travelEvent = self->_travelEvent;
    v8 = v4;
    if (!travelEvent)
    {
      v6 = objc_alloc_init(MOEventTravel);
      v7 = self->_travelEvent;
      self->_travelEvent = v6;

      travelEvent = self->_travelEvent;
    }

    [(MOEventTravel *)travelEvent setTripParts:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setMediaTitle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    mediaEvent = self->_mediaEvent;
    v8 = v4;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaTitle:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setMediaAlbum:(id)a3
{
  v4 = a3;
  if (v4)
  {
    mediaEvent = self->_mediaEvent;
    v8 = v4;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaAlbum:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setMediaPlayerBundleId:(id)a3
{
  v4 = a3;
  if (v4)
  {
    mediaEvent = self->_mediaEvent;
    v8 = v4;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaPlayerBundleId:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setMediaProductId:(id)a3
{
  v4 = a3;
  if (v4)
  {
    mediaEvent = self->_mediaEvent;
    v8 = v4;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaProductId:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setMediaGenre:(id)a3
{
  v4 = a3;
  if (v4)
  {
    mediaEvent = self->_mediaEvent;
    v8 = v4;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaGenre:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setMediaType:(id)a3
{
  v4 = a3;
  if (v4)
  {
    mediaEvent = self->_mediaEvent;
    v8 = v4;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaType:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setMediaArtist:(id)a3
{
  v4 = a3;
  if (v4)
  {
    mediaEvent = self->_mediaEvent;
    v8 = v4;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaArtist:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setMediaRepetitions:(id)a3
{
  v4 = a3;
  if (v4)
  {
    mediaEvent = self->_mediaEvent;
    v8 = v4;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaRepetitions:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setMediaSumTimePlayed:(id)a3
{
  v4 = a3;
  if (v4)
  {
    mediaEvent = self->_mediaEvent;
    v8 = v4;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaSumTimePlayed:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setMediaPlaySessions:(id)a3
{
  v4 = a3;
  if (v4)
  {
    mediaEvent = self->_mediaEvent;
    v8 = v4;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaPlaySessions:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setPredominantWeather:(id)a3
{
  v4 = a3;
  if (v4)
  {
    routineEvent = self->_routineEvent;
    v8 = v4;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setPredominantWeather:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setItemURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    sharedWithYouEvent = self->_sharedWithYouEvent;
    v8 = v4;
    if (!sharedWithYouEvent)
    {
      v6 = objc_alloc_init(MOEventSharedWithYou);
      v7 = self->_sharedWithYouEvent;
      self->_sharedWithYouEvent = v6;

      sharedWithYouEvent = self->_sharedWithYouEvent;
    }

    [(MOEventSharedWithYou *)sharedWithYouEvent setItemURL:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setItemSenders:(id)a3
{
  v4 = a3;
  if (v4)
  {
    sharedWithYouEvent = self->_sharedWithYouEvent;
    v8 = v4;
    if (!sharedWithYouEvent)
    {
      v6 = objc_alloc_init(MOEventSharedWithYou);
      v7 = self->_sharedWithYouEvent;
      self->_sharedWithYouEvent = v6;

      sharedWithYouEvent = self->_sharedWithYouEvent;
    }

    [(MOEventSharedWithYou *)sharedWithYouEvent setItemSenders:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setItemRecipients:(id)a3
{
  v4 = a3;
  if (v4)
  {
    sharedWithYouEvent = self->_sharedWithYouEvent;
    v8 = v4;
    if (!sharedWithYouEvent)
    {
      v6 = objc_alloc_init(MOEventSharedWithYou);
      v7 = self->_sharedWithYouEvent;
      self->_sharedWithYouEvent = v6;

      sharedWithYouEvent = self->_sharedWithYouEvent;
    }

    [(MOEventSharedWithYou *)sharedWithYouEvent setItemRecipients:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setItemShareDirection:(unint64_t)a3
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (!sharedWithYouEvent)
  {
    v6 = objc_alloc_init(MOEventSharedWithYou);
    v7 = self->_sharedWithYouEvent;
    self->_sharedWithYouEvent = v6;

    sharedWithYouEvent = self->_sharedWithYouEvent;
  }

  [(MOEventSharedWithYou *)sharedWithYouEvent setItemShareDirection:a3];
}

- (void)setItemSyndicationStatus:(unint64_t)a3
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (!sharedWithYouEvent)
  {
    v6 = objc_alloc_init(MOEventSharedWithYou);
    v7 = self->_sharedWithYouEvent;
    self->_sharedWithYouEvent = v6;

    sharedWithYouEvent = self->_sharedWithYouEvent;
  }

  [(MOEventSharedWithYou *)sharedWithYouEvent setItemSyndicationStatus:a3];
}

- (void)setItemAttributionsCount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    sharedWithYouEvent = self->_sharedWithYouEvent;
    v8 = v4;
    if (!sharedWithYouEvent)
    {
      v6 = objc_alloc_init(MOEventSharedWithYou);
      v7 = self->_sharedWithYouEvent;
      self->_sharedWithYouEvent = v6;

      sharedWithYouEvent = self->_sharedWithYouEvent;
    }

    [(MOEventSharedWithYou *)sharedWithYouEvent setItemAttributionsCount:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setInteractionContactScore:(id)a3
{
  v4 = a3;
  if (v4)
  {
    significantContactEvent = self->_significantContactEvent;
    v8 = v4;
    if (!significantContactEvent)
    {
      v6 = objc_alloc_init(MOEventSignificantContact);
      v7 = self->_significantContactEvent;
      self->_significantContactEvent = v6;

      significantContactEvent = self->_significantContactEvent;
    }

    [(MOEventSignificantContact *)significantContactEvent setInteractionContactScore:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setInteractionScoredContact:(id)a3
{
  v4 = a3;
  if (v4)
  {
    significantContactEvent = self->_significantContactEvent;
    v8 = v4;
    if (!significantContactEvent)
    {
      v6 = objc_alloc_init(MOEventSignificantContact);
      v7 = self->_significantContactEvent;
      self->_significantContactEvent = v6;

      significantContactEvent = self->_significantContactEvent;
    }

    [(MOEventSignificantContact *)significantContactEvent setInteractionScoredContact:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setInteractionGroupName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    significantContactEvent = self->_significantContactEvent;
    v8 = v4;
    if (!significantContactEvent)
    {
      v6 = objc_alloc_init(MOEventSignificantContact);
      v7 = self->_significantContactEvent;
      self->_significantContactEvent = v6;

      significantContactEvent = self->_significantContactEvent;
    }

    [(MOEventSignificantContact *)significantContactEvent setInteractionGroupName:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setInteractionContacts:(id)a3
{
  v4 = a3;
  if (v4)
  {
    significantContactEvent = self->_significantContactEvent;
    v8 = v4;
    if (!significantContactEvent)
    {
      v6 = objc_alloc_init(MOEventSignificantContact);
      v7 = self->_significantContactEvent;
      self->_significantContactEvent = v6;

      significantContactEvent = self->_significantContactEvent;
    }

    [(MOEventSignificantContact *)significantContactEvent setInteractionContacts:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setContactClassificationMap:(id)a3
{
  v4 = a3;
  if (v4)
  {
    significantContactEvent = self->_significantContactEvent;
    v8 = v4;
    if (!significantContactEvent)
    {
      v6 = objc_alloc_init(MOEventSignificantContact);
      v7 = self->_significantContactEvent;
      self->_significantContactEvent = v6;

      significantContactEvent = self->_significantContactEvent;
    }

    [(MOEventSignificantContact *)significantContactEvent setContactClassificationMap:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setInteractionMechanisms:(id)a3
{
  v4 = a3;
  if (v4)
  {
    significantContactEvent = self->_significantContactEvent;
    v8 = v4;
    if (!significantContactEvent)
    {
      v6 = objc_alloc_init(MOEventSignificantContact);
      v7 = self->_significantContactEvent;
      self->_significantContactEvent = v6;

      significantContactEvent = self->_significantContactEvent;
    }

    [(MOEventSignificantContact *)significantContactEvent setInteractionMechanisms:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setInteractions:(id)a3
{
  v4 = a3;
  if (v4)
  {
    significantContactEvent = self->_significantContactEvent;
    v8 = v4;
    if (!significantContactEvent)
    {
      v6 = objc_alloc_init(MOEventSignificantContact);
      v7 = self->_significantContactEvent;
      self->_significantContactEvent = v6;

      significantContactEvent = self->_significantContactEvent;
    }

    [(MOEventSignificantContact *)significantContactEvent setInteractions:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setGaPR:(int64_t)a3
{
  peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
  if (!peopleDiscoveryEvent)
  {
    v6 = objc_alloc_init(MOEventPeopleDiscovery);
    v7 = self->_peopleDiscoveryEvent;
    self->_peopleDiscoveryEvent = v6;

    peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
  }

  [(MOEventPeopleDiscovery *)peopleDiscoveryEvent setGaPR:a3];
}

- (void)setPCount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
    v8 = v4;
    if (!peopleDiscoveryEvent)
    {
      v6 = objc_alloc_init(MOEventPeopleDiscovery);
      v7 = self->_peopleDiscoveryEvent;
      self->_peopleDiscoveryEvent = v6;

      peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
    }

    [(MOEventPeopleDiscovery *)peopleDiscoveryEvent setPCount:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setDensityScore:(id)a3
{
  v4 = a3;
  if (v4)
  {
    peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
    v8 = v4;
    if (!peopleDiscoveryEvent)
    {
      v6 = objc_alloc_init(MOEventPeopleDiscovery);
      v7 = self->_peopleDiscoveryEvent;
      self->_peopleDiscoveryEvent = v6;

      peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
    }

    [(MOEventPeopleDiscovery *)peopleDiscoveryEvent setDensityScore:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setDensityScanDuration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
    v8 = v4;
    if (!peopleDiscoveryEvent)
    {
      v6 = objc_alloc_init(MOEventPeopleDiscovery);
      v7 = self->_peopleDiscoveryEvent;
      self->_peopleDiscoveryEvent = v6;

      peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
    }

    [(MOEventPeopleDiscovery *)peopleDiscoveryEvent setDensityScanDuration:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setScoredTopics:(id)a3
{
  v4 = a3;
  if (v4)
  {
    portraitEvent = self->_portraitEvent;
    v8 = v4;
    if (!portraitEvent)
    {
      v6 = objc_alloc_init(MOEventPortrait);
      v7 = self->_portraitEvent;
      self->_portraitEvent = v6;

      portraitEvent = self->_portraitEvent;
    }

    [(MOEventPortrait *)portraitEvent setScoredTopics:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setMotionType:(unint64_t)a3
{
  motionActivityEvent = self->_motionActivityEvent;
  if (!motionActivityEvent)
  {
    v6 = objc_alloc_init(MOEventMotionActivity);
    v7 = self->_motionActivityEvent;
    self->_motionActivityEvent = v6;

    motionActivityEvent = self->_motionActivityEvent;
  }

  [(MOEventMotionActivity *)motionActivityEvent setMotionType:a3];
}

- (void)setTrends:(id)a3
{
  v4 = a3;
  if (v4)
  {
    analyticsEvent = self->_analyticsEvent;
    v8 = v4;
    if (!analyticsEvent)
    {
      v6 = objc_alloc_init(MOEventAnalytics);
      v7 = self->_analyticsEvent;
      self->_analyticsEvent = v6;

      analyticsEvent = self->_analyticsEvent;
    }

    [(MOEventAnalytics *)analyticsEvent setTrends:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setPatterns:(id)a3
{
  v4 = a3;
  if (v4)
  {
    analyticsEvent = self->_analyticsEvent;
    v8 = v4;
    if (!analyticsEvent)
    {
      v6 = objc_alloc_init(MOEventAnalytics);
      v7 = self->_analyticsEvent;
      self->_analyticsEvent = v6;

      analyticsEvent = self->_analyticsEvent;
    }

    [(MOEventAnalytics *)analyticsEvent setPatterns:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setLifeEventCategory:(unint64_t)a3
{
  lifeEventsEvent = self->_lifeEventsEvent;
  if (!lifeEventsEvent)
  {
    v6 = objc_alloc_init(MOEventLifeEvents);
    v7 = self->_lifeEventsEvent;
    self->_lifeEventsEvent = v6;

    lifeEventsEvent = self->_lifeEventsEvent;
  }

  [(MOEventLifeEvents *)lifeEventsEvent setLifeEventCategory:a3];
}

- (void)setConfidenceScore:(double)a3
{
  lifeEventsEvent = self->_lifeEventsEvent;
  if (!lifeEventsEvent)
  {
    v6 = objc_alloc_init(MOEventLifeEvents);
    v7 = self->_lifeEventsEvent;
    self->_lifeEventsEvent = v6;

    lifeEventsEvent = self->_lifeEventsEvent;
  }

  [(MOEventLifeEvents *)lifeEventsEvent setConfidenceScore:a3];
}

+ (id)FormatDate:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCA968];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    [v5 setDateStyle:4];
    [v5 setTimeStyle:3];
    v6 = [v5 stringFromDate:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  if ([(MOEvent *)self provider]== 5)
  {
    analyticsEvent = self->_analyticsEvent;
    if (analyticsEvent)
    {
LABEL_3:
      analyticsEvent = [(__CFString *)analyticsEvent description];
    }
  }

  else
  {
    v13 = [(MOEvent *)self category]- 1;
    analyticsEvent = 0;
    switch(v13)
    {
      case 0uLL:
        analyticsEvent = self->_routineEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 1uLL:
        analyticsEvent = self->_workoutEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 2uLL:
      case 3uLL:
      case 5uLL:
        analyticsEvent = self->_mediaEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 4uLL:
      case 0x10uLL:
        analyticsEvent = self->_photoEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 6uLL:
        analyticsEvent = self->_portraitEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 7uLL:
        analyticsEvent = self->_travelEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 8uLL:
        analyticsEvent = self->_sharedWithYouEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 9uLL:
        analyticsEvent = self->_significantContactEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 0xAuLL:
      case 0xBuLL:
        analyticsEvent = self->_proactiveSuggestedEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 0xCuLL:
        break;
      case 0xEuLL:
      case 0x14uLL:
      case 0x16uLL:
        analyticsEvent = self->_peopleDiscoveryEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 0xFuLL:
        analyticsEvent = self->_motionActivityEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 0x13uLL:
        analyticsEvent = self->_screenTimeEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 0x15uLL:
        analyticsEvent = self->_lifeEventsEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 0x18uLL:
        analyticsEvent = self->_inviteEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      default:
        analyticsEvent = @"no other details";
        break;
    }
  }

  v23 = analyticsEvent;
  v19 = objc_alloc(MEMORY[0x277CCACA8]);
  v17 = [(MOEvent *)self eventIdentifier];
  v14 = [(MOEvent *)self identifierFromProvider];
  v22 = [(MOEvent *)self startDate];
  v15 = [MOEvent FormatDate:v22];
  v21 = [(MOEvent *)self endDate];
  v4 = [MOEvent FormatDate:v21];
  v18 = [(MOEvent *)self creationDate];
  v5 = [MOEvent FormatDate:v18];
  v16 = [(MOEvent *)self sourceCreationDate];
  v6 = [MOEvent FormatDate:v16];
  v7 = [(MOEvent *)self expirationDate];
  v8 = [MOEvent FormatDate:v7];
  v9 = [(MOEvent *)self timeZone];
  v10 = [(MOEvent *)self describeProvider];
  v11 = [(MOEvent *)self describeCategory];
  v20 = [v19 initWithFormat:@"<MOEvent eventIdentifier, %@, identifierFromProvider, %@, startDate, %@, endDate, %@, creationDate, %@, sourceCreationDate, %@, expirationDate, %@, timeZone, %@, provider, %@, category, %@, rehydrationFailCount, %lu, source app, %@, %@>", v17, v14, v15, v4, v5, v6, v8, v9, v10, v11, -[MOEvent rehydrationFailCount](self, "rehydrationFailCount"), self->_appBundle, v23];

  return v20;
}

- (MOEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v9 = v8;
  if (v5)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v6 == 0 || v7 == 0)
  {
    v13 = 0;
  }

  else
  {
    v14 = -[MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:](self, "initWithEventIdentifier:startDate:endDate:creationDate:provider:category:", v5, v6, v7, v8, [v4 decodeIntegerForKey:@"provider"], objc_msgSend(v4, "decodeIntegerForKey:", @"category"));
    v15 = v14;
    if (v14)
    {
      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifierFromProvider"];
      identifierFromProvider = v15->_identifierFromProvider;
      v15->_identifierFromProvider = v16;

      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
      expirationDate = v15->_expirationDate;
      v15->_expirationDate = v18;

      v15->_fromFirstParty = [v4 decodeBoolForKey:@"fromFirstParty"];
      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceCreationDate"];
      sourceCreationDate = v15->_sourceCreationDate;
      v15->_sourceCreationDate = v20;

      v15->_rehydrationFailCount = [v4 decodeIntegerForKey:@"rehydrationFailCount"];
      v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundle"];
      appBundle = v15->_appBundle;
      v15->_appBundle = v22;

      v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoEvent"];
      photoEvent = v15->_photoEvent;
      v15->_photoEvent = v24;

      v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routineEvent"];
      routineEvent = v15->_routineEvent;
      v15->_routineEvent = v26;

      v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutEvent"];
      workoutEvent = v15->_workoutEvent;
      v15->_workoutEvent = v28;

      v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proactiveSuggestedEvent"];
      proactiveSuggestedEvent = v15->_proactiveSuggestedEvent;
      v15->_proactiveSuggestedEvent = v30;

      v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"travelEvent"];
      travelEvent = v15->_travelEvent;
      v15->_travelEvent = v32;

      v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaEvent"];
      mediaEvent = v15->_mediaEvent;
      v15->_mediaEvent = v34;

      v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedWithYouEvent"];
      sharedWithYouEvent = v15->_sharedWithYouEvent;
      v15->_sharedWithYouEvent = v36;

      v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"significantContactEvent"];
      significantContactEvent = v15->_significantContactEvent;
      v15->_significantContactEvent = v38;

      v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peopleDiscoveryEvent"];
      peopleDiscoveryEvent = v15->_peopleDiscoveryEvent;
      v15->_peopleDiscoveryEvent = v40;

      v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"portraitEvent"];
      portraitEvent = v15->_portraitEvent;
      v15->_portraitEvent = v42;

      v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"motionActivityEvent"];
      motionActivityEvent = v15->_motionActivityEvent;
      v15->_motionActivityEvent = v44;

      v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"analyticsEvent"];
      analyticsEvent = v15->_analyticsEvent;
      v15->_analyticsEvent = v46;

      v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lifeEventsEvent"];
      lifeEventsEvent = v15->_lifeEventsEvent;
      v15->_lifeEventsEvent = v48;

      v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stateOfMindEvent"];
      stateOfMindEvent = v15->_stateOfMindEvent;
      v15->_stateOfMindEvent = v50;

      v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"screenTimeEvent"];
      screenTimeEvent = v15->_screenTimeEvent;
      v15->_screenTimeEvent = v52;

      v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inviteEvent"];
      inviteEvent = v15->_inviteEvent;
      v15->_inviteEvent = v54;
    }

    self = v15;
    v13 = self;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  eventIdentifier = self->_eventIdentifier;
  v5 = a3;
  [v5 encodeObject:eventIdentifier forKey:@"eventIdentifier"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeInteger:self->_provider forKey:@"provider"];
  [v5 encodeInteger:self->_category forKey:@"category"];
  [v5 encodeObject:self->_identifierFromProvider forKey:@"identifierFromProvider"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v5 encodeBool:self->_fromFirstParty forKey:@"fromFirstParty"];
  [v5 encodeObject:self->_sourceCreationDate forKey:@"sourceCreationDate"];
  [v5 encodeInteger:self->_rehydrationFailCount forKey:@"rehydrationFailCount"];
  [v5 encodeObject:self->_appBundle forKey:@"appBundle"];
  [v5 encodeObject:self->_photoEvent forKey:@"photoEvent"];
  [v5 encodeObject:self->_routineEvent forKey:@"routineEvent"];
  [v5 encodeObject:self->_workoutEvent forKey:@"workoutEvent"];
  [v5 encodeObject:self->_proactiveSuggestedEvent forKey:@"proactiveSuggestedEvent"];
  [v5 encodeObject:self->_travelEvent forKey:@"travelEvent"];
  [v5 encodeObject:self->_mediaEvent forKey:@"mediaEvent"];
  [v5 encodeObject:self->_sharedWithYouEvent forKey:@"sharedWithYouEvent"];
  [v5 encodeObject:self->_significantContactEvent forKey:@"significantContactEvent"];
  [v5 encodeObject:self->_peopleDiscoveryEvent forKey:@"peopleDiscoveryEvent"];
  [v5 encodeObject:self->_portraitEvent forKey:@"portraitEvent"];
  [v5 encodeObject:self->_motionActivityEvent forKey:@"motionActivityEvent"];
  [v5 encodeObject:self->_analyticsEvent forKey:@"analyticsEvent"];
  [v5 encodeObject:self->_lifeEventsEvent forKey:@"lifeEventsEvent"];
  [v5 encodeObject:self->_stateOfMindEvent forKey:@"stateOfMindEvent"];
  [v5 encodeObject:self->_screenTimeEvent forKey:@"screenTimeEvent"];
  [v5 encodeObject:self->_inviteEvent forKey:@"inviteEvent"];
}

- (unint64_t)hash
{
  v2 = [(MOEvent *)self eventIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (id)copy
{
  v3 = [MOEvent alloc];
  v4 = [(MOEvent *)self eventIdentifier];
  v5 = [(MOEvent *)self startDate];
  v6 = [(MOEvent *)self endDate];
  v7 = [(MOEvent *)self creationDate];
  v8 = [(MOEvent *)v3 initWithEventIdentifier:v4 startDate:v5 endDate:v6 creationDate:v7 provider:[(MOEvent *)self provider] category:[(MOEvent *)self category]];

  objc_storeStrong((v8 + 64), self->_expirationDate);
  objc_storeStrong((v8 + 56), self->_sourceCreationDate);
  objc_storeStrong((v8 + 88), self->_identifierFromProvider);
  *(v8 + 96) = self->_rehydrationFailCount;
  objc_storeStrong((v8 + 104), self->_appBundle);
  v9 = [(MOEventPhoto *)self->_photoEvent copy];
  v10 = *(v8 + 112);
  *(v8 + 112) = v9;

  v11 = [(MOEventRoutine *)self->_routineEvent copy];
  v12 = *(v8 + 120);
  *(v8 + 120) = v11;

  v13 = [(MOEventWorkout *)self->_workoutEvent copy];
  v14 = *(v8 + 128);
  *(v8 + 128) = v13;

  v15 = [(MOEventProactiveSuggested *)self->_proactiveSuggestedEvent copy];
  v16 = *(v8 + 136);
  *(v8 + 136) = v15;

  v17 = [(MOEventTravel *)self->_travelEvent copy];
  v18 = *(v8 + 144);
  *(v8 + 144) = v17;

  v19 = [(MOEventMedia *)self->_mediaEvent copy];
  v20 = *(v8 + 152);
  *(v8 + 152) = v19;

  v21 = [(MOEventSharedWithYou *)self->_sharedWithYouEvent copy];
  v22 = *(v8 + 160);
  *(v8 + 160) = v21;

  v23 = [(MOEventSignificantContact *)self->_significantContactEvent copy];
  v24 = *(v8 + 168);
  *(v8 + 168) = v23;

  v25 = [(MOEventPeopleDiscovery *)self->_peopleDiscoveryEvent copy];
  v26 = *(v8 + 176);
  *(v8 + 176) = v25;

  v27 = [(MOEventPortrait *)self->_portraitEvent copy];
  v28 = *(v8 + 184);
  *(v8 + 184) = v27;

  v29 = [(MOEventMotionActivity *)self->_motionActivityEvent copy];
  v30 = *(v8 + 192);
  *(v8 + 192) = v29;

  v31 = [(MOEventAnalytics *)self->_analyticsEvent copy];
  v32 = *(v8 + 200);
  *(v8 + 200) = v31;

  v33 = [(MOEventLifeEvents *)self->_lifeEventsEvent copy];
  v34 = *(v8 + 208);
  *(v8 + 208) = v33;

  v35 = [(MOEventStateOfMind *)self->_stateOfMindEvent copy];
  v36 = *(v8 + 216);
  *(v8 + 216) = v35;

  v37 = [(MOEventScreenTime *)self->_screenTimeEvent copy];
  v38 = *(v8 + 224);
  *(v8 + 224) = v37;

  v39 = [(MOEventInvite *)self->_inviteEvent copy];
  v40 = *(v8 + 232);
  *(v8 + 232) = v39;

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(MOEvent *)self eventIdentifier];
        if (v8 || ([(MOEvent *)v7 eventIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(MOEvent *)self eventIdentifier];
          v10 = [(MOEvent *)v7 eventIdentifier];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (NSDate)sourceCreationDate
{
  sourceCreationDate = self->_sourceCreationDate;
  if (!sourceCreationDate)
  {
    sourceCreationDate = self->_endDate;
  }

  v3 = sourceCreationDate;

  return v3;
}

- (BOOL)isHomeWorkVisit
{
  if (self->_category != 1)
  {
    goto LABEL_5;
  }

  v3 = [(MOEvent *)self placeUserType];
  if (v3 != 1)
  {
    if ([(MOEvent *)self placeUserType]== 2)
    {
      LOBYTE(v3) = 1;
      return v3;
    }

LABEL_5:
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (double)duration
{
  v3 = [(MOEvent *)self endDate];
  v4 = [(MOEvent *)self startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (id)formatAddressWithFormatOption:(id)a3
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    v5 = [(MOEventRoutine *)routineEvent formatAddressWithFormatOption:a3];
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOEvent formatAddressWithFormatOption:];
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MOEvent.m" lineNumber:1777 description:{@"request formatAddressWithFormatOption on non routine event instance (in %s:%d)", "-[MOEvent formatAddressWithFormatOption:]", 1777}];

    v5 = 0;
  }

  return v5;
}

- (id)formatLocalityWithFormatOption:(id)a3
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    v5 = [(MOEventRoutine *)routineEvent formatLocalityWithFormatOption:a3];
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOEvent formatLocalityWithFormatOption:];
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MOEvent.m" lineNumber:1786 description:{@"request formatLocalityWithFormatOption on non routine event instance (in %s:%d)", "-[MOEvent formatLocalityWithFormatOption:]", 1786}];

    v5 = 0;
  }

  return v5;
}

- (id)formatAdministrativeAreaWithFormatOption:(id)a3
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    v5 = [(MOEventRoutine *)routineEvent formatAdministrativeAreaWithFormatOption:a3];
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOEvent formatAdministrativeAreaWithFormatOption:];
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MOEvent.m" lineNumber:1795 description:{@"request formatLocalityWithFormatOption on non routine event instance (in %s:%d)", "-[MOEvent formatAdministrativeAreaWithFormatOption:]", 1795}];

    v5 = 0;
  }

  return v5;
}

- (id)formatCountryWithFormatOption:(id)a3
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    v5 = [(MOEventRoutine *)routineEvent formatCountryWithFormatOption:a3];
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOEvent formatCountryWithFormatOption:];
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MOEvent.m" lineNumber:1804 description:{@"request formatCountryWithFormatOption on non routine event instance (in %s:%d)", "-[MOEvent formatCountryWithFormatOption:]", 1804}];

    v5 = 0;
  }

  return v5;
}

- (void)initWithEventIdentifier:startDate:endDate:creationDate:provider:category:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithEventIdentifier:startDate:endDate:creationDate:provider:category:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithEventIdentifier:startDate:endDate:creationDate:provider:category:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithEventIdentifier:startDate:endDate:creationDate:provider:category:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)formatAddressWithFormatOption:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)formatLocalityWithFormatOption:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)formatAdministrativeAreaWithFormatOption:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)formatCountryWithFormatOption:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

@end