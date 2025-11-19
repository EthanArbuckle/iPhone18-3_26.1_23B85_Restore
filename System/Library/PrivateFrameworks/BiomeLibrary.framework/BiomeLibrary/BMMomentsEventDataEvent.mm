@interface BMMomentsEventDataEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMomentsEventDataEvent)initWithEventIdentifier:(void *)a3 startDate:(void *)a4 endDate:(void *)a5 creationDate:(void *)a6 sourceCreationDate:(void *)a7 expirationDate:(void *)a8 provider:(int)a9 category:(int)a10 placeUserType:(int)a11 poiCategory:(int)a12 placeDiscovery:(int)a13 locationMode:(int)a14 workoutType:(int)a15 workoutBundleID:(id)a16 mediaGenre:(int)a17 mediaType:(int)a18 mediaRepetitions:(id)a19 mediaSumTimePlayed:(id)a20 sourceParty:(int)a21 mediaPlayerBundleID:(id)a22 numAudioMediaPlaySessionsPerDay:(id)a23 durationAudioMediaPlaySessionsPerDay:(id)a24 numVideoMediaPlaySessionsPerDay:(id)a25 durationVideoMediaPlaySessionsPerDay:(id)a26 numFirstPartyMediaPlaySessionsPerDay:(id)a27 numThirdPartyMediaPlaySessionsPerDay:(id)a28 numContacts:(id)a29 contactIDsInConversation:(id)a30 contactIDMostSignificantInConversation:(id)a31 interactionContactScore:(id)a32 textLikeMechanismIncluded:(id)a33 callLikeMechanismIncluded:(id)a34 numTextLikeInteractions:(id)a35 numAudioLikeInteractions:(id)a36 numVideoLikeInteractions:(id)a37 totalDurationOfCallLikeInteractions:(id)a38 minDurationOfCallLikeInteractions:(id)a39 maxDurationOfCallLikeInteractions:(id)a40 photoMomentSource:(int)a41 photoMomentInferences:(id)a42 photoMomentHolidays:(id)a43 numPhotoMomentHolidays:(id)a44 numPhotoMomentInferences:(id)a45 numPhotoMomentPublicEvents:(id)a46 numPhotoMomentPersons:(id)a47 isFamilyInPhotoMoment:(id)a48 momentIncludesFavoritedAsset:(id)a49 momentIncludesVideo:(id)a50 momentIncludesPhoto:(id)a51 suggestedEventCategory:(int)a52 numAttendees:(id)a53 numtripParts:(id)a54 tripMode:(int)a55 numScoredTopics:(id)a56 numItemAuthors:(id)a57 numItemRecipients:(id)a58 isGatheringComplete:(id)a59 gaPR:(id)a60 pCount:(id)a61 mapItemSource:(int)a62 placeType:(int)a63 placeLabelGranularity:;
- (BMMomentsEventDataEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)creationDate;
- (NSDate)endDate;
- (NSDate)expirationDate;
- (NSDate)sourceCreationDate;
- (NSDate)startDate;
- (NSString)description;
- (id)_contactIDsInConversationJSONArray;
- (id)_photoMomentHolidaysJSONArray;
- (id)_photoMomentInferencesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMomentsEventDataEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMomentsEventDataEvent *)self eventIdentifier];
    v7 = [v5 eventIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMomentsEventDataEvent *)self eventIdentifier];
      v10 = [v5 eventIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_236;
      }
    }

    v13 = [(BMMomentsEventDataEvent *)self startDate];
    v14 = [v5 startDate];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMMomentsEventDataEvent *)self startDate];
      v17 = [v5 startDate];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_236;
      }
    }

    v19 = [(BMMomentsEventDataEvent *)self endDate];
    v20 = [v5 endDate];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMMomentsEventDataEvent *)self endDate];
      v23 = [v5 endDate];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_236;
      }
    }

    v25 = [(BMMomentsEventDataEvent *)self creationDate];
    v26 = [v5 creationDate];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMMomentsEventDataEvent *)self creationDate];
      v29 = [v5 creationDate];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_236;
      }
    }

    v31 = [(BMMomentsEventDataEvent *)self sourceCreationDate];
    v32 = [v5 sourceCreationDate];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMMomentsEventDataEvent *)self sourceCreationDate];
      v35 = [v5 sourceCreationDate];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_236;
      }
    }

    v37 = [(BMMomentsEventDataEvent *)self expirationDate];
    v38 = [v5 expirationDate];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMMomentsEventDataEvent *)self expirationDate];
      v41 = [v5 expirationDate];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_236;
      }
    }

    v43 = [(BMMomentsEventDataEvent *)self provider];
    if (v43 != [v5 provider])
    {
      goto LABEL_236;
    }

    v44 = [(BMMomentsEventDataEvent *)self category];
    if (v44 != [v5 category])
    {
      goto LABEL_236;
    }

    v45 = [(BMMomentsEventDataEvent *)self placeUserType];
    if (v45 != [v5 placeUserType])
    {
      goto LABEL_236;
    }

    v46 = [(BMMomentsEventDataEvent *)self poiCategory];
    if (v46 != [v5 poiCategory])
    {
      goto LABEL_236;
    }

    v47 = [(BMMomentsEventDataEvent *)self placeDiscovery];
    if (v47 != [v5 placeDiscovery])
    {
      goto LABEL_236;
    }

    v48 = [(BMMomentsEventDataEvent *)self locationMode];
    if (v48 != [v5 locationMode])
    {
      goto LABEL_236;
    }

    v49 = [(BMMomentsEventDataEvent *)self workoutType];
    if (v49 != [v5 workoutType])
    {
      goto LABEL_236;
    }

    v50 = [(BMMomentsEventDataEvent *)self workoutBundleID];
    v51 = [v5 workoutBundleID];
    v52 = v51;
    if (v50 == v51)
    {
    }

    else
    {
      v53 = [(BMMomentsEventDataEvent *)self workoutBundleID];
      v54 = [v5 workoutBundleID];
      v55 = [v53 isEqual:v54];

      if (!v55)
      {
        goto LABEL_236;
      }
    }

    v56 = [(BMMomentsEventDataEvent *)self mediaGenre];
    if (v56 != [v5 mediaGenre])
    {
      goto LABEL_236;
    }

    v57 = [(BMMomentsEventDataEvent *)self mediaType];
    if (v57 != [v5 mediaType])
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

      v58 = [(BMMomentsEventDataEvent *)self mediaRepetitions];
      if (v58 != [v5 mediaRepetitions])
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

      v59 = [(BMMomentsEventDataEvent *)self mediaSumTimePlayed];
      if (v59 != [v5 mediaSumTimePlayed])
      {
        goto LABEL_236;
      }
    }

    v60 = [(BMMomentsEventDataEvent *)self sourceParty];
    if (v60 != [v5 sourceParty])
    {
      goto LABEL_236;
    }

    v61 = [(BMMomentsEventDataEvent *)self mediaPlayerBundleID];
    v62 = [v5 mediaPlayerBundleID];
    v63 = v62;
    if (v61 == v62)
    {
    }

    else
    {
      v64 = [(BMMomentsEventDataEvent *)self mediaPlayerBundleID];
      v65 = [v5 mediaPlayerBundleID];
      v66 = [v64 isEqual:v65];

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

      v67 = [(BMMomentsEventDataEvent *)self numAudioMediaPlaySessionsPerDay];
      if (v67 != [v5 numAudioMediaPlaySessionsPerDay])
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

      v71 = [(BMMomentsEventDataEvent *)self numVideoMediaPlaySessionsPerDay];
      if (v71 != [v5 numVideoMediaPlaySessionsPerDay])
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

      v75 = [(BMMomentsEventDataEvent *)self numFirstPartyMediaPlaySessionsPerDay];
      if (v75 != [v5 numFirstPartyMediaPlaySessionsPerDay])
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

      v76 = [(BMMomentsEventDataEvent *)self numThirdPartyMediaPlaySessionsPerDay];
      if (v76 != [v5 numThirdPartyMediaPlaySessionsPerDay])
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

      v77 = [(BMMomentsEventDataEvent *)self numContacts];
      if (v77 != [v5 numContacts])
      {
        goto LABEL_236;
      }
    }

    v78 = [(BMMomentsEventDataEvent *)self contactIDsInConversation];
    v79 = [v5 contactIDsInConversation];
    v80 = v79;
    if (v78 == v79)
    {
    }

    else
    {
      v81 = [(BMMomentsEventDataEvent *)self contactIDsInConversation];
      v82 = [v5 contactIDsInConversation];
      v83 = [v81 isEqual:v82];

      if (!v83)
      {
        goto LABEL_236;
      }
    }

    v84 = [(BMMomentsEventDataEvent *)self contactIDMostSignificantInConversation];
    v85 = [v5 contactIDMostSignificantInConversation];
    v86 = v85;
    if (v84 == v85)
    {
    }

    else
    {
      v87 = [(BMMomentsEventDataEvent *)self contactIDMostSignificantInConversation];
      v88 = [v5 contactIDMostSignificantInConversation];
      v89 = [v87 isEqual:v88];

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

      v93 = [(BMMomentsEventDataEvent *)self textLikeMechanismIncluded];
      if (v93 != [v5 textLikeMechanismIncluded])
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

      v94 = [(BMMomentsEventDataEvent *)self callLikeMechanismIncluded];
      if (v94 != [v5 callLikeMechanismIncluded])
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

      v95 = [(BMMomentsEventDataEvent *)self numTextLikeInteractions];
      if (v95 != [v5 numTextLikeInteractions])
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

      v96 = [(BMMomentsEventDataEvent *)self numAudioLikeInteractions];
      if (v96 != [v5 numAudioLikeInteractions])
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

      v97 = [(BMMomentsEventDataEvent *)self numVideoLikeInteractions];
      if (v97 != [v5 numVideoLikeInteractions])
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

    v107 = [(BMMomentsEventDataEvent *)self photoMomentSource];
    if (v107 != [v5 photoMomentSource])
    {
      goto LABEL_236;
    }

    v108 = [(BMMomentsEventDataEvent *)self photoMomentInferences];
    v109 = [v5 photoMomentInferences];
    v110 = v109;
    if (v108 == v109)
    {
    }

    else
    {
      v111 = [(BMMomentsEventDataEvent *)self photoMomentInferences];
      v112 = [v5 photoMomentInferences];
      v113 = [v111 isEqual:v112];

      if (!v113)
      {
        goto LABEL_236;
      }
    }

    v114 = [(BMMomentsEventDataEvent *)self photoMomentHolidays];
    v115 = [v5 photoMomentHolidays];
    v116 = v115;
    if (v114 == v115)
    {
    }

    else
    {
      v117 = [(BMMomentsEventDataEvent *)self photoMomentHolidays];
      v118 = [v5 photoMomentHolidays];
      v119 = [v117 isEqual:v118];

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

      v120 = [(BMMomentsEventDataEvent *)self numPhotoMomentHolidays];
      if (v120 != [v5 numPhotoMomentHolidays])
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

      v121 = [(BMMomentsEventDataEvent *)self numPhotoMomentInferences];
      if (v121 != [v5 numPhotoMomentInferences])
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

      v122 = [(BMMomentsEventDataEvent *)self numPhotoMomentPublicEvents];
      if (v122 != [v5 numPhotoMomentPublicEvents])
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

      v123 = [(BMMomentsEventDataEvent *)self numPhotoMomentPersons];
      if (v123 != [v5 numPhotoMomentPersons])
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

      v124 = [(BMMomentsEventDataEvent *)self isFamilyInPhotoMoment];
      if (v124 != [v5 isFamilyInPhotoMoment])
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

      v125 = [(BMMomentsEventDataEvent *)self momentIncludesFavoritedAsset];
      if (v125 != [v5 momentIncludesFavoritedAsset])
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

      v126 = [(BMMomentsEventDataEvent *)self momentIncludesVideo];
      if (v126 != [v5 momentIncludesVideo])
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

      v127 = [(BMMomentsEventDataEvent *)self momentIncludesPhoto];
      if (v127 != [v5 momentIncludesPhoto])
      {
        goto LABEL_236;
      }
    }

    v128 = [(BMMomentsEventDataEvent *)self suggestedEventCategory];
    if (v128 != [v5 suggestedEventCategory])
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

      v129 = [(BMMomentsEventDataEvent *)self numAttendees];
      if (v129 != [v5 numAttendees])
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

      v130 = [(BMMomentsEventDataEvent *)self numtripParts];
      if (v130 != [v5 numtripParts])
      {
        goto LABEL_236;
      }
    }

    v131 = [(BMMomentsEventDataEvent *)self tripMode];
    if (v131 != [v5 tripMode])
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

      v132 = [(BMMomentsEventDataEvent *)self numScoredTopics];
      if (v132 != [v5 numScoredTopics])
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

      v133 = [(BMMomentsEventDataEvent *)self numItemAuthors];
      if (v133 != [v5 numItemAuthors])
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

      v134 = [(BMMomentsEventDataEvent *)self numItemRecipients];
      if (v134 != [v5 numItemRecipients])
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

      v135 = [(BMMomentsEventDataEvent *)self isGatheringComplete];
      if (v135 != [v5 isGatheringComplete])
      {
        goto LABEL_236;
      }
    }

    v136 = [(BMMomentsEventDataEvent *)self gaPR];
    v137 = [v5 gaPR];
    v138 = v137;
    if (v136 == v137)
    {
    }

    else
    {
      v139 = [(BMMomentsEventDataEvent *)self gaPR];
      v140 = [v5 gaPR];
      v141 = [v139 isEqual:v140];

      if (!v141)
      {
        goto LABEL_236;
      }
    }

    if (!-[BMMomentsEventDataEvent hasPCount](self, "hasPCount") && ![v5 hasPCount] || -[BMMomentsEventDataEvent hasPCount](self, "hasPCount") && objc_msgSend(v5, "hasPCount") && (v142 = -[BMMomentsEventDataEvent pCount](self, "pCount"), v142 == objc_msgSend(v5, "pCount")))
    {
      v143 = [(BMMomentsEventDataEvent *)self mapItemSource];
      if (v143 == [v5 mapItemSource])
      {
        v144 = [(BMMomentsEventDataEvent *)self placeType];
        if (v144 == [v5 placeType])
        {
          v145 = [(BMMomentsEventDataEvent *)self placeLabelGranularity];
          v12 = v145 == [v5 placeLabelGranularity];
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
  v3 = [(BMMomentsEventDataEvent *)self eventIdentifier];
  v4 = [(BMMomentsEventDataEvent *)self startDate];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMMomentsEventDataEvent *)self startDate];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMMomentsEventDataEvent *)self endDate];
  if (v8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = [(BMMomentsEventDataEvent *)self endDate];
    [v10 timeIntervalSince1970];
    v11 = [v9 numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(BMMomentsEventDataEvent *)self creationDate];
  if (v12)
  {
    v13 = MEMORY[0x1E696AD98];
    v14 = [(BMMomentsEventDataEvent *)self creationDate];
    [v14 timeIntervalSince1970];
    v15 = [v13 numberWithDouble:?];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(BMMomentsEventDataEvent *)self sourceCreationDate];
  if (v16)
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = [(BMMomentsEventDataEvent *)self sourceCreationDate];
    [v18 timeIntervalSince1970];
    v19 = [v17 numberWithDouble:?];
  }

  else
  {
    v19 = 0;
  }

  v20 = [(BMMomentsEventDataEvent *)self expirationDate];
  if (v20)
  {
    v21 = MEMORY[0x1E696AD98];
    v22 = [(BMMomentsEventDataEvent *)self expirationDate];
    [v22 timeIntervalSince1970];
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
  v211 = [(BMMomentsEventDataEvent *)self workoutBundleID];
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
  v205 = [(BMMomentsEventDataEvent *)self mediaPlayerBundleID];
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

  v197 = [(BMMomentsEventDataEvent *)self _contactIDsInConversationJSONArray];
  v196 = [(BMMomentsEventDataEvent *)self contactIDMostSignificantInConversation];
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
  v185 = [(BMMomentsEventDataEvent *)self _photoMomentInferencesJSONArray];
  v184 = [(BMMomentsEventDataEvent *)self _photoMomentHolidaysJSONArray];
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

  v35 = [(BMMomentsEventDataEvent *)self gaPR];
  v167 = [v35 jsonDictionary];

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
  v37 = v3;
  if (!v3)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v155 = v37;
  v221[0] = v37;
  v220[1] = @"startDate";
  v38 = v7;
  if (!v7)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v154 = v38;
  v221[1] = v38;
  v220[2] = @"endDate";
  v39 = v11;
  if (!v11)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v153 = v39;
  v221[2] = v39;
  v220[3] = @"creationDate";
  v40 = v15;
  if (!v15)
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v152 = v40;
  v221[3] = v40;
  v220[4] = @"sourceCreationDate";
  v41 = v19;
  if (!v19)
  {
    v41 = [MEMORY[0x1E695DFB0] null];
  }

  v151 = v41;
  v221[4] = v41;
  v220[5] = @"expirationDate";
  v42 = v219;
  if (!v219)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v221[5] = v42;
  v220[6] = @"provider";
  v43 = v218;
  if (!v218)
  {
    v43 = [MEMORY[0x1E695DFB0] null];
  }

  v221[6] = v43;
  v220[7] = @"category";
  v44 = v217;
  if (!v217)
  {
    v44 = [MEMORY[0x1E695DFB0] null];
  }

  v221[7] = v44;
  v220[8] = @"placeUserType";
  v45 = v216;
  if (!v216)
  {
    v45 = [MEMORY[0x1E695DFB0] null];
  }

  v221[8] = v45;
  v220[9] = @"poiCategory";
  v46 = v215;
  if (!v215)
  {
    v46 = [MEMORY[0x1E695DFB0] null];
  }

  v160 = v46;
  v221[9] = v46;
  v220[10] = @"placeDiscovery";
  v47 = v214;
  if (!v214)
  {
    v47 = [MEMORY[0x1E695DFB0] null];
  }

  v157 = v15;
  v159 = v47;
  v221[10] = v47;
  v220[11] = @"locationMode";
  v48 = v213;
  if (!v213)
  {
    v48 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v3;
  v158 = v48;
  v221[11] = v48;
  v220[12] = @"workoutType";
  v50 = v212;
  if (!v212)
  {
    v50 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v50;
  v221[12] = v50;
  v220[13] = @"workoutBundleID";
  v52 = v211;
  if (!v211)
  {
    v52 = [MEMORY[0x1E695DFB0] null];
  }

  v148 = v52;
  v221[13] = v52;
  v220[14] = @"mediaGenre";
  v53 = v210;
  if (!v210)
  {
    v53 = [MEMORY[0x1E695DFB0] null];
  }

  v147 = v53;
  v221[14] = v53;
  v220[15] = @"mediaType";
  v54 = v209;
  if (!v209)
  {
    v54 = [MEMORY[0x1E695DFB0] null];
  }

  v146 = v54;
  v221[15] = v54;
  v220[16] = @"mediaRepetitions";
  v55 = v208;
  if (!v208)
  {
    v55 = [MEMORY[0x1E695DFB0] null];
  }

  v145 = v55;
  v221[16] = v55;
  v220[17] = @"mediaSumTimePlayed";
  v56 = v207;
  if (!v207)
  {
    v56 = [MEMORY[0x1E695DFB0] null];
  }

  v144 = v56;
  v221[17] = v56;
  v220[18] = @"sourceParty";
  v57 = v206;
  if (!v206)
  {
    v57 = [MEMORY[0x1E695DFB0] null];
  }

  v143 = v57;
  v221[18] = v57;
  v220[19] = @"mediaPlayerBundleID";
  v58 = v205;
  if (!v205)
  {
    v58 = [MEMORY[0x1E695DFB0] null];
  }

  v142 = v58;
  v221[19] = v58;
  v220[20] = @"numAudioMediaPlaySessionsPerDay";
  v59 = v204;
  if (!v204)
  {
    v59 = [MEMORY[0x1E695DFB0] null];
  }

  v141 = v59;
  v221[20] = v59;
  v220[21] = @"durationAudioMediaPlaySessionsPerDay";
  v60 = v203;
  if (!v203)
  {
    v60 = [MEMORY[0x1E695DFB0] null];
  }

  v140 = v60;
  v221[21] = v60;
  v220[22] = @"numVideoMediaPlaySessionsPerDay";
  v61 = v202;
  if (!v202)
  {
    v61 = [MEMORY[0x1E695DFB0] null];
  }

  v139 = v61;
  v221[22] = v61;
  v220[23] = @"durationVideoMediaPlaySessionsPerDay";
  v62 = v201;
  if (!v201)
  {
    v62 = [MEMORY[0x1E695DFB0] null];
  }

  v138 = v62;
  v221[23] = v62;
  v220[24] = @"numFirstPartyMediaPlaySessionsPerDay";
  v63 = v200;
  if (!v200)
  {
    v63 = [MEMORY[0x1E695DFB0] null];
  }

  v137 = v63;
  v221[24] = v63;
  v220[25] = @"numThirdPartyMediaPlaySessionsPerDay";
  v64 = v199;
  if (!v199)
  {
    v64 = [MEMORY[0x1E695DFB0] null];
  }

  v136 = v64;
  v221[25] = v64;
  v220[26] = @"numContacts";
  v65 = v198;
  if (!v198)
  {
    v65 = [MEMORY[0x1E695DFB0] null];
  }

  v135 = v65;
  v221[26] = v65;
  v220[27] = @"contactIDsInConversation";
  v66 = v197;
  if (!v197)
  {
    v66 = [MEMORY[0x1E695DFB0] null];
  }

  v134 = v66;
  v221[27] = v66;
  v220[28] = @"contactIDMostSignificantInConversation";
  v67 = v196;
  if (!v196)
  {
    v67 = [MEMORY[0x1E695DFB0] null];
  }

  v133 = v67;
  v221[28] = v67;
  v220[29] = @"interactionContactScore";
  v68 = v195;
  if (!v195)
  {
    v68 = [MEMORY[0x1E695DFB0] null];
  }

  v132 = v68;
  v221[29] = v68;
  v220[30] = @"textLikeMechanismIncluded";
  v69 = v194;
  if (!v194)
  {
    v69 = [MEMORY[0x1E695DFB0] null];
  }

  v131 = v69;
  v221[30] = v69;
  v220[31] = @"callLikeMechanismIncluded";
  v70 = v193;
  if (!v193)
  {
    v70 = [MEMORY[0x1E695DFB0] null];
  }

  v130 = v70;
  v221[31] = v70;
  v220[32] = @"numTextLikeInteractions";
  v71 = v192;
  if (!v192)
  {
    v71 = [MEMORY[0x1E695DFB0] null];
  }

  v129 = v71;
  v221[32] = v71;
  v220[33] = @"numAudioLikeInteractions";
  v72 = v191;
  if (!v191)
  {
    v72 = [MEMORY[0x1E695DFB0] null];
  }

  v128 = v72;
  v221[33] = v72;
  v220[34] = @"numVideoLikeInteractions";
  v73 = v190;
  if (!v190)
  {
    v73 = [MEMORY[0x1E695DFB0] null];
  }

  v127 = v73;
  v221[34] = v73;
  v220[35] = @"totalDurationOfCallLikeInteractions";
  v74 = v189;
  if (!v189)
  {
    v74 = [MEMORY[0x1E695DFB0] null];
  }

  v126 = v74;
  v221[35] = v74;
  v220[36] = @"minDurationOfCallLikeInteractions";
  v75 = v188;
  if (!v188)
  {
    v75 = [MEMORY[0x1E695DFB0] null];
  }

  v125 = v75;
  v221[36] = v75;
  v220[37] = @"maxDurationOfCallLikeInteractions";
  v76 = v187;
  if (!v187)
  {
    v76 = [MEMORY[0x1E695DFB0] null];
  }

  v124 = v76;
  v221[37] = v76;
  v220[38] = @"photoMomentSource";
  v77 = v186;
  if (!v186)
  {
    v77 = [MEMORY[0x1E695DFB0] null];
  }

  v123 = v77;
  v221[38] = v77;
  v220[39] = @"photoMomentInferences";
  v78 = v185;
  if (!v185)
  {
    v78 = [MEMORY[0x1E695DFB0] null];
  }

  v122 = v78;
  v221[39] = v78;
  v220[40] = @"photoMomentHolidays";
  v79 = v184;
  if (!v184)
  {
    v79 = [MEMORY[0x1E695DFB0] null];
  }

  v121 = v79;
  v221[40] = v79;
  v220[41] = @"numPhotoMomentHolidays";
  v80 = v183;
  if (!v183)
  {
    v80 = [MEMORY[0x1E695DFB0] null];
  }

  v120 = v80;
  v221[41] = v80;
  v220[42] = @"numPhotoMomentInferences";
  v81 = v182;
  if (!v182)
  {
    v81 = [MEMORY[0x1E695DFB0] null];
  }

  v119 = v81;
  v221[42] = v81;
  v220[43] = @"numPhotoMomentPublicEvents";
  v82 = v181;
  if (!v181)
  {
    v82 = [MEMORY[0x1E695DFB0] null];
  }

  v118 = v82;
  v221[43] = v82;
  v220[44] = @"numPhotoMomentPersons";
  v83 = v180;
  if (!v180)
  {
    v83 = [MEMORY[0x1E695DFB0] null];
  }

  v117 = v83;
  v221[44] = v83;
  v220[45] = @"isFamilyInPhotoMoment";
  v84 = v179;
  if (!v179)
  {
    v84 = [MEMORY[0x1E695DFB0] null];
  }

  v116 = v84;
  v221[45] = v84;
  v220[46] = @"momentIncludesFavoritedAsset";
  v85 = v178;
  if (!v178)
  {
    v85 = [MEMORY[0x1E695DFB0] null];
  }

  v115 = v85;
  v221[46] = v85;
  v220[47] = @"momentIncludesVideo";
  v86 = v177;
  if (!v177)
  {
    v86 = [MEMORY[0x1E695DFB0] null];
  }

  v114 = v86;
  v221[47] = v86;
  v220[48] = @"momentIncludesPhoto";
  v87 = v176;
  if (!v176)
  {
    v87 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = v87;
  v221[48] = v87;
  v220[49] = @"suggestedEventCategory";
  v88 = v175;
  if (!v175)
  {
    v88 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = v88;
  v221[49] = v88;
  v220[50] = @"numAttendees";
  v89 = v174;
  if (!v174)
  {
    v89 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = v89;
  v221[50] = v89;
  v220[51] = @"numtripParts";
  v90 = v173;
  if (!v173)
  {
    v90 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = v90;
  v221[51] = v90;
  v220[52] = @"tripMode";
  v91 = v172;
  if (!v172)
  {
    v91 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = v91;
  v221[52] = v91;
  v220[53] = @"numScoredTopics";
  v92 = v171;
  if (!v171)
  {
    v92 = [MEMORY[0x1E695DFB0] null];
  }

  v108 = v92;
  v221[53] = v92;
  v220[54] = @"numItemAuthors";
  v93 = v170;
  if (!v170)
  {
    v93 = [MEMORY[0x1E695DFB0] null];
  }

  v162 = v11;
  v107 = v93;
  v221[54] = v93;
  v220[55] = @"numItemRecipients";
  v94 = v169;
  if (!v169)
  {
    v94 = [MEMORY[0x1E695DFB0] null];
  }

  v150 = v43;
  v106 = v94;
  v221[55] = v94;
  v220[56] = @"isGatheringComplete";
  v95 = v168;
  if (!v168)
  {
    v95 = [MEMORY[0x1E695DFB0] null];
  }

  v149 = v44;
  v105 = v95;
  v221[56] = v95;
  v220[57] = @"gaPR";
  v96 = v167;
  if (!v167)
  {
    v96 = [MEMORY[0x1E695DFB0] null];
  }

  v161 = v45;
  v163 = v36;
  v221[57] = v96;
  v220[58] = @"pCount";
  v97 = v166;
  if (!v166)
  {
    v97 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = v19;
  v221[58] = v97;
  v220[59] = @"mapItemSource";
  v99 = v165;
  if (!v165)
  {
    v99 = [MEMORY[0x1E695DFB0] null];
  }

  v221[59] = v99;
  v220[60] = @"placeType";
  v100 = v164;
  if (!v164)
  {
    v100 = [MEMORY[0x1E695DFB0] null];
  }

  v221[60] = v100;
  v220[61] = @"placeLabelGranularity";
  v101 = v163;
  if (!v163)
  {
    v101 = [MEMORY[0x1E695DFB0] null];
  }

  v221[61] = v101;
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

  if (!v167)
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

  if (!v184)
  {

    v102 = v51;
  }

  if (!v185)
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

  if (!v196)
  {

    v102 = v51;
  }

  if (!v197)
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

  if (!v205)
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

  if (!v211)
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
  v4 = [(BMMomentsEventDataEvent *)self photoMomentHolidays];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v4 = [(BMMomentsEventDataEvent *)self photoMomentInferences];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v4 = [(BMMomentsEventDataEvent *)self contactIDsInConversation];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMomentsEventDataEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v704[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"eventIdentifier"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
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
        *a4 = v13;
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

  v7 = [v4 objectForKeyedSubscript:@"startDate"];
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
    if (a4)
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
      *a4 = v119;
      goto LABEL_707;
    }

    v12 = 0;
    v14 = 0;
    goto LABEL_708;
  }

  v546 = v7;
LABEL_16:
  v16 = [v4 objectForKeyedSubscript:@"endDate"];
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
    if (a4)
    {
      v120 = objc_alloc(MEMORY[0x1E696ABC0]);
      v121 = *MEMORY[0x1E698F240];
      v699 = *MEMORY[0x1E696A578];
      v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"endDate"];
      v700 = v71;
      v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v700 forKeys:&v699 count:1];
      v123 = v120;
      v21 = v122;
      v124 = [v123 initWithDomain:v121 code:2 userInfo:v122];
      v70 = 0;
      v14 = 0;
      *a4 = v124;
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
  v21 = [v4 objectForKeyedSubscript:@"creationDate"];
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
    v71 = a4;
    if (a4)
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
      v71 = 0;
      v14 = 0;
      *a4 = v149;
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
  v26 = [v4 objectForKeyedSubscript:@"sourceCreationDate"];
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
    if (!a4)
    {
      v543 = 0;
      v14 = 0;
      v12 = v546;
      v70 = v545;
      v71 = v542;
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
    *a4 = v154;
    v12 = v546;
    v70 = v545;
    goto LABEL_287;
  }

  v543 = v27;
LABEL_40:
  v31 = [v4 objectForKeyedSubscript:@"expirationDate"];
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

      if (a4)
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
        *a4 = v161;
        goto LABEL_251;
      }

      v540 = 0;
      v14 = 0;
      v12 = v546;
      v70 = v545;
      v21 = v551;
LABEL_287:
      v71 = v542;
      goto LABEL_704;
    }
  }

  v540 = 0;
LABEL_48:
  v36 = [v4 objectForKeyedSubscript:@"provider"];
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

      if (a4)
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
        *a4 = v74;
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
      v71 = v542;
      goto LABEL_703;
    }
  }

  v538 = 0;
  v21 = v551;
LABEL_56:
  v39 = [v4 objectForKeyedSubscript:@"category"];
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

      if (a4)
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
        *a4 = [v78 initWithDomain:v81 code:2 userInfo:?];
        v12 = v546;
        v70 = v545;
        v71 = v542;
        goto LABEL_701;
      }

      v41 = 0;
      v14 = 0;
      v12 = v546;
      v70 = v545;
LABEL_253:
      v71 = v542;
      goto LABEL_702;
    }
  }

  v41 = 0;
LABEL_64:
  v43 = [v4 objectForKeyedSubscript:@"placeUserType"];
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
      v526 = v4;
      v45 = v5;
      v46 = v7;
      v47 = v6;
      v48 = v41;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v535 = 0;
          v14 = 0;
          v12 = v546;
          v70 = v545;
          v71 = v542;
          v6 = v47;
          v7 = v46;
          v5 = v45;
          v4 = v526;
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
        *a4 = [v89 initWithDomain:v92 code:2 userInfo:?];
        goto LABEL_261;
      }

      v49 = v44;
      v535 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeFromString(v49)];

      v6 = v47;
      v7 = v46;
      v5 = v45;
      v4 = v526;
    }
  }

  else
  {
    v535 = 0;
  }

  v50 = [v4 objectForKeyedSubscript:@"poiCategory"];
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

      v526 = v4;
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
        v4 = v526;
        goto LABEL_79;
      }

      if (a4)
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
        *a4 = [v97 initWithDomain:v100 code:2 userInfo:?];
        goto LABEL_265;
      }

      v533 = 0;
      v14 = 0;
LABEL_261:
      v12 = v546;
      v70 = v545;
      v71 = v542;
      v41 = v48;
      v6 = v47;
      v7 = v46;
      v5 = v45;
      v4 = v526;
      goto LABEL_700;
    }
  }

  v533 = 0;
LABEL_80:
  v53 = [v4 objectForKeyedSubscript:@"placeDiscovery"];
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

      v526 = v4;
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
        v4 = v526;
        goto LABEL_87;
      }

      if (a4)
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
        *a4 = [v101 initWithDomain:v104 code:2 userInfo:?];
        goto LABEL_271;
      }

      v531 = 0;
      v14 = 0;
LABEL_265:
      v12 = v546;
      v70 = v545;
      v71 = v542;
      v41 = v48;
      v6 = v47;
      v7 = v46;
      v5 = v45;
      v4 = v526;
      goto LABEL_699;
    }
  }

  v531 = 0;
LABEL_88:
  v56 = [v4 objectForKeyedSubscript:@"locationMode"];
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

      v526 = v4;
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
        v4 = v526;
        goto LABEL_95;
      }

      if (a4)
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
        *a4 = [v109 initWithDomain:v112 code:2 userInfo:?];
        goto LABEL_275;
      }

      v529 = 0;
      v14 = 0;
LABEL_271:
      v12 = v546;
      v70 = v545;
      v71 = v542;
      v41 = v48;
      v6 = v47;
      v7 = v46;
      v5 = v45;
      v4 = v526;
      goto LABEL_698;
    }
  }

  v529 = 0;
LABEL_96:
  v59 = [v4 objectForKeyedSubscript:@"workoutType"];
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

      v526 = v4;
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
        v4 = v526;
        goto LABEL_103;
      }

      if (a4)
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
        *a4 = [v113 initWithDomain:v116 code:2 userInfo:?];
        v12 = v546;
        v70 = v545;
        v71 = v542;
        v6 = v47;
        v7 = v46;
        v5 = v45;
        v4 = v526;
        goto LABEL_696;
      }

      v524 = 0;
      v14 = 0;
LABEL_275:
      v12 = v546;
      v70 = v545;
      v71 = v542;
      v41 = v48;
      v6 = v47;
      v7 = v46;
      v5 = v45;
      v4 = v526;
      goto LABEL_697;
    }
  }

  v524 = 0;
LABEL_104:
  v62 = [v4 objectForKeyedSubscript:@"workoutBundleID"];
  v523 = v62;
  if (v62 && (v63 = v62, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
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
        *a4 = [v66 initWithDomain:v69 code:2 userInfo:?];
        v12 = v546;
        v70 = v545;
        v71 = v542;
        goto LABEL_695;
      }

      v522 = 0;
      v14 = 0;
      v12 = v546;
      v70 = v545;
      v71 = v542;
      goto LABEL_696;
    }

    v522 = v63;
  }

  else
  {
    v522 = 0;
  }

  v64 = [v4 objectForKeyedSubscript:@"mediaGenre"];
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
        if (a4)
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
          *a4 = [v162 initWithDomain:v165 code:2 userInfo:?];
          v12 = v546;
          v70 = v545;
          v71 = v542;
          goto LABEL_694;
        }

        v520 = 0;
        v14 = 0;
        v12 = v546;
        v70 = v545;
        v71 = v542;
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

  v76 = [v4 objectForKeyedSubscript:@"mediaType"];
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
        if (a4)
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
          *a4 = [v170 initWithDomain:v173 code:2 userInfo:?];
          v12 = v546;
          v70 = v545;
          v71 = v542;
          goto LABEL_693;
        }

        v518 = 0;
        v14 = 0;
        v12 = v546;
        v70 = v545;
        v71 = v542;
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

  v83 = [v4 objectForKeyedSubscript:@"mediaRepetitions"];
  v517 = v83;
  if (v83 && (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v516 = 0;
        v14 = 0;
        v12 = v546;
        v70 = v545;
        v71 = v542;
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
      *a4 = [v93 initWithDomain:v96 code:2 userInfo:?];
      goto LABEL_269;
    }

    v516 = v84;
  }

  else
  {
    v516 = 0;
  }

  v85 = [v4 objectForKeyedSubscript:@"mediaSumTimePlayed"];
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

      if (a4)
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
        *a4 = [v105 initWithDomain:v108 code:2 userInfo:?];
        v12 = v546;
        v70 = v545;
        v71 = v542;
        goto LABEL_691;
      }

      v514 = 0;
      v14 = 0;
LABEL_269:
      v12 = v546;
      v70 = v545;
      v71 = v542;
      goto LABEL_692;
    }
  }

  v514 = 0;
LABEL_148:
  v87 = [v4 objectForKeyedSubscript:@"sourceParty"];
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
        if (a4)
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
          *a4 = [v191 initWithDomain:v194 code:2 userInfo:?];
          v12 = v546;
          v70 = v545;
          v71 = v542;
          goto LABEL_690;
        }

        v512 = 0;
        v14 = 0;
        v12 = v546;
        v70 = v545;
        v71 = v542;
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

  v126 = [v4 objectForKeyedSubscript:@"mediaPlayerBundleID"];
  v511 = v126;
  if (v126 && (v127 = v126, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
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
        *a4 = [v155 initWithDomain:v158 code:2 userInfo:?];
        v12 = v546;
        v70 = v545;
        v71 = v542;
        goto LABEL_689;
      }

      v510 = 0;
      v14 = 0;
      v12 = v546;
      v70 = v545;
      v71 = v542;
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

  v128 = [v4 objectForKeyedSubscript:@"numAudioMediaPlaySessionsPerDay"];
  v509 = v128;
  if (v128 && (v129 = v128, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v507 = 0;
        v14 = 0;
        v12 = v546;
        v70 = v545;
        v71 = v542;
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
      *a4 = [v166 initWithDomain:v169 code:2 userInfo:?];
      goto LABEL_297;
    }

    v507 = v129;
  }

  else
  {
    v507 = 0;
  }

  v130 = [v4 objectForKeyedSubscript:@"durationAudioMediaPlaySessionsPerDay"];
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

      if (a4)
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
        *a4 = [v183 initWithDomain:v186 code:2 userInfo:?];
        goto LABEL_302;
      }

      v504 = 0;
      v14 = 0;
LABEL_297:
      v12 = v546;
      v70 = v545;
      v71 = v542;
      v41 = v506;
      goto LABEL_688;
    }
  }

  v504 = 0;
LABEL_187:
  v132 = [v4 objectForKeyedSubscript:@"numVideoMediaPlaySessionsPerDay"];
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

      if (a4)
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
        *a4 = [v187 initWithDomain:v190 code:2 userInfo:?];
        goto LABEL_306;
      }

      v502 = 0;
      v14 = 0;
LABEL_302:
      v12 = v546;
      v70 = v545;
      v71 = v542;
      v41 = v506;
      goto LABEL_687;
    }
  }

  v502 = 0;
LABEL_190:
  v134 = [v4 objectForKeyedSubscript:@"durationVideoMediaPlaySessionsPerDay"];
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

      if (a4)
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
        *a4 = [v195 initWithDomain:v198 code:2 userInfo:?];
        goto LABEL_314;
      }

      v500 = 0;
      v14 = 0;
LABEL_306:
      v12 = v546;
      v70 = v545;
      v71 = v542;
      v41 = v506;
      goto LABEL_686;
    }
  }

  v500 = 0;
LABEL_193:
  v136 = [v4 objectForKeyedSubscript:@"numFirstPartyMediaPlaySessionsPerDay"];
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

      if (a4)
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
        *a4 = [v204 initWithDomain:v207 code:2 userInfo:?];
        goto LABEL_345;
      }

      v498 = 0;
      v14 = 0;
LABEL_314:
      v12 = v546;
      v70 = v545;
      v71 = v542;
      v41 = v506;
      goto LABEL_685;
    }
  }

  v498 = 0;
LABEL_196:
  v138 = [v4 objectForKeyedSubscript:@"numThirdPartyMediaPlaySessionsPerDay"];
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

      if (a4)
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
        *a4 = [v210 initWithDomain:v213 code:2 userInfo:?];
LABEL_349:
        v12 = v546;
        v70 = v545;
        v71 = v542;
        v41 = v506;
        goto LABEL_683;
      }

      v495 = 0;
      v14 = 0;
LABEL_345:
      v12 = v546;
      v70 = v545;
      v71 = v542;
      v41 = v506;
      goto LABEL_684;
    }
  }

  v495 = 0;
LABEL_199:
  v140 = [v4 objectForKeyedSubscript:@"numContacts"];
  v494 = v140;
  if (!v140 || (v141 = v140, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v497 = 0;
    goto LABEL_202;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
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
      *a4 = [v215 initWithDomain:v218 code:2 userInfo:?];
      v12 = v546;
      v70 = v545;
      v71 = v542;
      v41 = v506;

      goto LABEL_682;
    }

    v497 = 0;
    v14 = 0;
    goto LABEL_349;
  }

  v497 = v141;
LABEL_202:
  v142 = [v4 objectForKeyedSubscript:@"contactIDsInConversation"];
  v143 = [MEMORY[0x1E695DFB0] null];
  v144 = [v142 isEqual:v143];

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
        if (!a4)
        {
          v14 = 0;
          v12 = v546;
          v70 = v545;
          v71 = v542;
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
        *a4 = [v219 initWithDomain:v222 code:2 userInfo:v221];
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
        if (a4)
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
          v71 = v542;
          v41 = v506;
          v14 = 0;
          *a4 = [v202 initWithDomain:v203 code:2 userInfo:?];
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
        v71 = v542;
        v41 = v506;
        goto LABEL_680;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
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

  v180 = [v4 objectForKeyedSubscript:@"contactIDMostSignificantInConversation"];
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
    v223 = [v4 objectForKeyedSubscript:@"interactionContactScore"];
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
      v225 = [v4 objectForKeyedSubscript:@"textLikeMechanismIncluded"];
      v484 = v225;
      if (!v225 || (v226 = v225, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v483 = 0;
LABEL_320:
        v227 = [v4 objectForKeyedSubscript:@"callLikeMechanismIncluded"];
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

          if (!a4)
          {
            v481 = 0;
            v14 = 0;
            v12 = v546;
            v70 = v545;
            v71 = v542;
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
          *a4 = [v255 initWithDomain:v258 code:2 userInfo:?];
        }

        else
        {
          v481 = 0;
LABEL_323:
          v229 = [v4 objectForKeyedSubscript:@"numTextLikeInteractions"];
          v478 = v229;
          if (!v229 || (v230 = v229, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v477 = 0;
LABEL_326:
            v231 = [v4 objectForKeyedSubscript:@"numAudioLikeInteractions"];
            v475 = v231;
            if (!v231 || (v232 = v231, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v474 = 0;
LABEL_329:
              v233 = [v4 objectForKeyedSubscript:@"numVideoLikeInteractions"];
              v473 = v233;
              if (!v233 || (v234 = v233, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v472 = 0;
LABEL_332:
                v235 = [v4 objectForKeyedSubscript:@"totalDurationOfCallLikeInteractions"];
                v471 = v235;
                if (!v235 || (v236 = v235, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v470 = 0;
LABEL_335:
                  v237 = [v4 objectForKeyedSubscript:@"minDurationOfCallLikeInteractions"];
                  v467 = v237;
                  if (!v237 || (v238 = v237, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v466 = 0;
LABEL_338:
                    v239 = [v4 objectForKeyedSubscript:@"maxDurationOfCallLikeInteractions"];
                    v465 = v239;
                    if (!v239 || (v240 = v239, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v464 = 0;
LABEL_341:
                      v241 = [v4 objectForKeyedSubscript:@"photoMomentSource"];
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
                        v284 = [v4 objectForKeyedSubscript:@"photoMomentInferences"];
                        v285 = [MEMORY[0x1E695DFB0] null];
                        v286 = [v284 isEqual:v285];

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
                              if (!a4)
                              {
                                v14 = 0;
                                v12 = v546;
                                v70 = v545;
                                v71 = v542;
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
                              *a4 = [v320 initWithDomain:v323 code:2 userInfo:?];
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
                            v299 = a4;
                            if (a4)
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
                            if (a4)
                            {
                              v308 = v295;
                              *a4 = v307;
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

                              v296 = [v4 objectForKeyedSubscript:@"photoMomentHolidays"];
                              v297 = [MEMORY[0x1E695DFB0] null];
                              v298 = [v296 isEqual:v297];

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
                                    if (a4)
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

                                    v315 = [v4 objectForKeyedSubscript:@"numPhotoMomentHolidays"];
                                    v461 = v315;
                                    if (v315 && (v316 = v315, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v460 = v316;
                                        goto LABEL_438;
                                      }

                                      if (!a4)
                                      {
                                        v460 = 0;
                                        v14 = 0;
                                        v6 = v493;
                                        v12 = v546;
                                        v70 = v545;
                                        v21 = v551;
                                        v71 = v542;
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
                                      *a4 = [v339 initWithDomain:v340 code:2 userInfo:?];
                                    }

                                    else
                                    {
                                      v460 = 0;
LABEL_438:
                                      v457 = [v4 objectForKeyedSubscript:@"numPhotoMomentInferences"];
                                      if (!v457 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v458 = 0;
LABEL_441:
                                        v456 = [v4 objectForKeyedSubscript:@"numPhotoMomentPublicEvents"];
                                        if (!v456 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v455 = 0;
LABEL_444:
                                          v454 = [v4 objectForKeyedSubscript:@"numPhotoMomentPersons"];
                                          if (!v454 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v453 = 0;
LABEL_447:
                                            v452 = [v4 objectForKeyedSubscript:@"isFamilyInPhotoMoment"];
                                            if (!v452 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v451 = 0;
LABEL_450:
                                              v317 = v4;
                                              v450 = [v4 objectForKeyedSubscript:@"momentIncludesFavoritedAsset"];
                                              if (v450 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                              {
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v448 = v450;
                                                  goto LABEL_453;
                                                }

                                                if (a4)
                                                {
                                                  v353 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v354 = *MEMORY[0x1E698F240];
                                                  v596 = *MEMORY[0x1E696A578];
                                                  v355 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"momentIncludesFavoritedAsset"];
                                                  v597 = v355;
                                                  v318 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v597 forKeys:&v596 count:1];
                                                  v448 = 0;
                                                  v14 = 0;
                                                  *a4 = [v353 initWithDomain:v354 code:2 userInfo:v318];
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
                                                v318 = [v4 objectForKeyedSubscript:@"momentIncludesVideo"];
                                                if (v318 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                {
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v445 = v318;
                                                    goto LABEL_456;
                                                  }

                                                  if (a4)
                                                  {
                                                    v356 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v357 = *MEMORY[0x1E698F240];
                                                    v594 = *MEMORY[0x1E696A578];
                                                    v446 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"momentIncludesVideo"];
                                                    v595 = v446;
                                                    v449 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v595 forKeys:&v594 count:1];
                                                    v445 = 0;
                                                    v14 = 0;
                                                    *a4 = [v356 initWithDomain:v357 code:2 userInfo:?];
                                                    goto LABEL_655;
                                                  }

                                                  v355 = 0;
                                                  v14 = 0;
                                                }

                                                else
                                                {
                                                  v445 = 0;
LABEL_456:
                                                  v449 = [v4 objectForKeyedSubscript:@"momentIncludesPhoto"];
                                                  if (v449 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                  {
                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v446 = v449;
                                                      goto LABEL_459;
                                                    }

                                                    if (a4)
                                                    {
                                                      v358 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v359 = *MEMORY[0x1E698F240];
                                                      v592 = *MEMORY[0x1E696A578];
                                                      v442 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"momentIncludesPhoto"];
                                                      v593 = v442;
                                                      v319 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v593 forKeys:&v592 count:1];
                                                      v446 = 0;
                                                      v14 = 0;
                                                      *a4 = [v358 initWithDomain:v359 code:2 userInfo:?];
                                                      goto LABEL_654;
                                                    }

                                                    v446 = 0;
                                                    v14 = 0;
                                                  }

                                                  else
                                                  {
                                                    v446 = 0;
LABEL_459:
                                                    v319 = [v4 objectForKeyedSubscript:@"suggestedEventCategory"];
                                                    if (!v319 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v442 = 0;
LABEL_533:
                                                      v447 = [v4 objectForKeyedSubscript:@"numAttendees"];
                                                      if (v447 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                      {
                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v441 = v447;
                                                          goto LABEL_536;
                                                        }

                                                        if (a4)
                                                        {
                                                          v361 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v362 = *MEMORY[0x1E698F240];
                                                          v588 = *MEMORY[0x1E696A578];
                                                          v439 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numAttendees"];
                                                          v589 = v439;
                                                          v444 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v589 forKeys:&v588 count:1];
                                                          v441 = 0;
                                                          v14 = 0;
                                                          *a4 = [v361 initWithDomain:v362 code:2 userInfo:?];
                                                          goto LABEL_652;
                                                        }

                                                        v441 = 0;
                                                        v14 = 0;
                                                      }

                                                      else
                                                      {
                                                        v441 = 0;
LABEL_536:
                                                        v444 = [v4 objectForKeyedSubscript:@"numtripParts"];
                                                        if (v444 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                        {
                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v439 = v444;
                                                            goto LABEL_539;
                                                          }

                                                          if (a4)
                                                          {
                                                            v363 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v364 = *MEMORY[0x1E698F240];
                                                            v586 = *MEMORY[0x1E696A578];
                                                            v437 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numtripParts"];
                                                            v587 = v437;
                                                            v443 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v587 forKeys:&v586 count:1];
                                                            v439 = 0;
                                                            v14 = 0;
                                                            *a4 = [v363 initWithDomain:v364 code:2 userInfo:?];
                                                            goto LABEL_651;
                                                          }

                                                          v439 = 0;
                                                          v14 = 0;
                                                        }

                                                        else
                                                        {
                                                          v439 = 0;
LABEL_539:
                                                          v443 = [v4 objectForKeyedSubscript:@"tripMode"];
                                                          if (!v443 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v437 = 0;
LABEL_559:
                                                            v440 = [v4 objectForKeyedSubscript:@"numScoredTopics"];
                                                            if (v440 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                            {
                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v434 = v440;
                                                                goto LABEL_562;
                                                              }

                                                              if (a4)
                                                              {
                                                                v369 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v370 = *MEMORY[0x1E698F240];
                                                                v582 = *MEMORY[0x1E696A578];
                                                                v433 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numScoredTopics"];
                                                                v583 = v433;
                                                                v438 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v583 forKeys:&v582 count:1];
                                                                v434 = 0;
                                                                v14 = 0;
                                                                *a4 = [v369 initWithDomain:v370 code:2 userInfo:?];
                                                                goto LABEL_649;
                                                              }

                                                              v434 = 0;
                                                              v14 = 0;
                                                            }

                                                            else
                                                            {
                                                              v434 = 0;
LABEL_562:
                                                              v438 = [v4 objectForKeyedSubscript:@"numItemAuthors"];
                                                              if (v438 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                              {
                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v433 = v438;
                                                                  goto LABEL_565;
                                                                }

                                                                if (a4)
                                                                {
                                                                  v371 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v372 = *MEMORY[0x1E698F240];
                                                                  v580 = *MEMORY[0x1E696A578];
                                                                  v431 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numItemAuthors"];
                                                                  v581 = v431;
                                                                  v435 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v581 forKeys:&v580 count:1];
                                                                  v433 = 0;
                                                                  v14 = 0;
                                                                  *a4 = [v371 initWithDomain:v372 code:2 userInfo:?];
                                                                  goto LABEL_648;
                                                                }

                                                                v433 = 0;
                                                                v14 = 0;
                                                              }

                                                              else
                                                              {
                                                                v433 = 0;
LABEL_565:
                                                                v435 = [v4 objectForKeyedSubscript:@"numItemRecipients"];
                                                                if (v435 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                {
                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v431 = v435;
                                                                    goto LABEL_568;
                                                                  }

                                                                  if (a4)
                                                                  {
                                                                    v375 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v376 = *MEMORY[0x1E698F240];
                                                                    v578 = *MEMORY[0x1E696A578];
                                                                    v430 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numItemRecipients"];
                                                                    v579 = v430;
                                                                    v432 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v579 forKeys:&v578 count:1];
                                                                    v431 = 0;
                                                                    v14 = 0;
                                                                    *a4 = [v375 initWithDomain:v376 code:2 userInfo:?];
                                                                    goto LABEL_647;
                                                                  }

                                                                  v431 = 0;
                                                                  v14 = 0;
                                                                }

                                                                else
                                                                {
                                                                  v431 = 0;
LABEL_568:
                                                                  v432 = [v4 objectForKeyedSubscript:@"isGatheringComplete"];
                                                                  if (v432 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                  {
                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v430 = v432;
                                                                      goto LABEL_571;
                                                                    }

                                                                    if (a4)
                                                                    {
                                                                      v377 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v378 = *MEMORY[0x1E698F240];
                                                                      v576 = *MEMORY[0x1E696A578];
                                                                      v366 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isGatheringComplete"];
                                                                      v577 = v366;
                                                                      v429 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v577 forKeys:&v576 count:1];
                                                                      v430 = 0;
                                                                      v14 = 0;
                                                                      *a4 = [v377 initWithDomain:v378 code:2 userInfo:?];
                                                                      goto LABEL_645;
                                                                    }

                                                                    v430 = 0;
                                                                    v14 = 0;
                                                                  }

                                                                  else
                                                                  {
                                                                    v430 = 0;
LABEL_571:
                                                                    v436 = [v4 objectForKeyedSubscript:@"gaPR"];
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

                                                                        if (a4)
                                                                        {
                                                                          v368 = v368;
                                                                          *a4 = v368;
                                                                        }

                                                                        v14 = 0;
                                                                        goto LABEL_645;
                                                                      }

                                                                      if (a4)
                                                                      {
                                                                        v428 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v381 = *MEMORY[0x1E698F240];
                                                                        v574 = *MEMORY[0x1E696A578];
                                                                        v429 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"gaPR"];
                                                                        v575 = v429;
                                                                        v382 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v575 forKeys:&v574 count:1];
                                                                        *a4 = [v428 initWithDomain:v381 code:2 userInfo:v382];

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

                                                                        if (a4)
                                                                        {
                                                                          v383 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v384 = *MEMORY[0x1E698F240];
                                                                          v572 = *MEMORY[0x1E696A578];
                                                                          v421 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"pCount"];
                                                                          v573 = v421;
                                                                          v427 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v573 forKeys:&v572 count:1];
                                                                          v422 = 0;
                                                                          v14 = 0;
                                                                          *a4 = [v383 initWithDomain:v384 code:2 userInfo:?];
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
                                                                                if (a4)
                                                                                {
                                                                                  v395 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v396 = *MEMORY[0x1E698F240];
                                                                                  v570 = *MEMORY[0x1E696A578];
                                                                                  v420 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"mapItemSource"];
                                                                                  v571 = v420;
                                                                                  v425 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v571 forKeys:&v570 count:1];
                                                                                  v421 = 0;
                                                                                  v14 = 0;
                                                                                  *a4 = [v395 initWithDomain:v396 code:2 userInfo:?];
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
                                                                            v550 = [v538 intValue];
                                                                            v419 = [v506 intValue];
                                                                            v418 = [v535 intValue];
                                                                            v417 = [v533 intValue];
                                                                            v416 = [v531 intValue];
                                                                            v415 = [v529 intValue];
                                                                            v414 = [v524 intValue];
                                                                            v413 = [v520 intValue];
                                                                            v412 = [v518 intValue];
                                                                            v411 = [v512 intValue];
                                                                            v410 = [v462 intValue];
                                                                            v389 = [v442 intValue];
                                                                            v390 = [v437 intValue];
                                                                            v391 = [v421 intValue];
                                                                            v392 = [v420 intValue];
                                                                            LODWORD(v409) = [v387 intValue];
                                                                            LODWORD(v408) = v390;
                                                                            LODWORD(v407) = v389;
                                                                            LODWORD(v406) = v410;
                                                                            LODWORD(v405) = v411;
                                                                            LODWORD(v404) = v414;
                                                                            v14 = [(BMMomentsEventDataEvent *)self initWithEventIdentifier:v493 startDate:v546 endDate:v545 creationDate:v542 sourceCreationDate:v543 expirationDate:v540 provider:__PAIR64__(v419 category:v550) placeUserType:__PAIR64__(v417 poiCategory:v418) placeDiscovery:__PAIR64__(v415 locationMode:v416) workoutType:v404 workoutBundleID:v522 mediaGenre:__PAIR64__(v412 mediaType:v413) mediaRepetitions:v516 mediaSumTimePlayed:v514 sourceParty:v405 mediaPlayerBundleID:v510 numAudioMediaPlaySessionsPerDay:v507 durationAudioMediaPlaySessionsPerDay:v504 numVideoMediaPlaySessionsPerDay:v502 durationVideoMediaPlaySessionsPerDay:v500 numFirstPartyMediaPlaySessionsPerDay:v498 numThirdPartyMediaPlaySessionsPerDay:v495 numContacts:v497 contactIDsInConversation:v527 contactIDMostSignificantInConversation:v489 interactionContactScore:v488 textLikeMechanismIncluded:v483 callLikeMechanismIncluded:v481 numTextLikeInteractions:v477 numAudioLikeInteractions:v474 numVideoLikeInteractions:v472 totalDurationOfCallLikeInteractions:v470 minDurationOfCallLikeInteractions:v466 maxDurationOfCallLikeInteractions:v464 photoMomentSource:v406 photoMomentInferences:v479 photoMomentHolidays:v469 numPhotoMomentHolidays:v460 numPhotoMomentInferences:v458 numPhotoMomentPublicEvents:v455 numPhotoMomentPersons:v453 isFamilyInPhotoMoment:v451 momentIncludesFavoritedAsset:v448 momentIncludesVideo:v445 momentIncludesPhoto:v446 suggestedEventCategory:v407 numAttendees:v441 numtripParts:v439 tripMode:v408 numScoredTopics:v434 numItemAuthors:v433 numItemRecipients:v431 isGatheringComplete:v430 gaPR:v429 pCount:v422 mapItemSource:__PAIR64__(v392 placeType:v391) placeLabelGranularity:v409];
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

                                                                            if (a4)
                                                                            {
                                                                              v400 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v401 = *MEMORY[0x1E698F240];
                                                                              v566 = *MEMORY[0x1E696A578];
                                                                              v402 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"placeLabelGranularity"];
                                                                              v567 = v402;
                                                                              v403 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v567 forKeys:&v566 count:1];
                                                                              *a4 = [v400 initWithDomain:v401 code:2 userInfo:v403];
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

                                                                        if (a4)
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
                                                                          *a4 = [v399 initWithDomain:v397 code:2 userInfo:?];
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

                                                          if (a4)
                                                          {
                                                            v379 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v380 = *MEMORY[0x1E698F240];
                                                            v584 = *MEMORY[0x1E696A578];
                                                            v434 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"tripMode"];
                                                            v585 = v434;
                                                            v440 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v585 forKeys:&v584 count:1];
                                                            v437 = 0;
                                                            v14 = 0;
                                                            *a4 = [v379 initWithDomain:v380 code:2 userInfo:?];
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

                                                    if (a4)
                                                    {
                                                      v373 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v374 = *MEMORY[0x1E698F240];
                                                      v590 = *MEMORY[0x1E696A578];
                                                      v441 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"suggestedEventCategory"];
                                                      v591 = v441;
                                                      v447 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v591 forKeys:&v590 count:1];
                                                      v442 = 0;
                                                      v14 = 0;
                                                      *a4 = [v373 initWithDomain:v374 code:2 userInfo:?];
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
                                                v4 = v317;
                                                v352 = v450;
                                                v349 = v448;
                                              }

LABEL_657:

                                              v12 = v546;
                                              v70 = v545;
                                              v21 = v551;
                                              v71 = v542;
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

                                            if (a4)
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
                                              *a4 = [v351 initWithDomain:v348 code:2 userInfo:v350];
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
                                            v71 = v542;
                                            v41 = v506;
                                            goto LABEL_658;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v453 = v454;
                                            goto LABEL_447;
                                          }

                                          if (a4)
                                          {
                                            v345 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v346 = *MEMORY[0x1E698F240];
                                            v600 = *MEMORY[0x1E696A578];
                                            v451 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numPhotoMomentPersons"];
                                            v601 = v451;
                                            v452 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v601 forKeys:&v600 count:1];
                                            v453 = 0;
                                            v14 = 0;
                                            *a4 = [v345 initWithDomain:v346 code:2 userInfo:?];
                                            goto LABEL_555;
                                          }

                                          v453 = 0;
                                          v14 = 0;
LABEL_551:
                                          v6 = v493;
                                          v12 = v546;
                                          v70 = v545;
                                          v21 = v551;
                                          v71 = v542;
                                          v41 = v506;
                                          goto LABEL_659;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v455 = v456;
                                          goto LABEL_444;
                                        }

                                        if (a4)
                                        {
                                          v343 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v344 = *MEMORY[0x1E698F240];
                                          v602 = *MEMORY[0x1E696A578];
                                          v453 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numPhotoMomentPublicEvents"];
                                          v603 = v453;
                                          v454 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v603 forKeys:&v602 count:1];
                                          v455 = 0;
                                          v14 = 0;
                                          *a4 = [v343 initWithDomain:v344 code:2 userInfo:?];
                                          goto LABEL_551;
                                        }

                                        v455 = 0;
                                        v14 = 0;
LABEL_529:
                                        v6 = v493;
                                        v12 = v546;
                                        v70 = v545;
                                        v21 = v551;
                                        v71 = v542;
                                        v41 = v506;
                                        goto LABEL_660;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v458 = v457;
                                        goto LABEL_441;
                                      }

                                      if (a4)
                                      {
                                        v341 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v342 = *MEMORY[0x1E698F240];
                                        v604 = *MEMORY[0x1E696A578];
                                        v455 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numPhotoMomentInferences"];
                                        v605 = v455;
                                        v456 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v605 forKeys:&v604 count:1];
                                        v458 = 0;
                                        v14 = 0;
                                        *a4 = [v341 initWithDomain:v342 code:2 userInfo:?];
                                        goto LABEL_529;
                                      }

                                      v458 = 0;
                                      v14 = 0;
                                    }

                                    v6 = v493;
                                    v12 = v546;
                                    v70 = v545;
                                    v21 = v551;
                                    v71 = v542;
                                    v41 = v506;
                                    goto LABEL_661;
                                  }
                                }

                                if (a4)
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
                                  v71 = v542;
                                  v41 = v506;
                                  v14 = 0;
                                  *a4 = [v327 initWithDomain:v328 code:2 userInfo:?];
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
                                v71 = v542;
                                v41 = v506;
                                goto LABEL_664;
                              }

                              if (!v296 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v493 = v6;
                                goto LABEL_426;
                              }

                              v468 = v296;
                              if (a4)
                              {
                                v336 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v337 = *MEMORY[0x1E698F240];
                                v613 = *MEMORY[0x1E696A578];
                                v469 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"photoMomentHolidays"];
                                v614 = v469;
                                v338 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v614 forKeys:&v613 count:1];
                                v14 = 0;
                                *a4 = [v336 initWithDomain:v337 code:2 userInfo:v338];
                                v306 = v338;
                                goto LABEL_421;
                              }

                              v14 = 0;
                              v12 = v546;
                              v70 = v545;
                              v21 = v551;
LABEL_468:
                              v71 = v542;
                              goto LABEL_665;
                            }

                            goto LABEL_403;
                          }
                        }

                        v299 = a4;
                        if (!a4)
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
                        *v299 = [v303 initWithDomain:v305 code:2 userInfo:v302];
                        v306 = v302;
                        v468 = v476;
                        v6 = v289;
                        v12 = v546;
                        v70 = v545;
LABEL_422:
                        v71 = v542;
                        goto LABEL_664;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v283 = v242;
                        v462 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataPhotoMomentSourceTypeFromString(v283)];

                        goto LABEL_396;
                      }

                      if (a4)
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
                        *a4 = v333;
                        v12 = v546;
                        v70 = v545;
                        v71 = v542;

                        goto LABEL_667;
                      }

                      v462 = 0;
                      v14 = 0;
LABEL_491:
                      v12 = v546;
                      v70 = v545;
                      v71 = v542;
                      goto LABEL_668;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v464 = v240;
                      goto LABEL_341;
                    }

                    if (a4)
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
                      *a4 = [v279 initWithDomain:v282 code:2 userInfo:?];
                      goto LABEL_491;
                    }

                    v464 = 0;
                    v14 = 0;
LABEL_483:
                    v12 = v546;
                    v70 = v545;
                    v71 = v542;
                    goto LABEL_669;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v466 = v238;
                    goto LABEL_338;
                  }

                  if (a4)
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
                    *a4 = [v275 initWithDomain:v278 code:2 userInfo:?];
                    goto LABEL_483;
                  }

                  v466 = 0;
                  v14 = 0;
LABEL_474:
                  v12 = v546;
                  v70 = v545;
                  v71 = v542;
                  goto LABEL_670;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v470 = v236;
                  goto LABEL_335;
                }

                if (a4)
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
                  *a4 = [v271 initWithDomain:v274 code:2 userInfo:?];
                  goto LABEL_474;
                }

                v470 = 0;
                v14 = 0;
LABEL_472:
                v12 = v546;
                v70 = v545;
                v71 = v542;
                goto LABEL_671;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v472 = v234;
                goto LABEL_332;
              }

              if (a4)
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
                *a4 = [v267 initWithDomain:v270 code:2 userInfo:?];
                goto LABEL_472;
              }

              v472 = 0;
              v14 = 0;
LABEL_470:
              v12 = v546;
              v70 = v545;
              v71 = v542;
              goto LABEL_672;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v474 = v232;
              goto LABEL_329;
            }

            if (a4)
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
              *a4 = [v263 initWithDomain:v266 code:2 userInfo:?];
              goto LABEL_470;
            }

            v474 = 0;
            v14 = 0;
LABEL_465:
            v12 = v546;
            v70 = v545;
            v71 = v542;
            goto LABEL_673;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v477 = v230;
            goto LABEL_326;
          }

          if (a4)
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
            *a4 = [v259 initWithDomain:v262 code:2 userInfo:?];
            goto LABEL_465;
          }

          v477 = 0;
          v14 = 0;
        }

        v12 = v546;
        v70 = v545;
        v71 = v542;
        goto LABEL_674;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v483 = v226;
        goto LABEL_320;
      }

      if (a4)
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
        *a4 = [v251 initWithDomain:v254 code:2 userInfo:?];
        v12 = v546;
        v70 = v545;
        v71 = v542;
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

      if (!a4)
      {
        v488 = 0;
        v14 = 0;
        v12 = v546;
        v70 = v545;
        v71 = v542;
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
      *a4 = [v247 initWithDomain:v250 code:2 userInfo:?];
    }

    v12 = v546;
    v70 = v545;
    v71 = v542;
    v41 = v506;
    goto LABEL_676;
  }

  v6 = v491;
  v41 = v506;
  if (a4)
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
    *a4 = [v243 initWithDomain:v246 code:2 userInfo:?];
    v12 = v546;
    v70 = v545;
    v71 = v542;

    goto LABEL_678;
  }

  v489 = 0;
  v14 = 0;
  v12 = v546;
  v70 = v545;
  v71 = v542;
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
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v94 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        [v50 writeTo:v4];
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
    [(BMMomentsEventDataPR *)self->_gaPR writeTo:v4, v78];
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BMMomentsEventDataEvent;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMMomentsEventDataEventReadFrom(v5, v4))
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
  v73 = [(BMMomentsEventDataEvent *)self eventIdentifier];
  v72 = [(BMMomentsEventDataEvent *)self startDate];
  v71 = [(BMMomentsEventDataEvent *)self endDate];
  v70 = [(BMMomentsEventDataEvent *)self creationDate];
  v69 = [(BMMomentsEventDataEvent *)self sourceCreationDate];
  v68 = [(BMMomentsEventDataEvent *)self expirationDate];
  v67 = BMMomentsEventDataEventProviderTypeAsString([(BMMomentsEventDataEvent *)self provider]);
  v66 = BMMomentsEventDataEventCategoryTypeAsString([(BMMomentsEventDataEvent *)self category]);
  v65 = BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeAsString([(BMMomentsEventDataEvent *)self placeUserType]);
  v64 = BMMomentsEventDataGeoPOICategoryTypeAsString([(BMMomentsEventDataEvent *)self poiCategory]);
  v63 = BMMomentsEventDataPlaceDiscoveryTypeAsString([(BMMomentsEventDataEvent *)self placeDiscovery]);
  v62 = BMMomentsEventDataLocationModeTypeAsString([(BMMomentsEventDataEvent *)self locationMode]);
  v61 = BMMomentsEventDataWorkoutActivityTypeAsString([(BMMomentsEventDataEvent *)self workoutType]);
  v60 = [(BMMomentsEventDataEvent *)self workoutBundleID];
  v59 = BMMomentsEventDataGenreTypeAsString([(BMMomentsEventDataEvent *)self mediaGenre]);
  v58 = BMMomentsEventDataMediaTypeAsString([(BMMomentsEventDataEvent *)self mediaType]);
  v57 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent mediaRepetitions](self, "mediaRepetitions")}];
  v56 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent mediaSumTimePlayed](self, "mediaSumTimePlayed")}];
  v55 = BMMomentsEventDataSourceAppTypeAsString([(BMMomentsEventDataEvent *)self sourceParty]);
  v51 = [(BMMomentsEventDataEvent *)self mediaPlayerBundleID];
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
  v47 = [(BMMomentsEventDataEvent *)self contactIDsInConversation];
  v41 = [(BMMomentsEventDataEvent *)self contactIDMostSignificantInConversation];
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
  v23 = [(BMMomentsEventDataEvent *)self photoMomentInferences];
  v35 = [(BMMomentsEventDataEvent *)self photoMomentHolidays];
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
  v10 = [(BMMomentsEventDataEvent *)self gaPR];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEvent pCount](self, "pCount")}];
  v12 = BMMomentsEventDataMapItemSourceTypeAsString([(BMMomentsEventDataEvent *)self mapItemSource]);
  v13 = BMMomentsEventDataVisitPlaceTypesAsString([(BMMomentsEventDataEvent *)self placeType]);
  v15 = BMMomentsEventDataPlaceInferenceGranularityTypeAsString([(BMMomentsEventDataEvent *)self placeLabelGranularity]);
  v25 = [v24 initWithFormat:@"BMMomentsEventDataEvent with eventIdentifier: %@, startDate: %@, endDate: %@, creationDate: %@, sourceCreationDate: %@, expirationDate: %@, provider: %@, category: %@, placeUserType: %@, poiCategory: %@, placeDiscovery: %@, locationMode: %@, workoutType: %@, workoutBundleID: %@, mediaGenre: %@, mediaType: %@, mediaRepetitions: %@, mediaSumTimePlayed: %@, sourceParty: %@, mediaPlayerBundleID: %@, numAudioMediaPlaySessionsPerDay: %@, durationAudioMediaPlaySessionsPerDay: %@, numVideoMediaPlaySessionsPerDay: %@, durationVideoMediaPlaySessionsPerDay: %@, numFirstPartyMediaPlaySessionsPerDay: %@, numThirdPartyMediaPlaySessionsPerDay: %@, numContacts: %@, contactIDsInConversation: %@, contactIDMostSignificantInConversation: %@, interactionContactScore: %@, textLikeMechanismIncluded: %@, callLikeMechanismIncluded: %@, numTextLikeInteractions: %@, numAudioLikeInteractions: %@, numVideoLikeInteractions: %@, totalDurationOfCallLikeInteractions: %@, minDurationOfCallLikeInteractions: %@, maxDurationOfCallLikeInteractions: %@, photoMomentSource: %@, photoMomentInferences: %@, photoMomentHolidays: %@, numPhotoMomentHolidays: %@, numPhotoMomentInferences: %@, numPhotoMomentPublicEvents: %@, numPhotoMomentPersons: %@, isFamilyInPhotoMoment: %@, momentIncludesFavoritedAsset: %@, momentIncludesVideo: %@, momentIncludesPhoto: %@, suggestedEventCategory: %@, numAttendees: %@, numtripParts: %@, tripMode: %@, numScoredTopics: %@, numItemAuthors: %@, numItemRecipients: %@, isGatheringComplete: %@, gaPR: %@, pCount: %@, mapItemSource: %@, placeType: %@, placeLabelGranularity: %@", v73, v72, v71, v70, v69, v68, v67, v66, v65, v64, v63, v62, v61, v60, v59, v58, v57, v56, v55, v51, v53, v54, v52, v48, v50, v46, v49, v47, v41, v45, v39, v44, v37, v43, v42, v40, v38, v33, v36, v23, v35, v22, v34, v21, v32, v31, v30, v29, v20, v28, v27, v26, v19, v18, v17, v16, v9, v10, v11, v12];

  return v25;
}

- (BMMomentsEventDataEvent)initWithEventIdentifier:(void *)a3 startDate:(void *)a4 endDate:(void *)a5 creationDate:(void *)a6 sourceCreationDate:(void *)a7 expirationDate:(void *)a8 provider:(int)a9 category:(int)a10 placeUserType:(int)a11 poiCategory:(int)a12 placeDiscovery:(int)a13 locationMode:(int)a14 workoutType:(int)a15 workoutBundleID:(id)a16 mediaGenre:(int)a17 mediaType:(int)a18 mediaRepetitions:(id)a19 mediaSumTimePlayed:(id)a20 sourceParty:(int)a21 mediaPlayerBundleID:(id)a22 numAudioMediaPlaySessionsPerDay:(id)a23 durationAudioMediaPlaySessionsPerDay:(id)a24 numVideoMediaPlaySessionsPerDay:(id)a25 durationVideoMediaPlaySessionsPerDay:(id)a26 numFirstPartyMediaPlaySessionsPerDay:(id)a27 numThirdPartyMediaPlaySessionsPerDay:(id)a28 numContacts:(id)a29 contactIDsInConversation:(id)a30 contactIDMostSignificantInConversation:(id)a31 interactionContactScore:(id)a32 textLikeMechanismIncluded:(id)a33 callLikeMechanismIncluded:(id)a34 numTextLikeInteractions:(id)a35 numAudioLikeInteractions:(id)a36 numVideoLikeInteractions:(id)a37 totalDurationOfCallLikeInteractions:(id)a38 minDurationOfCallLikeInteractions:(id)a39 maxDurationOfCallLikeInteractions:(id)a40 photoMomentSource:(int)a41 photoMomentInferences:(id)a42 photoMomentHolidays:(id)a43 numPhotoMomentHolidays:(id)a44 numPhotoMomentInferences:(id)a45 numPhotoMomentPublicEvents:(id)a46 numPhotoMomentPersons:(id)a47 isFamilyInPhotoMoment:(id)a48 momentIncludesFavoritedAsset:(id)a49 momentIncludesVideo:(id)a50 momentIncludesPhoto:(id)a51 suggestedEventCategory:(int)a52 numAttendees:(id)a53 numtripParts:(id)a54 tripMode:(int)a55 numScoredTopics:(id)a56 numItemAuthors:(id)a57 numItemRecipients:(id)a58 isGatheringComplete:(id)a59 gaPR:(id)a60 pCount:(id)a61 mapItemSource:(int)a62 placeType:(int)a63 placeLabelGranularity:
{
  v118 = a3;
  v68 = a4;
  v69 = a5;
  v70 = a6;
  v71 = a7;
  v150 = a8;
  v72 = a16;
  v148 = a19;
  v147 = a20;
  v117 = a22;
  v73 = a23;
  v74 = a24;
  v75 = a25;
  v146 = a26;
  v145 = a27;
  v144 = a28;
  v143 = a29;
  v116 = a30;
  v115 = a31;
  v142 = a32;
  v141 = a33;
  v140 = a34;
  v139 = a35;
  v138 = a36;
  v137 = a37;
  v136 = a38;
  v135 = a39;
  v134 = a40;
  v114 = a42;
  v113 = a43;
  v133 = a44;
  v132 = a45;
  v131 = a46;
  v130 = a47;
  v129 = a48;
  v128 = a49;
  v127 = a50;
  v126 = a51;
  v125 = a53;
  v124 = a54;
  v123 = a56;
  v122 = a57;
  v121 = a58;
  v120 = a59;
  v112 = a60;
  v119 = a61;
  v151.receiver = a1;
  v151.super_class = BMMomentsEventDataEvent;
  v76 = [(BMEventBase *)&v151 init];

  if (v76)
  {
    v76->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v76->_eventIdentifier, a3);
    if (v68)
    {
      v76->_hasRaw_startDate = 1;
      [v68 timeIntervalSince1970];
    }

    else
    {
      v76->_hasRaw_startDate = 0;
      v77 = -1.0;
    }

    v76->_raw_startDate = v77;
    if (v69)
    {
      v76->_hasRaw_endDate = 1;
      [v69 timeIntervalSince1970];
    }

    else
    {
      v76->_hasRaw_endDate = 0;
      v78 = -1.0;
    }

    v76->_raw_endDate = v78;
    if (v70)
    {
      v76->_hasRaw_creationDate = 1;
      [v70 timeIntervalSince1970];
    }

    else
    {
      v76->_hasRaw_creationDate = 0;
      v79 = -1.0;
    }

    v76->_raw_creationDate = v79;
    if (v71)
    {
      v76->_hasRaw_sourceCreationDate = 1;
      [v71 timeIntervalSince1970];
    }

    else
    {
      v76->_hasRaw_sourceCreationDate = 0;
      v80 = -1.0;
    }

    v76->_raw_sourceCreationDate = v80;
    if (v150)
    {
      v76->_hasRaw_expirationDate = 1;
      [v150 timeIntervalSince1970];
    }

    else
    {
      v76->_hasRaw_expirationDate = 0;
      v81 = -1.0;
    }

    v76->_raw_expirationDate = v81;
    v76->_provider = a9;
    v76->_category = a10;
    v76->_placeUserType = a11;
    v76->_poiCategory = a12;
    v76->_placeDiscovery = a13;
    v76->_locationMode = a14;
    v76->_workoutType = a15;
    objc_storeStrong(&v76->_workoutBundleID, a16);
    v76->_mediaGenre = a17;
    v76->_mediaType = a18;
    if (v148)
    {
      v76->_hasMediaRepetitions = 1;
      v82 = [v148 intValue];
    }

    else
    {
      v76->_hasMediaRepetitions = 0;
      v82 = -1;
    }

    v76->_mediaRepetitions = v82;
    if (v147)
    {
      v76->_hasMediaSumTimePlayed = 1;
      v83 = [v147 intValue];
    }

    else
    {
      v76->_hasMediaSumTimePlayed = 0;
      v83 = -1;
    }

    v76->_mediaSumTimePlayed = v83;
    v76->_sourceParty = a21;
    objc_storeStrong(&v76->_mediaPlayerBundleID, a22);
    if (v73)
    {
      v76->_hasNumAudioMediaPlaySessionsPerDay = 1;
      v84 = [v73 intValue];
    }

    else
    {
      v76->_hasNumAudioMediaPlaySessionsPerDay = 0;
      v84 = -1;
    }

    v76->_numAudioMediaPlaySessionsPerDay = v84;
    if (v74)
    {
      v76->_hasDurationAudioMediaPlaySessionsPerDay = 1;
      [v74 doubleValue];
    }

    else
    {
      v76->_hasDurationAudioMediaPlaySessionsPerDay = 0;
      v85 = -1.0;
    }

    v76->_durationAudioMediaPlaySessionsPerDay = v85;
    if (v75)
    {
      v76->_hasNumVideoMediaPlaySessionsPerDay = 1;
      v86 = [v75 intValue];
    }

    else
    {
      v76->_hasNumVideoMediaPlaySessionsPerDay = 0;
      v86 = -1;
    }

    v76->_numVideoMediaPlaySessionsPerDay = v86;
    if (v146)
    {
      v76->_hasDurationVideoMediaPlaySessionsPerDay = 1;
      [v146 doubleValue];
    }

    else
    {
      v76->_hasDurationVideoMediaPlaySessionsPerDay = 0;
      v87 = -1.0;
    }

    v76->_durationVideoMediaPlaySessionsPerDay = v87;
    if (v145)
    {
      v76->_hasNumFirstPartyMediaPlaySessionsPerDay = 1;
      v88 = [v145 intValue];
    }

    else
    {
      v76->_hasNumFirstPartyMediaPlaySessionsPerDay = 0;
      v88 = -1;
    }

    v76->_numFirstPartyMediaPlaySessionsPerDay = v88;
    if (v144)
    {
      v76->_hasNumThirdPartyMediaPlaySessionsPerDay = 1;
      v89 = [v144 intValue];
    }

    else
    {
      v76->_hasNumThirdPartyMediaPlaySessionsPerDay = 0;
      v89 = -1;
    }

    v76->_numThirdPartyMediaPlaySessionsPerDay = v89;
    if (v143)
    {
      v76->_hasNumContacts = 1;
      v90 = [v143 intValue];
    }

    else
    {
      v76->_hasNumContacts = 0;
      v90 = -1;
    }

    v76->_numContacts = v90;
    objc_storeStrong(&v76->_contactIDsInConversation, a30);
    objc_storeStrong(&v76->_contactIDMostSignificantInConversation, a31);
    if (v142)
    {
      v76->_hasInteractionContactScore = 1;
      [v142 doubleValue];
    }

    else
    {
      v76->_hasInteractionContactScore = 0;
      v91 = -1.0;
    }

    v76->_interactionContactScore = v91;
    if (v141)
    {
      v76->_hasTextLikeMechanismIncluded = 1;
      v76->_textLikeMechanismIncluded = [v141 BOOLValue];
    }

    else
    {
      v76->_hasTextLikeMechanismIncluded = 0;
      v76->_textLikeMechanismIncluded = 0;
    }

    if (v140)
    {
      v76->_hasCallLikeMechanismIncluded = 1;
      v76->_callLikeMechanismIncluded = [v140 BOOLValue];
    }

    else
    {
      v76->_hasCallLikeMechanismIncluded = 0;
      v76->_callLikeMechanismIncluded = 0;
    }

    if (v139)
    {
      v76->_hasNumTextLikeInteractions = 1;
      v92 = [v139 intValue];
    }

    else
    {
      v76->_hasNumTextLikeInteractions = 0;
      v92 = -1;
    }

    v76->_numTextLikeInteractions = v92;
    if (v138)
    {
      v76->_hasNumAudioLikeInteractions = 1;
      v93 = [v138 intValue];
    }

    else
    {
      v76->_hasNumAudioLikeInteractions = 0;
      v93 = -1;
    }

    v76->_numAudioLikeInteractions = v93;
    if (v137)
    {
      v76->_hasNumVideoLikeInteractions = 1;
      v94 = [v137 intValue];
    }

    else
    {
      v76->_hasNumVideoLikeInteractions = 0;
      v94 = -1;
    }

    v76->_numVideoLikeInteractions = v94;
    if (v136)
    {
      v76->_hasTotalDurationOfCallLikeInteractions = 1;
      [v136 doubleValue];
    }

    else
    {
      v76->_hasTotalDurationOfCallLikeInteractions = 0;
      v95 = -1.0;
    }

    v76->_totalDurationOfCallLikeInteractions = v95;
    if (v135)
    {
      v76->_hasMinDurationOfCallLikeInteractions = 1;
      [v135 doubleValue];
    }

    else
    {
      v76->_hasMinDurationOfCallLikeInteractions = 0;
      v96 = -1.0;
    }

    v76->_minDurationOfCallLikeInteractions = v96;
    if (v134)
    {
      v76->_hasMaxDurationOfCallLikeInteractions = 1;
      [v134 doubleValue];
    }

    else
    {
      v76->_hasMaxDurationOfCallLikeInteractions = 0;
      v97 = -1.0;
    }

    v76->_maxDurationOfCallLikeInteractions = v97;
    v76->_photoMomentSource = a41;
    objc_storeStrong(&v76->_photoMomentInferences, a42);
    objc_storeStrong(&v76->_photoMomentHolidays, a43);
    if (v133)
    {
      v76->_hasNumPhotoMomentHolidays = 1;
      v98 = [v133 intValue];
    }

    else
    {
      v76->_hasNumPhotoMomentHolidays = 0;
      v98 = -1;
    }

    v76->_numPhotoMomentHolidays = v98;
    if (v132)
    {
      v76->_hasNumPhotoMomentInferences = 1;
      v99 = [v132 intValue];
    }

    else
    {
      v76->_hasNumPhotoMomentInferences = 0;
      v99 = -1;
    }

    v76->_numPhotoMomentInferences = v99;
    if (v131)
    {
      v76->_hasNumPhotoMomentPublicEvents = 1;
      v100 = [v131 intValue];
    }

    else
    {
      v76->_hasNumPhotoMomentPublicEvents = 0;
      v100 = -1;
    }

    v76->_numPhotoMomentPublicEvents = v100;
    if (v130)
    {
      v76->_hasNumPhotoMomentPersons = 1;
      v101 = [v130 intValue];
    }

    else
    {
      v76->_hasNumPhotoMomentPersons = 0;
      v101 = -1;
    }

    v76->_numPhotoMomentPersons = v101;
    if (v129)
    {
      v76->_hasIsFamilyInPhotoMoment = 1;
      v76->_isFamilyInPhotoMoment = [v129 BOOLValue];
    }

    else
    {
      v76->_hasIsFamilyInPhotoMoment = 0;
      v76->_isFamilyInPhotoMoment = 0;
    }

    if (v128)
    {
      v76->_hasMomentIncludesFavoritedAsset = 1;
      v76->_momentIncludesFavoritedAsset = [v128 BOOLValue];
    }

    else
    {
      v76->_hasMomentIncludesFavoritedAsset = 0;
      v76->_momentIncludesFavoritedAsset = 0;
    }

    if (v127)
    {
      v76->_hasMomentIncludesVideo = 1;
      v76->_momentIncludesVideo = [v127 BOOLValue];
    }

    else
    {
      v76->_hasMomentIncludesVideo = 0;
      v76->_momentIncludesVideo = 0;
    }

    if (v126)
    {
      v76->_hasMomentIncludesPhoto = 1;
      v76->_momentIncludesPhoto = [v126 BOOLValue];
    }

    else
    {
      v76->_hasMomentIncludesPhoto = 0;
      v76->_momentIncludesPhoto = 0;
    }

    v76->_suggestedEventCategory = a52;
    if (v125)
    {
      v76->_hasNumAttendees = 1;
      v102 = [v125 intValue];
    }

    else
    {
      v76->_hasNumAttendees = 0;
      v102 = -1;
    }

    v76->_numAttendees = v102;
    if (v124)
    {
      v76->_hasNumtripParts = 1;
      v103 = [v124 intValue];
    }

    else
    {
      v76->_hasNumtripParts = 0;
      v103 = -1;
    }

    v76->_numtripParts = v103;
    v76->_tripMode = a55;
    if (v123)
    {
      v76->_hasNumScoredTopics = 1;
      v104 = [v123 intValue];
    }

    else
    {
      v76->_hasNumScoredTopics = 0;
      v104 = -1;
    }

    v76->_numScoredTopics = v104;
    if (v122)
    {
      v76->_hasNumItemAuthors = 1;
      v105 = [v122 intValue];
    }

    else
    {
      v76->_hasNumItemAuthors = 0;
      v105 = -1;
    }

    v76->_numItemAuthors = v105;
    if (v121)
    {
      v76->_hasNumItemRecipients = 1;
      v106 = [v121 intValue];
    }

    else
    {
      v76->_hasNumItemRecipients = 0;
      v106 = -1;
    }

    v76->_numItemRecipients = v106;
    if (v120)
    {
      v76->_hasIsGatheringComplete = 1;
      v76->_isGatheringComplete = [v120 BOOLValue];
    }

    else
    {
      v76->_hasIsGatheringComplete = 0;
      v76->_isGatheringComplete = 0;
    }

    objc_storeStrong(&v76->_gaPR, a60);
    if (v119)
    {
      v76->_hasPCount = 1;
      v107 = [v119 intValue];
    }

    else
    {
      v76->_hasPCount = 0;
      v107 = -1;
    }

    v76->_pCount = v107;
    v76->_mapItemSource = a62;
    v76->_placeType = a63;
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

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