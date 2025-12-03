@interface BMMomentsEventDataEvent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEventDataEvent)initWithEventIdentifier:(void *)identifier startDate:(void *)date endDate:(void *)endDate creationDate:(void *)creationDate sourceCreationDate:(void *)sourceCreationDate expirationDate:(void *)expirationDate provider:(int)provider category:(int)self0 placeUserType:(int)self1 poiCategory:(int)self2 placeDiscovery:(int)self3 locationMode:(int)self4 workoutType:(int)self5 workoutBundleID:(id)self6 mediaGenre:(int)self7 mediaType:(int)self8 mediaRepetitions:(id)self9 mediaSumTimePlayed:(id)played sourceParty:(int)party mediaPlayerBundleID:(id)iD numAudioMediaPlaySessionsPerDay:(id)day durationAudioMediaPlaySessionsPerDay:(id)perDay numVideoMediaPlaySessionsPerDay:(id)sessionsPerDay durationVideoMediaPlaySessionsPerDay:(id)playSessionsPerDay numFirstPartyMediaPlaySessionsPerDay:(id)mediaPlaySessionsPerDay numThirdPartyMediaPlaySessionsPerDay:(id)partyMediaPlaySessionsPerDay numContacts:(id)contacts contactIDsInConversation:(id)identifier0 contactIDMostSignificantInConversation:(id)identifier1 interactionContactScore:(id)identifier2 textLikeMechanismIncluded:(id)identifier3 callLikeMechanismIncluded:(id)identifier4 numTextLikeInteractions:(id)identifier5 numAudioLikeInteractions:(id)identifier6 numVideoLikeInteractions:(id)identifier7 totalDurationOfCallLikeInteractions:(id)identifier8 minDurationOfCallLikeInteractions:(id)identifier9 maxDurationOfCallLikeInteractions:(id)date0 photoMomentSource:(int)date1 photoMomentInferences:(id)date2 photoMomentHolidays:(id)date3 numPhotoMomentHolidays:(id)date4 numPhotoMomentInferences:(id)date5 numPhotoMomentPublicEvents:(id)date6 numPhotoMomentPersons:(id)date7 isFamilyInPhotoMoment:(id)date8 momentIncludesFavoritedAsset:(id)date9 momentIncludesVideo:(id)endDate0 momentIncludesPhoto:(id)endDate1 suggestedEventCategory:(int)endDate2 numAttendees:(id)endDate3 numtripParts:(id)endDate4 tripMode:(int)endDate5 numScoredTopics:(id)endDate6 numItemAuthors:(id)endDate7 numItemRecipients:(id)endDate8 isGatheringComplete:(id)endDate9 gaPR:(id)creationDate0 pCount:(id)creationDate1 mapItemSource:(int)creationDate2 placeType:(int)creationDate3 placeLabelGranularity:;
- (BMMomentsEventDataEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)creationDate;
- (NSDate)endDate;
- (NSDate)expirationDate;
- (NSDate)sourceCreationDate;
- (NSDate)startDate;
- (NSString)description;
- (id)_contactIDsInConversationJSONArray;
- (id)_photoMomentHolidaysJSONArray;
- (id)_photoMomentInferencesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEventDataEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    eventIdentifier = [(BMMomentsEventDataEvent *)self eventIdentifier];
    eventIdentifier2 = [v5 eventIdentifier];
    v8 = eventIdentifier2;
    if (eventIdentifier == eventIdentifier2)
    {
    }

    else
    {
      eventIdentifier3 = [(BMMomentsEventDataEvent *)self eventIdentifier];
      eventIdentifier4 = [v5 eventIdentifier];
      v11 = [eventIdentifier3 isEqual:eventIdentifier4];

      if (!v11)
      {
        goto LABEL_236;
      }
    }

    startDate = [(BMMomentsEventDataEvent *)self startDate];
    startDate2 = [v5 startDate];
    v15 = startDate2;
    if (startDate == startDate2)
    {
    }

    else
    {
      startDate3 = [(BMMomentsEventDataEvent *)self startDate];
      startDate4 = [v5 startDate];
      v18 = [startDate3 isEqual:startDate4];

      if (!v18)
      {
        goto LABEL_236;
      }
    }

    endDate = [(BMMomentsEventDataEvent *)self endDate];
    endDate2 = [v5 endDate];
    v21 = endDate2;
    if (endDate == endDate2)
    {
    }

    else
    {
      endDate3 = [(BMMomentsEventDataEvent *)self endDate];
      endDate4 = [v5 endDate];
      v24 = [endDate3 isEqual:endDate4];

      if (!v24)
      {
        goto LABEL_236;
      }
    }

    creationDate = [(BMMomentsEventDataEvent *)self creationDate];
    creationDate2 = [v5 creationDate];
    v27 = creationDate2;
    if (creationDate == creationDate2)
    {
    }

    else
    {
      creationDate3 = [(BMMomentsEventDataEvent *)self creationDate];
      creationDate4 = [v5 creationDate];
      v30 = [creationDate3 isEqual:creationDate4];

      if (!v30)
      {
        goto LABEL_236;
      }
    }

    sourceCreationDate = [(BMMomentsEventDataEvent *)self sourceCreationDate];
    sourceCreationDate2 = [v5 sourceCreationDate];
    v33 = sourceCreationDate2;
    if (sourceCreationDate == sourceCreationDate2)
    {
    }

    else
    {
      sourceCreationDate3 = [(BMMomentsEventDataEvent *)self sourceCreationDate];
      sourceCreationDate4 = [v5 sourceCreationDate];
      v36 = [sourceCreationDate3 isEqual:sourceCreationDate4];

      if (!v36)
      {
        goto LABEL_236;
      }
    }

    expirationDate = [(BMMomentsEventDataEvent *)self expirationDate];
    expirationDate2 = [v5 expirationDate];
    v39 = expirationDate2;
    if (expirationDate == expirationDate2)
    {
    }

    else
    {
      expirationDate3 = [(BMMomentsEventDataEvent *)self expirationDate];
      expirationDate4 = [v5 expirationDate];
      v42 = [expirationDate3 isEqual:expirationDate4];

      if (!v42)
      {
        goto LABEL_236;
      }
    }

    provider = [(BMMomentsEventDataEvent *)self provider];
    if (provider != [v5 provider])
    {
      goto LABEL_236;
    }

    category = [(BMMomentsEventDataEvent *)self category];
    if (category != [v5 category])
    {
      goto LABEL_236;
    }

    placeUserType = [(BMMomentsEventDataEvent *)self placeUserType];
    if (placeUserType != [v5 placeUserType])
    {
      goto LABEL_236;
    }

    poiCategory = [(BMMomentsEventDataEvent *)self poiCategory];
    if (poiCategory != [v5 poiCategory])
    {
      goto LABEL_236;
    }

    placeDiscovery = [(BMMomentsEventDataEvent *)self placeDiscovery];
    if (placeDiscovery != [v5 placeDiscovery])
    {
      goto LABEL_236;
    }

    locationMode = [(BMMomentsEventDataEvent *)self locationMode];
    if (locationMode != [v5 locationMode])
    {
      goto LABEL_236;
    }

    workoutType = [(BMMomentsEventDataEvent *)self workoutType];
    if (workoutType != [v5 workoutType])
    {
      goto LABEL_236;
    }

    workoutBundleID = [(BMMomentsEventDataEvent *)self workoutBundleID];
    workoutBundleID2 = [v5 workoutBundleID];
    v52 = workoutBundleID2;
    if (workoutBundleID == workoutBundleID2)
    {
    }

    else
    {
      workoutBundleID3 = [(BMMomentsEventDataEvent *)self workoutBundleID];
      workoutBundleID4 = [v5 workoutBundleID];
      v55 = [workoutBundleID3 isEqual:workoutBundleID4];

      if (!v55)
      {
        goto LABEL_236;
      }
    }

    mediaGenre = [(BMMomentsEventDataEvent *)self mediaGenre];
    if (mediaGenre != [v5 mediaGenre])
    {
      goto LABEL_236;
    }

    mediaType = [(BMMomentsEventDataEvent *)self mediaType];
    if (mediaType != [v5 mediaType])
    {
      goto LABEL_236;
    }

    if (-[BMMomentsEventDataEvent hasMediaRepetitions](self, "hasMediaRepetitions") || [v5 hasMediaRepetitions])
    {
      if (![(BMMomentsEventDataEvent *)self hasMediaRepetitions])
      {
        goto LABEL_236;
      }

      if (![v5 hasMediaRepetitions])
      {
        goto LABEL_236;
      }

      mediaRepetitions = [(BMMomentsEventDataEvent *)self mediaRepetitions];
      if (mediaRepetitions != [v5 mediaRepetitions])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasMediaSumTimePlayed](self, "hasMediaSumTimePlayed") || [v5 hasMediaSumTimePlayed])
    {
      if (![(BMMomentsEventDataEvent *)self hasMediaSumTimePlayed])
      {
        goto LABEL_236;
      }

      if (![v5 hasMediaSumTimePlayed])
      {
        goto LABEL_236;
      }

      mediaSumTimePlayed = [(BMMomentsEventDataEvent *)self mediaSumTimePlayed];
      if (mediaSumTimePlayed != [v5 mediaSumTimePlayed])
      {
        goto LABEL_236;
      }
    }

    sourceParty = [(BMMomentsEventDataEvent *)self sourceParty];
    if (sourceParty != [v5 sourceParty])
    {
      goto LABEL_236;
    }

    mediaPlayerBundleID = [(BMMomentsEventDataEvent *)self mediaPlayerBundleID];
    mediaPlayerBundleID2 = [v5 mediaPlayerBundleID];
    v63 = mediaPlayerBundleID2;
    if (mediaPlayerBundleID == mediaPlayerBundleID2)
    {
    }

    else
    {
      mediaPlayerBundleID3 = [(BMMomentsEventDataEvent *)self mediaPlayerBundleID];
      mediaPlayerBundleID4 = [v5 mediaPlayerBundleID];
      v66 = [mediaPlayerBundleID3 isEqual:mediaPlayerBundleID4];

      if (!v66)
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasNumAudioMediaPlaySessionsPerDay](self, "hasNumAudioMediaPlaySessionsPerDay") || [v5 hasNumAudioMediaPlaySessionsPerDay])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumAudioMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumAudioMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }

      numAudioMediaPlaySessionsPerDay = [(BMMomentsEventDataEvent *)self numAudioMediaPlaySessionsPerDay];
      if (numAudioMediaPlaySessionsPerDay != [v5 numAudioMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasDurationAudioMediaPlaySessionsPerDay](self, "hasDurationAudioMediaPlaySessionsPerDay") || [v5 hasDurationAudioMediaPlaySessionsPerDay])
    {
      if (![(BMMomentsEventDataEvent *)self hasDurationAudioMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }

      if (![v5 hasDurationAudioMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }

      [(BMMomentsEventDataEvent *)self durationAudioMediaPlaySessionsPerDay];
      v69 = v68;
      [v5 durationAudioMediaPlaySessionsPerDay];
      if (v69 != v70)
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasNumVideoMediaPlaySessionsPerDay](self, "hasNumVideoMediaPlaySessionsPerDay") || [v5 hasNumVideoMediaPlaySessionsPerDay])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumVideoMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumVideoMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }

      numVideoMediaPlaySessionsPerDay = [(BMMomentsEventDataEvent *)self numVideoMediaPlaySessionsPerDay];
      if (numVideoMediaPlaySessionsPerDay != [v5 numVideoMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasDurationVideoMediaPlaySessionsPerDay](self, "hasDurationVideoMediaPlaySessionsPerDay") || [v5 hasDurationVideoMediaPlaySessionsPerDay])
    {
      if (![(BMMomentsEventDataEvent *)self hasDurationVideoMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }

      if (![v5 hasDurationVideoMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }

      [(BMMomentsEventDataEvent *)self durationVideoMediaPlaySessionsPerDay];
      v73 = v72;
      [v5 durationVideoMediaPlaySessionsPerDay];
      if (v73 != v74)
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasNumFirstPartyMediaPlaySessionsPerDay](self, "hasNumFirstPartyMediaPlaySessionsPerDay") || [v5 hasNumFirstPartyMediaPlaySessionsPerDay])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumFirstPartyMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumFirstPartyMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }

      numFirstPartyMediaPlaySessionsPerDay = [(BMMomentsEventDataEvent *)self numFirstPartyMediaPlaySessionsPerDay];
      if (numFirstPartyMediaPlaySessionsPerDay != [v5 numFirstPartyMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasNumThirdPartyMediaPlaySessionsPerDay](self, "hasNumThirdPartyMediaPlaySessionsPerDay") || [v5 hasNumThirdPartyMediaPlaySessionsPerDay])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumThirdPartyMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumThirdPartyMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }

      numThirdPartyMediaPlaySessionsPerDay = [(BMMomentsEventDataEvent *)self numThirdPartyMediaPlaySessionsPerDay];
      if (numThirdPartyMediaPlaySessionsPerDay != [v5 numThirdPartyMediaPlaySessionsPerDay])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasNumContacts](self, "hasNumContacts") || [v5 hasNumContacts])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumContacts])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumContacts])
      {
        goto LABEL_236;
      }

      numContacts = [(BMMomentsEventDataEvent *)self numContacts];
      if (numContacts != [v5 numContacts])
      {
        goto LABEL_236;
      }
    }

    contactIDsInConversation = [(BMMomentsEventDataEvent *)self contactIDsInConversation];
    contactIDsInConversation2 = [v5 contactIDsInConversation];
    v80 = contactIDsInConversation2;
    if (contactIDsInConversation == contactIDsInConversation2)
    {
    }

    else
    {
      contactIDsInConversation3 = [(BMMomentsEventDataEvent *)self contactIDsInConversation];
      contactIDsInConversation4 = [v5 contactIDsInConversation];
      v83 = [contactIDsInConversation3 isEqual:contactIDsInConversation4];

      if (!v83)
      {
        goto LABEL_236;
      }
    }

    contactIDMostSignificantInConversation = [(BMMomentsEventDataEvent *)self contactIDMostSignificantInConversation];
    contactIDMostSignificantInConversation2 = [v5 contactIDMostSignificantInConversation];
    v86 = contactIDMostSignificantInConversation2;
    if (contactIDMostSignificantInConversation == contactIDMostSignificantInConversation2)
    {
    }

    else
    {
      contactIDMostSignificantInConversation3 = [(BMMomentsEventDataEvent *)self contactIDMostSignificantInConversation];
      contactIDMostSignificantInConversation4 = [v5 contactIDMostSignificantInConversation];
      v89 = [contactIDMostSignificantInConversation3 isEqual:contactIDMostSignificantInConversation4];

      if (!v89)
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasInteractionContactScore](self, "hasInteractionContactScore") || [v5 hasInteractionContactScore])
    {
      if (![(BMMomentsEventDataEvent *)self hasInteractionContactScore])
      {
        goto LABEL_236;
      }

      if (![v5 hasInteractionContactScore])
      {
        goto LABEL_236;
      }

      [(BMMomentsEventDataEvent *)self interactionContactScore];
      v91 = v90;
      [v5 interactionContactScore];
      if (v91 != v92)
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasTextLikeMechanismIncluded](self, "hasTextLikeMechanismIncluded") || [v5 hasTextLikeMechanismIncluded])
    {
      if (![(BMMomentsEventDataEvent *)self hasTextLikeMechanismIncluded])
      {
        goto LABEL_236;
      }

      if (![v5 hasTextLikeMechanismIncluded])
      {
        goto LABEL_236;
      }

      textLikeMechanismIncluded = [(BMMomentsEventDataEvent *)self textLikeMechanismIncluded];
      if (textLikeMechanismIncluded != [v5 textLikeMechanismIncluded])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasCallLikeMechanismIncluded](self, "hasCallLikeMechanismIncluded") || [v5 hasCallLikeMechanismIncluded])
    {
      if (![(BMMomentsEventDataEvent *)self hasCallLikeMechanismIncluded])
      {
        goto LABEL_236;
      }

      if (![v5 hasCallLikeMechanismIncluded])
      {
        goto LABEL_236;
      }

      callLikeMechanismIncluded = [(BMMomentsEventDataEvent *)self callLikeMechanismIncluded];
      if (callLikeMechanismIncluded != [v5 callLikeMechanismIncluded])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasNumTextLikeInteractions](self, "hasNumTextLikeInteractions") || [v5 hasNumTextLikeInteractions])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumTextLikeInteractions])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumTextLikeInteractions])
      {
        goto LABEL_236;
      }

      numTextLikeInteractions = [(BMMomentsEventDataEvent *)self numTextLikeInteractions];
      if (numTextLikeInteractions != [v5 numTextLikeInteractions])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasNumAudioLikeInteractions](self, "hasNumAudioLikeInteractions") || [v5 hasNumAudioLikeInteractions])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumAudioLikeInteractions])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumAudioLikeInteractions])
      {
        goto LABEL_236;
      }

      numAudioLikeInteractions = [(BMMomentsEventDataEvent *)self numAudioLikeInteractions];
      if (numAudioLikeInteractions != [v5 numAudioLikeInteractions])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasNumVideoLikeInteractions](self, "hasNumVideoLikeInteractions") || [v5 hasNumVideoLikeInteractions])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumVideoLikeInteractions])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumVideoLikeInteractions])
      {
        goto LABEL_236;
      }

      numVideoLikeInteractions = [(BMMomentsEventDataEvent *)self numVideoLikeInteractions];
      if (numVideoLikeInteractions != [v5 numVideoLikeInteractions])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasTotalDurationOfCallLikeInteractions](self, "hasTotalDurationOfCallLikeInteractions") || [v5 hasTotalDurationOfCallLikeInteractions])
    {
      if (![(BMMomentsEventDataEvent *)self hasTotalDurationOfCallLikeInteractions])
      {
        goto LABEL_236;
      }

      if (![v5 hasTotalDurationOfCallLikeInteractions])
      {
        goto LABEL_236;
      }

      [(BMMomentsEventDataEvent *)self totalDurationOfCallLikeInteractions];
      v99 = v98;
      [v5 totalDurationOfCallLikeInteractions];
      if (v99 != v100)
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasMinDurationOfCallLikeInteractions](self, "hasMinDurationOfCallLikeInteractions") || [v5 hasMinDurationOfCallLikeInteractions])
    {
      if (![(BMMomentsEventDataEvent *)self hasMinDurationOfCallLikeInteractions])
      {
        goto LABEL_236;
      }

      if (![v5 hasMinDurationOfCallLikeInteractions])
      {
        goto LABEL_236;
      }

      [(BMMomentsEventDataEvent *)self minDurationOfCallLikeInteractions];
      v102 = v101;
      [v5 minDurationOfCallLikeInteractions];
      if (v102 != v103)
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasMaxDurationOfCallLikeInteractions](self, "hasMaxDurationOfCallLikeInteractions") || [v5 hasMaxDurationOfCallLikeInteractions])
    {
      if (![(BMMomentsEventDataEvent *)self hasMaxDurationOfCallLikeInteractions])
      {
        goto LABEL_236;
      }

      if (![v5 hasMaxDurationOfCallLikeInteractions])
      {
        goto LABEL_236;
      }

      [(BMMomentsEventDataEvent *)self maxDurationOfCallLikeInteractions];
      v105 = v104;
      [v5 maxDurationOfCallLikeInteractions];
      if (v105 != v106)
      {
        goto LABEL_236;
      }
    }

    photoMomentSource = [(BMMomentsEventDataEvent *)self photoMomentSource];
    if (photoMomentSource != [v5 photoMomentSource])
    {
      goto LABEL_236;
    }

    photoMomentInferences = [(BMMomentsEventDataEvent *)self photoMomentInferences];
    photoMomentInferences2 = [v5 photoMomentInferences];
    v110 = photoMomentInferences2;
    if (photoMomentInferences == photoMomentInferences2)
    {
    }

    else
    {
      photoMomentInferences3 = [(BMMomentsEventDataEvent *)self photoMomentInferences];
      photoMomentInferences4 = [v5 photoMomentInferences];
      v113 = [photoMomentInferences3 isEqual:photoMomentInferences4];

      if (!v113)
      {
        goto LABEL_236;
      }
    }

    photoMomentHolidays = [(BMMomentsEventDataEvent *)self photoMomentHolidays];
    photoMomentHolidays2 = [v5 photoMomentHolidays];
    v116 = photoMomentHolidays2;
    if (photoMomentHolidays == photoMomentHolidays2)
    {
    }

    else
    {
      photoMomentHolidays3 = [(BMMomentsEventDataEvent *)self photoMomentHolidays];
      photoMomentHolidays4 = [v5 photoMomentHolidays];
      v119 = [photoMomentHolidays3 isEqual:photoMomentHolidays4];

      if (!v119)
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasNumPhotoMomentHolidays](self, "hasNumPhotoMomentHolidays") || [v5 hasNumPhotoMomentHolidays])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumPhotoMomentHolidays])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumPhotoMomentHolidays])
      {
        goto LABEL_236;
      }

      numPhotoMomentHolidays = [(BMMomentsEventDataEvent *)self numPhotoMomentHolidays];
      if (numPhotoMomentHolidays != [v5 numPhotoMomentHolidays])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasNumPhotoMomentInferences](self, "hasNumPhotoMomentInferences") || [v5 hasNumPhotoMomentInferences])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumPhotoMomentInferences])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumPhotoMomentInferences])
      {
        goto LABEL_236;
      }

      numPhotoMomentInferences = [(BMMomentsEventDataEvent *)self numPhotoMomentInferences];
      if (numPhotoMomentInferences != [v5 numPhotoMomentInferences])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasNumPhotoMomentPublicEvents](self, "hasNumPhotoMomentPublicEvents") || [v5 hasNumPhotoMomentPublicEvents])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumPhotoMomentPublicEvents])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumPhotoMomentPublicEvents])
      {
        goto LABEL_236;
      }

      numPhotoMomentPublicEvents = [(BMMomentsEventDataEvent *)self numPhotoMomentPublicEvents];
      if (numPhotoMomentPublicEvents != [v5 numPhotoMomentPublicEvents])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasNumPhotoMomentPersons](self, "hasNumPhotoMomentPersons") || [v5 hasNumPhotoMomentPersons])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumPhotoMomentPersons])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumPhotoMomentPersons])
      {
        goto LABEL_236;
      }

      numPhotoMomentPersons = [(BMMomentsEventDataEvent *)self numPhotoMomentPersons];
      if (numPhotoMomentPersons != [v5 numPhotoMomentPersons])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasIsFamilyInPhotoMoment](self, "hasIsFamilyInPhotoMoment") || [v5 hasIsFamilyInPhotoMoment])
    {
      if (![(BMMomentsEventDataEvent *)self hasIsFamilyInPhotoMoment])
      {
        goto LABEL_236;
      }

      if (![v5 hasIsFamilyInPhotoMoment])
      {
        goto LABEL_236;
      }

      isFamilyInPhotoMoment = [(BMMomentsEventDataEvent *)self isFamilyInPhotoMoment];
      if (isFamilyInPhotoMoment != [v5 isFamilyInPhotoMoment])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasMomentIncludesFavoritedAsset](self, "hasMomentIncludesFavoritedAsset") || [v5 hasMomentIncludesFavoritedAsset])
    {
      if (![(BMMomentsEventDataEvent *)self hasMomentIncludesFavoritedAsset])
      {
        goto LABEL_236;
      }

      if (![v5 hasMomentIncludesFavoritedAsset])
      {
        goto LABEL_236;
      }

      momentIncludesFavoritedAsset = [(BMMomentsEventDataEvent *)self momentIncludesFavoritedAsset];
      if (momentIncludesFavoritedAsset != [v5 momentIncludesFavoritedAsset])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasMomentIncludesVideo](self, "hasMomentIncludesVideo") || [v5 hasMomentIncludesVideo])
    {
      if (![(BMMomentsEventDataEvent *)self hasMomentIncludesVideo])
      {
        goto LABEL_236;
      }

      if (![v5 hasMomentIncludesVideo])
      {
        goto LABEL_236;
      }

      momentIncludesVideo = [(BMMomentsEventDataEvent *)self momentIncludesVideo];
      if (momentIncludesVideo != [v5 momentIncludesVideo])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasMomentIncludesPhoto](self, "hasMomentIncludesPhoto") || [v5 hasMomentIncludesPhoto])
    {
      if (![(BMMomentsEventDataEvent *)self hasMomentIncludesPhoto])
      {
        goto LABEL_236;
      }

      if (![v5 hasMomentIncludesPhoto])
      {
        goto LABEL_236;
      }

      momentIncludesPhoto = [(BMMomentsEventDataEvent *)self momentIncludesPhoto];
      if (momentIncludesPhoto != [v5 momentIncludesPhoto])
      {
        goto LABEL_236;
      }
    }

    suggestedEventCategory = [(BMMomentsEventDataEvent *)self suggestedEventCategory];
    if (suggestedEventCategory != [v5 suggestedEventCategory])
    {
      goto LABEL_236;
    }

    if (-[BMMomentsEventDataEvent hasNumAttendees](self, "hasNumAttendees") || [v5 hasNumAttendees])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumAttendees])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumAttendees])
      {
        goto LABEL_236;
      }

      numAttendees = [(BMMomentsEventDataEvent *)self numAttendees];
      if (numAttendees != [v5 numAttendees])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasNumtripParts](self, "hasNumtripParts") || [v5 hasNumtripParts])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumtripParts])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumtripParts])
      {
        goto LABEL_236;
      }

      numtripParts = [(BMMomentsEventDataEvent *)self numtripParts];
      if (numtripParts != [v5 numtripParts])
      {
        goto LABEL_236;
      }
    }

    tripMode = [(BMMomentsEventDataEvent *)self tripMode];
    if (tripMode != [v5 tripMode])
    {
      goto LABEL_236;
    }

    if (-[BMMomentsEventDataEvent hasNumScoredTopics](self, "hasNumScoredTopics") || [v5 hasNumScoredTopics])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumScoredTopics])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumScoredTopics])
      {
        goto LABEL_236;
      }

      numScoredTopics = [(BMMomentsEventDataEvent *)self numScoredTopics];
      if (numScoredTopics != [v5 numScoredTopics])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasNumItemAuthors](self, "hasNumItemAuthors") || [v5 hasNumItemAuthors])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumItemAuthors])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumItemAuthors])
      {
        goto LABEL_236;
      }

      numItemAuthors = [(BMMomentsEventDataEvent *)self numItemAuthors];
      if (numItemAuthors != [v5 numItemAuthors])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasNumItemRecipients](self, "hasNumItemRecipients") || [v5 hasNumItemRecipients])
    {
      if (![(BMMomentsEventDataEvent *)self hasNumItemRecipients])
      {
        goto LABEL_236;
      }

      if (![v5 hasNumItemRecipients])
      {
        goto LABEL_236;
      }

      numItemRecipients = [(BMMomentsEventDataEvent *)self numItemRecipients];
      if (numItemRecipients != [v5 numItemRecipients])
      {
        goto LABEL_236;
      }
    }

    if (-[BMMomentsEventDataEvent hasIsGatheringComplete](self, "hasIsGatheringComplete") || [v5 hasIsGatheringComplete])
    {
      if (![(BMMomentsEventDataEvent *)self hasIsGatheringComplete])
      {
        goto LABEL_236;
      }

      if (![v5 hasIsGatheringComplete])
      {
        goto LABEL_236;
      }

      isGatheringComplete = [(BMMomentsEventDataEvent *)self isGatheringComplete];
      if (isGatheringComplete != [v5 isGatheringComplete])
      {
        goto LABEL_236;
      }
    }

    gaPR = [(BMMomentsEventDataEvent *)self gaPR];
    gaPR2 = [v5 gaPR];
    v138 = gaPR2;
    if (gaPR == gaPR2)
    {
    }

    else
    {
      gaPR3 = [(BMMomentsEventDataEvent *)self gaPR];
      gaPR4 = [v5 gaPR];
      v141 = [gaPR3 isEqual:gaPR4];

      if (!v141)
      {
        goto LABEL_236;
      }
    }

    if (!-[BMMomentsEventDataEvent hasPCount](self, "hasPCount") && ![v5 hasPCount] || -[BMMomentsEventDataEvent hasPCount](self, "hasPCount") && objc_msgSend(v5, "hasPCount") && (v142 = -[BMMomentsEventDataEvent pCount](self, "pCount"), v142 == objc_msgSend(v5, "pCount")))
    {
      mapItemSource = [(BMMomentsEventDataEvent *)self mapItemSource];
      if (mapItemSource == [v5 mapItemSource])
      {
        placeType = [(BMMomentsEventDataEvent *)self placeType];
        if (placeType == [v5 placeType])
        {
          placeLabelGranularity = [(BMMomentsEventDataEvent *)self placeLabelGranularity];
          v12 = placeLabelGranularity == [v5 placeLabelGranularity];
LABEL_237:

          goto LABEL_238;
        }
      }
    }

LABEL_236:
    v12 = 0;
    goto LABEL_237;
  }

  v12 = 0;
LABEL_238:

  return v12;
}

- (NSDate)expirationDate
{
  if (self->_hasRaw_expirationDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_expirationDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)sourceCreationDate
{
  if (self->_hasRaw_sourceCreationDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_sourceCreationDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)creationDate
{
  if (self->_hasRaw_creationDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_creationDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)endDate
{
  if (self->_hasRaw_endDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_endDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)startDate
{
  if (self->_hasRaw_startDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_startDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v221[62] = *MEMORY[0x1E69E9840];
  eventIdentifier = [(BMMomentsEventDataEvent *)self eventIdentifier];
  startDate = [(BMMomentsEventDataEvent *)self startDate];
  if (startDate)
  {
    v5 = MEMORY[0x1E696AD98];
    startDate2 = [(BMMomentsEventDataEvent *)self startDate];
    [startDate2 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  endDate = [(BMMomentsEventDataEvent *)self endDate];
  if (endDate)
  {
    v9 = MEMORY[0x1E696AD98];
    endDate2 = [(BMMomentsEventDataEvent *)self endDate];
    [endDate2 timeIntervalSince1970];
    v11 = [v9 numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  creationDate = [(BMMomentsEventDataEvent *)self creationDate];
  if (creationDate)
  {
    v13 = MEMORY[0x1E696AD98];
    creationDate2 = [(BMMomentsEventDataEvent *)self creationDate];
    [creationDate2 timeIntervalSince1970];
    v15 = [v13 numberWithDouble:?];
  }

  else
  {
    v15 = 0;
  }

  sourceCreationDate = [(BMMomentsEventDataEvent *)self sourceCreationDate];
  if (sourceCreationDate)
  {
    v17 = MEMORY[0x1E696AD98];
    sourceCreationDate2 = [(BMMomentsEventDataEvent *)self sourceCreationDate];
    [sourceCreationDate2 timeIntervalSince1970];
    v19 = [v17 numberWithDouble:?];
  }

  else
  {
    v19 = 0;
  }

  expirationDate = [(BMMomentsEventDataEvent *)self expirationDate];
  if (expirationDate)
  {
    v21 = MEMORY[0x1E696AD98];
    expirationDate2 = [(BMMomentsEventDataEvent *)self expirationDate];
    [expirationDate2 timeIntervalSince1970];
    v219 = [v21 numberWithDouble:?];
  }

  else
  {
    v219 = 0;
  }

  v218 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent provider](self, "provider")}];
  v217 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent category](self, "category")}];
  v216 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent placeUserType](self, "placeUserType")}];
  v215 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent poiCategory](self, "poiCategory")}];
  v214 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent placeDiscovery](self, "placeDiscovery")}];
  v213 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent locationMode](self, "locationMode")}];
  v212 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent workoutType](self, "workoutType")}];
  workoutBundleID = [(BMMomentsEventDataEvent *)self workoutBundleID];
  v210 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent mediaGenre](self, "mediaGenre")}];
  v209 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent mediaType](self, "mediaType")}];
  if ([(BMMomentsEventDataEvent *)self hasMediaRepetitions])
  {
    v208 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent mediaRepetitions](self, "mediaRepetitions")}];
  }

  else
  {
    v208 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasMediaSumTimePlayed])
  {
    v207 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent mediaSumTimePlayed](self, "mediaSumTimePlayed")}];
  }

  else
  {
    v207 = 0;
  }

  v206 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent sourceParty](self, "sourceParty")}];
  mediaPlayerBundleID = [(BMMomentsEventDataEvent *)self mediaPlayerBundleID];
  if ([(BMMomentsEventDataEvent *)self hasNumAudioMediaPlaySessionsPerDay])
  {
    v204 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numAudioMediaPlaySessionsPerDay](self, "numAudioMediaPlaySessionsPerDay")}];
  }

  else
  {
    v204 = 0;
  }

  if (![(BMMomentsEventDataEvent *)self hasDurationAudioMediaPlaySessionsPerDay]|| ([(BMMomentsEventDataEvent *)self durationAudioMediaPlaySessionsPerDay], fabs(v23) == INFINITY))
  {
    v203 = 0;
  }

  else
  {
    [(BMMomentsEventDataEvent *)self durationAudioMediaPlaySessionsPerDay];
    v24 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEvent *)self durationAudioMediaPlaySessionsPerDay];
    v203 = [v24 numberWithDouble:?];
  }

  if ([(BMMomentsEventDataEvent *)self hasNumVideoMediaPlaySessionsPerDay])
  {
    v202 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numVideoMediaPlaySessionsPerDay](self, "numVideoMediaPlaySessionsPerDay")}];
  }

  else
  {
    v202 = 0;
  }

  if (![(BMMomentsEventDataEvent *)self hasDurationVideoMediaPlaySessionsPerDay]|| ([(BMMomentsEventDataEvent *)self durationVideoMediaPlaySessionsPerDay], fabs(v25) == INFINITY))
  {
    v201 = 0;
  }

  else
  {
    [(BMMomentsEventDataEvent *)self durationVideoMediaPlaySessionsPerDay];
    v26 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEvent *)self durationVideoMediaPlaySessionsPerDay];
    v201 = [v26 numberWithDouble:?];
  }

  if ([(BMMomentsEventDataEvent *)self hasNumFirstPartyMediaPlaySessionsPerDay])
  {
    v200 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numFirstPartyMediaPlaySessionsPerDay](self, "numFirstPartyMediaPlaySessionsPerDay")}];
  }

  else
  {
    v200 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasNumThirdPartyMediaPlaySessionsPerDay])
  {
    v199 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numThirdPartyMediaPlaySessionsPerDay](self, "numThirdPartyMediaPlaySessionsPerDay")}];
  }

  else
  {
    v199 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasNumContacts])
  {
    v198 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numContacts](self, "numContacts")}];
  }

  else
  {
    v198 = 0;
  }

  _contactIDsInConversationJSONArray = [(BMMomentsEventDataEvent *)self _contactIDsInConversationJSONArray];
  contactIDMostSignificantInConversation = [(BMMomentsEventDataEvent *)self contactIDMostSignificantInConversation];
  if (![(BMMomentsEventDataEvent *)self hasInteractionContactScore]|| ([(BMMomentsEventDataEvent *)self interactionContactScore], fabs(v27) == INFINITY))
  {
    v195 = 0;
  }

  else
  {
    [(BMMomentsEventDataEvent *)self interactionContactScore];
    v28 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEvent *)self interactionContactScore];
    v195 = [v28 numberWithDouble:?];
  }

  if ([(BMMomentsEventDataEvent *)self hasTextLikeMechanismIncluded])
  {
    v194 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEvent textLikeMechanismIncluded](self, "textLikeMechanismIncluded")}];
  }

  else
  {
    v194 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasCallLikeMechanismIncluded])
  {
    v193 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEvent callLikeMechanismIncluded](self, "callLikeMechanismIncluded")}];
  }

  else
  {
    v193 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasNumTextLikeInteractions])
  {
    v192 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numTextLikeInteractions](self, "numTextLikeInteractions")}];
  }

  else
  {
    v192 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasNumAudioLikeInteractions])
  {
    v191 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numAudioLikeInteractions](self, "numAudioLikeInteractions")}];
  }

  else
  {
    v191 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasNumVideoLikeInteractions])
  {
    v190 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numVideoLikeInteractions](self, "numVideoLikeInteractions")}];
  }

  else
  {
    v190 = 0;
  }

  if (![(BMMomentsEventDataEvent *)self hasTotalDurationOfCallLikeInteractions]|| ([(BMMomentsEventDataEvent *)self totalDurationOfCallLikeInteractions], fabs(v29) == INFINITY))
  {
    v189 = 0;
  }

  else
  {
    [(BMMomentsEventDataEvent *)self totalDurationOfCallLikeInteractions];
    v30 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEvent *)self totalDurationOfCallLikeInteractions];
    v189 = [v30 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEvent *)self hasMinDurationOfCallLikeInteractions]|| ([(BMMomentsEventDataEvent *)self minDurationOfCallLikeInteractions], fabs(v31) == INFINITY))
  {
    v188 = 0;
  }

  else
  {
    [(BMMomentsEventDataEvent *)self minDurationOfCallLikeInteractions];
    v32 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEvent *)self minDurationOfCallLikeInteractions];
    v188 = [v32 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEvent *)self hasMaxDurationOfCallLikeInteractions]|| ([(BMMomentsEventDataEvent *)self maxDurationOfCallLikeInteractions], fabs(v33) == INFINITY))
  {
    v187 = 0;
  }

  else
  {
    [(BMMomentsEventDataEvent *)self maxDurationOfCallLikeInteractions];
    v34 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEvent *)self maxDurationOfCallLikeInteractions];
    v187 = [v34 numberWithDouble:?];
  }

  v186 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent photoMomentSource](self, "photoMomentSource")}];
  _photoMomentInferencesJSONArray = [(BMMomentsEventDataEvent *)self _photoMomentInferencesJSONArray];
  _photoMomentHolidaysJSONArray = [(BMMomentsEventDataEvent *)self _photoMomentHolidaysJSONArray];
  if ([(BMMomentsEventDataEvent *)self hasNumPhotoMomentHolidays])
  {
    v183 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numPhotoMomentHolidays](self, "numPhotoMomentHolidays")}];
  }

  else
  {
    v183 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasNumPhotoMomentInferences])
  {
    v182 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numPhotoMomentInferences](self, "numPhotoMomentInferences")}];
  }

  else
  {
    v182 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasNumPhotoMomentPublicEvents])
  {
    v181 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numPhotoMomentPublicEvents](self, "numPhotoMomentPublicEvents")}];
  }

  else
  {
    v181 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasNumPhotoMomentPersons])
  {
    v180 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numPhotoMomentPersons](self, "numPhotoMomentPersons")}];
  }

  else
  {
    v180 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasIsFamilyInPhotoMoment])
  {
    v179 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEvent isFamilyInPhotoMoment](self, "isFamilyInPhotoMoment")}];
  }

  else
  {
    v179 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasMomentIncludesFavoritedAsset])
  {
    v178 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEvent momentIncludesFavoritedAsset](self, "momentIncludesFavoritedAsset")}];
  }

  else
  {
    v178 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasMomentIncludesVideo])
  {
    v177 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEvent momentIncludesVideo](self, "momentIncludesVideo")}];
  }

  else
  {
    v177 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasMomentIncludesPhoto])
  {
    v176 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEvent momentIncludesPhoto](self, "momentIncludesPhoto")}];
  }

  else
  {
    v176 = 0;
  }

  v175 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent suggestedEventCategory](self, "suggestedEventCategory")}];
  if ([(BMMomentsEventDataEvent *)self hasNumAttendees])
  {
    v174 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numAttendees](self, "numAttendees")}];
  }

  else
  {
    v174 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasNumtripParts])
  {
    v173 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numtripParts](self, "numtripParts")}];
  }

  else
  {
    v173 = 0;
  }

  v172 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent tripMode](self, "tripMode")}];
  if ([(BMMomentsEventDataEvent *)self hasNumScoredTopics])
  {
    v171 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numScoredTopics](self, "numScoredTopics")}];
  }

  else
  {
    v171 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasNumItemAuthors])
  {
    v170 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numItemAuthors](self, "numItemAuthors")}];
  }

  else
  {
    v170 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasNumItemRecipients])
  {
    v169 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numItemRecipients](self, "numItemRecipients")}];
  }

  else
  {
    v169 = 0;
  }

  if ([(BMMomentsEventDataEvent *)self hasIsGatheringComplete])
  {
    v168 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEvent isGatheringComplete](self, "isGatheringComplete")}];
  }

  else
  {
    v168 = 0;
  }

  gaPR = [(BMMomentsEventDataEvent *)self gaPR];
  jsonDictionary = [gaPR jsonDictionary];

  if ([(BMMomentsEventDataEvent *)self hasPCount])
  {
    v166 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent pCount](self, "pCount")}];
  }

  else
  {
    v166 = 0;
  }

  v165 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent mapItemSource](self, "mapItemSource")}];
  v164 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent placeType](self, "placeType")}];
  v36 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent placeLabelGranularity](self, "placeLabelGranularity")}];
  v220[0] = @"eventIdentifier";
  null = eventIdentifier;
  if (!eventIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v155 = null;
  v221[0] = null;
  v220[1] = @"startDate";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v154 = null2;
  v221[1] = null2;
  v220[2] = @"endDate";
  null3 = v11;
  if (!v11)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v153 = null3;
  v221[2] = null3;
  v220[3] = @"creationDate";
  null4 = v15;
  if (!v15)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v152 = null4;
  v221[3] = null4;
  v220[4] = @"sourceCreationDate";
  null5 = v19;
  if (!v19)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v151 = null5;
  v221[4] = null5;
  v220[5] = @"expirationDate";
  null6 = v219;
  if (!v219)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v221[5] = null6;
  v220[6] = @"provider";
  null7 = v218;
  if (!v218)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v221[6] = null7;
  v220[7] = @"category";
  null8 = v217;
  if (!v217)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v221[7] = null8;
  v220[8] = @"placeUserType";
  null9 = v216;
  if (!v216)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v221[8] = null9;
  v220[9] = @"poiCategory";
  null10 = v215;
  if (!v215)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v160 = null10;
  v221[9] = null10;
  v220[10] = @"placeDiscovery";
  null11 = v214;
  if (!v214)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v157 = v15;
  v159 = null11;
  v221[10] = null11;
  v220[11] = @"locationMode";
  null12 = v213;
  if (!v213)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = eventIdentifier;
  v158 = null12;
  v221[11] = null12;
  v220[12] = @"workoutType";
  null13 = v212;
  if (!v212)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = null13;
  v221[12] = null13;
  v220[13] = @"workoutBundleID";
  null14 = workoutBundleID;
  if (!workoutBundleID)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v148 = null14;
  v221[13] = null14;
  v220[14] = @"mediaGenre";
  null15 = v210;
  if (!v210)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v147 = null15;
  v221[14] = null15;
  v220[15] = @"mediaType";
  null16 = v209;
  if (!v209)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v146 = null16;
  v221[15] = null16;
  v220[16] = @"mediaRepetitions";
  null17 = v208;
  if (!v208)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v145 = null17;
  v221[16] = null17;
  v220[17] = @"mediaSumTimePlayed";
  null18 = v207;
  if (!v207)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v144 = null18;
  v221[17] = null18;
  v220[18] = @"sourceParty";
  null19 = v206;
  if (!v206)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v143 = null19;
  v221[18] = null19;
  v220[19] = @"mediaPlayerBundleID";
  null20 = mediaPlayerBundleID;
  if (!mediaPlayerBundleID)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v142 = null20;
  v221[19] = null20;
  v220[20] = @"numAudioMediaPlaySessionsPerDay";
  null21 = v204;
  if (!v204)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v141 = null21;
  v221[20] = null21;
  v220[21] = @"durationAudioMediaPlaySessionsPerDay";
  null22 = v203;
  if (!v203)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v140 = null22;
  v221[21] = null22;
  v220[22] = @"numVideoMediaPlaySessionsPerDay";
  null23 = v202;
  if (!v202)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v139 = null23;
  v221[22] = null23;
  v220[23] = @"durationVideoMediaPlaySessionsPerDay";
  null24 = v201;
  if (!v201)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v138 = null24;
  v221[23] = null24;
  v220[24] = @"numFirstPartyMediaPlaySessionsPerDay";
  null25 = v200;
  if (!v200)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v137 = null25;
  v221[24] = null25;
  v220[25] = @"numThirdPartyMediaPlaySessionsPerDay";
  null26 = v199;
  if (!v199)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v136 = null26;
  v221[25] = null26;
  v220[26] = @"numContacts";
  null27 = v198;
  if (!v198)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v135 = null27;
  v221[26] = null27;
  v220[27] = @"contactIDsInConversation";
  null28 = _contactIDsInConversationJSONArray;
  if (!_contactIDsInConversationJSONArray)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v134 = null28;
  v221[27] = null28;
  v220[28] = @"contactIDMostSignificantInConversation";
  null29 = contactIDMostSignificantInConversation;
  if (!contactIDMostSignificantInConversation)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v133 = null29;
  v221[28] = null29;
  v220[29] = @"interactionContactScore";
  null30 = v195;
  if (!v195)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v132 = null30;
  v221[29] = null30;
  v220[30] = @"textLikeMechanismIncluded";
  null31 = v194;
  if (!v194)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v131 = null31;
  v221[30] = null31;
  v220[31] = @"callLikeMechanismIncluded";
  null32 = v193;
  if (!v193)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v130 = null32;
  v221[31] = null32;
  v220[32] = @"numTextLikeInteractions";
  null33 = v192;
  if (!v192)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v129 = null33;
  v221[32] = null33;
  v220[33] = @"numAudioLikeInteractions";
  null34 = v191;
  if (!v191)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v128 = null34;
  v221[33] = null34;
  v220[34] = @"numVideoLikeInteractions";
  null35 = v190;
  if (!v190)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v127 = null35;
  v221[34] = null35;
  v220[35] = @"totalDurationOfCallLikeInteractions";
  null36 = v189;
  if (!v189)
  {
    null36 = [MEMORY[0x1E695DFB0] null];
  }

  v126 = null36;
  v221[35] = null36;
  v220[36] = @"minDurationOfCallLikeInteractions";
  null37 = v188;
  if (!v188)
  {
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v125 = null37;
  v221[36] = null37;
  v220[37] = @"maxDurationOfCallLikeInteractions";
  null38 = v187;
  if (!v187)
  {
    null38 = [MEMORY[0x1E695DFB0] null];
  }

  v124 = null38;
  v221[37] = null38;
  v220[38] = @"photoMomentSource";
  null39 = v186;
  if (!v186)
  {
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v123 = null39;
  v221[38] = null39;
  v220[39] = @"photoMomentInferences";
  null40 = _photoMomentInferencesJSONArray;
  if (!_photoMomentInferencesJSONArray)
  {
    null40 = [MEMORY[0x1E695DFB0] null];
  }

  v122 = null40;
  v221[39] = null40;
  v220[40] = @"photoMomentHolidays";
  null41 = _photoMomentHolidaysJSONArray;
  if (!_photoMomentHolidaysJSONArray)
  {
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v121 = null41;
  v221[40] = null41;
  v220[41] = @"numPhotoMomentHolidays";
  null42 = v183;
  if (!v183)
  {
    null42 = [MEMORY[0x1E695DFB0] null];
  }

  v120 = null42;
  v221[41] = null42;
  v220[42] = @"numPhotoMomentInferences";
  null43 = v182;
  if (!v182)
  {
    null43 = [MEMORY[0x1E695DFB0] null];
  }

  v119 = null43;
  v221[42] = null43;
  v220[43] = @"numPhotoMomentPublicEvents";
  null44 = v181;
  if (!v181)
  {
    null44 = [MEMORY[0x1E695DFB0] null];
  }

  v118 = null44;
  v221[43] = null44;
  v220[44] = @"numPhotoMomentPersons";
  null45 = v180;
  if (!v180)
  {
    null45 = [MEMORY[0x1E695DFB0] null];
  }

  v117 = null45;
  v221[44] = null45;
  v220[45] = @"isFamilyInPhotoMoment";
  null46 = v179;
  if (!v179)
  {
    null46 = [MEMORY[0x1E695DFB0] null];
  }

  v116 = null46;
  v221[45] = null46;
  v220[46] = @"momentIncludesFavoritedAsset";
  null47 = v178;
  if (!v178)
  {
    null47 = [MEMORY[0x1E695DFB0] null];
  }

  v115 = null47;
  v221[46] = null47;
  v220[47] = @"momentIncludesVideo";
  null48 = v177;
  if (!v177)
  {
    null48 = [MEMORY[0x1E695DFB0] null];
  }

  v114 = null48;
  v221[47] = null48;
  v220[48] = @"momentIncludesPhoto";
  null49 = v176;
  if (!v176)
  {
    null49 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = null49;
  v221[48] = null49;
  v220[49] = @"suggestedEventCategory";
  null50 = v175;
  if (!v175)
  {
    null50 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = null50;
  v221[49] = null50;
  v220[50] = @"numAttendees";
  null51 = v174;
  if (!v174)
  {
    null51 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = null51;
  v221[50] = null51;
  v220[51] = @"numtripParts";
  null52 = v173;
  if (!v173)
  {
    null52 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = null52;
  v221[51] = null52;
  v220[52] = @"tripMode";
  null53 = v172;
  if (!v172)
  {
    null53 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = null53;
  v221[52] = null53;
  v220[53] = @"numScoredTopics";
  null54 = v171;
  if (!v171)
  {
    null54 = [MEMORY[0x1E695DFB0] null];
  }

  v108 = null54;
  v221[53] = null54;
  v220[54] = @"numItemAuthors";
  null55 = v170;
  if (!v170)
  {
    null55 = [MEMORY[0x1E695DFB0] null];
  }

  v162 = v11;
  v107 = null55;
  v221[54] = null55;
  v220[55] = @"numItemRecipients";
  null56 = v169;
  if (!v169)
  {
    null56 = [MEMORY[0x1E695DFB0] null];
  }

  v150 = null7;
  v106 = null56;
  v221[55] = null56;
  v220[56] = @"isGatheringComplete";
  null57 = v168;
  if (!v168)
  {
    null57 = [MEMORY[0x1E695DFB0] null];
  }

  v149 = null8;
  v105 = null57;
  v221[56] = null57;
  v220[57] = @"gaPR";
  null58 = jsonDictionary;
  if (!jsonDictionary)
  {
    null58 = [MEMORY[0x1E695DFB0] null];
  }

  v161 = null9;
  v163 = v36;
  v221[57] = null58;
  v220[58] = @"pCount";
  null59 = v166;
  if (!v166)
  {
    null59 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = v19;
  v221[58] = null59;
  v220[59] = @"mapItemSource";
  null60 = v165;
  if (!v165)
  {
    null60 = [MEMORY[0x1E695DFB0] null];
  }

  v221[59] = null60;
  v220[60] = @"placeType";
  null61 = v164;
  if (!v164)
  {
    null61 = [MEMORY[0x1E695DFB0] null];
  }

  v221[60] = null61;
  v220[61] = @"placeLabelGranularity";
  null62 = v163;
  if (!v163)
  {
    null62 = [MEMORY[0x1E695DFB0] null];
  }

  v221[61] = null62;
  v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v221 forKeys:v220 count:62];
  if (!v163)
  {
  }

  v102 = v51;
  if (!v164)
  {

    v102 = v51;
  }

  if (!v165)
  {

    v102 = v51;
  }

  if (!v166)
  {

    v102 = v51;
  }

  if (!jsonDictionary)
  {

    v102 = v51;
  }

  if (!v168)
  {

    v102 = v51;
  }

  if (!v169)
  {

    v102 = v51;
  }

  if (!v170)
  {

    v102 = v51;
  }

  if (!v171)
  {

    v102 = v51;
  }

  if (!v172)
  {

    v102 = v51;
  }

  if (!v173)
  {

    v102 = v51;
  }

  if (!v174)
  {

    v102 = v51;
  }

  if (!v175)
  {

    v102 = v51;
  }

  if (!v176)
  {

    v102 = v51;
  }

  if (!v177)
  {

    v102 = v51;
  }

  if (!v178)
  {

    v102 = v51;
  }

  if (!v179)
  {

    v102 = v51;
  }

  if (!v180)
  {

    v102 = v51;
  }

  if (!v181)
  {

    v102 = v51;
  }

  if (!v182)
  {

    v102 = v51;
  }

  if (!v183)
  {

    v102 = v51;
  }

  if (!_photoMomentHolidaysJSONArray)
  {

    v102 = v51;
  }

  if (!_photoMomentInferencesJSONArray)
  {

    v102 = v51;
  }

  if (!v186)
  {

    v102 = v51;
  }

  if (!v187)
  {

    v102 = v51;
  }

  if (!v188)
  {

    v102 = v51;
  }

  if (!v189)
  {

    v102 = v51;
  }

  if (!v190)
  {

    v102 = v51;
  }

  if (!v191)
  {

    v102 = v51;
  }

  if (!v192)
  {

    v102 = v51;
  }

  if (!v193)
  {

    v102 = v51;
  }

  if (!v194)
  {

    v102 = v51;
  }

  if (!v195)
  {

    v102 = v51;
  }

  if (!contactIDMostSignificantInConversation)
  {

    v102 = v51;
  }

  if (!_contactIDsInConversationJSONArray)
  {

    v102 = v51;
  }

  if (!v198)
  {

    v102 = v51;
  }

  if (!v199)
  {

    v102 = v51;
  }

  if (!v200)
  {

    v102 = v51;
  }

  if (!v201)
  {

    v102 = v51;
  }

  if (!v202)
  {

    v102 = v51;
  }

  if (!v203)
  {

    v102 = v51;
  }

  if (!v204)
  {

    v102 = v51;
  }

  if (!mediaPlayerBundleID)
  {

    v102 = v51;
  }

  if (!v206)
  {

    v102 = v51;
  }

  if (!v207)
  {

    v102 = v51;
  }

  if (!v208)
  {

    v102 = v51;
  }

  if (!v209)
  {

    v102 = v51;
  }

  if (!v210)
  {

    v102 = v51;
  }

  if (!workoutBundleID)
  {

    v102 = v51;
  }

  if (!v212)
  {
  }

  if (!v213)
  {
  }

  if (!v214)
  {
  }

  if (!v215)
  {
  }

  if (!v216)
  {
  }

  if (!v217)
  {
  }

  if (!v218)
  {
  }

  if (v219)
  {
    if (v98)
    {
      goto LABEL_359;
    }
  }

  else
  {

    if (v98)
    {
LABEL_359:
      if (v157)
      {
        goto LABEL_360;
      }

      goto LABEL_368;
    }
  }

  if (v157)
  {
LABEL_360:
    if (v162)
    {
      goto LABEL_361;
    }

    goto LABEL_369;
  }

LABEL_368:

  if (v162)
  {
LABEL_361:
    if (v7)
    {
      goto LABEL_362;
    }

LABEL_370:

    if (v49)
    {
      goto LABEL_363;
    }

    goto LABEL_371;
  }

LABEL_369:

  if (!v7)
  {
    goto LABEL_370;
  }

LABEL_362:
  if (v49)
  {
    goto LABEL_363;
  }

LABEL_371:

LABEL_363:
  v103 = *MEMORY[0x1E69E9840];

  return v156;
}

- (id)_photoMomentHolidaysJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  photoMomentHolidays = [(BMMomentsEventDataEvent *)self photoMomentHolidays];
  v5 = [photoMomentHolidays countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(photoMomentHolidays);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [photoMomentHolidays countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_photoMomentInferencesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  photoMomentInferences = [(BMMomentsEventDataEvent *)self photoMomentInferences];
  v5 = [photoMomentInferences countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(photoMomentInferences);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [photoMomentInferences countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_contactIDsInConversationJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contactIDsInConversation = [(BMMomentsEventDataEvent *)self contactIDsInConversation];
  v5 = [contactIDsInConversation countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(contactIDsInConversation);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [contactIDsInConversation countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMomentsEventDataEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v704[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"eventIdentifier"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v10 = objc_alloc(MEMORY[0x1E696ABC0]);
        v11 = *MEMORY[0x1E698F240];
        v703 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"eventIdentifier"];
        v704[0] = v12;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v704 forKeys:&v703 count:1];
        v13 = [v10 initWithDomain:v11 code:2 userInfo:v7];
        v6 = 0;
        v14 = 0;
        *error = v13;
        goto LABEL_708;
      }

      v6 = 0;
      v14 = 0;
      goto LABEL_709;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"startDate"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v546 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = objc_alloc(MEMORY[0x1E695DF00]);
    [v8 doubleValue];
    v546 = [v9 initWithTimeIntervalSince1970:?];
LABEL_15:

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v15 = v7;
    v546 = [v8 dateFromString:v15];

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v117 = objc_alloc(MEMORY[0x1E696ABC0]);
      v118 = *MEMORY[0x1E698F240];
      v701 = *MEMORY[0x1E696A578];
      v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startDate"];
      v702 = v70;
      v547 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v702 forKeys:&v701 count:1];
      v119 = [v117 initWithDomain:v118 code:2 userInfo:?];
      v12 = 0;
      v14 = 0;
      *error = v119;
      goto LABEL_707;
    }

    v12 = 0;
    v14 = 0;
    goto LABEL_708;
  }

  v546 = v7;
LABEL_16:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"endDate"];
  v547 = v16;
  if (!v16 || (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v545 = 0;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
    v19 = objc_alloc(MEMORY[0x1E695DF00]);
    [v18 doubleValue];
    v545 = [v19 initWithTimeIntervalSince1970:?];
LABEL_23:

    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v20 = v17;
    v545 = [v18 dateFromString:v20];

    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v120 = objc_alloc(MEMORY[0x1E696ABC0]);
      v121 = *MEMORY[0x1E698F240];
      v699 = *MEMORY[0x1E696A578];
      errorCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"endDate"];
      v700 = errorCopy;
      v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v700 forKeys:&v699 count:1];
      v123 = v120;
      v21 = v122;
      v124 = [v123 initWithDomain:v121 code:2 userInfo:v122];
      v70 = 0;
      v14 = 0;
      *error = v124;
      v12 = v546;
      goto LABEL_706;
    }

    v70 = 0;
    v14 = 0;
    v12 = v546;
    goto LABEL_707;
  }

  v545 = v17;
LABEL_24:
  v21 = [dictionaryCopy objectForKeyedSubscript:@"creationDate"];
  v551 = v21;
  if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v542 = 0;
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
    v23 = objc_alloc(MEMORY[0x1E695DF00]);
    [v22 doubleValue];
    v24 = v23;
    v21 = v551;
    v542 = [v24 initWithTimeIntervalSince1970:?];
LABEL_31:

    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v25 = v21;
    v542 = [v22 dateFromString:v25];

    v21 = v551;
    goto LABEL_31;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    errorCopy = error;
    if (error)
    {
      v145 = objc_alloc(MEMORY[0x1E696ABC0]);
      v146 = *MEMORY[0x1E698F240];
      v697 = *MEMORY[0x1E696A578];
      v543 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"creationDate"];
      v698 = v543;
      v147 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v698 forKeys:&v697 count:1];
      v148 = v145;
      v21 = v551;
      v544 = v147;
      v149 = [v148 initWithDomain:v146 code:2 userInfo:?];
      errorCopy = 0;
      v14 = 0;
      *error = v149;
      v12 = v546;
      v70 = v545;
      goto LABEL_705;
    }

    v14 = 0;
    v12 = v546;
    v70 = v545;
    goto LABEL_706;
  }

  v542 = v21;
LABEL_32:
  v26 = [dictionaryCopy objectForKeyedSubscript:@"sourceCreationDate"];
  v544 = v26;
  if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v543 = 0;
    goto LABEL_40;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v27;
    v29 = objc_alloc(MEMORY[0x1E695DF00]);
    [v28 doubleValue];
    v543 = [v29 initWithTimeIntervalSince1970:?];
LABEL_39:

    goto LABEL_40;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v30 = v27;
    v543 = [v28 dateFromString:v30];

    goto LABEL_39;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      v543 = 0;
      v14 = 0;
      v12 = v546;
      v70 = v545;
      errorCopy = v542;
      goto LABEL_705;
    }

    v150 = objc_alloc(MEMORY[0x1E696ABC0]);
    v151 = *MEMORY[0x1E698F240];
    v695 = *MEMORY[0x1E696A578];
    v540 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"sourceCreationDate"];
    v696 = v540;
    v152 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v696 forKeys:&v695 count:1];
    v153 = v150;
    v21 = v551;
    v541 = v152;
    v154 = [v153 initWithDomain:v151 code:2 userInfo:?];
    v543 = 0;
    v14 = 0;
    *error = v154;
    v12 = v546;
    v70 = v545;
    goto LABEL_287;
  }

  v543 = v27;
LABEL_40:
  v31 = [dictionaryCopy objectForKeyedSubscript:@"expirationDate"];
  v541 = v31;
  if (v31)
  {
    v32 = v31;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
        v34 = objc_alloc(MEMORY[0x1E695DF00]);
        [v33 doubleValue];
        v540 = [v34 initWithTimeIntervalSince1970:?];
LABEL_47:

        goto LABEL_48;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v35 = v32;
        v540 = [v33 dateFromString:v35];

        goto LABEL_47;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v540 = v32;
        goto LABEL_48;
      }

      if (error)
      {
        v159 = objc_alloc(MEMORY[0x1E696ABC0]);
        v160 = *MEMORY[0x1E698F240];
        v693 = *MEMORY[0x1E696A578];
        v538 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"expirationDate"];
        v694 = v538;
        v539 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v694 forKeys:&v693 count:1];
        v161 = [v159 initWithDomain:v160 code:2 userInfo:?];
        v540 = 0;
        v14 = 0;
        *error = v161;
        goto LABEL_251;
      }

      v540 = 0;
      v14 = 0;
      v12 = v546;
      v70 = v545;
      v21 = v551;
LABEL_287:
      errorCopy = v542;
      goto LABEL_704;
    }
  }

  v540 = 0;
LABEL_48:
  v36 = [dictionaryCopy objectForKeyedSubscript:@"provider"];
  v539 = v36;
  if (v36)
  {
    v37 = v36;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v538 = v37;
LABEL_55:
        v21 = v551;

        goto LABEL_56;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = v37;
        v538 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataEventProviderTypeFromString(v38)];

        goto LABEL_55;
      }

      if (error)
      {
        v72 = objc_alloc(MEMORY[0x1E696ABC0]);
        v73 = *MEMORY[0x1E698F240];
        v691 = *MEMORY[0x1E696A578];
        v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"provider"];
        v692 = v41;
        v537 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v692 forKeys:&v691 count:1];
        v74 = [v72 initWithDomain:v73 code:2 userInfo:?];
        v538 = 0;
        v14 = 0;
        *error = v74;
        v12 = v546;
        v70 = v545;
        v21 = v551;
        goto LABEL_253;
      }

      v538 = 0;
      v14 = 0;
LABEL_251:
      v12 = v546;
      v70 = v545;
      v21 = v551;
      errorCopy = v542;
      goto LABEL_703;
    }
  }

  v538 = 0;
  v21 = v551;
LABEL_56:
  v39 = [dictionaryCopy objectForKeyedSubscript:@"category"];
  v537 = v39;
  if (v39)
  {
    v40 = v39;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = v40;
LABEL_63:

        goto LABEL_64;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = v40;
        v41 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataEventCategoryTypeFromString(v42)];

        goto LABEL_63;
      }

      if (error)
      {
        v78 = objc_alloc(MEMORY[0x1E696ABC0]);
        v79 = *MEMORY[0x1E698F240];
        v689 = *MEMORY[0x1E696A578];
        v535 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"category"];
        v690 = v535;
        v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v690 forKeys:&v689 count:1];
        v81 = v79;
        v21 = v551;
        v536 = v80;
        v41 = 0;
        v14 = 0;
        *error = [v78 initWithDomain:v81 code:2 userInfo:?];
        v12 = v546;
        v70 = v545;
        errorCopy = v542;
        goto LABEL_701;
      }

      v41 = 0;
      v14 = 0;
      v12 = v546;
      v70 = v545;
LABEL_253:
      errorCopy = v542;
      goto LABEL_702;
    }
  }

  v41 = 0;
LABEL_64:
  v43 = [dictionaryCopy objectForKeyedSubscript:@"placeUserType"];
  v536 = v43;
  if (v43 && (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v535 = v44;
    }

    else
    {
      v526 = dictionaryCopy;
      v45 = v5;
      v46 = v7;
      v47 = v6;
      v48 = v41;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v535 = 0;
          v14 = 0;
          v12 = v546;
          v70 = v545;
          errorCopy = v542;
          v6 = v47;
          v7 = v46;
          v5 = v45;
          dictionaryCopy = v526;
          goto LABEL_701;
        }

        v89 = objc_alloc(MEMORY[0x1E696ABC0]);
        v90 = *MEMORY[0x1E698F240];
        v687 = *MEMORY[0x1E696A578];
        v533 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"placeUserType"];
        v688 = v533;
        v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v688 forKeys:&v687 count:1];
        v92 = v90;
        v21 = v551;
        v534 = v91;
        v535 = 0;
        v14 = 0;
        *error = [v89 initWithDomain:v92 code:2 userInfo:?];
        goto LABEL_261;
      }

      v49 = v44;
      v535 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeFromString(v49)];

      v6 = v47;
      v7 = v46;
      v5 = v45;
      dictionaryCopy = v526;
    }
  }

  else
  {
    v535 = 0;
  }

  v50 = [dictionaryCopy objectForKeyedSubscript:@"poiCategory"];
  v534 = v50;
  if (v50)
  {
    v51 = v50;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v533 = v51;
LABEL_79:

        goto LABEL_80;
      }

      v526 = dictionaryCopy;
      v45 = v5;
      v46 = v7;
      v47 = v6;
      v48 = v41;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = v51;
        v533 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataGeoPOICategoryTypeFromString(v52)];

        v6 = v47;
        v7 = v46;
        v5 = v45;
        dictionaryCopy = v526;
        goto LABEL_79;
      }

      if (error)
      {
        v97 = objc_alloc(MEMORY[0x1E696ABC0]);
        v98 = *MEMORY[0x1E698F240];
        v685 = *MEMORY[0x1E696A578];
        v531 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"poiCategory"];
        v686 = v531;
        v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v686 forKeys:&v685 count:1];
        v100 = v98;
        v21 = v551;
        v532 = v99;
        v533 = 0;
        v14 = 0;
        *error = [v97 initWithDomain:v100 code:2 userInfo:?];
        goto LABEL_265;
      }

      v533 = 0;
      v14 = 0;
LABEL_261:
      v12 = v546;
      v70 = v545;
      errorCopy = v542;
      v41 = v48;
      v6 = v47;
      v7 = v46;
      v5 = v45;
      dictionaryCopy = v526;
      goto LABEL_700;
    }
  }

  v533 = 0;
LABEL_80:
  v53 = [dictionaryCopy objectForKeyedSubscript:@"placeDiscovery"];
  v532 = v53;
  if (v53)
  {
    v54 = v53;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v531 = v54;
LABEL_87:

        goto LABEL_88;
      }

      v526 = dictionaryCopy;
      v45 = v5;
      v46 = v7;
      v47 = v6;
      v48 = v41;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v55 = v54;
        v531 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataPlaceDiscoveryTypeFromString(v55)];

        v6 = v47;
        v7 = v46;
        v5 = v45;
        dictionaryCopy = v526;
        goto LABEL_87;
      }

      if (error)
      {
        v101 = objc_alloc(MEMORY[0x1E696ABC0]);
        v102 = *MEMORY[0x1E698F240];
        v683 = *MEMORY[0x1E696A578];
        v529 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"placeDiscovery"];
        v684 = v529;
        v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v684 forKeys:&v683 count:1];
        v104 = v102;
        v21 = v551;
        v530 = v103;
        v531 = 0;
        v14 = 0;
        *error = [v101 initWithDomain:v104 code:2 userInfo:?];
        goto LABEL_271;
      }

      v531 = 0;
      v14 = 0;
LABEL_265:
      v12 = v546;
      v70 = v545;
      errorCopy = v542;
      v41 = v48;
      v6 = v47;
      v7 = v46;
      v5 = v45;
      dictionaryCopy = v526;
      goto LABEL_699;
    }
  }

  v531 = 0;
LABEL_88:
  v56 = [dictionaryCopy objectForKeyedSubscript:@"locationMode"];
  v530 = v56;
  if (v56)
  {
    v57 = v56;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v529 = v57;
LABEL_95:

        goto LABEL_96;
      }

      v526 = dictionaryCopy;
      v45 = v5;
      v46 = v7;
      v47 = v6;
      v48 = v41;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58 = v57;
        v529 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataLocationModeTypeFromString(v58)];

        v6 = v47;
        v7 = v46;
        v5 = v45;
        dictionaryCopy = v526;
        goto LABEL_95;
      }

      if (error)
      {
        v109 = objc_alloc(MEMORY[0x1E696ABC0]);
        v110 = *MEMORY[0x1E698F240];
        v681 = *MEMORY[0x1E696A578];
        v524 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"locationMode"];
        v682 = v524;
        v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v682 forKeys:&v681 count:1];
        v112 = v110;
        v21 = v551;
        v525 = v111;
        v529 = 0;
        v14 = 0;
        *error = [v109 initWithDomain:v112 code:2 userInfo:?];
        goto LABEL_275;
      }

      v529 = 0;
      v14 = 0;
LABEL_271:
      v12 = v546;
      v70 = v545;
      errorCopy = v542;
      v41 = v48;
      v6 = v47;
      v7 = v46;
      v5 = v45;
      dictionaryCopy = v526;
      goto LABEL_698;
    }
  }

  v529 = 0;
LABEL_96:
  v59 = [dictionaryCopy objectForKeyedSubscript:@"workoutType"];
  v525 = v59;
  if (v59)
  {
    v60 = v59;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v524 = v60;
LABEL_103:

        goto LABEL_104;
      }

      v526 = dictionaryCopy;
      v45 = v5;
      v46 = v7;
      v47 = v6;
      v48 = v41;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v61 = v60;
        v524 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataWorkoutActivityTypeFromString(v61)];

        v6 = v47;
        v7 = v46;
        v5 = v45;
        dictionaryCopy = v526;
        goto LABEL_103;
      }

      if (error)
      {
        v113 = objc_alloc(MEMORY[0x1E696ABC0]);
        v114 = *MEMORY[0x1E698F240];
        v679 = *MEMORY[0x1E696A578];
        v522 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"workoutType"];
        v680 = v522;
        v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v680 forKeys:&v679 count:1];
        v116 = v114;
        v21 = v551;
        v523 = v115;
        v524 = 0;
        v14 = 0;
        *error = [v113 initWithDomain:v116 code:2 userInfo:?];
        v12 = v546;
        v70 = v545;
        errorCopy = v542;
        v6 = v47;
        v7 = v46;
        v5 = v45;
        dictionaryCopy = v526;
        goto LABEL_696;
      }

      v524 = 0;
      v14 = 0;
LABEL_275:
      v12 = v546;
      v70 = v545;
      errorCopy = v542;
      v41 = v48;
      v6 = v47;
      v7 = v46;
      v5 = v45;
      dictionaryCopy = v526;
      goto LABEL_697;
    }
  }

  v524 = 0;
LABEL_104:
  v62 = [dictionaryCopy objectForKeyedSubscript:@"workoutBundleID"];
  v523 = v62;
  if (v62 && (v63 = v62, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v66 = objc_alloc(MEMORY[0x1E696ABC0]);
        v67 = *MEMORY[0x1E698F240];
        v677 = *MEMORY[0x1E696A578];
        v520 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"workoutBundleID"];
        v678 = v520;
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v678 forKeys:&v677 count:1];
        v69 = v67;
        v21 = v551;
        v521 = v68;
        v522 = 0;
        v14 = 0;
        *error = [v66 initWithDomain:v69 code:2 userInfo:?];
        v12 = v546;
        v70 = v545;
        errorCopy = v542;
        goto LABEL_695;
      }

      v522 = 0;
      v14 = 0;
      v12 = v546;
      v70 = v545;
      errorCopy = v542;
      goto LABEL_696;
    }

    v522 = v63;
  }

  else
  {
    v522 = 0;
  }

  v64 = [dictionaryCopy objectForKeyedSubscript:@"mediaGenre"];
  v521 = v64;
  if (v64 && (v65 = v64, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v520 = v65;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v162 = objc_alloc(MEMORY[0x1E696ABC0]);
          v163 = *MEMORY[0x1E698F240];
          v675 = *MEMORY[0x1E696A578];
          v518 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"mediaGenre"];
          v676 = v518;
          v164 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v676 forKeys:&v675 count:1];
          v165 = v163;
          v21 = v551;
          v519 = v164;
          v520 = 0;
          v14 = 0;
          *error = [v162 initWithDomain:v165 code:2 userInfo:?];
          v12 = v546;
          v70 = v545;
          errorCopy = v542;
          goto LABEL_694;
        }

        v520 = 0;
        v14 = 0;
        v12 = v546;
        v70 = v545;
        errorCopy = v542;
        goto LABEL_695;
      }

      v75 = v65;
      v520 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataGenreTypeFromString(v75)];
    }
  }

  else
  {
    v520 = 0;
  }

  v76 = [dictionaryCopy objectForKeyedSubscript:@"mediaType"];
  v519 = v76;
  if (v76 && (v77 = v76, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v518 = v77;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v170 = objc_alloc(MEMORY[0x1E696ABC0]);
          v171 = *MEMORY[0x1E698F240];
          v673 = *MEMORY[0x1E696A578];
          v516 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"mediaType"];
          v674 = v516;
          v172 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v674 forKeys:&v673 count:1];
          v173 = v171;
          v21 = v551;
          v517 = v172;
          v518 = 0;
          v14 = 0;
          *error = [v170 initWithDomain:v173 code:2 userInfo:?];
          v12 = v546;
          v70 = v545;
          errorCopy = v542;
          goto LABEL_693;
        }

        v518 = 0;
        v14 = 0;
        v12 = v546;
        v70 = v545;
        errorCopy = v542;
        goto LABEL_694;
      }

      v82 = v77;
      v518 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataMediaTypeFromString(v82)];
    }
  }

  else
  {
    v518 = 0;
  }

  v83 = [dictionaryCopy objectForKeyedSubscript:@"mediaRepetitions"];
  v517 = v83;
  if (v83 && (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v516 = 0;
        v14 = 0;
        v12 = v546;
        v70 = v545;
        errorCopy = v542;
        goto LABEL_693;
      }

      v93 = objc_alloc(MEMORY[0x1E696ABC0]);
      v94 = *MEMORY[0x1E698F240];
      v671 = *MEMORY[0x1E696A578];
      v514 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mediaRepetitions"];
      v672 = v514;
      v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v672 forKeys:&v671 count:1];
      v96 = v94;
      v21 = v551;
      v515 = v95;
      v516 = 0;
      v14 = 0;
      *error = [v93 initWithDomain:v96 code:2 userInfo:?];
      goto LABEL_269;
    }

    v516 = v84;
  }

  else
  {
    v516 = 0;
  }

  v85 = [dictionaryCopy objectForKeyedSubscript:@"mediaSumTimePlayed"];
  v515 = v85;
  if (v85)
  {
    v86 = v85;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v514 = v86;
        goto LABEL_148;
      }

      if (error)
      {
        v105 = objc_alloc(MEMORY[0x1E696ABC0]);
        v106 = *MEMORY[0x1E698F240];
        v669 = *MEMORY[0x1E696A578];
        v512 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mediaSumTimePlayed"];
        v670 = v512;
        v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v670 forKeys:&v669 count:1];
        v108 = v106;
        v21 = v551;
        v513 = v107;
        v514 = 0;
        v14 = 0;
        *error = [v105 initWithDomain:v108 code:2 userInfo:?];
        v12 = v546;
        v70 = v545;
        errorCopy = v542;
        goto LABEL_691;
      }

      v514 = 0;
      v14 = 0;
LABEL_269:
      v12 = v546;
      v70 = v545;
      errorCopy = v542;
      goto LABEL_692;
    }
  }

  v514 = 0;
LABEL_148:
  v87 = [dictionaryCopy objectForKeyedSubscript:@"sourceParty"];
  v513 = v87;
  if (v87 && (v88 = v87, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v512 = v88;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v191 = objc_alloc(MEMORY[0x1E696ABC0]);
          v192 = *MEMORY[0x1E698F240];
          v667 = *MEMORY[0x1E696A578];
          v510 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"sourceParty"];
          v668 = v510;
          v193 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v668 forKeys:&v667 count:1];
          v194 = v192;
          v21 = v551;
          v511 = v193;
          v512 = 0;
          v14 = 0;
          *error = [v191 initWithDomain:v194 code:2 userInfo:?];
          v12 = v546;
          v70 = v545;
          errorCopy = v542;
          goto LABEL_690;
        }

        v512 = 0;
        v14 = 0;
        v12 = v546;
        v70 = v545;
        errorCopy = v542;
        goto LABEL_691;
      }

      v125 = v88;
      v512 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataSourceAppTypeFromString(v125)];
    }
  }

  else
  {
    v512 = 0;
  }

  v126 = [dictionaryCopy objectForKeyedSubscript:@"mediaPlayerBundleID"];
  v511 = v126;
  if (v126 && (v127 = v126, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v155 = objc_alloc(MEMORY[0x1E696ABC0]);
        v156 = *MEMORY[0x1E698F240];
        v665 = *MEMORY[0x1E696A578];
        v507 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"mediaPlayerBundleID"];
        v666 = v507;
        v157 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v666 forKeys:&v665 count:1];
        v158 = v156;
        v21 = v551;
        v509 = v157;
        v510 = 0;
        v14 = 0;
        *error = [v155 initWithDomain:v158 code:2 userInfo:?];
        v12 = v546;
        v70 = v545;
        errorCopy = v542;
        goto LABEL_689;
      }

      v510 = 0;
      v14 = 0;
      v12 = v546;
      v70 = v545;
      errorCopy = v542;
      goto LABEL_690;
    }

    v506 = v41;
    v510 = v127;
  }

  else
  {
    v506 = v41;
    v510 = 0;
  }

  v128 = [dictionaryCopy objectForKeyedSubscript:@"numAudioMediaPlaySessionsPerDay"];
  v509 = v128;
  if (v128 && (v129 = v128, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v507 = 0;
        v14 = 0;
        v12 = v546;
        v70 = v545;
        errorCopy = v542;
        v41 = v506;
        goto LABEL_689;
      }

      v166 = objc_alloc(MEMORY[0x1E696ABC0]);
      v167 = *MEMORY[0x1E698F240];
      v663 = *MEMORY[0x1E696A578];
      v504 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numAudioMediaPlaySessionsPerDay"];
      v664 = v504;
      v168 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v664 forKeys:&v663 count:1];
      v169 = v167;
      v21 = v551;
      v505 = v168;
      v507 = 0;
      v14 = 0;
      *error = [v166 initWithDomain:v169 code:2 userInfo:?];
      goto LABEL_297;
    }

    v507 = v129;
  }

  else
  {
    v507 = 0;
  }

  v130 = [dictionaryCopy objectForKeyedSubscript:@"durationAudioMediaPlaySessionsPerDay"];
  v505 = v130;
  if (v130)
  {
    v131 = v130;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v504 = v131;
        goto LABEL_187;
      }

      if (error)
      {
        v183 = objc_alloc(MEMORY[0x1E696ABC0]);
        v184 = *MEMORY[0x1E698F240];
        v661 = *MEMORY[0x1E696A578];
        v502 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"durationAudioMediaPlaySessionsPerDay"];
        v662 = v502;
        v185 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v662 forKeys:&v661 count:1];
        v186 = v184;
        v21 = v551;
        v503 = v185;
        v504 = 0;
        v14 = 0;
        *error = [v183 initWithDomain:v186 code:2 userInfo:?];
        goto LABEL_302;
      }

      v504 = 0;
      v14 = 0;
LABEL_297:
      v12 = v546;
      v70 = v545;
      errorCopy = v542;
      v41 = v506;
      goto LABEL_688;
    }
  }

  v504 = 0;
LABEL_187:
  v132 = [dictionaryCopy objectForKeyedSubscript:@"numVideoMediaPlaySessionsPerDay"];
  v503 = v132;
  if (v132)
  {
    v133 = v132;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v502 = v133;
        goto LABEL_190;
      }

      if (error)
      {
        v187 = objc_alloc(MEMORY[0x1E696ABC0]);
        v188 = *MEMORY[0x1E698F240];
        v659 = *MEMORY[0x1E696A578];
        v500 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numVideoMediaPlaySessionsPerDay"];
        v660 = v500;
        v189 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v660 forKeys:&v659 count:1];
        v190 = v188;
        v21 = v551;
        v501 = v189;
        v502 = 0;
        v14 = 0;
        *error = [v187 initWithDomain:v190 code:2 userInfo:?];
        goto LABEL_306;
      }

      v502 = 0;
      v14 = 0;
LABEL_302:
      v12 = v546;
      v70 = v545;
      errorCopy = v542;
      v41 = v506;
      goto LABEL_687;
    }
  }

  v502 = 0;
LABEL_190:
  v134 = [dictionaryCopy objectForKeyedSubscript:@"durationVideoMediaPlaySessionsPerDay"];
  v501 = v134;
  if (v134)
  {
    v135 = v134;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v500 = v135;
        goto LABEL_193;
      }

      if (error)
      {
        v195 = objc_alloc(MEMORY[0x1E696ABC0]);
        v196 = *MEMORY[0x1E698F240];
        v657 = *MEMORY[0x1E696A578];
        v498 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"durationVideoMediaPlaySessionsPerDay"];
        v658 = v498;
        v197 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v658 forKeys:&v657 count:1];
        v198 = v196;
        v21 = v551;
        v499 = v197;
        v500 = 0;
        v14 = 0;
        *error = [v195 initWithDomain:v198 code:2 userInfo:?];
        goto LABEL_314;
      }

      v500 = 0;
      v14 = 0;
LABEL_306:
      v12 = v546;
      v70 = v545;
      errorCopy = v542;
      v41 = v506;
      goto LABEL_686;
    }
  }

  v500 = 0;
LABEL_193:
  v136 = [dictionaryCopy objectForKeyedSubscript:@"numFirstPartyMediaPlaySessionsPerDay"];
  v499 = v136;
  if (v136)
  {
    v137 = v136;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v498 = v137;
        goto LABEL_196;
      }

      if (error)
      {
        v204 = objc_alloc(MEMORY[0x1E696ABC0]);
        v205 = *MEMORY[0x1E698F240];
        v655 = *MEMORY[0x1E696A578];
        v495 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numFirstPartyMediaPlaySessionsPerDay"];
        v656 = v495;
        v206 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v656 forKeys:&v655 count:1];
        v207 = v205;
        v21 = v551;
        v496 = v206;
        v498 = 0;
        v14 = 0;
        *error = [v204 initWithDomain:v207 code:2 userInfo:?];
        goto LABEL_345;
      }

      v498 = 0;
      v14 = 0;
LABEL_314:
      v12 = v546;
      v70 = v545;
      errorCopy = v542;
      v41 = v506;
      goto LABEL_685;
    }
  }

  v498 = 0;
LABEL_196:
  v138 = [dictionaryCopy objectForKeyedSubscript:@"numThirdPartyMediaPlaySessionsPerDay"];
  v496 = v138;
  if (v138)
  {
    v139 = v138;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v495 = v139;
        goto LABEL_199;
      }

      if (error)
      {
        v210 = objc_alloc(MEMORY[0x1E696ABC0]);
        v211 = *MEMORY[0x1E698F240];
        v653 = *MEMORY[0x1E696A578];
        v497 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numThirdPartyMediaPlaySessionsPerDay"];
        v654 = v497;
        v212 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v654 forKeys:&v653 count:1];
        v213 = v211;
        v21 = v551;
        v494 = v212;
        v495 = 0;
        v14 = 0;
        *error = [v210 initWithDomain:v213 code:2 userInfo:?];
LABEL_349:
        v12 = v546;
        v70 = v545;
        errorCopy = v542;
        v41 = v506;
        goto LABEL_683;
      }

      v495 = 0;
      v14 = 0;
LABEL_345:
      v12 = v546;
      v70 = v545;
      errorCopy = v542;
      v41 = v506;
      goto LABEL_684;
    }
  }

  v495 = 0;
LABEL_199:
  v140 = [dictionaryCopy objectForKeyedSubscript:@"numContacts"];
  v494 = v140;
  if (!v140 || (v141 = v140, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v497 = 0;
    goto LABEL_202;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v215 = objc_alloc(MEMORY[0x1E696ABC0]);
      v216 = *MEMORY[0x1E698F240];
      v651 = *MEMORY[0x1E696A578];
      obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numContacts"];
      v652 = obj;
      v217 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v652 forKeys:&v651 count:1];
      v218 = v216;
      v21 = v551;
      v528 = v217;
      v497 = 0;
      v14 = 0;
      *error = [v215 initWithDomain:v218 code:2 userInfo:?];
      v12 = v546;
      v70 = v545;
      errorCopy = v542;
      v41 = v506;

      goto LABEL_682;
    }

    v497 = 0;
    v14 = 0;
    goto LABEL_349;
  }

  v497 = v141;
LABEL_202:
  v142 = [dictionaryCopy objectForKeyedSubscript:@"contactIDsInConversation"];
  null = [MEMORY[0x1E695DFB0] null];
  v144 = [v142 isEqual:null];

  if (v144)
  {
    v491 = v6;

    v142 = 0;
    v21 = v551;
  }

  else
  {
    v21 = v551;
    if (v142)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        obj = v142;
        if (!error)
        {
          v14 = 0;
          v12 = v546;
          v70 = v545;
          errorCopy = v542;
          v41 = v506;
          goto LABEL_682;
        }

        v219 = objc_alloc(MEMORY[0x1E696ABC0]);
        v220 = *MEMORY[0x1E698F240];
        v649 = *MEMORY[0x1E696A578];
        v527 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"contactIDsInConversation"];
        v650 = v527;
        v221 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v650 forKeys:&v649 count:1];
        v222 = v220;
        v21 = v551;
        v14 = 0;
        *error = [v219 initWithDomain:v222 code:2 userInfo:v221];
        v214 = v221;
        v12 = v546;
        v70 = v545;
        goto LABEL_300;
      }
    }

    v491 = v6;
  }

  v527 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v142, "count")}];
  v562 = 0u;
  v563 = 0u;
  v564 = 0u;
  v565 = 0u;
  obj = v142;
  v174 = [obj countByEnumeratingWithState:&v562 objects:v648 count:16];
  if (!v174)
  {
    goto LABEL_242;
  }

  v175 = v174;
  v176 = *v563;
  do
  {
    for (i = 0; i != v175; ++i)
    {
      if (*v563 != v176)
      {
        objc_enumerationMutation(obj);
      }

      v178 = *(*(&v562 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (error)
        {
          v199 = objc_alloc(MEMORY[0x1E696ABC0]);
          v200 = *MEMORY[0x1E698F240];
          v646 = *MEMORY[0x1E696A578];
          v490 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"contactIDsInConversation"];
          v647 = v490;
          v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v647 forKeys:&v646 count:1];
          v202 = v199;
          v203 = v200;
LABEL_281:
          v487 = v201;
          v12 = v546;
          v70 = v545;
          errorCopy = v542;
          v41 = v506;
          v14 = 0;
          *error = [v202 initWithDomain:v203 code:2 userInfo:?];
          v489 = obj;
          v6 = v491;
          v21 = v551;

          goto LABEL_679;
        }

LABEL_291:
        v14 = 0;
        v214 = obj;
        v6 = v491;
        v12 = v546;
        v70 = v545;
        v21 = v551;
LABEL_300:
        errorCopy = v542;
        v41 = v506;
        goto LABEL_680;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v208 = objc_alloc(MEMORY[0x1E696ABC0]);
          v209 = *MEMORY[0x1E698F240];
          v644 = *MEMORY[0x1E696A578];
          v490 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contactIDsInConversation"];
          v645 = v490;
          v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v645 forKeys:&v644 count:1];
          v202 = v208;
          v203 = v209;
          goto LABEL_281;
        }

        goto LABEL_291;
      }

      v179 = v178;
      [v527 addObject:v179];
    }

    v175 = [obj countByEnumeratingWithState:&v562 objects:v648 count:16];
    v21 = v551;
  }

  while (v175);
LABEL_242:

  v180 = [dictionaryCopy objectForKeyedSubscript:@"contactIDMostSignificantInConversation"];
  v490 = v180;
  if (!v180)
  {
    v489 = 0;
    v182 = v497;
    goto LABEL_309;
  }

  v181 = v180;
  objc_opt_class();
  v182 = v497;
  if (objc_opt_isKindOfClass())
  {
    v489 = 0;
    goto LABEL_309;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v489 = v181;
LABEL_309:
    v223 = [dictionaryCopy objectForKeyedSubscript:@"interactionContactScore"];
    v485 = v223;
    v497 = v182;
    if (!v223)
    {
      v488 = 0;
      v6 = v491;
      goto LABEL_317;
    }

    v224 = v223;
    objc_opt_class();
    v6 = v491;
    if (objc_opt_isKindOfClass())
    {
      v488 = 0;
LABEL_317:
      v225 = [dictionaryCopy objectForKeyedSubscript:@"textLikeMechanismIncluded"];
      v484 = v225;
      if (!v225 || (v226 = v225, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v483 = 0;
LABEL_320:
        v227 = [dictionaryCopy objectForKeyedSubscript:@"callLikeMechanismIncluded"];
        v41 = v506;
        v482 = v227;
        if (v227 && (v228 = v227, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v481 = v228;
            goto LABEL_323;
          }

          if (!error)
          {
            v481 = 0;
            v14 = 0;
            v12 = v546;
            v70 = v545;
            errorCopy = v542;
            goto LABEL_675;
          }

          v255 = objc_alloc(MEMORY[0x1E696ABC0]);
          v256 = *MEMORY[0x1E698F240];
          v636 = *MEMORY[0x1E696A578];
          v477 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"callLikeMechanismIncluded"];
          v637 = v477;
          v257 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v637 forKeys:&v636 count:1];
          v258 = v256;
          v21 = v551;
          v478 = v257;
          v481 = 0;
          v14 = 0;
          *error = [v255 initWithDomain:v258 code:2 userInfo:?];
        }

        else
        {
          v481 = 0;
LABEL_323:
          v229 = [dictionaryCopy objectForKeyedSubscript:@"numTextLikeInteractions"];
          v478 = v229;
          if (!v229 || (v230 = v229, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v477 = 0;
LABEL_326:
            v231 = [dictionaryCopy objectForKeyedSubscript:@"numAudioLikeInteractions"];
            v475 = v231;
            if (!v231 || (v232 = v231, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v474 = 0;
LABEL_329:
              v233 = [dictionaryCopy objectForKeyedSubscript:@"numVideoLikeInteractions"];
              v473 = v233;
              if (!v233 || (v234 = v233, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v472 = 0;
LABEL_332:
                v235 = [dictionaryCopy objectForKeyedSubscript:@"totalDurationOfCallLikeInteractions"];
                v471 = v235;
                if (!v235 || (v236 = v235, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v470 = 0;
LABEL_335:
                  v237 = [dictionaryCopy objectForKeyedSubscript:@"minDurationOfCallLikeInteractions"];
                  v467 = v237;
                  if (!v237 || (v238 = v237, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v466 = 0;
LABEL_338:
                    v239 = [dictionaryCopy objectForKeyedSubscript:@"maxDurationOfCallLikeInteractions"];
                    v465 = v239;
                    if (!v239 || (v240 = v239, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v464 = 0;
LABEL_341:
                      v241 = [dictionaryCopy objectForKeyedSubscript:@"photoMomentSource"];
                      v463 = v241;
                      if (!v241 || (v242 = v241, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v462 = 0;
                        goto LABEL_397;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v462 = v242;
LABEL_396:

LABEL_397:
                        v284 = [dictionaryCopy objectForKeyedSubscript:@"photoMomentInferences"];
                        null2 = [MEMORY[0x1E695DFB0] null];
                        v286 = [v284 isEqual:null2];

                        if (v286)
                        {

                          v284 = 0;
                          v21 = v551;
                        }

                        else
                        {
                          v21 = v551;
                          if (v284)
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              v476 = v284;
                              if (!error)
                              {
                                v14 = 0;
                                v12 = v546;
                                v70 = v545;
                                errorCopy = v542;
                                goto LABEL_667;
                              }

                              v320 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v321 = *MEMORY[0x1E698F240];
                              v620 = *MEMORY[0x1E696A578];
                              v479 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"photoMomentInferences"];
                              v621 = v479;
                              v322 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v621 forKeys:&v620 count:1];
                              v323 = v321;
                              v21 = v551;
                              v468 = v322;
                              v14 = 0;
                              *error = [v320 initWithDomain:v323 code:2 userInfo:?];
                              goto LABEL_467;
                            }
                          }
                        }

                        v479 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v284, "count")}];
                        v558 = 0u;
                        v559 = 0u;
                        v560 = 0u;
                        v561 = 0u;
                        v476 = v284;
                        v287 = [v476 countByEnumeratingWithState:&v558 objects:v619 count:16];
                        if (!v287)
                        {
                          goto LABEL_411;
                        }

                        v288 = v287;
                        v492 = *v559;
LABEL_403:
                        v289 = v6;
                        v290 = 0;
                        while (1)
                        {
                          if (*v559 != v492)
                          {
                            objc_enumerationMutation(v476);
                          }

                          v291 = *(*(&v558 + 1) + 8 * v290);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            errorCopy3 = error;
                            if (error)
                            {
                              v300 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v301 = *MEMORY[0x1E698F240];
                              v617 = *MEMORY[0x1E696A578];
                              v469 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"photoMomentInferences"];
                              v618 = v469;
                              v302 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v618 forKeys:&v617 count:1];
                              v303 = v300;
                              goto LABEL_417;
                            }

LABEL_466:
                            v14 = 0;
                            v468 = v476;
                            v6 = v289;
LABEL_467:
                            v12 = v546;
                            v70 = v545;
                            goto LABEL_468;
                          }

                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            break;
                          }

                          v292 = v291;
                          v293 = [BMMomentsEventDataPhotoMomentInference alloc];
                          v557 = 0;
                          v294 = [(BMMomentsEventDataPhotoMomentInference *)v293 initWithJSONDictionary:v292 error:&v557];
                          v295 = v557;
                          if (v295)
                          {
                            v469 = v292;
                            v6 = v289;
                            v307 = v295;
                            if (error)
                            {
                              v308 = v295;
                              *error = v307;
                            }

                            v306 = v307;
                            v14 = 0;
                            v468 = v476;
LABEL_421:
                            v12 = v546;
                            v70 = v545;
                            v21 = v551;
                            goto LABEL_422;
                          }

                          [v479 addObject:v294];

                          ++v290;
                          v21 = v551;
                          if (v288 == v290)
                          {
                            v6 = v289;
                            v288 = [v476 countByEnumeratingWithState:&v558 objects:v619 count:16];
                            if (!v288)
                            {
LABEL_411:

                              v296 = [dictionaryCopy objectForKeyedSubscript:@"photoMomentHolidays"];
                              null3 = [MEMORY[0x1E695DFB0] null];
                              v298 = [v296 isEqual:null3];

                              if (v298)
                              {
                                v493 = v6;

                                v296 = 0;
LABEL_426:
                                v469 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v296, "count")}];
                                v553 = 0u;
                                v554 = 0u;
                                v555 = 0u;
                                v556 = 0u;
                                v468 = v296;
                                v309 = [v468 countByEnumeratingWithState:&v553 objects:v612 count:16];
                                if (!v309)
                                {
                                  goto LABEL_435;
                                }

                                v310 = v309;
                                v311 = *v554;
LABEL_428:
                                v312 = 0;
                                while (1)
                                {
                                  if (*v554 != v311)
                                  {
                                    objc_enumerationMutation(v468);
                                  }

                                  v313 = *(*(&v553 + 1) + 8 * v312);
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    break;
                                  }

                                  objc_opt_class();
                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                  {
                                    if (error)
                                    {
                                      v334 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v335 = *MEMORY[0x1E698F240];
                                      v608 = *MEMORY[0x1E696A578];
                                      v461 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"photoMomentHolidays"];
                                      v609 = v461;
                                      v326 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v609 forKeys:&v608 count:1];
                                      v327 = v334;
                                      v328 = v335;
                                      goto LABEL_481;
                                    }

                                    goto LABEL_484;
                                  }

                                  v314 = v313;
                                  [v469 addObject:v314];

                                  if (v310 == ++v312)
                                  {
                                    v310 = [v468 countByEnumeratingWithState:&v553 objects:v612 count:16];
                                    if (v310)
                                    {
                                      goto LABEL_428;
                                    }

LABEL_435:

                                    v315 = [dictionaryCopy objectForKeyedSubscript:@"numPhotoMomentHolidays"];
                                    v461 = v315;
                                    if (v315 && (v316 = v315, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v460 = v316;
                                        goto LABEL_438;
                                      }

                                      if (!error)
                                      {
                                        v460 = 0;
                                        v14 = 0;
                                        v6 = v493;
                                        v12 = v546;
                                        v70 = v545;
                                        v21 = v551;
                                        errorCopy = v542;
                                        v41 = v506;
                                        goto LABEL_663;
                                      }

                                      v339 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v340 = *MEMORY[0x1E698F240];
                                      v606 = *MEMORY[0x1E696A578];
                                      v458 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numPhotoMomentHolidays"];
                                      v607 = v458;
                                      v457 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v607 forKeys:&v606 count:1];
                                      v460 = 0;
                                      v14 = 0;
                                      *error = [v339 initWithDomain:v340 code:2 userInfo:?];
                                    }

                                    else
                                    {
                                      v460 = 0;
LABEL_438:
                                      v457 = [dictionaryCopy objectForKeyedSubscript:@"numPhotoMomentInferences"];
                                      if (!v457 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v458 = 0;
LABEL_441:
                                        v456 = [dictionaryCopy objectForKeyedSubscript:@"numPhotoMomentPublicEvents"];
                                        if (!v456 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v455 = 0;
LABEL_444:
                                          v454 = [dictionaryCopy objectForKeyedSubscript:@"numPhotoMomentPersons"];
                                          if (!v454 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v453 = 0;
LABEL_447:
                                            v452 = [dictionaryCopy objectForKeyedSubscript:@"isFamilyInPhotoMoment"];
                                            if (!v452 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v451 = 0;
LABEL_450:
                                              v317 = dictionaryCopy;
                                              v450 = [dictionaryCopy objectForKeyedSubscript:@"momentIncludesFavoritedAsset"];
                                              if (v450 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                              {
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v448 = v450;
                                                  goto LABEL_453;
                                                }

                                                if (error)
                                                {
                                                  v353 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v354 = *MEMORY[0x1E698F240];
                                                  v596 = *MEMORY[0x1E696A578];
                                                  v355 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"momentIncludesFavoritedAsset"];
                                                  v597 = v355;
                                                  v318 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v597 forKeys:&v596 count:1];
                                                  v448 = 0;
                                                  v14 = 0;
                                                  *error = [v353 initWithDomain:v354 code:2 userInfo:v318];
                                                  goto LABEL_656;
                                                }

                                                v349 = 0;
                                                v14 = 0;
                                                v6 = v493;
                                                v41 = v506;
                                                v352 = v450;
                                              }

                                              else
                                              {
                                                v448 = 0;
LABEL_453:
                                                v318 = [dictionaryCopy objectForKeyedSubscript:@"momentIncludesVideo"];
                                                if (v318 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                {
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v445 = v318;
                                                    goto LABEL_456;
                                                  }

                                                  if (error)
                                                  {
                                                    v356 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v357 = *MEMORY[0x1E698F240];
                                                    v594 = *MEMORY[0x1E696A578];
                                                    v446 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"momentIncludesVideo"];
                                                    v595 = v446;
                                                    v449 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v595 forKeys:&v594 count:1];
                                                    v445 = 0;
                                                    v14 = 0;
                                                    *error = [v356 initWithDomain:v357 code:2 userInfo:?];
                                                    goto LABEL_655;
                                                  }

                                                  v355 = 0;
                                                  v14 = 0;
                                                }

                                                else
                                                {
                                                  v445 = 0;
LABEL_456:
                                                  v449 = [dictionaryCopy objectForKeyedSubscript:@"momentIncludesPhoto"];
                                                  if (v449 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                  {
                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v446 = v449;
                                                      goto LABEL_459;
                                                    }

                                                    if (error)
                                                    {
                                                      v358 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v359 = *MEMORY[0x1E698F240];
                                                      v592 = *MEMORY[0x1E696A578];
                                                      v442 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"momentIncludesPhoto"];
                                                      v593 = v442;
                                                      v319 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v593 forKeys:&v592 count:1];
                                                      v446 = 0;
                                                      v14 = 0;
                                                      *error = [v358 initWithDomain:v359 code:2 userInfo:?];
                                                      goto LABEL_654;
                                                    }

                                                    v446 = 0;
                                                    v14 = 0;
                                                  }

                                                  else
                                                  {
                                                    v446 = 0;
LABEL_459:
                                                    v319 = [dictionaryCopy objectForKeyedSubscript:@"suggestedEventCategory"];
                                                    if (!v319 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v442 = 0;
LABEL_533:
                                                      v447 = [dictionaryCopy objectForKeyedSubscript:@"numAttendees"];
                                                      if (v447 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                      {
                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v441 = v447;
                                                          goto LABEL_536;
                                                        }

                                                        if (error)
                                                        {
                                                          v361 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v362 = *MEMORY[0x1E698F240];
                                                          v588 = *MEMORY[0x1E696A578];
                                                          v439 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numAttendees"];
                                                          v589 = v439;
                                                          v444 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v589 forKeys:&v588 count:1];
                                                          v441 = 0;
                                                          v14 = 0;
                                                          *error = [v361 initWithDomain:v362 code:2 userInfo:?];
                                                          goto LABEL_652;
                                                        }

                                                        v441 = 0;
                                                        v14 = 0;
                                                      }

                                                      else
                                                      {
                                                        v441 = 0;
LABEL_536:
                                                        v444 = [dictionaryCopy objectForKeyedSubscript:@"numtripParts"];
                                                        if (v444 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                        {
                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v439 = v444;
                                                            goto LABEL_539;
                                                          }

                                                          if (error)
                                                          {
                                                            v363 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v364 = *MEMORY[0x1E698F240];
                                                            v586 = *MEMORY[0x1E696A578];
                                                            v437 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numtripParts"];
                                                            v587 = v437;
                                                            v443 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v587 forKeys:&v586 count:1];
                                                            v439 = 0;
                                                            v14 = 0;
                                                            *error = [v363 initWithDomain:v364 code:2 userInfo:?];
                                                            goto LABEL_651;
                                                          }

                                                          v439 = 0;
                                                          v14 = 0;
                                                        }

                                                        else
                                                        {
                                                          v439 = 0;
LABEL_539:
                                                          v443 = [dictionaryCopy objectForKeyedSubscript:@"tripMode"];
                                                          if (!v443 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v437 = 0;
LABEL_559:
                                                            v440 = [dictionaryCopy objectForKeyedSubscript:@"numScoredTopics"];
                                                            if (v440 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                            {
                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v434 = v440;
                                                                goto LABEL_562;
                                                              }

                                                              if (error)
                                                              {
                                                                v369 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v370 = *MEMORY[0x1E698F240];
                                                                v582 = *MEMORY[0x1E696A578];
                                                                v433 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numScoredTopics"];
                                                                v583 = v433;
                                                                v438 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v583 forKeys:&v582 count:1];
                                                                v434 = 0;
                                                                v14 = 0;
                                                                *error = [v369 initWithDomain:v370 code:2 userInfo:?];
                                                                goto LABEL_649;
                                                              }

                                                              v434 = 0;
                                                              v14 = 0;
                                                            }

                                                            else
                                                            {
                                                              v434 = 0;
LABEL_562:
                                                              v438 = [dictionaryCopy objectForKeyedSubscript:@"numItemAuthors"];
                                                              if (v438 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                              {
                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v433 = v438;
                                                                  goto LABEL_565;
                                                                }

                                                                if (error)
                                                                {
                                                                  v371 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v372 = *MEMORY[0x1E698F240];
                                                                  v580 = *MEMORY[0x1E696A578];
                                                                  v431 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numItemAuthors"];
                                                                  v581 = v431;
                                                                  v435 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v581 forKeys:&v580 count:1];
                                                                  v433 = 0;
                                                                  v14 = 0;
                                                                  *error = [v371 initWithDomain:v372 code:2 userInfo:?];
                                                                  goto LABEL_648;
                                                                }

                                                                v433 = 0;
                                                                v14 = 0;
                                                              }

                                                              else
                                                              {
                                                                v433 = 0;
LABEL_565:
                                                                v435 = [dictionaryCopy objectForKeyedSubscript:@"numItemRecipients"];
                                                                if (v435 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                {
                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v431 = v435;
                                                                    goto LABEL_568;
                                                                  }

                                                                  if (error)
                                                                  {
                                                                    v375 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v376 = *MEMORY[0x1E698F240];
                                                                    v578 = *MEMORY[0x1E696A578];
                                                                    v430 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numItemRecipients"];
                                                                    v579 = v430;
                                                                    v432 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v579 forKeys:&v578 count:1];
                                                                    v431 = 0;
                                                                    v14 = 0;
                                                                    *error = [v375 initWithDomain:v376 code:2 userInfo:?];
                                                                    goto LABEL_647;
                                                                  }

                                                                  v431 = 0;
                                                                  v14 = 0;
                                                                }

                                                                else
                                                                {
                                                                  v431 = 0;
LABEL_568:
                                                                  v432 = [dictionaryCopy objectForKeyedSubscript:@"isGatheringComplete"];
                                                                  if (v432 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                  {
                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v430 = v432;
                                                                      goto LABEL_571;
                                                                    }

                                                                    if (error)
                                                                    {
                                                                      v377 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v378 = *MEMORY[0x1E698F240];
                                                                      v576 = *MEMORY[0x1E696A578];
                                                                      v366 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isGatheringComplete"];
                                                                      v577 = v366;
                                                                      v429 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v577 forKeys:&v576 count:1];
                                                                      v430 = 0;
                                                                      v14 = 0;
                                                                      *error = [v377 initWithDomain:v378 code:2 userInfo:?];
                                                                      goto LABEL_645;
                                                                    }

                                                                    v430 = 0;
                                                                    v14 = 0;
                                                                  }

                                                                  else
                                                                  {
                                                                    v430 = 0;
LABEL_571:
                                                                    v436 = [dictionaryCopy objectForKeyedSubscript:@"gaPR"];
                                                                    if (v436 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                    {
                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v366 = v436;
                                                                        v367 = [BMMomentsEventDataPR alloc];
                                                                        v552 = 0;
                                                                        v429 = [(BMMomentsEventDataPR *)v367 initWithJSONDictionary:v366 error:&v552];
                                                                        v368 = v552;
                                                                        if (!v368)
                                                                        {

                                                                          goto LABEL_574;
                                                                        }

                                                                        if (error)
                                                                        {
                                                                          v368 = v368;
                                                                          *error = v368;
                                                                        }

                                                                        v14 = 0;
                                                                        goto LABEL_645;
                                                                      }

                                                                      if (error)
                                                                      {
                                                                        v428 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v381 = *MEMORY[0x1E698F240];
                                                                        v574 = *MEMORY[0x1E696A578];
                                                                        v429 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"gaPR"];
                                                                        v575 = v429;
                                                                        v382 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v575 forKeys:&v574 count:1];
                                                                        *error = [v428 initWithDomain:v381 code:2 userInfo:v382];

                                                                        v14 = 0;
                                                                        v366 = v436;
                                                                        goto LABEL_645;
                                                                      }

                                                                      v14 = 0;
                                                                    }

                                                                    else
                                                                    {
                                                                      v429 = 0;
LABEL_574:
                                                                      v426 = [v317 objectForKeyedSubscript:@"pCount"];
                                                                      if (v426 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                      {
                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v422 = v426;
                                                                          goto LABEL_577;
                                                                        }

                                                                        if (error)
                                                                        {
                                                                          v383 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v384 = *MEMORY[0x1E698F240];
                                                                          v572 = *MEMORY[0x1E696A578];
                                                                          v421 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"pCount"];
                                                                          v573 = v421;
                                                                          v427 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v573 forKeys:&v572 count:1];
                                                                          v422 = 0;
                                                                          v14 = 0;
                                                                          *error = [v383 initWithDomain:v384 code:2 userInfo:?];
                                                                          goto LABEL_643;
                                                                        }

                                                                        v422 = 0;
                                                                        v14 = 0;
                                                                      }

                                                                      else
                                                                      {
                                                                        v422 = 0;
LABEL_577:
                                                                        v427 = [v317 objectForKeyedSubscript:@"mapItemSource"];
                                                                        if (v427)
                                                                        {
                                                                          objc_opt_class();
                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                          {
                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v421 = v427;
                                                                            }

                                                                            else
                                                                            {
                                                                              objc_opt_class();
                                                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                              {
                                                                                if (error)
                                                                                {
                                                                                  v395 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v396 = *MEMORY[0x1E698F240];
                                                                                  v570 = *MEMORY[0x1E696A578];
                                                                                  v420 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"mapItemSource"];
                                                                                  v571 = v420;
                                                                                  v425 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v571 forKeys:&v570 count:1];
                                                                                  v421 = 0;
                                                                                  v14 = 0;
                                                                                  *error = [v395 initWithDomain:v396 code:2 userInfo:?];
                                                                                  goto LABEL_642;
                                                                                }

                                                                                v421 = 0;
                                                                                v14 = 0;
                                                                                goto LABEL_643;
                                                                              }

                                                                              v385 = v427;
                                                                              v421 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataMapItemSourceTypeFromString(v385)];
                                                                            }

                                                                            goto LABEL_622;
                                                                          }
                                                                        }

                                                                        v421 = 0;
LABEL_622:
                                                                        v425 = [v317 objectForKeyedSubscript:@"placeType"];
                                                                        if (!v425 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v420 = 0;
LABEL_632:
                                                                          v423 = [v317 objectForKeyedSubscript:@"placeLabelGranularity"];
                                                                          if (!v423 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v387 = 0;
                                                                            goto LABEL_640;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v387 = v423;
LABEL_639:

LABEL_640:
                                                                            intValue = [v538 intValue];
                                                                            intValue2 = [v506 intValue];
                                                                            intValue3 = [v535 intValue];
                                                                            intValue4 = [v533 intValue];
                                                                            intValue5 = [v531 intValue];
                                                                            intValue6 = [v529 intValue];
                                                                            intValue7 = [v524 intValue];
                                                                            intValue8 = [v520 intValue];
                                                                            intValue9 = [v518 intValue];
                                                                            intValue10 = [v512 intValue];
                                                                            intValue11 = [v462 intValue];
                                                                            intValue12 = [v442 intValue];
                                                                            intValue13 = [v437 intValue];
                                                                            intValue14 = [v421 intValue];
                                                                            intValue15 = [v420 intValue];
                                                                            LODWORD(v409) = [v387 intValue];
                                                                            LODWORD(v408) = intValue13;
                                                                            LODWORD(v407) = intValue12;
                                                                            LODWORD(v406) = intValue11;
                                                                            LODWORD(v405) = intValue10;
                                                                            LODWORD(v404) = intValue7;
                                                                            v14 = [(BMMomentsEventDataEvent *)self initWithEventIdentifier:v493 startDate:v546 endDate:v545 creationDate:v542 sourceCreationDate:v543 expirationDate:v540 provider:__PAIR64__(intValue2 category:intValue) placeUserType:__PAIR64__(intValue4 poiCategory:intValue3) placeDiscovery:__PAIR64__(intValue6 locationMode:intValue5) workoutType:v404 workoutBundleID:v522 mediaGenre:__PAIR64__(intValue9 mediaType:intValue8) mediaRepetitions:v516 mediaSumTimePlayed:v514 sourceParty:v405 mediaPlayerBundleID:v510 numAudioMediaPlaySessionsPerDay:v507 durationAudioMediaPlaySessionsPerDay:v504 numVideoMediaPlaySessionsPerDay:v502 durationVideoMediaPlaySessionsPerDay:v500 numFirstPartyMediaPlaySessionsPerDay:v498 numThirdPartyMediaPlaySessionsPerDay:v495 numContacts:v497 contactIDsInConversation:v527 contactIDMostSignificantInConversation:v489 interactionContactScore:v488 textLikeMechanismIncluded:v483 callLikeMechanismIncluded:v481 numTextLikeInteractions:v477 numAudioLikeInteractions:v474 numVideoLikeInteractions:v472 totalDurationOfCallLikeInteractions:v470 minDurationOfCallLikeInteractions:v466 maxDurationOfCallLikeInteractions:v464 photoMomentSource:v406 photoMomentInferences:v479 photoMomentHolidays:v469 numPhotoMomentHolidays:v460 numPhotoMomentInferences:v458 numPhotoMomentPublicEvents:v455 numPhotoMomentPersons:v453 isFamilyInPhotoMoment:v451 momentIncludesFavoritedAsset:v448 momentIncludesVideo:v445 momentIncludesPhoto:v446 suggestedEventCategory:v407 numAttendees:v441 numtripParts:v439 tripMode:v408 numScoredTopics:v434 numItemAuthors:v433 numItemRecipients:v431 isGatheringComplete:v430 gaPR:v429 pCount:v422 mapItemSource:__PAIR64__(intValue15 placeType:intValue14) placeLabelGranularity:v409];
                                                                            self = v14;
                                                                          }

                                                                          else
                                                                          {
                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v388 = v423;
                                                                              v387 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataPlaceInferenceGranularityTypeFromString(v388)];

                                                                              goto LABEL_639;
                                                                            }

                                                                            if (error)
                                                                            {
                                                                              v400 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v401 = *MEMORY[0x1E698F240];
                                                                              v566 = *MEMORY[0x1E696A578];
                                                                              v402 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"placeLabelGranularity"];
                                                                              v567 = v402;
                                                                              v403 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v567 forKeys:&v566 count:1];
                                                                              *error = [v400 initWithDomain:v401 code:2 userInfo:v403];
                                                                            }

                                                                            v387 = 0;
                                                                            v14 = 0;
                                                                          }

LABEL_641:

                                                                          goto LABEL_642;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v420 = v425;
LABEL_631:

                                                                          goto LABEL_632;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v386 = v425;
                                                                          v420 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataVisitPlaceTypesFromString(v386)];

                                                                          goto LABEL_631;
                                                                        }

                                                                        if (error)
                                                                        {
                                                                          v424 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v397 = *MEMORY[0x1E698F240];
                                                                          v568 = *MEMORY[0x1E696A578];
                                                                          v387 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"placeType"];
                                                                          v569 = v387;
                                                                          v398 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v569 forKeys:&v568 count:1];
                                                                          v399 = v424;
                                                                          v423 = v398;
                                                                          v420 = 0;
                                                                          v14 = 0;
                                                                          *error = [v399 initWithDomain:v397 code:2 userInfo:?];
                                                                          goto LABEL_641;
                                                                        }

                                                                        v420 = 0;
                                                                        v14 = 0;
LABEL_642:

LABEL_643:
                                                                      }

                                                                      v366 = v436;
LABEL_645:

                                                                      v436 = v366;
                                                                    }
                                                                  }

LABEL_647:
                                                                }

LABEL_648:
                                                              }

LABEL_649:
                                                            }

LABEL_650:

                                                            goto LABEL_651;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v437 = v443;
LABEL_558:

                                                            goto LABEL_559;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v365 = v443;
                                                            v437 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataTripModeTypeFromString(v365)];

                                                            goto LABEL_558;
                                                          }

                                                          if (error)
                                                          {
                                                            v379 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v380 = *MEMORY[0x1E698F240];
                                                            v584 = *MEMORY[0x1E696A578];
                                                            v434 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"tripMode"];
                                                            v585 = v434;
                                                            v440 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v585 forKeys:&v584 count:1];
                                                            v437 = 0;
                                                            v14 = 0;
                                                            *error = [v379 initWithDomain:v380 code:2 userInfo:?];
                                                            goto LABEL_650;
                                                          }

                                                          v437 = 0;
                                                          v14 = 0;
LABEL_651:
                                                        }

LABEL_652:
                                                      }

LABEL_653:

                                                      goto LABEL_654;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v442 = v319;
LABEL_532:

                                                      goto LABEL_533;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v360 = v319;
                                                      v442 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataSuggestedEventCategoryTypeFromString(v360)];

                                                      goto LABEL_532;
                                                    }

                                                    if (error)
                                                    {
                                                      v373 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v374 = *MEMORY[0x1E698F240];
                                                      v590 = *MEMORY[0x1E696A578];
                                                      v441 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"suggestedEventCategory"];
                                                      v591 = v441;
                                                      v447 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v591 forKeys:&v590 count:1];
                                                      v442 = 0;
                                                      v14 = 0;
                                                      *error = [v373 initWithDomain:v374 code:2 userInfo:?];
                                                      goto LABEL_653;
                                                    }

                                                    v442 = 0;
                                                    v14 = 0;
LABEL_654:
                                                  }

LABEL_655:

                                                  v355 = v445;
                                                }

LABEL_656:

                                                v6 = v493;
                                                v41 = v506;
                                                dictionaryCopy = v317;
                                                v352 = v450;
                                                v349 = v448;
                                              }

LABEL_657:

                                              v12 = v546;
                                              v70 = v545;
                                              v21 = v551;
                                              errorCopy = v542;
LABEL_658:

LABEL_659:
LABEL_660:

LABEL_661:
LABEL_663:

                                              v306 = v460;
LABEL_664:

LABEL_665:
LABEL_667:

LABEL_668:
LABEL_669:

LABEL_670:
LABEL_671:

LABEL_672:
LABEL_673:

LABEL_674:
LABEL_675:

LABEL_676:
LABEL_677:

LABEL_678:
                                              goto LABEL_679;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v451 = v452;
                                              goto LABEL_450;
                                            }

                                            if (error)
                                            {
                                              v347 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v348 = *MEMORY[0x1E698F240];
                                              v598 = *MEMORY[0x1E696A578];
                                              v349 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFamilyInPhotoMoment"];
                                              v599 = v349;
                                              v350 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v599 forKeys:&v598 count:1];
                                              v351 = v347;
                                              v352 = v350;
                                              v451 = 0;
                                              v14 = 0;
                                              *error = [v351 initWithDomain:v348 code:2 userInfo:v350];
                                              v6 = v493;
                                              v41 = v506;
                                              goto LABEL_657;
                                            }

                                            v451 = 0;
                                            v14 = 0;
LABEL_555:
                                            v6 = v493;
                                            v12 = v546;
                                            v70 = v545;
                                            v21 = v551;
                                            errorCopy = v542;
                                            v41 = v506;
                                            goto LABEL_658;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v453 = v454;
                                            goto LABEL_447;
                                          }

                                          if (error)
                                          {
                                            v345 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v346 = *MEMORY[0x1E698F240];
                                            v600 = *MEMORY[0x1E696A578];
                                            v451 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numPhotoMomentPersons"];
                                            v601 = v451;
                                            v452 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v601 forKeys:&v600 count:1];
                                            v453 = 0;
                                            v14 = 0;
                                            *error = [v345 initWithDomain:v346 code:2 userInfo:?];
                                            goto LABEL_555;
                                          }

                                          v453 = 0;
                                          v14 = 0;
LABEL_551:
                                          v6 = v493;
                                          v12 = v546;
                                          v70 = v545;
                                          v21 = v551;
                                          errorCopy = v542;
                                          v41 = v506;
                                          goto LABEL_659;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v455 = v456;
                                          goto LABEL_444;
                                        }

                                        if (error)
                                        {
                                          v343 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v344 = *MEMORY[0x1E698F240];
                                          v602 = *MEMORY[0x1E696A578];
                                          v453 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numPhotoMomentPublicEvents"];
                                          v603 = v453;
                                          v454 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v603 forKeys:&v602 count:1];
                                          v455 = 0;
                                          v14 = 0;
                                          *error = [v343 initWithDomain:v344 code:2 userInfo:?];
                                          goto LABEL_551;
                                        }

                                        v455 = 0;
                                        v14 = 0;
LABEL_529:
                                        v6 = v493;
                                        v12 = v546;
                                        v70 = v545;
                                        v21 = v551;
                                        errorCopy = v542;
                                        v41 = v506;
                                        goto LABEL_660;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v458 = v457;
                                        goto LABEL_441;
                                      }

                                      if (error)
                                      {
                                        v341 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v342 = *MEMORY[0x1E698F240];
                                        v604 = *MEMORY[0x1E696A578];
                                        v455 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numPhotoMomentInferences"];
                                        v605 = v455;
                                        v456 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v605 forKeys:&v604 count:1];
                                        v458 = 0;
                                        v14 = 0;
                                        *error = [v341 initWithDomain:v342 code:2 userInfo:?];
                                        goto LABEL_529;
                                      }

                                      v458 = 0;
                                      v14 = 0;
                                    }

                                    v6 = v493;
                                    v12 = v546;
                                    v70 = v545;
                                    v21 = v551;
                                    errorCopy = v542;
                                    v41 = v506;
                                    goto LABEL_661;
                                  }
                                }

                                if (error)
                                {
                                  v324 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v325 = *MEMORY[0x1E698F240];
                                  v610 = *MEMORY[0x1E696A578];
                                  v461 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"photoMomentHolidays"];
                                  v611 = v461;
                                  v326 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v611 forKeys:&v610 count:1];
                                  v327 = v324;
                                  v328 = v325;
LABEL_481:
                                  v459 = v326;
                                  v12 = v546;
                                  v70 = v545;
                                  errorCopy = v542;
                                  v41 = v506;
                                  v14 = 0;
                                  *error = [v327 initWithDomain:v328 code:2 userInfo:?];
                                  v460 = v468;
                                  v6 = v493;
                                  v21 = v551;

                                  goto LABEL_663;
                                }

LABEL_484:
                                v14 = 0;
                                v306 = v468;
                                v6 = v493;
                                v12 = v546;
                                v70 = v545;
                                v21 = v551;
                                errorCopy = v542;
                                v41 = v506;
                                goto LABEL_664;
                              }

                              if (!v296 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v493 = v6;
                                goto LABEL_426;
                              }

                              v468 = v296;
                              if (error)
                              {
                                v336 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v337 = *MEMORY[0x1E698F240];
                                v613 = *MEMORY[0x1E696A578];
                                v469 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"photoMomentHolidays"];
                                v614 = v469;
                                v338 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v614 forKeys:&v613 count:1];
                                v14 = 0;
                                *error = [v336 initWithDomain:v337 code:2 userInfo:v338];
                                v306 = v338;
                                goto LABEL_421;
                              }

                              v14 = 0;
                              v12 = v546;
                              v70 = v545;
                              v21 = v551;
LABEL_468:
                              errorCopy = v542;
                              goto LABEL_665;
                            }

                            goto LABEL_403;
                          }
                        }

                        errorCopy3 = error;
                        if (!error)
                        {
                          goto LABEL_466;
                        }

                        v304 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v301 = *MEMORY[0x1E698F240];
                        v615 = *MEMORY[0x1E696A578];
                        v469 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"photoMomentInferences"];
                        v616 = v469;
                        v302 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v616 forKeys:&v615 count:1];
                        v303 = v304;
LABEL_417:
                        v305 = v301;
                        v21 = v551;
                        v14 = 0;
                        *errorCopy3 = [v303 initWithDomain:v305 code:2 userInfo:v302];
                        v306 = v302;
                        v468 = v476;
                        v6 = v289;
                        v12 = v546;
                        v70 = v545;
LABEL_422:
                        errorCopy = v542;
                        goto LABEL_664;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v283 = v242;
                        v462 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataPhotoMomentSourceTypeFromString(v283)];

                        goto LABEL_396;
                      }

                      if (error)
                      {
                        v329 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v330 = *MEMORY[0x1E698F240];
                        v622 = *MEMORY[0x1E696A578];
                        v476 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"photoMomentSource"];
                        v623 = v476;
                        v331 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v623 forKeys:&v622 count:1];
                        v332 = v330;
                        v21 = v551;
                        v480 = v331;
                        v333 = [v329 initWithDomain:v332 code:2 userInfo:?];
                        v462 = 0;
                        v14 = 0;
                        *error = v333;
                        v12 = v546;
                        v70 = v545;
                        errorCopy = v542;

                        goto LABEL_667;
                      }

                      v462 = 0;
                      v14 = 0;
LABEL_491:
                      v12 = v546;
                      v70 = v545;
                      errorCopy = v542;
                      goto LABEL_668;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v464 = v240;
                      goto LABEL_341;
                    }

                    if (error)
                    {
                      v279 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v280 = *MEMORY[0x1E698F240];
                      v624 = *MEMORY[0x1E696A578];
                      v462 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"maxDurationOfCallLikeInteractions"];
                      v625 = v462;
                      v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v625 forKeys:&v624 count:1];
                      v282 = v280;
                      v21 = v551;
                      v463 = v281;
                      v464 = 0;
                      v14 = 0;
                      *error = [v279 initWithDomain:v282 code:2 userInfo:?];
                      goto LABEL_491;
                    }

                    v464 = 0;
                    v14 = 0;
LABEL_483:
                    v12 = v546;
                    v70 = v545;
                    errorCopy = v542;
                    goto LABEL_669;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v466 = v238;
                    goto LABEL_338;
                  }

                  if (error)
                  {
                    v275 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v276 = *MEMORY[0x1E698F240];
                    v626 = *MEMORY[0x1E696A578];
                    v464 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"minDurationOfCallLikeInteractions"];
                    v627 = v464;
                    v277 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v627 forKeys:&v626 count:1];
                    v278 = v276;
                    v21 = v551;
                    v465 = v277;
                    v466 = 0;
                    v14 = 0;
                    *error = [v275 initWithDomain:v278 code:2 userInfo:?];
                    goto LABEL_483;
                  }

                  v466 = 0;
                  v14 = 0;
LABEL_474:
                  v12 = v546;
                  v70 = v545;
                  errorCopy = v542;
                  goto LABEL_670;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v470 = v236;
                  goto LABEL_335;
                }

                if (error)
                {
                  v271 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v272 = *MEMORY[0x1E698F240];
                  v628 = *MEMORY[0x1E696A578];
                  v466 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalDurationOfCallLikeInteractions"];
                  v629 = v466;
                  v273 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v629 forKeys:&v628 count:1];
                  v274 = v272;
                  v21 = v551;
                  v467 = v273;
                  v470 = 0;
                  v14 = 0;
                  *error = [v271 initWithDomain:v274 code:2 userInfo:?];
                  goto LABEL_474;
                }

                v470 = 0;
                v14 = 0;
LABEL_472:
                v12 = v546;
                v70 = v545;
                errorCopy = v542;
                goto LABEL_671;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v472 = v234;
                goto LABEL_332;
              }

              if (error)
              {
                v267 = objc_alloc(MEMORY[0x1E696ABC0]);
                v268 = *MEMORY[0x1E698F240];
                v630 = *MEMORY[0x1E696A578];
                v470 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numVideoLikeInteractions"];
                v631 = v470;
                v269 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v631 forKeys:&v630 count:1];
                v270 = v268;
                v21 = v551;
                v471 = v269;
                v472 = 0;
                v14 = 0;
                *error = [v267 initWithDomain:v270 code:2 userInfo:?];
                goto LABEL_472;
              }

              v472 = 0;
              v14 = 0;
LABEL_470:
              v12 = v546;
              v70 = v545;
              errorCopy = v542;
              goto LABEL_672;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v474 = v232;
              goto LABEL_329;
            }

            if (error)
            {
              v263 = objc_alloc(MEMORY[0x1E696ABC0]);
              v264 = *MEMORY[0x1E698F240];
              v632 = *MEMORY[0x1E696A578];
              v472 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numAudioLikeInteractions"];
              v633 = v472;
              v265 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v633 forKeys:&v632 count:1];
              v266 = v264;
              v21 = v551;
              v473 = v265;
              v474 = 0;
              v14 = 0;
              *error = [v263 initWithDomain:v266 code:2 userInfo:?];
              goto LABEL_470;
            }

            v474 = 0;
            v14 = 0;
LABEL_465:
            v12 = v546;
            v70 = v545;
            errorCopy = v542;
            goto LABEL_673;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v477 = v230;
            goto LABEL_326;
          }

          if (error)
          {
            v259 = objc_alloc(MEMORY[0x1E696ABC0]);
            v260 = *MEMORY[0x1E698F240];
            v634 = *MEMORY[0x1E696A578];
            v474 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numTextLikeInteractions"];
            v635 = v474;
            v261 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v635 forKeys:&v634 count:1];
            v262 = v260;
            v21 = v551;
            v475 = v261;
            v477 = 0;
            v14 = 0;
            *error = [v259 initWithDomain:v262 code:2 userInfo:?];
            goto LABEL_465;
          }

          v477 = 0;
          v14 = 0;
        }

        v12 = v546;
        v70 = v545;
        errorCopy = v542;
        goto LABEL_674;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v483 = v226;
        goto LABEL_320;
      }

      if (error)
      {
        v251 = objc_alloc(MEMORY[0x1E696ABC0]);
        v252 = *MEMORY[0x1E698F240];
        v638 = *MEMORY[0x1E696A578];
        v481 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"textLikeMechanismIncluded"];
        v639 = v481;
        v253 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v639 forKeys:&v638 count:1];
        v254 = v252;
        v21 = v551;
        v482 = v253;
        v483 = 0;
        v14 = 0;
        *error = [v251 initWithDomain:v254 code:2 userInfo:?];
        v12 = v546;
        v70 = v545;
        errorCopy = v542;
        v41 = v506;
        goto LABEL_675;
      }

      v483 = 0;
      v14 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v488 = v224;
        goto LABEL_317;
      }

      if (!error)
      {
        v488 = 0;
        v14 = 0;
        v12 = v546;
        v70 = v545;
        errorCopy = v542;
        v41 = v506;
        goto LABEL_677;
      }

      v247 = objc_alloc(MEMORY[0x1E696ABC0]);
      v248 = *MEMORY[0x1E698F240];
      v640 = *MEMORY[0x1E696A578];
      v483 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"interactionContactScore"];
      v641 = v483;
      v249 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v641 forKeys:&v640 count:1];
      v250 = v248;
      v21 = v551;
      v484 = v249;
      v488 = 0;
      v14 = 0;
      *error = [v247 initWithDomain:v250 code:2 userInfo:?];
    }

    v12 = v546;
    v70 = v545;
    errorCopy = v542;
    v41 = v506;
    goto LABEL_676;
  }

  v6 = v491;
  v41 = v506;
  if (error)
  {
    v243 = objc_alloc(MEMORY[0x1E696ABC0]);
    v244 = *MEMORY[0x1E698F240];
    v642 = *MEMORY[0x1E696A578];
    v488 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contactIDMostSignificantInConversation"];
    v643 = v488;
    v245 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v643 forKeys:&v642 count:1];
    v246 = v244;
    v21 = v551;
    v486 = v245;
    v489 = 0;
    v14 = 0;
    *error = [v243 initWithDomain:v246 code:2 userInfo:?];
    v12 = v546;
    v70 = v545;
    errorCopy = v542;

    goto LABEL_678;
  }

  v489 = 0;
  v14 = 0;
  v12 = v546;
  v70 = v545;
  errorCopy = v542;
LABEL_679:

  v214 = v489;
LABEL_680:

LABEL_682:
LABEL_683:

LABEL_684:
LABEL_685:

LABEL_686:
LABEL_687:

LABEL_688:
LABEL_689:

LABEL_690:
LABEL_691:

LABEL_692:
LABEL_693:

LABEL_694:
LABEL_695:

LABEL_696:
LABEL_697:

LABEL_698:
LABEL_699:

LABEL_700:
LABEL_701:

LABEL_702:
LABEL_703:

LABEL_704:
LABEL_705:

LABEL_706:
LABEL_707:

LABEL_708:
LABEL_709:

  v393 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEventDataEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v94 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_eventIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_startDate)
  {
    raw_startDate = self->_raw_startDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_endDate)
  {
    raw_endDate = self->_raw_endDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_creationDate)
  {
    raw_creationDate = self->_raw_creationDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_sourceCreationDate)
  {
    raw_sourceCreationDate = self->_raw_sourceCreationDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_expirationDate)
  {
    raw_expirationDate = self->_raw_expirationDate;
    PBDataWriterWriteDoubleField();
  }

  provider = self->_provider;
  PBDataWriterWriteUint32Field();
  category = self->_category;
  PBDataWriterWriteUint32Field();
  placeUserType = self->_placeUserType;
  PBDataWriterWriteUint32Field();
  poiCategory = self->_poiCategory;
  PBDataWriterWriteUint32Field();
  placeDiscovery = self->_placeDiscovery;
  PBDataWriterWriteUint32Field();
  locationMode = self->_locationMode;
  PBDataWriterWriteUint32Field();
  workoutType = self->_workoutType;
  PBDataWriterWriteUint32Field();
  if (self->_workoutBundleID)
  {
    PBDataWriterWriteStringField();
  }

  mediaGenre = self->_mediaGenre;
  PBDataWriterWriteUint32Field();
  mediaType = self->_mediaType;
  PBDataWriterWriteUint32Field();
  if (self->_hasMediaRepetitions)
  {
    mediaRepetitions = self->_mediaRepetitions;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasMediaSumTimePlayed)
  {
    mediaSumTimePlayed = self->_mediaSumTimePlayed;
    PBDataWriterWriteInt32Field();
  }

  sourceParty = self->_sourceParty;
  PBDataWriterWriteUint32Field();
  if (self->_mediaPlayerBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasNumAudioMediaPlaySessionsPerDay)
  {
    numAudioMediaPlaySessionsPerDay = self->_numAudioMediaPlaySessionsPerDay;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasDurationAudioMediaPlaySessionsPerDay)
  {
    durationAudioMediaPlaySessionsPerDay = self->_durationAudioMediaPlaySessionsPerDay;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasNumVideoMediaPlaySessionsPerDay)
  {
    numVideoMediaPlaySessionsPerDay = self->_numVideoMediaPlaySessionsPerDay;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasDurationVideoMediaPlaySessionsPerDay)
  {
    durationVideoMediaPlaySessionsPerDay = self->_durationVideoMediaPlaySessionsPerDay;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasNumFirstPartyMediaPlaySessionsPerDay)
  {
    numFirstPartyMediaPlaySessionsPerDay = self->_numFirstPartyMediaPlaySessionsPerDay;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNumThirdPartyMediaPlaySessionsPerDay)
  {
    numThirdPartyMediaPlaySessionsPerDay = self->_numThirdPartyMediaPlaySessionsPerDay;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNumContacts)
  {
    numContacts = self->_numContacts;
    PBDataWriterWriteInt32Field();
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v29 = self->_contactIDsInConversation;
  v30 = [(NSArray *)v29 countByEnumeratingWithState:&v87 objects:v93 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v88;
    do
    {
      v33 = 0;
      do
      {
        if (*v88 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v87 + 1) + 8 * v33);
        PBDataWriterWriteStringField();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSArray *)v29 countByEnumeratingWithState:&v87 objects:v93 count:16];
    }

    while (v31);
  }

  if (self->_contactIDMostSignificantInConversation)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasInteractionContactScore)
  {
    interactionContactScore = self->_interactionContactScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasTextLikeMechanismIncluded)
  {
    textLikeMechanismIncluded = self->_textLikeMechanismIncluded;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCallLikeMechanismIncluded)
  {
    callLikeMechanismIncluded = self->_callLikeMechanismIncluded;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasNumTextLikeInteractions)
  {
    numTextLikeInteractions = self->_numTextLikeInteractions;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNumAudioLikeInteractions)
  {
    numAudioLikeInteractions = self->_numAudioLikeInteractions;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNumVideoLikeInteractions)
  {
    numVideoLikeInteractions = self->_numVideoLikeInteractions;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasTotalDurationOfCallLikeInteractions)
  {
    totalDurationOfCallLikeInteractions = self->_totalDurationOfCallLikeInteractions;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasMinDurationOfCallLikeInteractions)
  {
    minDurationOfCallLikeInteractions = self->_minDurationOfCallLikeInteractions;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasMaxDurationOfCallLikeInteractions)
  {
    maxDurationOfCallLikeInteractions = self->_maxDurationOfCallLikeInteractions;
    PBDataWriterWriteDoubleField();
  }

  photoMomentSource = self->_photoMomentSource;
  PBDataWriterWriteUint32Field();
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v45 = self->_photoMomentInferences;
  v46 = [(NSArray *)v45 countByEnumeratingWithState:&v83 objects:v92 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v84;
    do
    {
      v49 = 0;
      do
      {
        if (*v84 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v83 + 1) + 8 * v49);
        v82 = 0;
        PBDataWriterPlaceMark();
        [v50 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v49;
      }

      while (v47 != v49);
      v47 = [(NSArray *)v45 countByEnumeratingWithState:&v83 objects:v92 count:16];
    }

    while (v47);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v51 = self->_photoMomentHolidays;
  v52 = [(NSArray *)v51 countByEnumeratingWithState:&v78 objects:v91 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v79;
    do
    {
      v55 = 0;
      do
      {
        if (*v79 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v78 + 1) + 8 * v55);
        PBDataWriterWriteStringField();
        ++v55;
      }

      while (v53 != v55);
      v53 = [(NSArray *)v51 countByEnumeratingWithState:&v78 objects:v91 count:16];
    }

    while (v53);
  }

  if (self->_hasNumPhotoMomentHolidays)
  {
    numPhotoMomentHolidays = self->_numPhotoMomentHolidays;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNumPhotoMomentInferences)
  {
    numPhotoMomentInferences = self->_numPhotoMomentInferences;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNumPhotoMomentPublicEvents)
  {
    numPhotoMomentPublicEvents = self->_numPhotoMomentPublicEvents;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNumPhotoMomentPersons)
  {
    numPhotoMomentPersons = self->_numPhotoMomentPersons;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasIsFamilyInPhotoMoment)
  {
    isFamilyInPhotoMoment = self->_isFamilyInPhotoMoment;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasMomentIncludesFavoritedAsset)
  {
    momentIncludesFavoritedAsset = self->_momentIncludesFavoritedAsset;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasMomentIncludesVideo)
  {
    momentIncludesVideo = self->_momentIncludesVideo;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasMomentIncludesPhoto)
  {
    momentIncludesPhoto = self->_momentIncludesPhoto;
    PBDataWriterWriteBOOLField();
  }

  suggestedEventCategory = self->_suggestedEventCategory;
  PBDataWriterWriteUint32Field();
  if (self->_hasNumAttendees)
  {
    numAttendees = self->_numAttendees;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNumtripParts)
  {
    numtripParts = self->_numtripParts;
    PBDataWriterWriteInt32Field();
  }

  tripMode = self->_tripMode;
  PBDataWriterWriteUint32Field();
  if (self->_hasNumScoredTopics)
  {
    numScoredTopics = self->_numScoredTopics;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNumItemAuthors)
  {
    numItemAuthors = self->_numItemAuthors;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNumItemRecipients)
  {
    numItemRecipients = self->_numItemRecipients;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasIsGatheringComplete)
  {
    isGatheringComplete = self->_isGatheringComplete;
    PBDataWriterWriteBOOLField();
  }

  if (self->_gaPR)
  {
    v82 = 0;
    PBDataWriterPlaceMark();
    [(BMMomentsEventDataPR *)self->_gaPR writeTo:toCopy, v78];
    PBDataWriterRecallMark();
  }

  if (self->_hasPCount)
  {
    pCount = self->_pCount;
    PBDataWriterWriteInt32Field();
  }

  mapItemSource = self->_mapItemSource;
  PBDataWriterWriteUint32Field();
  placeType = self->_placeType;
  PBDataWriterWriteUint32Field();
  placeLabelGranularity = self->_placeLabelGranularity;
  PBDataWriterWriteUint32Field();

  v77 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v9.receiver = self;
  v9.super_class = BMMomentsEventDataEvent;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMMomentsEventDataEventReadFrom(v5, fromCopy))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (NSString)description
{
  v24 = objc_alloc(MEMORY[0x1E696AEC0]);
  eventIdentifier = [(BMMomentsEventDataEvent *)self eventIdentifier];
  startDate = [(BMMomentsEventDataEvent *)self startDate];
  endDate = [(BMMomentsEventDataEvent *)self endDate];
  creationDate = [(BMMomentsEventDataEvent *)self creationDate];
  sourceCreationDate = [(BMMomentsEventDataEvent *)self sourceCreationDate];
  expirationDate = [(BMMomentsEventDataEvent *)self expirationDate];
  v67 = BMMomentsEventDataEventProviderTypeAsString([(BMMomentsEventDataEvent *)self provider]);
  v66 = BMMomentsEventDataEventCategoryTypeAsString([(BMMomentsEventDataEvent *)self category]);
  v65 = BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeAsString([(BMMomentsEventDataEvent *)self placeUserType]);
  v64 = BMMomentsEventDataGeoPOICategoryTypeAsString([(BMMomentsEventDataEvent *)self poiCategory]);
  v63 = BMMomentsEventDataPlaceDiscoveryTypeAsString([(BMMomentsEventDataEvent *)self placeDiscovery]);
  v62 = BMMomentsEventDataLocationModeTypeAsString([(BMMomentsEventDataEvent *)self locationMode]);
  v61 = BMMomentsEventDataWorkoutActivityTypeAsString([(BMMomentsEventDataEvent *)self workoutType]);
  workoutBundleID = [(BMMomentsEventDataEvent *)self workoutBundleID];
  v59 = BMMomentsEventDataGenreTypeAsString([(BMMomentsEventDataEvent *)self mediaGenre]);
  v58 = BMMomentsEventDataMediaTypeAsString([(BMMomentsEventDataEvent *)self mediaType]);
  v57 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent mediaRepetitions](self, "mediaRepetitions")}];
  v56 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent mediaSumTimePlayed](self, "mediaSumTimePlayed")}];
  v55 = BMMomentsEventDataSourceAppTypeAsString([(BMMomentsEventDataEvent *)self sourceParty]);
  mediaPlayerBundleID = [(BMMomentsEventDataEvent *)self mediaPlayerBundleID];
  v53 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numAudioMediaPlaySessionsPerDay](self, "numAudioMediaPlaySessionsPerDay")}];
  v3 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEvent *)self durationAudioMediaPlaySessionsPerDay];
  v54 = [v3 numberWithDouble:?];
  v52 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numVideoMediaPlaySessionsPerDay](self, "numVideoMediaPlaySessionsPerDay")}];
  v4 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEvent *)self durationVideoMediaPlaySessionsPerDay];
  v48 = [v4 numberWithDouble:?];
  v50 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numFirstPartyMediaPlaySessionsPerDay](self, "numFirstPartyMediaPlaySessionsPerDay")}];
  v46 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numThirdPartyMediaPlaySessionsPerDay](self, "numThirdPartyMediaPlaySessionsPerDay")}];
  v49 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numContacts](self, "numContacts")}];
  contactIDsInConversation = [(BMMomentsEventDataEvent *)self contactIDsInConversation];
  contactIDMostSignificantInConversation = [(BMMomentsEventDataEvent *)self contactIDMostSignificantInConversation];
  v5 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEvent *)self interactionContactScore];
  v45 = [v5 numberWithDouble:?];
  v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEvent textLikeMechanismIncluded](self, "textLikeMechanismIncluded")}];
  v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEvent callLikeMechanismIncluded](self, "callLikeMechanismIncluded")}];
  v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numTextLikeInteractions](self, "numTextLikeInteractions")}];
  v43 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numAudioLikeInteractions](self, "numAudioLikeInteractions")}];
  v42 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numVideoLikeInteractions](self, "numVideoLikeInteractions")}];
  v6 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEvent *)self totalDurationOfCallLikeInteractions];
  v40 = [v6 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEvent *)self minDurationOfCallLikeInteractions];
  v38 = [v7 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEvent *)self maxDurationOfCallLikeInteractions];
  v33 = [v8 numberWithDouble:?];
  v36 = BMMomentsEventDataPhotoMomentSourceTypeAsString([(BMMomentsEventDataEvent *)self photoMomentSource]);
  photoMomentInferences = [(BMMomentsEventDataEvent *)self photoMomentInferences];
  photoMomentHolidays = [(BMMomentsEventDataEvent *)self photoMomentHolidays];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numPhotoMomentHolidays](self, "numPhotoMomentHolidays")}];
  v34 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numPhotoMomentInferences](self, "numPhotoMomentInferences")}];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numPhotoMomentPublicEvents](self, "numPhotoMomentPublicEvents")}];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numPhotoMomentPersons](self, "numPhotoMomentPersons")}];
  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEvent isFamilyInPhotoMoment](self, "isFamilyInPhotoMoment")}];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEvent momentIncludesFavoritedAsset](self, "momentIncludesFavoritedAsset")}];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEvent momentIncludesVideo](self, "momentIncludesVideo")}];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEvent momentIncludesPhoto](self, "momentIncludesPhoto")}];
  v28 = BMMomentsEventDataSuggestedEventCategoryTypeAsString([(BMMomentsEventDataEvent *)self suggestedEventCategory]);
  v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numAttendees](self, "numAttendees")}];
  v26 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numtripParts](self, "numtripParts")}];
  v19 = BMMomentsEventDataTripModeTypeAsString([(BMMomentsEventDataEvent *)self tripMode]);
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numScoredTopics](self, "numScoredTopics")}];
  v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numItemAuthors](self, "numItemAuthors")}];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent numItemRecipients](self, "numItemRecipients")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEvent isGatheringComplete](self, "isGatheringComplete")}];
  gaPR = [(BMMomentsEventDataEvent *)self gaPR];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent pCount](self, "pCount")}];
  v12 = BMMomentsEventDataMapItemSourceTypeAsString([(BMMomentsEventDataEvent *)self mapItemSource]);
  v13 = BMMomentsEventDataVisitPlaceTypesAsString([(BMMomentsEventDataEvent *)self placeType]);
  v15 = BMMomentsEventDataPlaceInferenceGranularityTypeAsString([(BMMomentsEventDataEvent *)self placeLabelGranularity]);
  v25 = [v24 initWithFormat:@"BMMomentsEventDataEvent with eventIdentifier: %@, startDate: %@, endDate: %@, creationDate: %@, sourceCreationDate: %@, expirationDate: %@, provider: %@, category: %@, placeUserType: %@, poiCategory: %@, placeDiscovery: %@, locationMode: %@, workoutType: %@, workoutBundleID: %@, mediaGenre: %@, mediaType: %@, mediaRepetitions: %@, mediaSumTimePlayed: %@, sourceParty: %@, mediaPlayerBundleID: %@, numAudioMediaPlaySessionsPerDay: %@, durationAudioMediaPlaySessionsPerDay: %@, numVideoMediaPlaySessionsPerDay: %@, durationVideoMediaPlaySessionsPerDay: %@, numFirstPartyMediaPlaySessionsPerDay: %@, numThirdPartyMediaPlaySessionsPerDay: %@, numContacts: %@, contactIDsInConversation: %@, contactIDMostSignificantInConversation: %@, interactionContactScore: %@, textLikeMechanismIncluded: %@, callLikeMechanismIncluded: %@, numTextLikeInteractions: %@, numAudioLikeInteractions: %@, numVideoLikeInteractions: %@, totalDurationOfCallLikeInteractions: %@, minDurationOfCallLikeInteractions: %@, maxDurationOfCallLikeInteractions: %@, photoMomentSource: %@, photoMomentInferences: %@, photoMomentHolidays: %@, numPhotoMomentHolidays: %@, numPhotoMomentInferences: %@, numPhotoMomentPublicEvents: %@, numPhotoMomentPersons: %@, isFamilyInPhotoMoment: %@, momentIncludesFavoritedAsset: %@, momentIncludesVideo: %@, momentIncludesPhoto: %@, suggestedEventCategory: %@, numAttendees: %@, numtripParts: %@, tripMode: %@, numScoredTopics: %@, numItemAuthors: %@, numItemRecipients: %@, isGatheringComplete: %@, gaPR: %@, pCount: %@, mapItemSource: %@, placeType: %@, placeLabelGranularity: %@", eventIdentifier, startDate, endDate, creationDate, sourceCreationDate, expirationDate, v67, v66, v65, v64, v63, v62, v61, workoutBundleID, v59, v58, v57, v56, v55, mediaPlayerBundleID, v53, v54, v52, v48, v50, v46, v49, contactIDsInConversation, contactIDMostSignificantInConversation, v45, v39, v44, v37, v43, v42, v40, v38, v33, v36, photoMomentInferences, photoMomentHolidays, v22, v34, v21, v32, v31, v30, v29, v20, v28, v27, v26, v19, v18, v17, v16, v9, gaPR, v11, v12];

  return v25;
}

- (BMMomentsEventDataEvent)initWithEventIdentifier:(void *)identifier startDate:(void *)date endDate:(void *)endDate creationDate:(void *)creationDate sourceCreationDate:(void *)sourceCreationDate expirationDate:(void *)expirationDate provider:(int)provider category:(int)self0 placeUserType:(int)self1 poiCategory:(int)self2 placeDiscovery:(int)self3 locationMode:(int)self4 workoutType:(int)self5 workoutBundleID:(id)self6 mediaGenre:(int)self7 mediaType:(int)self8 mediaRepetitions:(id)self9 mediaSumTimePlayed:(id)played sourceParty:(int)party mediaPlayerBundleID:(id)iD numAudioMediaPlaySessionsPerDay:(id)day durationAudioMediaPlaySessionsPerDay:(id)perDay numVideoMediaPlaySessionsPerDay:(id)sessionsPerDay durationVideoMediaPlaySessionsPerDay:(id)playSessionsPerDay numFirstPartyMediaPlaySessionsPerDay:(id)mediaPlaySessionsPerDay numThirdPartyMediaPlaySessionsPerDay:(id)partyMediaPlaySessionsPerDay numContacts:(id)contacts contactIDsInConversation:(id)identifier0 contactIDMostSignificantInConversation:(id)identifier1 interactionContactScore:(id)identifier2 textLikeMechanismIncluded:(id)identifier3 callLikeMechanismIncluded:(id)identifier4 numTextLikeInteractions:(id)identifier5 numAudioLikeInteractions:(id)identifier6 numVideoLikeInteractions:(id)identifier7 totalDurationOfCallLikeInteractions:(id)identifier8 minDurationOfCallLikeInteractions:(id)identifier9 maxDurationOfCallLikeInteractions:(id)date0 photoMomentSource:(int)date1 photoMomentInferences:(id)date2 photoMomentHolidays:(id)date3 numPhotoMomentHolidays:(id)date4 numPhotoMomentInferences:(id)date5 numPhotoMomentPublicEvents:(id)date6 numPhotoMomentPersons:(id)date7 isFamilyInPhotoMoment:(id)date8 momentIncludesFavoritedAsset:(id)date9 momentIncludesVideo:(id)endDate0 momentIncludesPhoto:(id)endDate1 suggestedEventCategory:(int)endDate2 numAttendees:(id)endDate3 numtripParts:(id)endDate4 tripMode:(int)endDate5 numScoredTopics:(id)endDate6 numItemAuthors:(id)endDate7 numItemRecipients:(id)endDate8 isGatheringComplete:(id)endDate9 gaPR:(id)creationDate0 pCount:(id)creationDate1 mapItemSource:(int)creationDate2 placeType:(int)creationDate3 placeLabelGranularity:
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  creationDateCopy = creationDate;
  sourceCreationDateCopy = sourceCreationDate;
  expirationDateCopy = expirationDate;
  dCopy = d;
  repetitionsCopy = repetitions;
  playedCopy = played;
  iDCopy = iD;
  dayCopy = day;
  perDayCopy = perDay;
  sessionsPerDayCopy = sessionsPerDay;
  playSessionsPerDayCopy = playSessionsPerDay;
  mediaPlaySessionsPerDayCopy = mediaPlaySessionsPerDay;
  partyMediaPlaySessionsPerDayCopy = partyMediaPlaySessionsPerDay;
  contactsCopy = contacts;
  conversationCopy = conversation;
  inConversationCopy = inConversation;
  scoreCopy = score;
  includedCopy = included;
  mechanismIncludedCopy = mechanismIncluded;
  interactionsCopy = interactions;
  likeInteractionsCopy = likeInteractions;
  videoLikeInteractionsCopy = videoLikeInteractions;
  callLikeInteractionsCopy = callLikeInteractions;
  ofCallLikeInteractionsCopy = ofCallLikeInteractions;
  durationOfCallLikeInteractionsCopy = durationOfCallLikeInteractions;
  inferencesCopy = inferences;
  holidaysCopy = holidays;
  momentHolidaysCopy = momentHolidays;
  momentInferencesCopy = momentInferences;
  eventsCopy = events;
  personsCopy = persons;
  momentCopy = moment;
  assetCopy = asset;
  videoCopy = video;
  photoCopy = photo;
  attendeesCopy = attendees;
  partsCopy = parts;
  topicsCopy = topics;
  authorsCopy = authors;
  recipientsCopy = recipients;
  completeCopy = complete;
  rCopy = r;
  countCopy = count;
  v151.receiver = self;
  v151.super_class = BMMomentsEventDataEvent;
  v76 = [(BMEventBase *)&v151 init];

  if (v76)
  {
    v76->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v76->_eventIdentifier, identifier);
    if (dateCopy)
    {
      v76->_hasRaw_startDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v76->_hasRaw_startDate = 0;
      v77 = -1.0;
    }

    v76->_raw_startDate = v77;
    if (endDateCopy)
    {
      v76->_hasRaw_endDate = 1;
      [endDateCopy timeIntervalSince1970];
    }

    else
    {
      v76->_hasRaw_endDate = 0;
      v78 = -1.0;
    }

    v76->_raw_endDate = v78;
    if (creationDateCopy)
    {
      v76->_hasRaw_creationDate = 1;
      [creationDateCopy timeIntervalSince1970];
    }

    else
    {
      v76->_hasRaw_creationDate = 0;
      v79 = -1.0;
    }

    v76->_raw_creationDate = v79;
    if (sourceCreationDateCopy)
    {
      v76->_hasRaw_sourceCreationDate = 1;
      [sourceCreationDateCopy timeIntervalSince1970];
    }

    else
    {
      v76->_hasRaw_sourceCreationDate = 0;
      v80 = -1.0;
    }

    v76->_raw_sourceCreationDate = v80;
    if (expirationDateCopy)
    {
      v76->_hasRaw_expirationDate = 1;
      [expirationDateCopy timeIntervalSince1970];
    }

    else
    {
      v76->_hasRaw_expirationDate = 0;
      v81 = -1.0;
    }

    v76->_raw_expirationDate = v81;
    v76->_provider = provider;
    v76->_category = category;
    v76->_placeUserType = type;
    v76->_poiCategory = poiCategory;
    v76->_placeDiscovery = discovery;
    v76->_locationMode = mode;
    v76->_workoutType = workoutType;
    objc_storeStrong(&v76->_workoutBundleID, d);
    v76->_mediaGenre = genre;
    v76->_mediaType = mediaType;
    if (repetitionsCopy)
    {
      v76->_hasMediaRepetitions = 1;
      intValue = [repetitionsCopy intValue];
    }

    else
    {
      v76->_hasMediaRepetitions = 0;
      intValue = -1;
    }

    v76->_mediaRepetitions = intValue;
    if (playedCopy)
    {
      v76->_hasMediaSumTimePlayed = 1;
      intValue2 = [playedCopy intValue];
    }

    else
    {
      v76->_hasMediaSumTimePlayed = 0;
      intValue2 = -1;
    }

    v76->_mediaSumTimePlayed = intValue2;
    v76->_sourceParty = party;
    objc_storeStrong(&v76->_mediaPlayerBundleID, iD);
    if (dayCopy)
    {
      v76->_hasNumAudioMediaPlaySessionsPerDay = 1;
      intValue3 = [dayCopy intValue];
    }

    else
    {
      v76->_hasNumAudioMediaPlaySessionsPerDay = 0;
      intValue3 = -1;
    }

    v76->_numAudioMediaPlaySessionsPerDay = intValue3;
    if (perDayCopy)
    {
      v76->_hasDurationAudioMediaPlaySessionsPerDay = 1;
      [perDayCopy doubleValue];
    }

    else
    {
      v76->_hasDurationAudioMediaPlaySessionsPerDay = 0;
      v85 = -1.0;
    }

    v76->_durationAudioMediaPlaySessionsPerDay = v85;
    if (sessionsPerDayCopy)
    {
      v76->_hasNumVideoMediaPlaySessionsPerDay = 1;
      intValue4 = [sessionsPerDayCopy intValue];
    }

    else
    {
      v76->_hasNumVideoMediaPlaySessionsPerDay = 0;
      intValue4 = -1;
    }

    v76->_numVideoMediaPlaySessionsPerDay = intValue4;
    if (playSessionsPerDayCopy)
    {
      v76->_hasDurationVideoMediaPlaySessionsPerDay = 1;
      [playSessionsPerDayCopy doubleValue];
    }

    else
    {
      v76->_hasDurationVideoMediaPlaySessionsPerDay = 0;
      v87 = -1.0;
    }

    v76->_durationVideoMediaPlaySessionsPerDay = v87;
    if (mediaPlaySessionsPerDayCopy)
    {
      v76->_hasNumFirstPartyMediaPlaySessionsPerDay = 1;
      intValue5 = [mediaPlaySessionsPerDayCopy intValue];
    }

    else
    {
      v76->_hasNumFirstPartyMediaPlaySessionsPerDay = 0;
      intValue5 = -1;
    }

    v76->_numFirstPartyMediaPlaySessionsPerDay = intValue5;
    if (partyMediaPlaySessionsPerDayCopy)
    {
      v76->_hasNumThirdPartyMediaPlaySessionsPerDay = 1;
      intValue6 = [partyMediaPlaySessionsPerDayCopy intValue];
    }

    else
    {
      v76->_hasNumThirdPartyMediaPlaySessionsPerDay = 0;
      intValue6 = -1;
    }

    v76->_numThirdPartyMediaPlaySessionsPerDay = intValue6;
    if (contactsCopy)
    {
      v76->_hasNumContacts = 1;
      intValue7 = [contactsCopy intValue];
    }

    else
    {
      v76->_hasNumContacts = 0;
      intValue7 = -1;
    }

    v76->_numContacts = intValue7;
    objc_storeStrong(&v76->_contactIDsInConversation, conversation);
    objc_storeStrong(&v76->_contactIDMostSignificantInConversation, inConversation);
    if (scoreCopy)
    {
      v76->_hasInteractionContactScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v76->_hasInteractionContactScore = 0;
      v91 = -1.0;
    }

    v76->_interactionContactScore = v91;
    if (includedCopy)
    {
      v76->_hasTextLikeMechanismIncluded = 1;
      v76->_textLikeMechanismIncluded = [includedCopy BOOLValue];
    }

    else
    {
      v76->_hasTextLikeMechanismIncluded = 0;
      v76->_textLikeMechanismIncluded = 0;
    }

    if (mechanismIncludedCopy)
    {
      v76->_hasCallLikeMechanismIncluded = 1;
      v76->_callLikeMechanismIncluded = [mechanismIncludedCopy BOOLValue];
    }

    else
    {
      v76->_hasCallLikeMechanismIncluded = 0;
      v76->_callLikeMechanismIncluded = 0;
    }

    if (interactionsCopy)
    {
      v76->_hasNumTextLikeInteractions = 1;
      intValue8 = [interactionsCopy intValue];
    }

    else
    {
      v76->_hasNumTextLikeInteractions = 0;
      intValue8 = -1;
    }

    v76->_numTextLikeInteractions = intValue8;
    if (likeInteractionsCopy)
    {
      v76->_hasNumAudioLikeInteractions = 1;
      intValue9 = [likeInteractionsCopy intValue];
    }

    else
    {
      v76->_hasNumAudioLikeInteractions = 0;
      intValue9 = -1;
    }

    v76->_numAudioLikeInteractions = intValue9;
    if (videoLikeInteractionsCopy)
    {
      v76->_hasNumVideoLikeInteractions = 1;
      intValue10 = [videoLikeInteractionsCopy intValue];
    }

    else
    {
      v76->_hasNumVideoLikeInteractions = 0;
      intValue10 = -1;
    }

    v76->_numVideoLikeInteractions = intValue10;
    if (callLikeInteractionsCopy)
    {
      v76->_hasTotalDurationOfCallLikeInteractions = 1;
      [callLikeInteractionsCopy doubleValue];
    }

    else
    {
      v76->_hasTotalDurationOfCallLikeInteractions = 0;
      v95 = -1.0;
    }

    v76->_totalDurationOfCallLikeInteractions = v95;
    if (ofCallLikeInteractionsCopy)
    {
      v76->_hasMinDurationOfCallLikeInteractions = 1;
      [ofCallLikeInteractionsCopy doubleValue];
    }

    else
    {
      v76->_hasMinDurationOfCallLikeInteractions = 0;
      v96 = -1.0;
    }

    v76->_minDurationOfCallLikeInteractions = v96;
    if (durationOfCallLikeInteractionsCopy)
    {
      v76->_hasMaxDurationOfCallLikeInteractions = 1;
      [durationOfCallLikeInteractionsCopy doubleValue];
    }

    else
    {
      v76->_hasMaxDurationOfCallLikeInteractions = 0;
      v97 = -1.0;
    }

    v76->_maxDurationOfCallLikeInteractions = v97;
    v76->_photoMomentSource = source;
    objc_storeStrong(&v76->_photoMomentInferences, inferences);
    objc_storeStrong(&v76->_photoMomentHolidays, holidays);
    if (momentHolidaysCopy)
    {
      v76->_hasNumPhotoMomentHolidays = 1;
      intValue11 = [momentHolidaysCopy intValue];
    }

    else
    {
      v76->_hasNumPhotoMomentHolidays = 0;
      intValue11 = -1;
    }

    v76->_numPhotoMomentHolidays = intValue11;
    if (momentInferencesCopy)
    {
      v76->_hasNumPhotoMomentInferences = 1;
      intValue12 = [momentInferencesCopy intValue];
    }

    else
    {
      v76->_hasNumPhotoMomentInferences = 0;
      intValue12 = -1;
    }

    v76->_numPhotoMomentInferences = intValue12;
    if (eventsCopy)
    {
      v76->_hasNumPhotoMomentPublicEvents = 1;
      intValue13 = [eventsCopy intValue];
    }

    else
    {
      v76->_hasNumPhotoMomentPublicEvents = 0;
      intValue13 = -1;
    }

    v76->_numPhotoMomentPublicEvents = intValue13;
    if (personsCopy)
    {
      v76->_hasNumPhotoMomentPersons = 1;
      intValue14 = [personsCopy intValue];
    }

    else
    {
      v76->_hasNumPhotoMomentPersons = 0;
      intValue14 = -1;
    }

    v76->_numPhotoMomentPersons = intValue14;
    if (momentCopy)
    {
      v76->_hasIsFamilyInPhotoMoment = 1;
      v76->_isFamilyInPhotoMoment = [momentCopy BOOLValue];
    }

    else
    {
      v76->_hasIsFamilyInPhotoMoment = 0;
      v76->_isFamilyInPhotoMoment = 0;
    }

    if (assetCopy)
    {
      v76->_hasMomentIncludesFavoritedAsset = 1;
      v76->_momentIncludesFavoritedAsset = [assetCopy BOOLValue];
    }

    else
    {
      v76->_hasMomentIncludesFavoritedAsset = 0;
      v76->_momentIncludesFavoritedAsset = 0;
    }

    if (videoCopy)
    {
      v76->_hasMomentIncludesVideo = 1;
      v76->_momentIncludesVideo = [videoCopy BOOLValue];
    }

    else
    {
      v76->_hasMomentIncludesVideo = 0;
      v76->_momentIncludesVideo = 0;
    }

    if (photoCopy)
    {
      v76->_hasMomentIncludesPhoto = 1;
      v76->_momentIncludesPhoto = [photoCopy BOOLValue];
    }

    else
    {
      v76->_hasMomentIncludesPhoto = 0;
      v76->_momentIncludesPhoto = 0;
    }

    v76->_suggestedEventCategory = eventCategory;
    if (attendeesCopy)
    {
      v76->_hasNumAttendees = 1;
      intValue15 = [attendeesCopy intValue];
    }

    else
    {
      v76->_hasNumAttendees = 0;
      intValue15 = -1;
    }

    v76->_numAttendees = intValue15;
    if (partsCopy)
    {
      v76->_hasNumtripParts = 1;
      intValue16 = [partsCopy intValue];
    }

    else
    {
      v76->_hasNumtripParts = 0;
      intValue16 = -1;
    }

    v76->_numtripParts = intValue16;
    v76->_tripMode = tripMode;
    if (topicsCopy)
    {
      v76->_hasNumScoredTopics = 1;
      intValue17 = [topicsCopy intValue];
    }

    else
    {
      v76->_hasNumScoredTopics = 0;
      intValue17 = -1;
    }

    v76->_numScoredTopics = intValue17;
    if (authorsCopy)
    {
      v76->_hasNumItemAuthors = 1;
      intValue18 = [authorsCopy intValue];
    }

    else
    {
      v76->_hasNumItemAuthors = 0;
      intValue18 = -1;
    }

    v76->_numItemAuthors = intValue18;
    if (recipientsCopy)
    {
      v76->_hasNumItemRecipients = 1;
      intValue19 = [recipientsCopy intValue];
    }

    else
    {
      v76->_hasNumItemRecipients = 0;
      intValue19 = -1;
    }

    v76->_numItemRecipients = intValue19;
    if (completeCopy)
    {
      v76->_hasIsGatheringComplete = 1;
      v76->_isGatheringComplete = [completeCopy BOOLValue];
    }

    else
    {
      v76->_hasIsGatheringComplete = 0;
      v76->_isGatheringComplete = 0;
    }

    objc_storeStrong(&v76->_gaPR, r);
    if (countCopy)
    {
      v76->_hasPCount = 1;
      intValue20 = [countCopy intValue];
    }

    else
    {
      v76->_hasPCount = 0;
      intValue20 = -1;
    }

    v76->_pCount = intValue20;
    v76->_mapItemSource = itemSource;
    v76->_placeType = placeType;
    v76->_placeLabelGranularity = a64;
  }

  v108 = v76;

  return v108;
}

+ (id)protoFields
{
  v67[62] = *MEMORY[0x1E69E9840];
  v66 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventIdentifier" number:1 type:13 subMessageClass:0];
  v67[0] = v66;
  v65 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startDate" number:2 type:0 subMessageClass:0];
  v67[1] = v65;
  v64 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endDate" number:3 type:0 subMessageClass:0];
  v67[2] = v64;
  v63 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"creationDate" number:4 type:0 subMessageClass:0];
  v67[3] = v63;
  v62 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceCreationDate" number:5 type:0 subMessageClass:0];
  v67[4] = v62;
  v61 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"expirationDate" number:6 type:0 subMessageClass:0];
  v67[5] = v61;
  v60 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"provider" number:7 type:4 subMessageClass:0];
  v67[6] = v60;
  v59 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"category" number:8 type:4 subMessageClass:0];
  v67[7] = v59;
  v58 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placeUserType" number:9 type:4 subMessageClass:0];
  v67[8] = v58;
  v57 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"poiCategory" number:10 type:4 subMessageClass:0];
  v67[9] = v57;
  v56 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placeDiscovery" number:11 type:4 subMessageClass:0];
  v67[10] = v56;
  v55 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locationMode" number:12 type:4 subMessageClass:0];
  v67[11] = v55;
  v54 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"workoutType" number:13 type:4 subMessageClass:0];
  v67[12] = v54;
  v53 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"workoutBundleID" number:14 type:13 subMessageClass:0];
  v67[13] = v53;
  v52 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaGenre" number:15 type:4 subMessageClass:0];
  v67[14] = v52;
  v51 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaType" number:16 type:4 subMessageClass:0];
  v67[15] = v51;
  v50 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaRepetitions" number:17 type:2 subMessageClass:0];
  v67[16] = v50;
  v49 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaSumTimePlayed" number:18 type:2 subMessageClass:0];
  v67[17] = v49;
  v48 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceParty" number:19 type:4 subMessageClass:0];
  v67[18] = v48;
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaPlayerBundleID" number:20 type:13 subMessageClass:0];
  v67[19] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numAudioMediaPlaySessionsPerDay" number:21 type:2 subMessageClass:0];
  v67[20] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"durationAudioMediaPlaySessionsPerDay" number:22 type:0 subMessageClass:0];
  v67[21] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numVideoMediaPlaySessionsPerDay" number:23 type:2 subMessageClass:0];
  v67[22] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"durationVideoMediaPlaySessionsPerDay" number:24 type:0 subMessageClass:0];
  v67[23] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numFirstPartyMediaPlaySessionsPerDay" number:25 type:2 subMessageClass:0];
  v67[24] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numThirdPartyMediaPlaySessionsPerDay" number:26 type:2 subMessageClass:0];
  v67[25] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numContacts" number:27 type:2 subMessageClass:0];
  v67[26] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactIDsInConversation" number:28 type:13 subMessageClass:0];
  v67[27] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactIDMostSignificantInConversation" number:29 type:13 subMessageClass:0];
  v67[28] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interactionContactScore" number:30 type:0 subMessageClass:0];
  v67[29] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"textLikeMechanismIncluded" number:31 type:12 subMessageClass:0];
  v67[30] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"callLikeMechanismIncluded" number:32 type:12 subMessageClass:0];
  v67[31] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numTextLikeInteractions" number:33 type:2 subMessageClass:0];
  v67[32] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numAudioLikeInteractions" number:34 type:2 subMessageClass:0];
  v67[33] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numVideoLikeInteractions" number:35 type:2 subMessageClass:0];
  v67[34] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalDurationOfCallLikeInteractions" number:36 type:0 subMessageClass:0];
  v67[35] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"minDurationOfCallLikeInteractions" number:37 type:0 subMessageClass:0];
  v67[36] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maxDurationOfCallLikeInteractions" number:38 type:0 subMessageClass:0];
  v67[37] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photoMomentSource" number:39 type:4 subMessageClass:0];
  v67[38] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photoMomentInferences" number:40 type:14 subMessageClass:objc_opt_class()];
  v67[39] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photoMomentHolidays" number:41 type:13 subMessageClass:0];
  v67[40] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numPhotoMomentHolidays" number:42 type:2 subMessageClass:0];
  v67[41] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numPhotoMomentInferences" number:43 type:2 subMessageClass:0];
  v67[42] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numPhotoMomentPublicEvents" number:44 type:2 subMessageClass:0];
  v67[43] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numPhotoMomentPersons" number:45 type:2 subMessageClass:0];
  v67[44] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFamilyInPhotoMoment" number:46 type:12 subMessageClass:0];
  v67[45] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"momentIncludesFavoritedAsset" number:47 type:12 subMessageClass:0];
  v67[46] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"momentIncludesVideo" number:48 type:12 subMessageClass:0];
  v67[47] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"momentIncludesPhoto" number:49 type:12 subMessageClass:0];
  v67[48] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestedEventCategory" number:50 type:4 subMessageClass:0];
  v67[49] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numAttendees" number:51 type:2 subMessageClass:0];
  v67[50] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numtripParts" number:52 type:2 subMessageClass:0];
  v67[51] = v15;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tripMode" number:53 type:4 subMessageClass:0];
  v67[52] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numScoredTopics" number:54 type:2 subMessageClass:0];
  v67[53] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numItemAuthors" number:55 type:2 subMessageClass:0];
  v67[54] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numItemRecipients" number:56 type:2 subMessageClass:0];
  v67[55] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isGatheringComplete" number:57 type:12 subMessageClass:0];
  v67[56] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"gaPR" number:58 type:14 subMessageClass:objc_opt_class()];
  v67[57] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pCount" number:59 type:2 subMessageClass:0];
  v67[58] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mapItemSource" number:60 type:4 subMessageClass:0];
  v67[59] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placeType" number:61 type:4 subMessageClass:0];
  v67[60] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placeLabelGranularity" number:62 type:4 subMessageClass:0];
  v67[61] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:62];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)columns
{
  v67[62] = *MEMORY[0x1E69E9840];
  v66 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v65 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startDate" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v64 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endDate" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v63 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"creationDate" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:2];
  v62 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceCreationDate" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v61 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"expirationDate" dataType:3 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:2];
  v60 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"provider" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v59 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"category" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
  v58 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"placeUserType" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v56 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"poiCategory" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v57 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"placeDiscovery" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v54 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locationMode" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:4 convertedType:0];
  v55 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"workoutType" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:4 convertedType:0];
  v53 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"workoutBundleID" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v52 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaGenre" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:4 convertedType:0];
  v51 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaType" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:4 convertedType:0];
  v50 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaRepetitions" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:2 convertedType:0];
  v49 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaSumTimePlayed" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:2 convertedType:0];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceParty" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaPlayerBundleID" dataType:2 requestOnly:0 fieldNumber:20 protoDataType:13 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numAudioMediaPlaySessionsPerDay" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:2 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"durationAudioMediaPlaySessionsPerDay" dataType:1 requestOnly:0 fieldNumber:22 protoDataType:0 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numVideoMediaPlaySessionsPerDay" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:2 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"durationVideoMediaPlaySessionsPerDay" dataType:1 requestOnly:0 fieldNumber:24 protoDataType:0 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numFirstPartyMediaPlaySessionsPerDay" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:2 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numThirdPartyMediaPlaySessionsPerDay" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:2 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numContacts" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:2 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"contactIDsInConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_2262];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contactIDMostSignificantInConversation" dataType:2 requestOnly:0 fieldNumber:29 protoDataType:13 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interactionContactScore" dataType:1 requestOnly:0 fieldNumber:30 protoDataType:0 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"textLikeMechanismIncluded" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:12 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"callLikeMechanismIncluded" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:12 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numTextLikeInteractions" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:2 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numAudioLikeInteractions" dataType:0 requestOnly:0 fieldNumber:34 protoDataType:2 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numVideoLikeInteractions" dataType:0 requestOnly:0 fieldNumber:35 protoDataType:2 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalDurationOfCallLikeInteractions" dataType:1 requestOnly:0 fieldNumber:36 protoDataType:0 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"minDurationOfCallLikeInteractions" dataType:1 requestOnly:0 fieldNumber:37 protoDataType:0 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maxDurationOfCallLikeInteractions" dataType:1 requestOnly:0 fieldNumber:38 protoDataType:0 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"photoMomentSource" dataType:0 requestOnly:0 fieldNumber:39 protoDataType:4 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"photoMomentInferences_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_2264];
  v26 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"photoMomentHolidays_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_2266];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numPhotoMomentHolidays" dataType:0 requestOnly:0 fieldNumber:42 protoDataType:2 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numPhotoMomentInferences" dataType:0 requestOnly:0 fieldNumber:43 protoDataType:2 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numPhotoMomentPublicEvents" dataType:0 requestOnly:0 fieldNumber:44 protoDataType:2 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numPhotoMomentPersons" dataType:0 requestOnly:0 fieldNumber:45 protoDataType:2 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFamilyInPhotoMoment" dataType:0 requestOnly:0 fieldNumber:46 protoDataType:12 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"momentIncludesFavoritedAsset" dataType:0 requestOnly:0 fieldNumber:47 protoDataType:12 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"momentIncludesVideo" dataType:0 requestOnly:0 fieldNumber:48 protoDataType:12 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"momentIncludesPhoto" dataType:0 requestOnly:0 fieldNumber:49 protoDataType:12 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestedEventCategory" dataType:0 requestOnly:0 fieldNumber:50 protoDataType:4 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numAttendees" dataType:0 requestOnly:0 fieldNumber:51 protoDataType:2 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numtripParts" dataType:0 requestOnly:0 fieldNumber:52 protoDataType:2 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tripMode" dataType:0 requestOnly:0 fieldNumber:53 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numScoredTopics" dataType:0 requestOnly:0 fieldNumber:54 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numItemAuthors" dataType:0 requestOnly:0 fieldNumber:55 protoDataType:2 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numItemRecipients" dataType:0 requestOnly:0 fieldNumber:56 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isGatheringComplete" dataType:0 requestOnly:0 fieldNumber:57 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"gaPR_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_2268];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pCount" dataType:0 requestOnly:0 fieldNumber:59 protoDataType:2 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mapItemSource" dataType:0 requestOnly:0 fieldNumber:60 protoDataType:4 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"placeType" dataType:0 requestOnly:0 fieldNumber:61 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"placeLabelGranularity" dataType:0 requestOnly:0 fieldNumber:62 protoDataType:4 convertedType:0];
  v67[0] = v66;
  v67[1] = v65;
  v67[2] = v64;
  v67[3] = v63;
  v67[4] = v62;
  v67[5] = v61;
  v67[6] = v60;
  v67[7] = v59;
  v67[8] = v58;
  v67[9] = v56;
  v67[10] = v57;
  v67[11] = v54;
  v67[12] = v55;
  v67[13] = v53;
  v67[14] = v52;
  v67[15] = v51;
  v67[16] = v50;
  v67[17] = v49;
  v67[18] = v48;
  v67[19] = v47;
  v67[20] = v46;
  v67[21] = v45;
  v67[22] = v44;
  v67[23] = v43;
  v67[24] = v42;
  v67[25] = v41;
  v67[26] = v40;
  v67[27] = v39;
  v67[28] = v38;
  v67[29] = v37;
  v67[30] = v36;
  v67[31] = v35;
  v67[32] = v34;
  v67[33] = v33;
  v67[34] = v32;
  v67[35] = v31;
  v67[36] = v30;
  v67[37] = v29;
  v67[38] = v28;
  v67[39] = v27;
  v67[40] = v26;
  v67[41] = v25;
  v67[42] = v24;
  v67[43] = v23;
  v67[44] = v22;
  v67[45] = v21;
  v67[46] = v20;
  v67[47] = v19;
  v67[48] = v18;
  v67[49] = v17;
  v67[50] = v16;
  v67[51] = v15;
  v67[52] = v2;
  v67[53] = v3;
  v67[54] = v4;
  v67[55] = v14;
  v67[56] = v5;
  v67[57] = v13;
  v67[58] = v6;
  v67[59] = v7;
  v67[60] = v12;
  v67[61] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:62];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

id __34__BMMomentsEventDataEvent_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 gaPR];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __34__BMMomentsEventDataEvent_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _photoMomentHolidaysJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __34__BMMomentsEventDataEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _photoMomentInferencesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __34__BMMomentsEventDataEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _contactIDsInConversationJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMMomentsEventDataEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[34] = 0;
    }
  }

  return v4;
}

@end