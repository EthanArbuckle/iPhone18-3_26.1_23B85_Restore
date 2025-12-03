@interface GDEntityFeatures
- (GDEntityFeatures)initWithCandidateNameScore:(double)score candidateCommunicationScore:(double)communicationScore candidateOrganizationScore:(double)organizationScore candidateLocationScore:(double)locationScore candidateEventLocationScore:(double)eventLocationScore candidateEventNameScore:(double)nameScore topicScore:(double)topicScore messagePopularityGivenTimeOfDay:(uint64_t)self0 callPopularityGivenTimeOfDay:(int)self1 facetimePopularityGivenTimeOfDay:(int)self2 timeOfDayGivenMessageWithEntity:(int)self3 timeOfDayGivenCallWithEntity:(double)self4 timeOfDayGivenFacetimeWithEntity:(double)self5 messageWithEntityGivenTimeOfDay:(double)self6 callWithEntityGivenTimeOfDay:(double)self7 facetimeWithEntityGivenTimeOfDay:(double)self8 messagePopularityGivenCoarseTimeOfDay:(double)self9 callPopularityGivenCoarseTimeOfDay:(double)givenCoarseTimeOfDay facetimePopularityGivenCoarseTimeOfDay:(double)popularityGivenCoarseTimeOfDay coarseTimeOfDayGivenMessageWithEntity:(double)messageWithEntity coarseTimeOfDayGivenCallWithEntity:(double)callWithEntity coarseTimeOfDayGivenFacetimeWithEntity:(double)givenFacetimeWithEntity messageWithEntityGivenCoarseTimeOfDay:(double)entityGivenCoarseTimeOfDay callWithEntityGivenCoarseTimeOfDay:(double)withEntityGivenCoarseTimeOfDay facetimeWithEntityGivenCoarseTimeOfDay:(double)facetimeWithEntityGivenCoarseTimeOfDay messagePopularityGivenDayOfWeek:(double)week callPopularityGivenDayOfWeek:(double)ofWeek facetimePopularityGivenDayOfWeek:(double)score0 dayOfWeekGivenMessageWithEntity:(double)score1 dayOfWeekGivenCallWithEntity:(double)score2 dayOfWeekGivenFacetimeWithEntity:(double)score3 messageWithEntityGivenDayOfWeek:(double)score4 callWithEntityGivenDayOfWeek:(double)score5 facetimeWithEntityGivenDayOfWeek:(double)score6 messagePopularityGivenFocusMode:(double)score7 callPopularityGivenFocusMode:(double)score8 facetimePopularityGivenFocusMode:(double)score9 focusModeGivenMessageWithEntity:(double)communicationScore0 focusModeGivenCallWithEntity:(double)communicationScore1 focusModeGivenFacetimeWithEntity:(double)communicationScore2 messageWithEntityGivenFocusMode:(double)communicationScore3 callWithEntityGivenFocusMode:(double)communicationScore4 facetimeWithEntityGivenFocusMode:(double)communicationScore5 messagePopularityGivenLOI:(double)communicationScore6 callPopularityGivenLOI:(double)communicationScore7 facetimePopularityGivenLOI:(double)communicationScore8 LOIGivenMessageWithEntity:(double)communicationScore9 LOIGivenCallWithEntity:(double)organizationScore0 LOIGivenFacetimeWithEntity:(double)organizationScore1 messageWithEntityGivenLOI:(double)organizationScore2 callWithEntityGivenLOI:(double)organizationScore3 facetimeWithEntityGivenLOI:(double)organizationScore4 messagePopularityGivenSpecificGeoHash:(double)organizationScore5 callPopularityGivenSpecificGeoHash:(double)organizationScore6 facetimePopularityGivenSpecificGeoHash:(double)organizationScore7 specificGeoHashGivenMessageWithEntity:(double)organizationScore8 specificGeoHashGivenCallWithEntity:(double)organizationScore9 specificGeoHashGivenFacetimeWithEntity:(double)locationScore0 messageWithEntityGivenSpecificGeoHash:(double)locationScore1 callWithEntityGivenSpecificGeoHash:(double)locationScore2 facetimeWithEntityGivenSpecificGeoHash:(double)locationScore3 messagePopularityGivenCoarseGeoHash:callPopularityGivenCoarseGeoHash:facetimePopularityGivenCoarseGeoHash:coarseGeoHashGivenMessageWithEntity:coarseGeoHashGivenCallWithEntity:coarseGeoHashGivenFacetimeWithEntity:messageWithEntityGivenCoarseGeoHash:callWithEntityGivenCoarseGeoHash:facetimeWithEntityGivenCoarseGeoHash:messagePopularityGivenLargeGeoHash:callPopularityGivenLargeGeoHash:facetimePopularityGivenLargeGeoHash:largeGeoHashGivenMessageWithEntity:largeGeoHashGivenCallWithEntity:largeGeoHashGivenFacetimeWithEntity:messageWithEntityGivenLargeGeoHash:callWithEntityGivenLargeGeoHash:facetimeWithEntityGivenLargeGeoHash:messagePopularityGivenMicroLocation:callPopularityGivenMicroLocation:facetimePopularityGivenMicroLocation:microLocationGivenMessageWithEntity:microLocationGivenCallWithEntity:microLocationGivenFacetimeWithEntity:messageWithEntityGivenMicroLocation:callWithEntityGivenMicroLocation:facetimeWithEntityGivenMicroLocation:messagePopularityGivenMotionState:callPopularityGivenMotionState:facetimePopularityGivenMotionState:motionStateGivenMessageWithEntity:motionStateGivenCallWithEntity:motionStateGivenFacetimeWithEntity:messageWithEntityGivenMotionState:callWithEntityGivenMotionState:facetimeWithEntityGivenMotionState:messagePopularityGivenWiFi:callPopularityGivenWiFi:facetimePopularityGivenWiFi:wiFiGivenMessageWithEntity:wiFiGivenCallWithEntity:wiFiGivenFacetimeWithEntity:messageWithEntityGivenWiFi:callWithEntityGivenWiFi:facetimeWithEntityGivenWiFi:messagePopularityGivenSequence:callPopularityGivenSequence:facetimePopularityGivenSequence:sequenceGivenMessageWithEntity:sequenceGivenCallWithEntity:sequenceGivenFacetimeWithEntity:lastExecutionAge:medianTimeIntervalBetweenExecution:dailyDoseL1Error:dailyDoseL2Error:shortTermTrendingPopularity:trendingPopularity:longTermTrendingPopularity:;
- (GDEntityFeatures)initWithCandidateNameScore:(double)score candidateCommunicationScore:(double)communicationScore candidateOrganizationScore:(double)organizationScore candidateLocationScore:(double)locationScore candidateEventLocationScore:(double)eventLocationScore candidateEventNameScore:(double)nameScore topicScore:(double)topicScore messagePopularityGivenTimeOfDay:(uint64_t)self0 callPopularityGivenTimeOfDay:(int)self1 facetimePopularityGivenTimeOfDay:(int)self2 timeOfDayGivenMessageWithEntity:(int)self3 timeOfDayGivenCallWithEntity:(int)self4 timeOfDayGivenFacetimeWithEntity:(double)self5 messageWithEntityGivenTimeOfDay:(double)self6 callWithEntityGivenTimeOfDay:(double)self7 facetimeWithEntityGivenTimeOfDay:(double)self8 messagePopularityGivenCoarseTimeOfDay:(double)self9 callPopularityGivenCoarseTimeOfDay:(double)givenCoarseTimeOfDay facetimePopularityGivenCoarseTimeOfDay:(double)popularityGivenCoarseTimeOfDay coarseTimeOfDayGivenMessageWithEntity:(double)messageWithEntity coarseTimeOfDayGivenCallWithEntity:(double)callWithEntity coarseTimeOfDayGivenFacetimeWithEntity:(double)givenFacetimeWithEntity messageWithEntityGivenCoarseTimeOfDay:(double)entityGivenCoarseTimeOfDay callWithEntityGivenCoarseTimeOfDay:(double)withEntityGivenCoarseTimeOfDay facetimeWithEntityGivenCoarseTimeOfDay:(double)facetimeWithEntityGivenCoarseTimeOfDay messagePopularityGivenDayOfWeek:(double)week callPopularityGivenDayOfWeek:(double)ofWeek facetimePopularityGivenDayOfWeek:(double)score0 dayOfWeekGivenMessageWithEntity:(double)score1 dayOfWeekGivenCallWithEntity:(double)score2 dayOfWeekGivenFacetimeWithEntity:(double)score3 messageWithEntityGivenDayOfWeek:(double)score4 callWithEntityGivenDayOfWeek:(double)score5 facetimeWithEntityGivenDayOfWeek:(double)score6 messagePopularityGivenFocusMode:(double)score7 callPopularityGivenFocusMode:(double)score8 facetimePopularityGivenFocusMode:(double)score9 focusModeGivenMessageWithEntity:(double)communicationScore0 focusModeGivenCallWithEntity:(double)communicationScore1 focusModeGivenFacetimeWithEntity:(double)communicationScore2 messageWithEntityGivenFocusMode:(double)communicationScore3 callWithEntityGivenFocusMode:(double)communicationScore4 facetimeWithEntityGivenFocusMode:(double)communicationScore5 messagePopularityGivenLOI:(double)communicationScore6 callPopularityGivenLOI:(double)communicationScore7 facetimePopularityGivenLOI:(double)communicationScore8 LOIGivenMessageWithEntity:(double)communicationScore9 LOIGivenCallWithEntity:(double)organizationScore0 LOIGivenFacetimeWithEntity:(double)organizationScore1 messageWithEntityGivenLOI:(double)organizationScore2 callWithEntityGivenLOI:(double)organizationScore3 facetimeWithEntityGivenLOI:(double)organizationScore4 messagePopularityGivenSpecificGeoHash:(double)organizationScore5 callPopularityGivenSpecificGeoHash:(double)organizationScore6 facetimePopularityGivenSpecificGeoHash:(double)organizationScore7 specificGeoHashGivenMessageWithEntity:(double)organizationScore8 specificGeoHashGivenCallWithEntity:(double)organizationScore9 specificGeoHashGivenFacetimeWithEntity:(double)locationScore0 messageWithEntityGivenSpecificGeoHash:(double)locationScore1 callWithEntityGivenSpecificGeoHash:(double)locationScore2 facetimeWithEntityGivenSpecificGeoHash:(double)locationScore3 messagePopularityGivenCoarseGeoHash:callPopularityGivenCoarseGeoHash:facetimePopularityGivenCoarseGeoHash:coarseGeoHashGivenMessageWithEntity:coarseGeoHashGivenCallWithEntity:coarseGeoHashGivenFacetimeWithEntity:messageWithEntityGivenCoarseGeoHash:callWithEntityGivenCoarseGeoHash:facetimeWithEntityGivenCoarseGeoHash:messagePopularityGivenLargeGeoHash:callPopularityGivenLargeGeoHash:facetimePopularityGivenLargeGeoHash:largeGeoHashGivenMessageWithEntity:largeGeoHashGivenCallWithEntity:largeGeoHashGivenFacetimeWithEntity:messageWithEntityGivenLargeGeoHash:callWithEntityGivenLargeGeoHash:facetimeWithEntityGivenLargeGeoHash:messagePopularityGivenMicroLocation:callPopularityGivenMicroLocation:facetimePopularityGivenMicroLocation:microLocationGivenMessageWithEntity:microLocationGivenCallWithEntity:microLocationGivenFacetimeWithEntity:messageWithEntityGivenMicroLocation:callWithEntityGivenMicroLocation:facetimeWithEntityGivenMicroLocation:messagePopularityGivenMotionState:callPopularityGivenMotionState:facetimePopularityGivenMotionState:motionStateGivenMessageWithEntity:motionStateGivenCallWithEntity:motionStateGivenFacetimeWithEntity:messageWithEntityGivenMotionState:callWithEntityGivenMotionState:facetimeWithEntityGivenMotionState:messagePopularityGivenWiFi:callPopularityGivenWiFi:facetimePopularityGivenWiFi:wiFiGivenMessageWithEntity:wiFiGivenCallWithEntity:wiFiGivenFacetimeWithEntity:messageWithEntityGivenWiFi:callWithEntityGivenWiFi:facetimeWithEntityGivenWiFi:messagePopularityGivenSequence:callPopularityGivenSequence:facetimePopularityGivenSequence:sequenceGivenMessageWithEntity:sequenceGivenCallWithEntity:sequenceGivenFacetimeWithEntity:lastExecutionAge:medianTimeIntervalBetweenExecution:dailyDoseL1Error:dailyDoseL2Error:shortTermTrendingPopularity:trendingPopularity:longTermTrendingPopularity:locationLastExecutationAge:locationPopularityGivenSpecificGeoHash:locationTrendingPopularity:;
- (GDEntityFeatures)initWithCandidateNameSimilarity:(double)similarity;
- (GDEntityFeatures)initWithCoder:(id)coder;
- (GDEntityFeatures)initWithLocationLastExecutationAge:(int)age locationPopularityGivenSpecificGeoHash:(double)hash locationTrendingPopularity:(double)popularity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDEntityFeatures

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(GDEntityFeatures *)self candidateNameScore];
  v5 = v4;
  [(GDEntityFeatures *)self candidateCommunicationScore];
  v7 = v6;
  [(GDEntityFeatures *)self candidateLocationScore];
  v9 = v8;
  [(GDEntityFeatures *)self candidateEventNameScore];
  v11 = v10;
  [(GDEntityFeatures *)self candidateOrganizationScore];
  v13 = v12;
  [(GDEntityFeatures *)self messagePopularityGivenCoarseTimeOfDay];
  v15 = v14;
  [(GDEntityFeatures *)self locationTrendingPopularity];
  return [v3 stringWithFormat:@"<GDEntityFeatures: name score: %f, communication score: %f, location score: %f, event name score: %f, misc/organization score: %f, course time of day message score: %f, location trending popularity: %f>", v5, v7, v9, v11, v13, v15, v16];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v43 = *&self->_timeOfDayGivenMessageWithEntity;
  v44 = *&self->_callPopularityGivenTimeOfDay;
  v41 = *&self->_callWithEntityGivenTimeOfDay;
  v42 = *&self->_timeOfDayGivenFacetimeWithEntity;
  v39 = *&self->_facetimePopularityGivenCoarseTimeOfDay;
  v40 = *&self->_messagePopularityGivenCoarseTimeOfDay;
  v38 = *&self->_messageWithEntityGivenCoarseTimeOfDay;
  v6 = *&self->_specificGeoHashGivenCallWithEntity;
  v5 = *&self->_messageWithEntityGivenSpecificGeoHash;
  v8 = *&self->_facetimeWithEntityGivenSpecificGeoHash;
  v7 = *&self->_callPopularityGivenCoarseGeoHash;
  v10 = *&self->_coarseGeoHashGivenMessageWithEntity;
  v9 = *&self->_coarseGeoHashGivenFacetimeWithEntity;
  v12 = *&self->_callWithEntityGivenCoarseGeoHash;
  v11 = *&self->_messagePopularityGivenLargeGeoHash;
  locationTrendingPopularity = self->_locationTrendingPopularity;
  locationPopularityGivenSpecificGeoHash = self->_locationPopularityGivenSpecificGeoHash;
  v34 = *&self->_dailyDoseL2Error;
  v35 = *&self->_trendingPopularity;
  v32 = *&self->_facetimePopularityGivenSequence;
  v33 = *&self->_sequenceGivenCallWithEntity;
  v30 = *&self->_callWithEntityGivenWiFi;
  v31 = *&self->_messagePopularityGivenSequence;
  v28 = *&self->_wiFiGivenMessageWithEntity;
  v29 = *&self->_wiFiGivenFacetimeWithEntity;
  v26 = *&self->_facetimeWithEntityGivenMotionState;
  v27 = *&self->_callPopularityGivenWiFi;
  v24 = *&self->_motionStateGivenCallWithEntity;
  v25 = *&self->_messageWithEntityGivenMotionState;
  v22 = *&self->_messagePopularityGivenMotionState;
  v23 = *&self->_facetimePopularityGivenMotionState;
  v20 = *&self->_microLocationGivenFacetimeWithEntity;
  v21 = *&self->_callWithEntityGivenMicroLocation;
  v18 = *&self->_callPopularityGivenMicroLocation;
  v19 = *&self->_microLocationGivenMessageWithEntity;
  v16 = *&self->_messageWithEntityGivenLargeGeoHash;
  v17 = *&self->_facetimeWithEntityGivenLargeGeoHash;
  v14 = *&self->_facetimePopularityGivenLargeGeoHash;
  v15 = *&self->_largeGeoHashGivenCallWithEntity;
  return [v4 initWithCandidateNameScore:self->_lastExecutionAge candidateCommunicationScore:self->_medianTimeIntervalBetweenExecution candidateOrganizationScore:self->_dailyDoseL1Error candidateLocationScore:self->_locationLastExecutionAge candidateEventLocationScore:self->_candidateNameScore candidateEventNameScore:self->_candidateCommunicationScore topicScore:self->_candidateOrganizationScore messagePopularityGivenTimeOfDay:self->_candidateLocationScore callPopularityGivenTimeOfDay:self->_candidateEventLocationScore facetimePopularityGivenTimeOfDay:self->_candidateEventNameScore timeOfDayGivenMessageWithEntity:self->_topicScore timeOfDayGivenCallWithEntity:self->_messagePopularityGivenTimeOfDay timeOfDayGivenFacetimeWithEntity:*&self->_callPopularityGivenTimeOfDay messageWithEntityGivenTimeOfDay:*&self->_facetimePopularityGivenTimeOfDay callWithEntityGivenTimeOfDay:*&self->_timeOfDayGivenMessageWithEntity facetimeWithEntityGivenTimeOfDay:*&self->_timeOfDayGivenCallWithEntity messagePopularityGivenCoarseTimeOfDay:*&self->_timeOfDayGivenFacetimeWithEntity callPopularityGivenCoarseTimeOfDay:*&self->_messageWithEntityGivenTimeOfDay facetimePopularityGivenCoarseTimeOfDay:*&self->_callWithEntityGivenTimeOfDay coarseTimeOfDayGivenMessageWithEntity:*&self->_facetimeWithEntityGivenTimeOfDay coarseTimeOfDayGivenCallWithEntity:*&self->_messagePopularityGivenCoarseTimeOfDay coarseTimeOfDayGivenFacetimeWithEntity:*&self->_callPopularityGivenCoarseTimeOfDay messageWithEntityGivenCoarseTimeOfDay:*&self->_facetimePopularityGivenCoarseTimeOfDay callWithEntityGivenCoarseTimeOfDay:*&self->_coarseTimeOfDayGivenMessageWithEntity facetimeWithEntityGivenCoarseTimeOfDay:*&self->_coarseTimeOfDayGivenCallWithEntity messagePopularityGivenDayOfWeek:*&self->_messageWithEntityGivenCoarseTimeOfDay callPopularityGivenDayOfWeek:*&self->_callWithEntityGivenCoarseTimeOfDay facetimePopularityGivenDayOfWeek:*&self->_facetimeWithEntityGivenCoarseTimeOfDay dayOfWeekGivenMessageWithEntity:*&self->_callPopularityGivenDayOfWeek dayOfWeekGivenCallWithEntity:*&self->_dayOfWeekGivenMessageWithEntity dayOfWeekGivenFacetimeWithEntity:*&self->_dayOfWeekGivenFacetimeWithEntity messageWithEntityGivenDayOfWeek:*&self->_callWithEntityGivenDayOfWeek callWithEntityGivenDayOfWeek:*&self->_messagePopularityGivenFocusMode facetimeWithEntityGivenDayOfWeek:*&self->_facetimePopularityGivenFocusMode messagePopularityGivenFocusMode:*&self->_focusModeGivenCallWithEntity callPopularityGivenFocusMode:*&self->_messageWithEntityGivenFocusMode facetimePopularityGivenFocusMode:*&self->_facetimeWithEntityGivenFocusMode focusModeGivenMessageWithEntity:*&self->_callPopularityGivenLOI focusModeGivenCallWithEntity:*&self->_LOIGivenMessageWithEntity focusModeGivenFacetimeWithEntity:*&self->_LOIGivenFacetimeWithEntity messageWithEntityGivenFocusMode:*&self->_callWithEntityGivenLOI callWithEntityGivenFocusMode:*&self->_messagePopularityGivenSpecificGeoHash facetimeWithEntityGivenFocusMode:*&self->_facetimePopularityGivenSpecificGeoHash messagePopularityGivenLOI:*&self->_specificGeoHashGivenCallWithEntity callPopularityGivenLOI:? facetimePopularityGivenLOI:? LOIGivenMessageWithEntity:? LOIGivenCallWithEntity:? LOIGivenFacetimeWithEntity:? messageWithEntityGivenLOI:? callWithEntityGivenLOI:? facetimeWithEntityGivenLOI:? messagePopularityGivenSpecificGeoHash:? callPopularityGivenSpecificGeoHash:? facetimePopularityGivenSpecificGeoHash:? specificGeoHashGivenMessageWithEntity:? specificGeoHashGivenCallWithEntity:? specificGeoHashGivenFacetimeWithEntity:? messageWithEntityGivenSpecificGeoHash:? callWithEntityGivenSpecificGeoHash:? facetimeWithEntityGivenSpecificGeoHash:? messagePopularityGivenCoarseGeoHash:? callPopularityGivenCoarseGeoHash:? facetimePopularityGivenCoarseGeoHash:? coarseGeoHashGivenMessageWithEntity:? coarseGeoHashGivenCallWithEntity:? coarseGeoHashGivenFacetimeWithEntity:? messageWithEntityGivenCoarseGeoHash:? callWithEntityGivenCoarseGeoHash:? facetimeWithEntityGivenCoarseGeoHash:? messagePopularityGivenLargeGeoHash:? callPopularityGivenLargeGeoHash:? facetimePopularityGivenLargeGeoHash:? largeGeoHashGivenMessageWithEntity:? largeGeoHashGivenCallWithEntity:? largeGeoHashGivenFacetimeWithEntity:? messageWithEntityGivenLargeGeoHash:? callWithEntityGivenLargeGeoHash:? facetimeWithEntityGivenLargeGeoHash:? messagePopularityGivenMicroLocation:? callPopularityGivenMicroLocation:? facetimePopularityGivenMicroLocation:? microLocationGivenMessageWithEntity:? microLocationGivenCallWithEntity:? microLocationGivenFacetimeWithEntity:? messageWithEntityGivenMicroLocation:? callWithEntityGivenMicroLocation:? facetimeWithEntityGivenMicroLocation:? messagePopularityGivenMotionState:? callPopularityGivenMotionState:? facetimePopularityGivenMotionState:? motionStateGivenMessageWithEntity:? motionStateGivenCallWithEntity:? motionStateGivenFacetimeWithEntity:? messageWithEntityGivenMotionState:? callWithEntityGivenMotionState:? facetimeWithEntityGivenMotionState:? messagePopularityGivenWiFi:? callPopularityGivenWiFi:? facetimePopularityGivenWiFi:? wiFiGivenMessageWithEntity:? wiFiGivenCallWithEntity:? wiFiGivenFacetimeWithEntity:? messageWithEntityGivenWiFi:? callWithEntityGivenWiFi:? facetimeWithEntityGivenWiFi:? messagePopularityGivenSequence:? callPopularityGivenSequence:? facetimePopularityGivenSequence:? sequenceGivenMessageWithEntity:? sequenceGivenCallWithEntity:? sequenceGivenFacetimeWithEntity:? lastExecutionAge:? medianTimeIntervalBetweenExecution:? dailyDoseL1Error:? dailyDoseL2Error:? shortTermTrendingPopularity:? trendingPopularity:? longTermTrendingPopularity:? locationLastExecutationAge:? locationPopularityGivenSpecificGeoHash:? locationTrendingPopularity:?];
}

- (GDEntityFeatures)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_candidateNameScore);
  [coderCopy decodeDoubleForKey:v5];
  v247 = v6;

  v7 = NSStringFromSelector(sel_candidateCommunicationScore);
  [coderCopy decodeDoubleForKey:v7];
  v246 = v8;

  v9 = NSStringFromSelector(sel_candidateOrganizationScore);
  [coderCopy decodeDoubleForKey:v9];
  v245 = v10;

  v11 = NSStringFromSelector(sel_candidateLocationScore);
  [coderCopy decodeDoubleForKey:v11];
  v244 = v12;

  v13 = NSStringFromSelector(sel_candidateEventLocationScore);
  [coderCopy decodeDoubleForKey:v13];
  v243 = v14;

  v15 = NSStringFromSelector(sel_candidateEventNameScore);
  [coderCopy decodeDoubleForKey:v15];
  v242 = v16;

  v17 = NSStringFromSelector(sel_topicScore);
  [coderCopy decodeDoubleForKey:v17];
  v241 = v18;

  v19 = NSStringFromSelector(sel_messagePopularityGivenTimeOfDay);
  [coderCopy decodeDoubleForKey:v19];
  v240 = v20;

  v21 = NSStringFromSelector(sel_callPopularityGivenTimeOfDay);
  [coderCopy decodeDoubleForKey:v21];
  v239 = v22;

  v23 = NSStringFromSelector(sel_facetimePopularityGivenTimeOfDay);
  [coderCopy decodeDoubleForKey:v23];
  v238 = v24;

  v25 = NSStringFromSelector(sel_timeOfDayGivenMessageWithEntity);
  [coderCopy decodeDoubleForKey:v25];
  v237 = v26;

  v27 = NSStringFromSelector(sel_timeOfDayGivenCallWithEntity);
  [coderCopy decodeDoubleForKey:v27];
  v236 = v28;

  v29 = NSStringFromSelector(sel_timeOfDayGivenFacetimeWithEntity);
  [coderCopy decodeDoubleForKey:v29];
  v235 = v30;

  v31 = NSStringFromSelector(sel_messageWithEntityGivenTimeOfDay);
  [coderCopy decodeDoubleForKey:v31];
  v234 = v32;

  v33 = NSStringFromSelector(sel_callWithEntityGivenTimeOfDay);
  [coderCopy decodeDoubleForKey:v33];
  v233 = v34;

  v35 = NSStringFromSelector(sel_facetimeWithEntityGivenTimeOfDay);
  [coderCopy decodeDoubleForKey:v35];
  v232 = v36;

  v37 = NSStringFromSelector(sel_messagePopularityGivenCoarseTimeOfDay);
  [coderCopy decodeDoubleForKey:v37];
  v231 = v38;

  v39 = NSStringFromSelector(sel_callPopularityGivenCoarseTimeOfDay);
  [coderCopy decodeDoubleForKey:v39];
  v230 = v40;

  v41 = NSStringFromSelector(sel_facetimePopularityGivenCoarseTimeOfDay);
  [coderCopy decodeDoubleForKey:v41];
  v229 = v42;

  v43 = NSStringFromSelector(sel_coarseTimeOfDayGivenMessageWithEntity);
  [coderCopy decodeDoubleForKey:v43];
  v228 = v44;

  v45 = NSStringFromSelector(sel_coarseTimeOfDayGivenCallWithEntity);
  [coderCopy decodeDoubleForKey:v45];
  v227 = v46;

  v47 = NSStringFromSelector(sel_coarseTimeOfDayGivenFacetimeWithEntity);
  [coderCopy decodeDoubleForKey:v47];
  v226 = v48;

  v49 = NSStringFromSelector(sel_messageWithEntityGivenCoarseTimeOfDay);
  [coderCopy decodeDoubleForKey:v49];
  v225 = v50;

  v51 = NSStringFromSelector(sel_callWithEntityGivenCoarseTimeOfDay);
  [coderCopy decodeDoubleForKey:v51];
  v224 = v52;

  v53 = NSStringFromSelector(sel_facetimeWithEntityGivenCoarseTimeOfDay);
  [coderCopy decodeDoubleForKey:v53];
  v223 = v54;

  v55 = NSStringFromSelector(sel_messagePopularityGivenDayOfWeek);
  [coderCopy decodeDoubleForKey:v55];
  v222 = v56;

  v57 = NSStringFromSelector(sel_callPopularityGivenDayOfWeek);
  [coderCopy decodeDoubleForKey:v57];
  v221 = v58;

  v59 = NSStringFromSelector(sel_facetimePopularityGivenDayOfWeek);
  [coderCopy decodeDoubleForKey:v59];
  v220 = v60;

  v61 = NSStringFromSelector(sel_dayOfWeekGivenMessageWithEntity);
  [coderCopy decodeDoubleForKey:v61];
  v219 = v62;

  v63 = NSStringFromSelector(sel_dayOfWeekGivenCallWithEntity);
  [coderCopy decodeDoubleForKey:v63];
  v218 = v64;

  v65 = NSStringFromSelector(sel_dayOfWeekGivenFacetimeWithEntity);
  [coderCopy decodeDoubleForKey:v65];
  v217 = v66;

  v67 = NSStringFromSelector(sel_messageWithEntityGivenDayOfWeek);
  [coderCopy decodeDoubleForKey:v67];
  v216 = v68;

  v69 = NSStringFromSelector(sel_callWithEntityGivenDayOfWeek);
  [coderCopy decodeDoubleForKey:v69];
  v215 = v70;

  v71 = NSStringFromSelector(sel_facetimeWithEntityGivenDayOfWeek);
  [coderCopy decodeDoubleForKey:v71];
  v214 = v72;

  v73 = NSStringFromSelector(sel_messagePopularityGivenFocusMode);
  [coderCopy decodeDoubleForKey:v73];
  v213 = v74;

  v75 = NSStringFromSelector(sel_callPopularityGivenFocusMode);
  [coderCopy decodeDoubleForKey:v75];
  v212 = v76;

  v77 = NSStringFromSelector(sel_facetimePopularityGivenFocusMode);
  [coderCopy decodeDoubleForKey:v77];
  v211 = v78;

  v79 = NSStringFromSelector(sel_focusModeGivenMessageWithEntity);
  [coderCopy decodeDoubleForKey:v79];
  v210 = v80;

  v81 = NSStringFromSelector(sel_focusModeGivenCallWithEntity);
  [coderCopy decodeDoubleForKey:v81];
  v209 = v82;

  v83 = NSStringFromSelector(sel_focusModeGivenFacetimeWithEntity);
  [coderCopy decodeDoubleForKey:v83];
  v208 = v84;

  v85 = NSStringFromSelector(sel_messageWithEntityGivenFocusMode);
  [coderCopy decodeDoubleForKey:v85];
  v207 = v86;

  v87 = NSStringFromSelector(sel_callWithEntityGivenFocusMode);
  [coderCopy decodeDoubleForKey:v87];
  v206 = v88;

  v89 = NSStringFromSelector(sel_facetimeWithEntityGivenFocusMode);
  [coderCopy decodeDoubleForKey:v89];
  v205 = v90;

  v91 = NSStringFromSelector(sel_messagePopularityGivenLOI);
  [coderCopy decodeDoubleForKey:v91];
  v204 = v92;

  v93 = NSStringFromSelector(sel_callPopularityGivenLOI);
  [coderCopy decodeDoubleForKey:v93];
  v203 = v94;

  v95 = NSStringFromSelector(sel_facetimePopularityGivenLOI);
  [coderCopy decodeDoubleForKey:v95];
  v202 = v96;

  v97 = NSStringFromSelector(sel_LOIGivenMessageWithEntity);
  [coderCopy decodeDoubleForKey:v97];
  v201 = v98;

  v99 = NSStringFromSelector(sel_LOIGivenCallWithEntity);
  [coderCopy decodeDoubleForKey:v99];
  v200 = v100;

  v101 = NSStringFromSelector(sel_LOIGivenFacetimeWithEntity);
  [coderCopy decodeDoubleForKey:v101];
  v199 = v102;

  v103 = NSStringFromSelector(sel_messageWithEntityGivenLOI);
  [coderCopy decodeDoubleForKey:v103];
  v198 = v104;

  v105 = NSStringFromSelector(sel_callWithEntityGivenLOI);
  [coderCopy decodeDoubleForKey:v105];
  v197 = v106;

  v107 = NSStringFromSelector(sel_facetimeWithEntityGivenLOI);
  [coderCopy decodeDoubleForKey:v107];
  v196 = v108;

  v109 = NSStringFromSelector(sel_messagePopularityGivenSpecificGeoHash);
  [coderCopy decodeDoubleForKey:v109];
  v195 = v110;

  v111 = NSStringFromSelector(sel_callPopularityGivenSpecificGeoHash);
  [coderCopy decodeDoubleForKey:v111];
  v194 = v112;

  v113 = NSStringFromSelector(sel_facetimePopularityGivenSpecificGeoHash);
  [coderCopy decodeDoubleForKey:v113];
  v193 = v114;

  v115 = NSStringFromSelector(sel_specificGeoHashGivenMessageWithEntity);
  [coderCopy decodeDoubleForKey:v115];
  v192 = v116;

  v117 = NSStringFromSelector(sel_specificGeoHashGivenCallWithEntity);
  [coderCopy decodeDoubleForKey:v117];
  v191 = v118;

  v119 = NSStringFromSelector(sel_specificGeoHashGivenFacetimeWithEntity);
  [coderCopy decodeDoubleForKey:v119];

  v120 = NSStringFromSelector(sel_messageWithEntityGivenSpecificGeoHash);
  [coderCopy decodeDoubleForKey:v120];

  v121 = NSStringFromSelector(sel_callWithEntityGivenSpecificGeoHash);
  [coderCopy decodeDoubleForKey:v121];

  v122 = NSStringFromSelector(sel_facetimeWithEntityGivenSpecificGeoHash);
  [coderCopy decodeDoubleForKey:v122];

  v123 = NSStringFromSelector(sel_messagePopularityGivenCoarseGeoHash);
  [coderCopy decodeDoubleForKey:v123];

  v124 = NSStringFromSelector(sel_callPopularityGivenCoarseGeoHash);
  [coderCopy decodeDoubleForKey:v124];

  v125 = NSStringFromSelector(sel_facetimePopularityGivenCoarseGeoHash);
  [coderCopy decodeDoubleForKey:v125];

  v126 = NSStringFromSelector(sel_coarseGeoHashGivenMessageWithEntity);
  [coderCopy decodeDoubleForKey:v126];

  v127 = NSStringFromSelector(sel_coarseGeoHashGivenCallWithEntity);
  [coderCopy decodeDoubleForKey:v127];

  v128 = NSStringFromSelector(sel_coarseGeoHashGivenFacetimeWithEntity);
  [coderCopy decodeDoubleForKey:v128];

  v129 = NSStringFromSelector(sel_messageWithEntityGivenCoarseGeoHash);
  [coderCopy decodeDoubleForKey:v129];

  v130 = NSStringFromSelector(sel_callWithEntityGivenCoarseGeoHash);
  [coderCopy decodeDoubleForKey:v130];

  v131 = NSStringFromSelector(sel_facetimeWithEntityGivenCoarseGeoHash);
  [coderCopy decodeDoubleForKey:v131];

  v132 = NSStringFromSelector(sel_messagePopularityGivenLargeGeoHash);
  [coderCopy decodeDoubleForKey:v132];

  v133 = NSStringFromSelector(sel_callPopularityGivenLargeGeoHash);
  [coderCopy decodeDoubleForKey:v133];

  v134 = NSStringFromSelector(sel_facetimePopularityGivenLargeGeoHash);
  [coderCopy decodeDoubleForKey:v134];

  v135 = NSStringFromSelector(sel_largeGeoHashGivenMessageWithEntity);
  [coderCopy decodeDoubleForKey:v135];

  v136 = NSStringFromSelector(sel_largeGeoHashGivenCallWithEntity);
  [coderCopy decodeDoubleForKey:v136];

  v137 = NSStringFromSelector(sel_largeGeoHashGivenFacetimeWithEntity);
  [coderCopy decodeDoubleForKey:v137];

  v138 = NSStringFromSelector(sel_messageWithEntityGivenLargeGeoHash);
  [coderCopy decodeDoubleForKey:v138];

  v139 = NSStringFromSelector(sel_callWithEntityGivenLargeGeoHash);
  [coderCopy decodeDoubleForKey:v139];

  v140 = NSStringFromSelector(sel_facetimeWithEntityGivenLargeGeoHash);
  [coderCopy decodeDoubleForKey:v140];

  v141 = NSStringFromSelector(sel_messagePopularityGivenMicroLocation);
  [coderCopy decodeDoubleForKey:v141];

  v142 = NSStringFromSelector(sel_callPopularityGivenMicroLocation);
  [coderCopy decodeDoubleForKey:v142];

  v143 = NSStringFromSelector(sel_facetimePopularityGivenMicroLocation);
  [coderCopy decodeDoubleForKey:v143];

  v144 = NSStringFromSelector(sel_microLocationGivenMessageWithEntity);
  [coderCopy decodeDoubleForKey:v144];

  v145 = NSStringFromSelector(sel_microLocationGivenCallWithEntity);
  [coderCopy decodeDoubleForKey:v145];

  v146 = NSStringFromSelector(sel_microLocationGivenFacetimeWithEntity);
  [coderCopy decodeDoubleForKey:v146];

  v147 = NSStringFromSelector(sel_messageWithEntityGivenMicroLocation);
  [coderCopy decodeDoubleForKey:v147];

  v148 = NSStringFromSelector(sel_callWithEntityGivenMicroLocation);
  [coderCopy decodeDoubleForKey:v148];

  v149 = NSStringFromSelector(sel_facetimeWithEntityGivenMicroLocation);
  [coderCopy decodeDoubleForKey:v149];

  v150 = NSStringFromSelector(sel_messagePopularityGivenMotionState);
  [coderCopy decodeDoubleForKey:v150];

  v151 = NSStringFromSelector(sel_callPopularityGivenMotionState);
  [coderCopy decodeDoubleForKey:v151];

  v152 = NSStringFromSelector(sel_facetimePopularityGivenMotionState);
  [coderCopy decodeDoubleForKey:v152];

  v153 = NSStringFromSelector(sel_motionStateGivenMessageWithEntity);
  [coderCopy decodeDoubleForKey:v153];

  v154 = NSStringFromSelector(sel_motionStateGivenCallWithEntity);
  [coderCopy decodeDoubleForKey:v154];

  v155 = NSStringFromSelector(sel_motionStateGivenFacetimeWithEntity);
  [coderCopy decodeDoubleForKey:v155];

  v156 = NSStringFromSelector(sel_messageWithEntityGivenMotionState);
  [coderCopy decodeDoubleForKey:v156];

  v157 = NSStringFromSelector(sel_callWithEntityGivenMotionState);
  [coderCopy decodeDoubleForKey:v157];

  v158 = NSStringFromSelector(sel_facetimeWithEntityGivenMotionState);
  [coderCopy decodeDoubleForKey:v158];

  v159 = NSStringFromSelector(sel_messagePopularityGivenWiFi);
  [coderCopy decodeDoubleForKey:v159];

  v160 = NSStringFromSelector(sel_callPopularityGivenWiFi);
  [coderCopy decodeDoubleForKey:v160];

  v161 = NSStringFromSelector(sel_facetimePopularityGivenWiFi);
  [coderCopy decodeDoubleForKey:v161];

  v162 = NSStringFromSelector(sel_wiFiGivenMessageWithEntity);
  [coderCopy decodeDoubleForKey:v162];

  v163 = NSStringFromSelector(sel_wiFiGivenCallWithEntity);
  [coderCopy decodeDoubleForKey:v163];

  v164 = NSStringFromSelector(sel_wiFiGivenFacetimeWithEntity);
  [coderCopy decodeDoubleForKey:v164];

  v165 = NSStringFromSelector(sel_messageWithEntityGivenWiFi);
  [coderCopy decodeDoubleForKey:v165];

  v166 = NSStringFromSelector(sel_callWithEntityGivenWiFi);
  [coderCopy decodeDoubleForKey:v166];

  v167 = NSStringFromSelector(sel_facetimeWithEntityGivenWiFi);
  [coderCopy decodeDoubleForKey:v167];

  v168 = NSStringFromSelector(sel_messagePopularityGivenSequence);
  [coderCopy decodeDoubleForKey:v168];

  v169 = NSStringFromSelector(sel_callPopularityGivenSequence);
  [coderCopy decodeDoubleForKey:v169];

  v170 = NSStringFromSelector(sel_facetimePopularityGivenSequence);
  [coderCopy decodeDoubleForKey:v170];

  v171 = NSStringFromSelector(sel_sequenceGivenMessageWithEntity);
  [coderCopy decodeDoubleForKey:v171];

  v172 = NSStringFromSelector(sel_sequenceGivenCallWithEntity);
  [coderCopy decodeDoubleForKey:v172];

  v173 = NSStringFromSelector(sel_sequenceGivenFacetimeWithEntity);
  [coderCopy decodeDoubleForKey:v173];

  v174 = NSStringFromSelector(sel_lastExecutionAge);
  v175 = [coderCopy decodeIntForKey:v174];

  v176 = NSStringFromSelector(sel_medianTimeIntervalBetweenExecution);
  v177 = [coderCopy decodeIntForKey:v176];

  v178 = NSStringFromSelector(sel_dailyDoseL1Error);
  v179 = [coderCopy decodeIntForKey:v178];

  v180 = NSStringFromSelector(sel_dailyDoseL2Error);
  [coderCopy decodeDoubleForKey:v180];

  v181 = NSStringFromSelector(sel_shortTermTrendingPopularity);
  [coderCopy decodeDoubleForKey:v181];

  v182 = NSStringFromSelector(sel_trendingPopularity);
  [coderCopy decodeDoubleForKey:v182];

  v183 = NSStringFromSelector(sel_longTermTrendingPopularity);
  [coderCopy decodeDoubleForKey:v183];

  v184 = NSStringFromSelector(sel_locationLastExecutionAge);
  v185 = [coderCopy decodeIntForKey:v184];

  v186 = NSStringFromSelector(sel_locationTrendingPopularity);
  [coderCopy decodeDoubleForKey:v186];

  v187 = NSStringFromSelector(sel_locationPopularityGivenSpecificGeoHash);
  [coderCopy decodeDoubleForKey:v187];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    self = objc_retainAutoreleasedReturnValue( [GDEntityFeatures initWithCandidateNameScore:candidateCommunicationScore:candidateOrganizationScore:candidateLocationScore:candidateEventLocationScore:candidateEventNameScore:topicScore:messagePopularityGivenTimeOfDay:callPopularityGivenTimeOfDay:facetimePopularityGivenTimeOfDay:timeOfDayGivenMessageWithEntity:timeOfDayGivenCallWithEntity:timeOfDayGivenFacetimeWithEntity:messageWithEntityGivenTimeOfDay:callWithEntityGivenTimeOfDay:facetimeWithEntityGivenTimeOfDay:messagePopularityGivenCoarseTimeOfDay:callPopularityGivenCoarseTimeOfDay:facetimePopularityGivenCoarseTimeOfDay:coarseTimeOfDayGivenMessageWithEntity:coarseTimeOfDayGivenCallWithEntity:coarseTimeOfDayGivenFacetimeWithEntity:messageWithEntityGivenCoarseTimeOfDay:callWithEntityGivenCoarseTimeOfDay:facetimeWithEntityGivenCoarseTimeOfDay:messagePopularityGivenDayOfWeek:callPopularityGivenDayOfWeek:facetimePopularityGivenDayOfWeek:dayOfWeekGivenMessageWithEntity:dayOfWeekGivenCallWithEntity:dayOfWeekGivenFacetimeWithEntity:messageWithEntityGivenDayOfWeek:callWithEntityGivenDayOfWeek:facetimeWithEntityGivenDayOfWeek:messagePopularityGivenFocusMode:callPopularityGivenFocusMode:facetimePopularityGivenFocusMode:focusModeGivenMessageWithEntity:focusModeGivenCallWithEntity:focusModeGivenFacetimeWithEntity:messageWithEntityGivenFocusMode:callWithEntityGivenFocusMode:facetimeWithEntityGivenFocusMode:messagePopularityGivenLOI:callPopularityGivenLOI:facetimePopularityGivenLOI:LOIGivenMessageWithEntity:LOIGivenCallWithEntity:LOIGivenFacetimeWithEntity:messageWithEntityGivenLOI:callWithEntityGivenLOI:facetimeWithEntityGivenLOI:messagePopularityGivenSpecificGeoHash:callPopularityGivenSpecificGeoHash:facetimePopularityGivenSpecificGeoHash:specificGeoHashGivenMessageWithEntity:specificGeoHashGivenCallWithEntity:specificGeoHashGivenFacetimeWithEntity:messageWithEntityGivenSpecificGeoHash:callWithEntityGivenSpecificGeoHash:facetimeWithEntityGivenSpecificGeoHash:messagePopularityGivenCoarseGeoHash:callPopularityGivenCoarseGeoHash:facetimePopularityGivenCoarseGeoHash:coarseGeoHashGivenMessageWithEntity:coarseGeoHashGivenCallWithEntity:coarseGeoHashGivenFacetimeWithEntity:messageWithEntityGivenCoarseGeoHash:callWithEntityGivenCoarseGeoHash:facetimeWithEntityGivenCoarseGeoHash:messagePopularityGivenLargeGeoHash:callPopularityGivenLargeGeoHash:facetimePopularityGivenLargeGeoHash:largeGeoHashGivenMessageWithEntity:largeGeoHashGivenCallWithEntity:largeGeoHashGivenFacetimeWithEntity:messageWithEntityGivenLargeGeoHash:callWithEntityGivenLargeGeoHash:facetimeWithEntityGivenLargeGeoHash:messagePopularityGivenMicroLocation:callPopularityGivenMicroLocation:facetimePopularityGivenMicroLocation:microLocationGivenMessageWithEntity:microLocationGivenCallWithEntity:microLocationGivenFacetimeWithEntity:messageWithEntityGivenMicroLocation:callWithEntityGivenMicroLocation:facetimeWithEntityGivenMicroLocation:messagePopularityGivenMotionState:callPopularityGivenMotionState:facetimePopularityGivenMotionState:motionStateGivenMessageWithEntity:motionStateGivenCallWithEntity:motionStateGivenFacetimeWithEntity:messageWithEntityGivenMotionState:callWithEntityGivenMotionState:facetimeWithEntityGivenMotionState:messagePopularityGivenWiFi:callPopularityGivenWiFi:facetimePopularityGivenWiFi:wiFiGivenMessageWithEntity:wiFiGivenCallWithEntity:wiFiGivenFacetimeWithEntity:messageWithEntityGivenWiFi:callWithEntityGivenWiFi:facetimeWithEntityGivenWiFi:messagePopularityGivenSequence:callPopularityGivenSequence:facetimePopularityGivenSequence:sequenceGivenMessageWithEntity:sequenceGivenCallWithEntity:sequenceGivenFacetimeWithEntity:lastExecutionAge:medianTimeIntervalBetweenExecution:dailyDoseL1Error:dailyDoseL2Error:shortTermTrendingPopularity:trendingPopularity:longTermTrendingPopularity:locationLastExecutationAge:locationPopularityGivenSpecificGeoHash:locationTrendingPopularity:]( self,  "initWithCandidateNameScore:candidateCommunicationScore:candidateOrganizationScore:candidateLocationScore:candidateEventLocationScore:candidateEventNameScore:topicScore:messagePopularityGivenTimeOfDay:callPopularityGivenTimeOfDay:facetimePopularityGivenTimeOfDay:timeOfDayGivenMessageWithEntity:timeOfDayGivenCallWithEntity:timeOfDayGivenFacetimeWithEntity:messageWithEntityGivenTimeOfDay:callWithEntityGivenTimeOfDay:facetimeWithEntityGivenTimeOfDay:messagePopularityGivenCoarseTimeOfDay:callPopularityGivenCoarseTimeOfDay:facetimePopularityGivenCoarseTimeOfDay:coarseTimeOfDayGivenMessageWithEntity:coarseTimeOfDayGivenCallWithEntity:coarseTimeOfDayGivenFacetimeWithEntity:messageWithEntityGivenCoarseTimeOfDay:callWithEntityGivenCoarseTimeOfDay:facetimeWithEntityGivenCoarseTimeOfDay:messagePopularityGivenDayOfWeek:callPopularityGivenDayOfWeek:facetimePopularityGivenDayOfWeek:dayOfWeekGivenMessageWithEntity:dayOfWeekGivenCallWithEntity:dayOfWeekGivenFacetimeWithEntity:messageWithEntityGivenDayOfWeek:callWithEntityGivenDayOfWeek:facetimeWithEntityGivenDayOfWeek:messagePopularityGivenFocusMode:callPopularityGivenFocusMode:facetimePopularityGivenFocusMode:focusModeGivenMessageWithEntity:focusModeGivenCallWithEntity:focusModeGivenFacetimeWithEntity:messageWithEntityGivenFocusMode:callWithEntityGivenFocusMode:facetimeWithEntityGivenFocusMode:messagePopularityGivenLOI:callPopularityGivenLOI:facetimePopularityGivenLOI:LOIGivenMessageWithEntity:LOIGivenCallWithEntity:LOIGivenFacetimeWithEntity:messageWithEntityGivenLOI:callWithEntityGivenLOI:facetimeWithEntityGivenLOI:messagePopularityGivenSpecificGeoHash:callPopularityGivenSpecificGeoHash:facetimePopularityGivenSpecificGeoHash:specificGeoHashGivenMessageWithEntity:specificGeoHashGivenCallWithEntity:specificGeoHashGivenFacetimeWithEntity:messageWithEntityGivenSpecificGeoHash:callWithEntityGivenSpecificGeoHash:facetimeWithEntityGivenSpecificGeoHash:messagePopularityGivenCoarseGeoHash:callPopularityGivenCoarseGeoHash:facetimePopularityGivenCoarseGeoHash:coarseGeoHashGivenMessageWithEntity:coarseGeoHashGivenCallWithEntity:coarseGeoHashGivenFacetimeWithEntity:messageWithEntityGivenCoarseGeoHash:callWithEntityGivenCoarseGeoHash:facetimeWithEntityGivenCoarseGeoHash:messagePopularityGivenLargeGeoHash:callPopularityGivenLargeGeoHash:facetimePopularityGivenLargeGeoHash:largeGeoHashGivenMessageWithEntity:largeGeoHashGivenCallWithEntity:largeGeoHashGivenFacetimeWithEntity:messageWithEntityGivenLargeGeoHash:callWithEntityGivenLargeGeoHash:facetimeWithEntityGivenLargeGeoHash:messagePopularityGivenMicroLocation:callPopularityGivenMicroLocation:facetimePopularityGivenMicroLocation:microLocationGivenMessageWithEntity:microLocationGivenCallWithEntity:microLocationGivenFacetimeWithEntity:messageWithEntityGivenMicroLocation:callWithEntityGivenMicroLocation:facetimeWithEntityGivenMicroLocation:messagePopularityGivenMotionState:callPopularityGivenMotionState:facetimePopularityGivenMotionState:motionStateGivenMessageWithEntity:motionStateGivenCallWithEntity:motionStateGivenFacetimeWithEntity:messageWithEntityGivenMotionState:callWithEntityGivenMotionState:facetimeWithEntityGivenMotionState:messagePopularityGivenWiFi:callPopularityGivenWiFi:facetimePopularityGivenWiFi:wiFiGivenMessageWithEntity:wiFiGivenCallWithEntity:wiFiGivenFacetimeWithEntity:messageWithEntityGivenWiFi:callWithEntityGivenWiFi:facetimeWithEntityGivenWiFi:messagePopularityGivenSequence:callPopularityGivenSequence:facetimePopularityGivenSequence:sequenceGivenMessageWithEntity:sequenceGivenCallWithEntity:sequenceGivenFacetimeWithEntity:lastExecutionAge:medianTimeIntervalBetweenExecution:dailyDoseL1Error:dailyDoseL2Error:shortTermTrendingPopularity:trendingPopularity:longTermTrendingPopularity:locationLastExecutationAge:locationPopularityGivenSpecificGeoHash:locationTrendingPopularity:",  v175,  v177,  v179,  v185,  v247,  v246,  v245,  v244,  v243,  v242,  v241,  v240,  v239,  v238,  v237,  v236,  v235,  v234,  v233,  v232,  v231,  v230,  v229,  v228,  v227,  v226,  v225,  v224,  v223,  v222,  v221,  v220,  v219,  v218,  v217,  v216,  v215,  v214,  v213,  v212,  v211,  v210,  v209,  v208,  v207,  v206,
               v205,
               v204,
               v203,
               v202,
               v201,
               v200,
               v199,
               v198,
               v197,
               v196,
               v195,
               v194,
               v193,
               v192,
               v191));
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  candidateNameScore = self->_candidateNameScore;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_candidateNameScore);
  [coderCopy encodeDouble:v6 forKey:candidateNameScore];

  candidateCommunicationScore = self->_candidateCommunicationScore;
  v8 = NSStringFromSelector(sel_candidateCommunicationScore);
  [coderCopy encodeDouble:v8 forKey:candidateCommunicationScore];

  candidateOrganizationScore = self->_candidateOrganizationScore;
  v10 = NSStringFromSelector(sel_candidateOrganizationScore);
  [coderCopy encodeDouble:v10 forKey:candidateOrganizationScore];

  candidateLocationScore = self->_candidateLocationScore;
  v12 = NSStringFromSelector(sel_candidateLocationScore);
  [coderCopy encodeDouble:v12 forKey:candidateLocationScore];

  candidateEventLocationScore = self->_candidateEventLocationScore;
  v14 = NSStringFromSelector(sel_candidateEventLocationScore);
  [coderCopy encodeDouble:v14 forKey:candidateEventLocationScore];

  candidateEventNameScore = self->_candidateEventNameScore;
  v16 = NSStringFromSelector(sel_candidateEventNameScore);
  [coderCopy encodeDouble:v16 forKey:candidateEventNameScore];

  topicScore = self->_topicScore;
  v18 = NSStringFromSelector(sel_topicScore);
  [coderCopy encodeDouble:v18 forKey:topicScore];

  messagePopularityGivenTimeOfDay = self->_messagePopularityGivenTimeOfDay;
  v20 = NSStringFromSelector(sel_messagePopularityGivenTimeOfDay);
  [coderCopy encodeDouble:v20 forKey:messagePopularityGivenTimeOfDay];

  callPopularityGivenTimeOfDay = self->_callPopularityGivenTimeOfDay;
  v22 = NSStringFromSelector(sel_callPopularityGivenTimeOfDay);
  [coderCopy encodeDouble:v22 forKey:callPopularityGivenTimeOfDay];

  facetimePopularityGivenTimeOfDay = self->_facetimePopularityGivenTimeOfDay;
  v24 = NSStringFromSelector(sel_facetimePopularityGivenTimeOfDay);
  [coderCopy encodeDouble:v24 forKey:facetimePopularityGivenTimeOfDay];

  timeOfDayGivenMessageWithEntity = self->_timeOfDayGivenMessageWithEntity;
  v26 = NSStringFromSelector(sel_timeOfDayGivenMessageWithEntity);
  [coderCopy encodeDouble:v26 forKey:timeOfDayGivenMessageWithEntity];

  timeOfDayGivenCallWithEntity = self->_timeOfDayGivenCallWithEntity;
  v28 = NSStringFromSelector(sel_timeOfDayGivenCallWithEntity);
  [coderCopy encodeDouble:v28 forKey:timeOfDayGivenCallWithEntity];

  timeOfDayGivenFacetimeWithEntity = self->_timeOfDayGivenFacetimeWithEntity;
  v30 = NSStringFromSelector(sel_timeOfDayGivenFacetimeWithEntity);
  [coderCopy encodeDouble:v30 forKey:timeOfDayGivenFacetimeWithEntity];

  messageWithEntityGivenTimeOfDay = self->_messageWithEntityGivenTimeOfDay;
  v32 = NSStringFromSelector(sel_messageWithEntityGivenTimeOfDay);
  [coderCopy encodeDouble:v32 forKey:messageWithEntityGivenTimeOfDay];

  callWithEntityGivenTimeOfDay = self->_callWithEntityGivenTimeOfDay;
  v34 = NSStringFromSelector(sel_callWithEntityGivenTimeOfDay);
  [coderCopy encodeDouble:v34 forKey:callWithEntityGivenTimeOfDay];

  facetimeWithEntityGivenTimeOfDay = self->_facetimeWithEntityGivenTimeOfDay;
  v36 = NSStringFromSelector(sel_facetimeWithEntityGivenTimeOfDay);
  [coderCopy encodeDouble:v36 forKey:facetimeWithEntityGivenTimeOfDay];

  messagePopularityGivenCoarseTimeOfDay = self->_messagePopularityGivenCoarseTimeOfDay;
  v38 = NSStringFromSelector(sel_messagePopularityGivenCoarseTimeOfDay);
  [coderCopy encodeDouble:v38 forKey:messagePopularityGivenCoarseTimeOfDay];

  callPopularityGivenCoarseTimeOfDay = self->_callPopularityGivenCoarseTimeOfDay;
  v40 = NSStringFromSelector(sel_callPopularityGivenCoarseTimeOfDay);
  [coderCopy encodeDouble:v40 forKey:callPopularityGivenCoarseTimeOfDay];

  facetimePopularityGivenCoarseTimeOfDay = self->_facetimePopularityGivenCoarseTimeOfDay;
  v42 = NSStringFromSelector(sel_facetimePopularityGivenCoarseTimeOfDay);
  [coderCopy encodeDouble:v42 forKey:facetimePopularityGivenCoarseTimeOfDay];

  coarseTimeOfDayGivenMessageWithEntity = self->_coarseTimeOfDayGivenMessageWithEntity;
  v44 = NSStringFromSelector(sel_coarseTimeOfDayGivenMessageWithEntity);
  [coderCopy encodeDouble:v44 forKey:coarseTimeOfDayGivenMessageWithEntity];

  coarseTimeOfDayGivenCallWithEntity = self->_coarseTimeOfDayGivenCallWithEntity;
  v46 = NSStringFromSelector(sel_coarseTimeOfDayGivenCallWithEntity);
  [coderCopy encodeDouble:v46 forKey:coarseTimeOfDayGivenCallWithEntity];

  coarseTimeOfDayGivenFacetimeWithEntity = self->_coarseTimeOfDayGivenFacetimeWithEntity;
  v48 = NSStringFromSelector(sel_coarseTimeOfDayGivenFacetimeWithEntity);
  [coderCopy encodeDouble:v48 forKey:coarseTimeOfDayGivenFacetimeWithEntity];

  messageWithEntityGivenCoarseTimeOfDay = self->_messageWithEntityGivenCoarseTimeOfDay;
  v50 = NSStringFromSelector(sel_messageWithEntityGivenCoarseTimeOfDay);
  [coderCopy encodeDouble:v50 forKey:messageWithEntityGivenCoarseTimeOfDay];

  callWithEntityGivenCoarseTimeOfDay = self->_callWithEntityGivenCoarseTimeOfDay;
  v52 = NSStringFromSelector(sel_callWithEntityGivenCoarseTimeOfDay);
  [coderCopy encodeDouble:v52 forKey:callWithEntityGivenCoarseTimeOfDay];

  facetimeWithEntityGivenCoarseTimeOfDay = self->_facetimeWithEntityGivenCoarseTimeOfDay;
  v54 = NSStringFromSelector(sel_facetimeWithEntityGivenCoarseTimeOfDay);
  [coderCopy encodeDouble:v54 forKey:facetimeWithEntityGivenCoarseTimeOfDay];

  messagePopularityGivenDayOfWeek = self->_messagePopularityGivenDayOfWeek;
  v56 = NSStringFromSelector(sel_messagePopularityGivenDayOfWeek);
  [coderCopy encodeDouble:v56 forKey:messagePopularityGivenDayOfWeek];

  callPopularityGivenDayOfWeek = self->_callPopularityGivenDayOfWeek;
  v58 = NSStringFromSelector(sel_callPopularityGivenDayOfWeek);
  [coderCopy encodeDouble:v58 forKey:callPopularityGivenDayOfWeek];

  facetimePopularityGivenDayOfWeek = self->_facetimePopularityGivenDayOfWeek;
  v60 = NSStringFromSelector(sel_facetimePopularityGivenDayOfWeek);
  [coderCopy encodeDouble:v60 forKey:facetimePopularityGivenDayOfWeek];

  dayOfWeekGivenMessageWithEntity = self->_dayOfWeekGivenMessageWithEntity;
  v62 = NSStringFromSelector(sel_dayOfWeekGivenMessageWithEntity);
  [coderCopy encodeDouble:v62 forKey:dayOfWeekGivenMessageWithEntity];

  dayOfWeekGivenCallWithEntity = self->_dayOfWeekGivenCallWithEntity;
  v64 = NSStringFromSelector(sel_dayOfWeekGivenCallWithEntity);
  [coderCopy encodeDouble:v64 forKey:dayOfWeekGivenCallWithEntity];

  dayOfWeekGivenFacetimeWithEntity = self->_dayOfWeekGivenFacetimeWithEntity;
  v66 = NSStringFromSelector(sel_dayOfWeekGivenFacetimeWithEntity);
  [coderCopy encodeDouble:v66 forKey:dayOfWeekGivenFacetimeWithEntity];

  messageWithEntityGivenDayOfWeek = self->_messageWithEntityGivenDayOfWeek;
  v68 = NSStringFromSelector(sel_messageWithEntityGivenDayOfWeek);
  [coderCopy encodeDouble:v68 forKey:messageWithEntityGivenDayOfWeek];

  callWithEntityGivenDayOfWeek = self->_callWithEntityGivenDayOfWeek;
  v70 = NSStringFromSelector(sel_callWithEntityGivenDayOfWeek);
  [coderCopy encodeDouble:v70 forKey:callWithEntityGivenDayOfWeek];

  facetimeWithEntityGivenDayOfWeek = self->_facetimeWithEntityGivenDayOfWeek;
  v72 = NSStringFromSelector(sel_facetimeWithEntityGivenDayOfWeek);
  [coderCopy encodeDouble:v72 forKey:facetimeWithEntityGivenDayOfWeek];

  messagePopularityGivenFocusMode = self->_messagePopularityGivenFocusMode;
  v74 = NSStringFromSelector(sel_messagePopularityGivenFocusMode);
  [coderCopy encodeDouble:v74 forKey:messagePopularityGivenFocusMode];

  callPopularityGivenFocusMode = self->_callPopularityGivenFocusMode;
  v76 = NSStringFromSelector(sel_callPopularityGivenFocusMode);
  [coderCopy encodeDouble:v76 forKey:callPopularityGivenFocusMode];

  facetimePopularityGivenFocusMode = self->_facetimePopularityGivenFocusMode;
  v78 = NSStringFromSelector(sel_facetimePopularityGivenFocusMode);
  [coderCopy encodeDouble:v78 forKey:facetimePopularityGivenFocusMode];

  focusModeGivenMessageWithEntity = self->_focusModeGivenMessageWithEntity;
  v80 = NSStringFromSelector(sel_focusModeGivenMessageWithEntity);
  [coderCopy encodeDouble:v80 forKey:focusModeGivenMessageWithEntity];

  focusModeGivenCallWithEntity = self->_focusModeGivenCallWithEntity;
  v82 = NSStringFromSelector(sel_focusModeGivenCallWithEntity);
  [coderCopy encodeDouble:v82 forKey:focusModeGivenCallWithEntity];

  focusModeGivenFacetimeWithEntity = self->_focusModeGivenFacetimeWithEntity;
  v84 = NSStringFromSelector(sel_focusModeGivenFacetimeWithEntity);
  [coderCopy encodeDouble:v84 forKey:focusModeGivenFacetimeWithEntity];

  messageWithEntityGivenFocusMode = self->_messageWithEntityGivenFocusMode;
  v86 = NSStringFromSelector(sel_messageWithEntityGivenFocusMode);
  [coderCopy encodeDouble:v86 forKey:messageWithEntityGivenFocusMode];

  callWithEntityGivenFocusMode = self->_callWithEntityGivenFocusMode;
  v88 = NSStringFromSelector(sel_callWithEntityGivenFocusMode);
  [coderCopy encodeDouble:v88 forKey:callWithEntityGivenFocusMode];

  facetimeWithEntityGivenFocusMode = self->_facetimeWithEntityGivenFocusMode;
  v90 = NSStringFromSelector(sel_facetimeWithEntityGivenFocusMode);
  [coderCopy encodeDouble:v90 forKey:facetimeWithEntityGivenFocusMode];

  messagePopularityGivenLOI = self->_messagePopularityGivenLOI;
  v92 = NSStringFromSelector(sel_messagePopularityGivenLOI);
  [coderCopy encodeDouble:v92 forKey:messagePopularityGivenLOI];

  callPopularityGivenLOI = self->_callPopularityGivenLOI;
  v94 = NSStringFromSelector(sel_callPopularityGivenLOI);
  [coderCopy encodeDouble:v94 forKey:callPopularityGivenLOI];

  facetimePopularityGivenLOI = self->_facetimePopularityGivenLOI;
  v96 = NSStringFromSelector(sel_facetimePopularityGivenLOI);
  [coderCopy encodeDouble:v96 forKey:facetimePopularityGivenLOI];

  LOIGivenMessageWithEntity = self->_LOIGivenMessageWithEntity;
  v98 = NSStringFromSelector(sel_LOIGivenMessageWithEntity);
  [coderCopy encodeDouble:v98 forKey:LOIGivenMessageWithEntity];

  LOIGivenCallWithEntity = self->_LOIGivenCallWithEntity;
  v100 = NSStringFromSelector(sel_LOIGivenCallWithEntity);
  [coderCopy encodeDouble:v100 forKey:LOIGivenCallWithEntity];

  LOIGivenFacetimeWithEntity = self->_LOIGivenFacetimeWithEntity;
  v102 = NSStringFromSelector(sel_LOIGivenFacetimeWithEntity);
  [coderCopy encodeDouble:v102 forKey:LOIGivenFacetimeWithEntity];

  messageWithEntityGivenLOI = self->_messageWithEntityGivenLOI;
  v104 = NSStringFromSelector(sel_messageWithEntityGivenLOI);
  [coderCopy encodeDouble:v104 forKey:messageWithEntityGivenLOI];

  callWithEntityGivenLOI = self->_callWithEntityGivenLOI;
  v106 = NSStringFromSelector(sel_callWithEntityGivenLOI);
  [coderCopy encodeDouble:v106 forKey:callWithEntityGivenLOI];

  facetimeWithEntityGivenLOI = self->_facetimeWithEntityGivenLOI;
  v108 = NSStringFromSelector(sel_facetimeWithEntityGivenLOI);
  [coderCopy encodeDouble:v108 forKey:facetimeWithEntityGivenLOI];

  messagePopularityGivenSpecificGeoHash = self->_messagePopularityGivenSpecificGeoHash;
  v110 = NSStringFromSelector(sel_messagePopularityGivenSpecificGeoHash);
  [coderCopy encodeDouble:v110 forKey:messagePopularityGivenSpecificGeoHash];

  callPopularityGivenSpecificGeoHash = self->_callPopularityGivenSpecificGeoHash;
  v112 = NSStringFromSelector(sel_callPopularityGivenSpecificGeoHash);
  [coderCopy encodeDouble:v112 forKey:callPopularityGivenSpecificGeoHash];

  facetimePopularityGivenSpecificGeoHash = self->_facetimePopularityGivenSpecificGeoHash;
  v114 = NSStringFromSelector(sel_facetimePopularityGivenSpecificGeoHash);
  [coderCopy encodeDouble:v114 forKey:facetimePopularityGivenSpecificGeoHash];

  specificGeoHashGivenMessageWithEntity = self->_specificGeoHashGivenMessageWithEntity;
  v116 = NSStringFromSelector(sel_specificGeoHashGivenMessageWithEntity);
  [coderCopy encodeDouble:v116 forKey:specificGeoHashGivenMessageWithEntity];

  specificGeoHashGivenCallWithEntity = self->_specificGeoHashGivenCallWithEntity;
  v118 = NSStringFromSelector(sel_specificGeoHashGivenCallWithEntity);
  [coderCopy encodeDouble:v118 forKey:specificGeoHashGivenCallWithEntity];

  specificGeoHashGivenFacetimeWithEntity = self->_specificGeoHashGivenFacetimeWithEntity;
  v120 = NSStringFromSelector(sel_specificGeoHashGivenFacetimeWithEntity);
  [coderCopy encodeDouble:v120 forKey:specificGeoHashGivenFacetimeWithEntity];

  messageWithEntityGivenSpecificGeoHash = self->_messageWithEntityGivenSpecificGeoHash;
  v122 = NSStringFromSelector(sel_messageWithEntityGivenSpecificGeoHash);
  [coderCopy encodeDouble:v122 forKey:messageWithEntityGivenSpecificGeoHash];

  callWithEntityGivenSpecificGeoHash = self->_callWithEntityGivenSpecificGeoHash;
  v124 = NSStringFromSelector(sel_callWithEntityGivenSpecificGeoHash);
  [coderCopy encodeDouble:v124 forKey:callWithEntityGivenSpecificGeoHash];

  facetimeWithEntityGivenSpecificGeoHash = self->_facetimeWithEntityGivenSpecificGeoHash;
  v126 = NSStringFromSelector(sel_facetimeWithEntityGivenSpecificGeoHash);
  [coderCopy encodeDouble:v126 forKey:facetimeWithEntityGivenSpecificGeoHash];

  messagePopularityGivenCoarseGeoHash = self->_messagePopularityGivenCoarseGeoHash;
  v128 = NSStringFromSelector(sel_messagePopularityGivenCoarseGeoHash);
  [coderCopy encodeDouble:v128 forKey:messagePopularityGivenCoarseGeoHash];

  callPopularityGivenCoarseGeoHash = self->_callPopularityGivenCoarseGeoHash;
  v130 = NSStringFromSelector(sel_callPopularityGivenCoarseGeoHash);
  [coderCopy encodeDouble:v130 forKey:callPopularityGivenCoarseGeoHash];

  facetimePopularityGivenCoarseGeoHash = self->_facetimePopularityGivenCoarseGeoHash;
  v132 = NSStringFromSelector(sel_facetimePopularityGivenCoarseGeoHash);
  [coderCopy encodeDouble:v132 forKey:facetimePopularityGivenCoarseGeoHash];

  coarseGeoHashGivenMessageWithEntity = self->_coarseGeoHashGivenMessageWithEntity;
  v134 = NSStringFromSelector(sel_coarseGeoHashGivenMessageWithEntity);
  [coderCopy encodeDouble:v134 forKey:coarseGeoHashGivenMessageWithEntity];

  coarseGeoHashGivenCallWithEntity = self->_coarseGeoHashGivenCallWithEntity;
  v136 = NSStringFromSelector(sel_coarseGeoHashGivenCallWithEntity);
  [coderCopy encodeDouble:v136 forKey:coarseGeoHashGivenCallWithEntity];

  coarseGeoHashGivenFacetimeWithEntity = self->_coarseGeoHashGivenFacetimeWithEntity;
  v138 = NSStringFromSelector(sel_coarseGeoHashGivenFacetimeWithEntity);
  [coderCopy encodeDouble:v138 forKey:coarseGeoHashGivenFacetimeWithEntity];

  messageWithEntityGivenCoarseGeoHash = self->_messageWithEntityGivenCoarseGeoHash;
  v140 = NSStringFromSelector(sel_messageWithEntityGivenCoarseGeoHash);
  [coderCopy encodeDouble:v140 forKey:messageWithEntityGivenCoarseGeoHash];

  callWithEntityGivenCoarseGeoHash = self->_callWithEntityGivenCoarseGeoHash;
  v142 = NSStringFromSelector(sel_callWithEntityGivenCoarseGeoHash);
  [coderCopy encodeDouble:v142 forKey:callWithEntityGivenCoarseGeoHash];

  facetimeWithEntityGivenCoarseGeoHash = self->_facetimeWithEntityGivenCoarseGeoHash;
  v144 = NSStringFromSelector(sel_facetimeWithEntityGivenCoarseGeoHash);
  [coderCopy encodeDouble:v144 forKey:facetimeWithEntityGivenCoarseGeoHash];

  messagePopularityGivenLargeGeoHash = self->_messagePopularityGivenLargeGeoHash;
  v146 = NSStringFromSelector(sel_messagePopularityGivenLargeGeoHash);
  [coderCopy encodeDouble:v146 forKey:messagePopularityGivenLargeGeoHash];

  callPopularityGivenLargeGeoHash = self->_callPopularityGivenLargeGeoHash;
  v148 = NSStringFromSelector(sel_callPopularityGivenLargeGeoHash);
  [coderCopy encodeDouble:v148 forKey:callPopularityGivenLargeGeoHash];

  facetimePopularityGivenLargeGeoHash = self->_facetimePopularityGivenLargeGeoHash;
  v150 = NSStringFromSelector(sel_facetimePopularityGivenLargeGeoHash);
  [coderCopy encodeDouble:v150 forKey:facetimePopularityGivenLargeGeoHash];

  largeGeoHashGivenMessageWithEntity = self->_largeGeoHashGivenMessageWithEntity;
  v152 = NSStringFromSelector(sel_largeGeoHashGivenMessageWithEntity);
  [coderCopy encodeDouble:v152 forKey:largeGeoHashGivenMessageWithEntity];

  largeGeoHashGivenCallWithEntity = self->_largeGeoHashGivenCallWithEntity;
  v154 = NSStringFromSelector(sel_largeGeoHashGivenCallWithEntity);
  [coderCopy encodeDouble:v154 forKey:largeGeoHashGivenCallWithEntity];

  largeGeoHashGivenFacetimeWithEntity = self->_largeGeoHashGivenFacetimeWithEntity;
  v156 = NSStringFromSelector(sel_largeGeoHashGivenFacetimeWithEntity);
  [coderCopy encodeDouble:v156 forKey:largeGeoHashGivenFacetimeWithEntity];

  messageWithEntityGivenLargeGeoHash = self->_messageWithEntityGivenLargeGeoHash;
  v158 = NSStringFromSelector(sel_messageWithEntityGivenLargeGeoHash);
  [coderCopy encodeDouble:v158 forKey:messageWithEntityGivenLargeGeoHash];

  callWithEntityGivenLargeGeoHash = self->_callWithEntityGivenLargeGeoHash;
  v160 = NSStringFromSelector(sel_callWithEntityGivenLargeGeoHash);
  [coderCopy encodeDouble:v160 forKey:callWithEntityGivenLargeGeoHash];

  facetimeWithEntityGivenLargeGeoHash = self->_facetimeWithEntityGivenLargeGeoHash;
  v162 = NSStringFromSelector(sel_facetimeWithEntityGivenLargeGeoHash);
  [coderCopy encodeDouble:v162 forKey:facetimeWithEntityGivenLargeGeoHash];

  messagePopularityGivenMicroLocation = self->_messagePopularityGivenMicroLocation;
  v164 = NSStringFromSelector(sel_messagePopularityGivenMicroLocation);
  [coderCopy encodeDouble:v164 forKey:messagePopularityGivenMicroLocation];

  callPopularityGivenMicroLocation = self->_callPopularityGivenMicroLocation;
  v166 = NSStringFromSelector(sel_callPopularityGivenMicroLocation);
  [coderCopy encodeDouble:v166 forKey:callPopularityGivenMicroLocation];

  facetimePopularityGivenMicroLocation = self->_facetimePopularityGivenMicroLocation;
  v168 = NSStringFromSelector(sel_facetimePopularityGivenMicroLocation);
  [coderCopy encodeDouble:v168 forKey:facetimePopularityGivenMicroLocation];

  microLocationGivenMessageWithEntity = self->_microLocationGivenMessageWithEntity;
  v170 = NSStringFromSelector(sel_microLocationGivenMessageWithEntity);
  [coderCopy encodeDouble:v170 forKey:microLocationGivenMessageWithEntity];

  microLocationGivenCallWithEntity = self->_microLocationGivenCallWithEntity;
  v172 = NSStringFromSelector(sel_microLocationGivenCallWithEntity);
  [coderCopy encodeDouble:v172 forKey:microLocationGivenCallWithEntity];

  microLocationGivenFacetimeWithEntity = self->_microLocationGivenFacetimeWithEntity;
  v174 = NSStringFromSelector(sel_microLocationGivenFacetimeWithEntity);
  [coderCopy encodeDouble:v174 forKey:microLocationGivenFacetimeWithEntity];

  messageWithEntityGivenMicroLocation = self->_messageWithEntityGivenMicroLocation;
  v176 = NSStringFromSelector(sel_messageWithEntityGivenMicroLocation);
  [coderCopy encodeDouble:v176 forKey:messageWithEntityGivenMicroLocation];

  callWithEntityGivenMicroLocation = self->_callWithEntityGivenMicroLocation;
  v178 = NSStringFromSelector(sel_callWithEntityGivenMicroLocation);
  [coderCopy encodeDouble:v178 forKey:callWithEntityGivenMicroLocation];

  facetimeWithEntityGivenMicroLocation = self->_facetimeWithEntityGivenMicroLocation;
  v180 = NSStringFromSelector(sel_facetimeWithEntityGivenMicroLocation);
  [coderCopy encodeDouble:v180 forKey:facetimeWithEntityGivenMicroLocation];

  messagePopularityGivenMotionState = self->_messagePopularityGivenMotionState;
  v182 = NSStringFromSelector(sel_messagePopularityGivenMotionState);
  [coderCopy encodeDouble:v182 forKey:messagePopularityGivenMotionState];

  callPopularityGivenMotionState = self->_callPopularityGivenMotionState;
  v184 = NSStringFromSelector(sel_callPopularityGivenMotionState);
  [coderCopy encodeDouble:v184 forKey:callPopularityGivenMotionState];

  facetimePopularityGivenMotionState = self->_facetimePopularityGivenMotionState;
  v186 = NSStringFromSelector(sel_facetimePopularityGivenMotionState);
  [coderCopy encodeDouble:v186 forKey:facetimePopularityGivenMotionState];

  motionStateGivenMessageWithEntity = self->_motionStateGivenMessageWithEntity;
  v188 = NSStringFromSelector(sel_motionStateGivenMessageWithEntity);
  [coderCopy encodeDouble:v188 forKey:motionStateGivenMessageWithEntity];

  motionStateGivenCallWithEntity = self->_motionStateGivenCallWithEntity;
  v190 = NSStringFromSelector(sel_motionStateGivenCallWithEntity);
  [coderCopy encodeDouble:v190 forKey:motionStateGivenCallWithEntity];

  motionStateGivenFacetimeWithEntity = self->_motionStateGivenFacetimeWithEntity;
  v192 = NSStringFromSelector(sel_motionStateGivenFacetimeWithEntity);
  [coderCopy encodeDouble:v192 forKey:motionStateGivenFacetimeWithEntity];

  messageWithEntityGivenMotionState = self->_messageWithEntityGivenMotionState;
  v194 = NSStringFromSelector(sel_messageWithEntityGivenMotionState);
  [coderCopy encodeDouble:v194 forKey:messageWithEntityGivenMotionState];

  callWithEntityGivenMotionState = self->_callWithEntityGivenMotionState;
  v196 = NSStringFromSelector(sel_callWithEntityGivenMotionState);
  [coderCopy encodeDouble:v196 forKey:callWithEntityGivenMotionState];

  facetimeWithEntityGivenMotionState = self->_facetimeWithEntityGivenMotionState;
  v198 = NSStringFromSelector(sel_facetimeWithEntityGivenMotionState);
  [coderCopy encodeDouble:v198 forKey:facetimeWithEntityGivenMotionState];

  messagePopularityGivenWiFi = self->_messagePopularityGivenWiFi;
  v200 = NSStringFromSelector(sel_messagePopularityGivenWiFi);
  [coderCopy encodeDouble:v200 forKey:messagePopularityGivenWiFi];

  callPopularityGivenWiFi = self->_callPopularityGivenWiFi;
  v202 = NSStringFromSelector(sel_callPopularityGivenWiFi);
  [coderCopy encodeDouble:v202 forKey:callPopularityGivenWiFi];

  facetimePopularityGivenWiFi = self->_facetimePopularityGivenWiFi;
  v204 = NSStringFromSelector(sel_facetimePopularityGivenWiFi);
  [coderCopy encodeDouble:v204 forKey:facetimePopularityGivenWiFi];

  wiFiGivenMessageWithEntity = self->_wiFiGivenMessageWithEntity;
  v206 = NSStringFromSelector(sel_wiFiGivenMessageWithEntity);
  [coderCopy encodeDouble:v206 forKey:wiFiGivenMessageWithEntity];

  wiFiGivenCallWithEntity = self->_wiFiGivenCallWithEntity;
  v208 = NSStringFromSelector(sel_wiFiGivenCallWithEntity);
  [coderCopy encodeDouble:v208 forKey:wiFiGivenCallWithEntity];

  wiFiGivenFacetimeWithEntity = self->_wiFiGivenFacetimeWithEntity;
  v210 = NSStringFromSelector(sel_wiFiGivenFacetimeWithEntity);
  [coderCopy encodeDouble:v210 forKey:wiFiGivenFacetimeWithEntity];

  messageWithEntityGivenWiFi = self->_messageWithEntityGivenWiFi;
  v212 = NSStringFromSelector(sel_messageWithEntityGivenWiFi);
  [coderCopy encodeDouble:v212 forKey:messageWithEntityGivenWiFi];

  callWithEntityGivenWiFi = self->_callWithEntityGivenWiFi;
  v214 = NSStringFromSelector(sel_callWithEntityGivenWiFi);
  [coderCopy encodeDouble:v214 forKey:callWithEntityGivenWiFi];

  facetimeWithEntityGivenWiFi = self->_facetimeWithEntityGivenWiFi;
  v216 = NSStringFromSelector(sel_facetimeWithEntityGivenWiFi);
  [coderCopy encodeDouble:v216 forKey:facetimeWithEntityGivenWiFi];

  messagePopularityGivenSequence = self->_messagePopularityGivenSequence;
  v218 = NSStringFromSelector(sel_messagePopularityGivenSequence);
  [coderCopy encodeDouble:v218 forKey:messagePopularityGivenSequence];

  callPopularityGivenSequence = self->_callPopularityGivenSequence;
  v220 = NSStringFromSelector(sel_callPopularityGivenSequence);
  [coderCopy encodeDouble:v220 forKey:callPopularityGivenSequence];

  facetimePopularityGivenSequence = self->_facetimePopularityGivenSequence;
  v222 = NSStringFromSelector(sel_facetimePopularityGivenSequence);
  [coderCopy encodeDouble:v222 forKey:facetimePopularityGivenSequence];

  sequenceGivenMessageWithEntity = self->_sequenceGivenMessageWithEntity;
  v224 = NSStringFromSelector(sel_sequenceGivenMessageWithEntity);
  [coderCopy encodeDouble:v224 forKey:sequenceGivenMessageWithEntity];

  sequenceGivenCallWithEntity = self->_sequenceGivenCallWithEntity;
  v226 = NSStringFromSelector(sel_sequenceGivenCallWithEntity);
  [coderCopy encodeDouble:v226 forKey:sequenceGivenCallWithEntity];

  sequenceGivenFacetimeWithEntity = self->_sequenceGivenFacetimeWithEntity;
  v228 = NSStringFromSelector(sel_sequenceGivenFacetimeWithEntity);
  [coderCopy encodeDouble:v228 forKey:sequenceGivenFacetimeWithEntity];

  lastExecutionAge = self->_lastExecutionAge;
  v230 = NSStringFromSelector(sel_lastExecutionAge);
  [coderCopy encodeInt:lastExecutionAge forKey:v230];

  medianTimeIntervalBetweenExecution = self->_medianTimeIntervalBetweenExecution;
  v232 = NSStringFromSelector(sel_medianTimeIntervalBetweenExecution);
  [coderCopy encodeInt:medianTimeIntervalBetweenExecution forKey:v232];

  dailyDoseL1Error = self->_dailyDoseL1Error;
  v234 = NSStringFromSelector(sel_dailyDoseL1Error);
  [coderCopy encodeInt:dailyDoseL1Error forKey:v234];

  dailyDoseL2Error = self->_dailyDoseL2Error;
  v236 = NSStringFromSelector(sel_dailyDoseL2Error);
  [coderCopy encodeDouble:v236 forKey:dailyDoseL2Error];

  shortTermTrendingPopularity = self->_shortTermTrendingPopularity;
  v238 = NSStringFromSelector(sel_shortTermTrendingPopularity);
  [coderCopy encodeDouble:v238 forKey:shortTermTrendingPopularity];

  trendingPopularity = self->_trendingPopularity;
  v240 = NSStringFromSelector(sel_trendingPopularity);
  [coderCopy encodeDouble:v240 forKey:trendingPopularity];

  longTermTrendingPopularity = self->_longTermTrendingPopularity;
  v242 = NSStringFromSelector(sel_longTermTrendingPopularity);
  [coderCopy encodeDouble:v242 forKey:longTermTrendingPopularity];

  locationLastExecutionAge = self->_locationLastExecutionAge;
  v244 = NSStringFromSelector(sel_locationLastExecutionAge);
  [coderCopy encodeInt:locationLastExecutionAge forKey:v244];

  locationTrendingPopularity = self->_locationTrendingPopularity;
  v246 = NSStringFromSelector(sel_locationTrendingPopularity);
  [coderCopy encodeDouble:v246 forKey:locationTrendingPopularity];

  locationPopularityGivenSpecificGeoHash = self->_locationPopularityGivenSpecificGeoHash;
  v248 = NSStringFromSelector(sel_locationPopularityGivenSpecificGeoHash);
  [coderCopy encodeDouble:v248 forKey:locationPopularityGivenSpecificGeoHash];
}

- (GDEntityFeatures)initWithLocationLastExecutationAge:(int)age locationPopularityGivenSpecificGeoHash:(double)hash locationTrendingPopularity:(double)popularity
{
  self->_locationPopularityGivenSpecificGeoHash = hash;
  self->_locationTrendingPopularity = popularity;
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_candidateNameScore = _Q0;
  *&self->_candidateOrganizationScore = _Q0;
  *&self->_candidateEventLocationScore = _Q0;
  *&self->_topicScore = _Q0;
  *&self->_callPopularityGivenTimeOfDay = _Q0;
  *&self->_timeOfDayGivenMessageWithEntity = _Q0;
  *&self->_timeOfDayGivenFacetimeWithEntity = _Q0;
  *&self->_callWithEntityGivenTimeOfDay = _Q0;
  *&self->_messagePopularityGivenCoarseTimeOfDay = _Q0;
  *&self->_facetimePopularityGivenCoarseTimeOfDay = _Q0;
  *&self->_coarseTimeOfDayGivenCallWithEntity = _Q0;
  *&self->_messageWithEntityGivenCoarseTimeOfDay = _Q0;
  *&self->_facetimeWithEntityGivenCoarseTimeOfDay = _Q0;
  *&self->_callPopularityGivenDayOfWeek = _Q0;
  *&self->_dayOfWeekGivenMessageWithEntity = _Q0;
  *&self->_dayOfWeekGivenFacetimeWithEntity = _Q0;
  *&self->_callWithEntityGivenDayOfWeek = _Q0;
  *&self->_messagePopularityGivenFocusMode = _Q0;
  *&self->_facetimePopularityGivenFocusMode = _Q0;
  *&self->_focusModeGivenCallWithEntity = _Q0;
  *&self->_messageWithEntityGivenFocusMode = _Q0;
  *&self->_facetimeWithEntityGivenFocusMode = _Q0;
  *&self->_callPopularityGivenLOI = _Q0;
  *&self->_LOIGivenMessageWithEntity = _Q0;
  *&self->_LOIGivenFacetimeWithEntity = _Q0;
  *&self->_callWithEntityGivenLOI = _Q0;
  *&self->_messagePopularityGivenSpecificGeoHash = _Q0;
  *&self->_facetimePopularityGivenSpecificGeoHash = _Q0;
  *&self->_specificGeoHashGivenCallWithEntity = _Q0;
  *&self->_messageWithEntityGivenSpecificGeoHash = _Q0;
  *&self->_facetimeWithEntityGivenSpecificGeoHash = _Q0;
  *&self->_callPopularityGivenCoarseGeoHash = _Q0;
  *&self->_coarseGeoHashGivenMessageWithEntity = _Q0;
  *&self->_coarseGeoHashGivenFacetimeWithEntity = _Q0;
  *&self->_callWithEntityGivenCoarseGeoHash = _Q0;
  *&self->_messagePopularityGivenLargeGeoHash = _Q0;
  *&self->_facetimePopularityGivenLargeGeoHash = _Q0;
  *&self->_largeGeoHashGivenCallWithEntity = _Q0;
  *&self->_messageWithEntityGivenLargeGeoHash = _Q0;
  *&self->_facetimeWithEntityGivenLargeGeoHash = _Q0;
  *&self->_callPopularityGivenMicroLocation = _Q0;
  *&self->_microLocationGivenMessageWithEntity = _Q0;
  *&self->_microLocationGivenFacetimeWithEntity = _Q0;
  *&self->_callWithEntityGivenMicroLocation = _Q0;
  *&self->_messagePopularityGivenMotionState = _Q0;
  *&self->_facetimePopularityGivenMotionState = _Q0;
  *&self->_motionStateGivenCallWithEntity = _Q0;
  *&self->_messageWithEntityGivenMotionState = _Q0;
  *&self->_facetimeWithEntityGivenMotionState = _Q0;
  *&self->_callPopularityGivenWiFi = _Q0;
  *&self->_wiFiGivenMessageWithEntity = _Q0;
  *&self->_wiFiGivenFacetimeWithEntity = _Q0;
  *&self->_callWithEntityGivenWiFi = _Q0;
  *&self->_messagePopularityGivenSequence = _Q0;
  *&self->_facetimePopularityGivenSequence = _Q0;
  *&self->_sequenceGivenCallWithEntity = _Q0;
  *&self->_lastExecutionAge = -1;
  self->_dailyDoseL1Error = -1;
  self->_locationLastExecutionAge = age;
  *&self->_dailyDoseL2Error = _Q0;
  *&self->_trendingPopularity = _Q0;
  return self;
}

- (GDEntityFeatures)initWithCandidateNameScore:(double)score candidateCommunicationScore:(double)communicationScore candidateOrganizationScore:(double)organizationScore candidateLocationScore:(double)locationScore candidateEventLocationScore:(double)eventLocationScore candidateEventNameScore:(double)nameScore topicScore:(double)topicScore messagePopularityGivenTimeOfDay:(uint64_t)self0 callPopularityGivenTimeOfDay:(int)self1 facetimePopularityGivenTimeOfDay:(int)self2 timeOfDayGivenMessageWithEntity:(int)self3 timeOfDayGivenCallWithEntity:(int)self4 timeOfDayGivenFacetimeWithEntity:(double)self5 messageWithEntityGivenTimeOfDay:(double)self6 callWithEntityGivenTimeOfDay:(double)self7 facetimeWithEntityGivenTimeOfDay:(double)self8 messagePopularityGivenCoarseTimeOfDay:(double)self9 callPopularityGivenCoarseTimeOfDay:(double)givenCoarseTimeOfDay facetimePopularityGivenCoarseTimeOfDay:(double)popularityGivenCoarseTimeOfDay coarseTimeOfDayGivenMessageWithEntity:(double)messageWithEntity coarseTimeOfDayGivenCallWithEntity:(double)callWithEntity coarseTimeOfDayGivenFacetimeWithEntity:(double)givenFacetimeWithEntity messageWithEntityGivenCoarseTimeOfDay:(double)entityGivenCoarseTimeOfDay callWithEntityGivenCoarseTimeOfDay:(double)withEntityGivenCoarseTimeOfDay facetimeWithEntityGivenCoarseTimeOfDay:(double)facetimeWithEntityGivenCoarseTimeOfDay messagePopularityGivenDayOfWeek:(double)week callPopularityGivenDayOfWeek:(double)ofWeek facetimePopularityGivenDayOfWeek:(double)score0 dayOfWeekGivenMessageWithEntity:(double)score1 dayOfWeekGivenCallWithEntity:(double)score2 dayOfWeekGivenFacetimeWithEntity:(double)score3 messageWithEntityGivenDayOfWeek:(double)score4 callWithEntityGivenDayOfWeek:(double)score5 facetimeWithEntityGivenDayOfWeek:(double)score6 messagePopularityGivenFocusMode:(double)score7 callPopularityGivenFocusMode:(double)score8 facetimePopularityGivenFocusMode:(double)score9 focusModeGivenMessageWithEntity:(double)communicationScore0 focusModeGivenCallWithEntity:(double)communicationScore1 focusModeGivenFacetimeWithEntity:(double)communicationScore2 messageWithEntityGivenFocusMode:(double)communicationScore3 callWithEntityGivenFocusMode:(double)communicationScore4 facetimeWithEntityGivenFocusMode:(double)communicationScore5 messagePopularityGivenLOI:(double)communicationScore6 callPopularityGivenLOI:(double)communicationScore7 facetimePopularityGivenLOI:(double)communicationScore8 LOIGivenMessageWithEntity:(double)communicationScore9 LOIGivenCallWithEntity:(double)organizationScore0 LOIGivenFacetimeWithEntity:(double)organizationScore1 messageWithEntityGivenLOI:(double)organizationScore2 callWithEntityGivenLOI:(double)organizationScore3 facetimeWithEntityGivenLOI:(double)organizationScore4 messagePopularityGivenSpecificGeoHash:(double)organizationScore5 callPopularityGivenSpecificGeoHash:(double)organizationScore6 facetimePopularityGivenSpecificGeoHash:(double)organizationScore7 specificGeoHashGivenMessageWithEntity:(double)organizationScore8 specificGeoHashGivenCallWithEntity:(double)organizationScore9 specificGeoHashGivenFacetimeWithEntity:(double)locationScore0 messageWithEntityGivenSpecificGeoHash:(double)locationScore1 callWithEntityGivenSpecificGeoHash:(double)locationScore2 facetimeWithEntityGivenSpecificGeoHash:(double)locationScore3 messagePopularityGivenCoarseGeoHash:callPopularityGivenCoarseGeoHash:facetimePopularityGivenCoarseGeoHash:coarseGeoHashGivenMessageWithEntity:coarseGeoHashGivenCallWithEntity:coarseGeoHashGivenFacetimeWithEntity:messageWithEntityGivenCoarseGeoHash:callWithEntityGivenCoarseGeoHash:facetimeWithEntityGivenCoarseGeoHash:messagePopularityGivenLargeGeoHash:callPopularityGivenLargeGeoHash:facetimePopularityGivenLargeGeoHash:largeGeoHashGivenMessageWithEntity:largeGeoHashGivenCallWithEntity:largeGeoHashGivenFacetimeWithEntity:messageWithEntityGivenLargeGeoHash:callWithEntityGivenLargeGeoHash:facetimeWithEntityGivenLargeGeoHash:messagePopularityGivenMicroLocation:callPopularityGivenMicroLocation:facetimePopularityGivenMicroLocation:microLocationGivenMessageWithEntity:microLocationGivenCallWithEntity:microLocationGivenFacetimeWithEntity:messageWithEntityGivenMicroLocation:callWithEntityGivenMicroLocation:facetimeWithEntityGivenMicroLocation:messagePopularityGivenMotionState:callPopularityGivenMotionState:facetimePopularityGivenMotionState:motionStateGivenMessageWithEntity:motionStateGivenCallWithEntity:motionStateGivenFacetimeWithEntity:messageWithEntityGivenMotionState:callWithEntityGivenMotionState:facetimeWithEntityGivenMotionState:messagePopularityGivenWiFi:callPopularityGivenWiFi:facetimePopularityGivenWiFi:wiFiGivenMessageWithEntity:wiFiGivenCallWithEntity:wiFiGivenFacetimeWithEntity:messageWithEntityGivenWiFi:callWithEntityGivenWiFi:facetimeWithEntityGivenWiFi:messagePopularityGivenSequence:callPopularityGivenSequence:facetimePopularityGivenSequence:sequenceGivenMessageWithEntity:sequenceGivenCallWithEntity:sequenceGivenFacetimeWithEntity:lastExecutionAge:medianTimeIntervalBetweenExecution:dailyDoseL1Error:dailyDoseL2Error:shortTermTrendingPopularity:trendingPopularity:longTermTrendingPopularity:locationLastExecutationAge:locationPopularityGivenSpecificGeoHash:locationTrendingPopularity:
{
  v93.receiver = self;
  v93.super_class = GDEntityFeatures;
  result = [(GDEntityFeatures *)&v93 init];
  if (result)
  {
    result->_candidateNameScore = a2;
    result->_candidateCommunicationScore = score;
    result->_candidateOrganizationScore = communicationScore;
    result->_candidateLocationScore = organizationScore;
    result->_candidateEventLocationScore = locationScore;
    result->_candidateEventNameScore = eventLocationScore;
    result->_topicScore = nameScore;
    result->_messagePopularityGivenTimeOfDay = topicScore;
    result->_callPopularityGivenTimeOfDay = facetimeWithEntity;
    result->_facetimePopularityGivenTimeOfDay = givenTimeOfDay;
    result->_timeOfDayGivenMessageWithEntity = entityGivenTimeOfDay;
    result->_timeOfDayGivenCallWithEntity = withEntityGivenTimeOfDay;
    result->_timeOfDayGivenFacetimeWithEntity = coarseTimeOfDay;
    result->_messageWithEntityGivenTimeOfDay = givenCoarseTimeOfDay;
    result->_callWithEntityGivenTimeOfDay = popularityGivenCoarseTimeOfDay;
    result->_facetimeWithEntityGivenTimeOfDay = messageWithEntity;
    result->_messagePopularityGivenCoarseTimeOfDay = callWithEntity;
    result->_callPopularityGivenCoarseTimeOfDay = givenFacetimeWithEntity;
    result->_facetimePopularityGivenCoarseTimeOfDay = entityGivenCoarseTimeOfDay;
    result->_coarseTimeOfDayGivenMessageWithEntity = withEntityGivenCoarseTimeOfDay;
    result->_coarseTimeOfDayGivenCallWithEntity = facetimeWithEntityGivenCoarseTimeOfDay;
    result->_coarseTimeOfDayGivenFacetimeWithEntity = week;
    result->_messageWithEntityGivenCoarseTimeOfDay = ofWeek;
    result->_callWithEntityGivenCoarseTimeOfDay = dayOfWeek;
    result->_facetimeWithEntityGivenCoarseTimeOfDay = givenMessageWithEntity;
    result->_messagePopularityGivenDayOfWeek = givenCallWithEntity;
    result->_callPopularityGivenDayOfWeek = weekGivenFacetimeWithEntity;
    result->_facetimePopularityGivenDayOfWeek = givenDayOfWeek;
    result->_dayOfWeekGivenMessageWithEntity = entityGivenDayOfWeek;
    result->_dayOfWeekGivenCallWithEntity = withEntityGivenDayOfWeek;
    result->_dayOfWeekGivenFacetimeWithEntity = mode;
    result->_messageWithEntityGivenDayOfWeek = focusMode;
    result->_callWithEntityGivenDayOfWeek = givenFocusMode;
    result->_facetimeWithEntityGivenDayOfWeek = modeGivenMessageWithEntity;
    result->_messagePopularityGivenFocusMode = modeGivenCallWithEntity;
    result->_callPopularityGivenFocusMode = modeGivenFacetimeWithEntity;
    result->_facetimePopularityGivenFocusMode = entityGivenFocusMode;
    result->_focusModeGivenMessageWithEntity = withEntityGivenFocusMode;
    result->_focusModeGivenCallWithEntity = facetimeWithEntityGivenFocusMode;
    result->_focusModeGivenFacetimeWithEntity = i;
    result->_messageWithEntityGivenFocusMode = oI;
    result->_callWithEntityGivenFocusMode = lOI;
    result->_facetimeWithEntityGivenFocusMode = iGivenMessageWithEntity;
    result->_messagePopularityGivenLOI = iGivenCallWithEntity;
    result->_callPopularityGivenLOI = iGivenFacetimeWithEntity;
    result->_facetimePopularityGivenLOI = givenLOI;
    result->_LOIGivenMessageWithEntity = entityGivenLOI;
    result->_LOIGivenCallWithEntity = withEntityGivenLOI;
    result->_LOIGivenFacetimeWithEntity = hash;
    result->_messageWithEntityGivenLOI = geoHash;
    result->_callWithEntityGivenLOI = specificGeoHash;
    result->_facetimeWithEntityGivenLOI = hashGivenMessageWithEntity;
    result->_messagePopularityGivenSpecificGeoHash = hashGivenCallWithEntity;
    result->_callPopularityGivenSpecificGeoHash = hashGivenFacetimeWithEntity;
    result->_facetimePopularityGivenSpecificGeoHash = givenSpecificGeoHash;
    result->_specificGeoHashGivenMessageWithEntity = entityGivenSpecificGeoHash;
    result->_specificGeoHashGivenCallWithEntity = withEntityGivenSpecificGeoHash;
    result->_specificGeoHashGivenFacetimeWithEntity = a64;
    result->_messageWithEntityGivenSpecificGeoHash = a65;
    result->_callWithEntityGivenSpecificGeoHash = a66;
    result->_facetimeWithEntityGivenSpecificGeoHash = a67;
    result->_messagePopularityGivenCoarseGeoHash = a68;
    result->_callPopularityGivenCoarseGeoHash = a69;
    result->_facetimePopularityGivenCoarseGeoHash = a70;
    result->_coarseGeoHashGivenMessageWithEntity = a71;
    result->_coarseGeoHashGivenCallWithEntity = a72;
    result->_coarseGeoHashGivenFacetimeWithEntity = a73;
    result->_messageWithEntityGivenCoarseGeoHash = a74;
    result->_callWithEntityGivenCoarseGeoHash = a75;
    result->_facetimeWithEntityGivenCoarseGeoHash = a76;
    result->_messagePopularityGivenLargeGeoHash = a77;
    result->_callPopularityGivenLargeGeoHash = a78;
    *&result->_facetimePopularityGivenLargeGeoHash = STACK[0x290];
    *&result->_largeGeoHashGivenMessageWithEntity = STACK[0x298];
    *&result->_largeGeoHashGivenCallWithEntity = STACK[0x2A0];
    *&result->_largeGeoHashGivenFacetimeWithEntity = STACK[0x2A8];
    *&result->_messageWithEntityGivenLargeGeoHash = STACK[0x2B0];
    *&result->_callWithEntityGivenLargeGeoHash = STACK[0x2B8];
    *&result->_facetimeWithEntityGivenLargeGeoHash = STACK[0x2C0];
    *&result->_messagePopularityGivenMicroLocation = STACK[0x2C8];
    *&result->_callPopularityGivenMicroLocation = STACK[0x2D0];
    *&result->_facetimePopularityGivenMicroLocation = STACK[0x2D8];
    *&result->_microLocationGivenMessageWithEntity = STACK[0x2E0];
    *&result->_microLocationGivenCallWithEntity = STACK[0x2E8];
    *&result->_microLocationGivenFacetimeWithEntity = STACK[0x2F0];
    *&result->_messageWithEntityGivenMicroLocation = STACK[0x2F8];
    *&result->_callWithEntityGivenMicroLocation = STACK[0x300];
    *&result->_facetimeWithEntityGivenMicroLocation = STACK[0x308];
    *&result->_messagePopularityGivenMotionState = STACK[0x310];
    *&result->_callPopularityGivenMotionState = STACK[0x318];
    *&result->_facetimePopularityGivenMotionState = STACK[0x320];
    *&result->_motionStateGivenMessageWithEntity = STACK[0x328];
    *&result->_motionStateGivenCallWithEntity = STACK[0x330];
    *&result->_motionStateGivenFacetimeWithEntity = STACK[0x338];
    *&result->_messageWithEntityGivenMotionState = STACK[0x340];
    *&result->_callWithEntityGivenMotionState = STACK[0x348];
    *&result->_facetimeWithEntityGivenMotionState = STACK[0x350];
    *&result->_messagePopularityGivenWiFi = STACK[0x358];
    *&result->_callPopularityGivenWiFi = STACK[0x360];
    *&result->_facetimePopularityGivenWiFi = STACK[0x368];
    *&result->_wiFiGivenMessageWithEntity = STACK[0x370];
    *&result->_wiFiGivenCallWithEntity = STACK[0x378];
    *&result->_wiFiGivenFacetimeWithEntity = STACK[0x380];
    *&result->_messageWithEntityGivenWiFi = STACK[0x388];
    *&result->_callWithEntityGivenWiFi = STACK[0x390];
    *&result->_facetimeWithEntityGivenWiFi = STACK[0x398];
    *&result->_messagePopularityGivenSequence = STACK[0x3A0];
    *&result->_callPopularityGivenSequence = STACK[0x3A8];
    *&result->_facetimePopularityGivenSequence = STACK[0x3B0];
    *&result->_sequenceGivenMessageWithEntity = STACK[0x3B8];
    *&result->_sequenceGivenCallWithEntity = STACK[0x3C0];
    *&result->_sequenceGivenFacetimeWithEntity = STACK[0x3C8];
    *&result->_dailyDoseL2Error = STACK[0x3D0];
    *&result->_shortTermTrendingPopularity = STACK[0x3D8];
    *&result->_trendingPopularity = STACK[0x3E0];
    *&result->_longTermTrendingPopularity = STACK[0x3E8];
    *&result->_locationPopularityGivenSpecificGeoHash = STACK[0x3F0];
    *&result->_locationTrendingPopularity = STACK[0x3F8];
    result->_lastExecutionAge = ofDay;
    result->_medianTimeIntervalBetweenExecution = timeOfDay;
    result->_dailyDoseL1Error = entity;
    result->_locationLastExecutionAge = withEntity;
  }

  return result;
}

- (GDEntityFeatures)initWithCandidateNameScore:(double)score candidateCommunicationScore:(double)communicationScore candidateOrganizationScore:(double)organizationScore candidateLocationScore:(double)locationScore candidateEventLocationScore:(double)eventLocationScore candidateEventNameScore:(double)nameScore topicScore:(double)topicScore messagePopularityGivenTimeOfDay:(uint64_t)self0 callPopularityGivenTimeOfDay:(int)self1 facetimePopularityGivenTimeOfDay:(int)self2 timeOfDayGivenMessageWithEntity:(int)self3 timeOfDayGivenCallWithEntity:(double)self4 timeOfDayGivenFacetimeWithEntity:(double)self5 messageWithEntityGivenTimeOfDay:(double)self6 callWithEntityGivenTimeOfDay:(double)self7 facetimeWithEntityGivenTimeOfDay:(double)self8 messagePopularityGivenCoarseTimeOfDay:(double)self9 callPopularityGivenCoarseTimeOfDay:(double)givenCoarseTimeOfDay facetimePopularityGivenCoarseTimeOfDay:(double)popularityGivenCoarseTimeOfDay coarseTimeOfDayGivenMessageWithEntity:(double)messageWithEntity coarseTimeOfDayGivenCallWithEntity:(double)callWithEntity coarseTimeOfDayGivenFacetimeWithEntity:(double)givenFacetimeWithEntity messageWithEntityGivenCoarseTimeOfDay:(double)entityGivenCoarseTimeOfDay callWithEntityGivenCoarseTimeOfDay:(double)withEntityGivenCoarseTimeOfDay facetimeWithEntityGivenCoarseTimeOfDay:(double)facetimeWithEntityGivenCoarseTimeOfDay messagePopularityGivenDayOfWeek:(double)week callPopularityGivenDayOfWeek:(double)ofWeek facetimePopularityGivenDayOfWeek:(double)score0 dayOfWeekGivenMessageWithEntity:(double)score1 dayOfWeekGivenCallWithEntity:(double)score2 dayOfWeekGivenFacetimeWithEntity:(double)score3 messageWithEntityGivenDayOfWeek:(double)score4 callWithEntityGivenDayOfWeek:(double)score5 facetimeWithEntityGivenDayOfWeek:(double)score6 messagePopularityGivenFocusMode:(double)score7 callPopularityGivenFocusMode:(double)score8 facetimePopularityGivenFocusMode:(double)score9 focusModeGivenMessageWithEntity:(double)communicationScore0 focusModeGivenCallWithEntity:(double)communicationScore1 focusModeGivenFacetimeWithEntity:(double)communicationScore2 messageWithEntityGivenFocusMode:(double)communicationScore3 callWithEntityGivenFocusMode:(double)communicationScore4 facetimeWithEntityGivenFocusMode:(double)communicationScore5 messagePopularityGivenLOI:(double)communicationScore6 callPopularityGivenLOI:(double)communicationScore7 facetimePopularityGivenLOI:(double)communicationScore8 LOIGivenMessageWithEntity:(double)communicationScore9 LOIGivenCallWithEntity:(double)organizationScore0 LOIGivenFacetimeWithEntity:(double)organizationScore1 messageWithEntityGivenLOI:(double)organizationScore2 callWithEntityGivenLOI:(double)organizationScore3 facetimeWithEntityGivenLOI:(double)organizationScore4 messagePopularityGivenSpecificGeoHash:(double)organizationScore5 callPopularityGivenSpecificGeoHash:(double)organizationScore6 facetimePopularityGivenSpecificGeoHash:(double)organizationScore7 specificGeoHashGivenMessageWithEntity:(double)organizationScore8 specificGeoHashGivenCallWithEntity:(double)organizationScore9 specificGeoHashGivenFacetimeWithEntity:(double)locationScore0 messageWithEntityGivenSpecificGeoHash:(double)locationScore1 callWithEntityGivenSpecificGeoHash:(double)locationScore2 facetimeWithEntityGivenSpecificGeoHash:(double)locationScore3 messagePopularityGivenCoarseGeoHash:callPopularityGivenCoarseGeoHash:facetimePopularityGivenCoarseGeoHash:coarseGeoHashGivenMessageWithEntity:coarseGeoHashGivenCallWithEntity:coarseGeoHashGivenFacetimeWithEntity:messageWithEntityGivenCoarseGeoHash:callWithEntityGivenCoarseGeoHash:facetimeWithEntityGivenCoarseGeoHash:messagePopularityGivenLargeGeoHash:callPopularityGivenLargeGeoHash:facetimePopularityGivenLargeGeoHash:largeGeoHashGivenMessageWithEntity:largeGeoHashGivenCallWithEntity:largeGeoHashGivenFacetimeWithEntity:messageWithEntityGivenLargeGeoHash:callWithEntityGivenLargeGeoHash:facetimeWithEntityGivenLargeGeoHash:messagePopularityGivenMicroLocation:callPopularityGivenMicroLocation:facetimePopularityGivenMicroLocation:microLocationGivenMessageWithEntity:microLocationGivenCallWithEntity:microLocationGivenFacetimeWithEntity:messageWithEntityGivenMicroLocation:callWithEntityGivenMicroLocation:facetimeWithEntityGivenMicroLocation:messagePopularityGivenMotionState:callPopularityGivenMotionState:facetimePopularityGivenMotionState:motionStateGivenMessageWithEntity:motionStateGivenCallWithEntity:motionStateGivenFacetimeWithEntity:messageWithEntityGivenMotionState:callWithEntityGivenMotionState:facetimeWithEntityGivenMotionState:messagePopularityGivenWiFi:callPopularityGivenWiFi:facetimePopularityGivenWiFi:wiFiGivenMessageWithEntity:wiFiGivenCallWithEntity:wiFiGivenFacetimeWithEntity:messageWithEntityGivenWiFi:callWithEntityGivenWiFi:facetimeWithEntityGivenWiFi:messagePopularityGivenSequence:callPopularityGivenSequence:facetimePopularityGivenSequence:sequenceGivenMessageWithEntity:sequenceGivenCallWithEntity:sequenceGivenFacetimeWithEntity:lastExecutionAge:medianTimeIntervalBetweenExecution:dailyDoseL1Error:dailyDoseL2Error:shortTermTrendingPopularity:trendingPopularity:longTermTrendingPopularity:
{
  v97.receiver = self;
  v97.super_class = GDEntityFeatures;
  result = [(GDEntityFeatures *)&v97 init];
  if (result)
  {
    result->_candidateNameScore = a2;
    result->_candidateCommunicationScore = score;
    result->_candidateOrganizationScore = communicationScore;
    result->_candidateLocationScore = organizationScore;
    result->_candidateEventLocationScore = locationScore;
    result->_candidateEventNameScore = eventLocationScore;
    result->_topicScore = nameScore;
    result->_messagePopularityGivenTimeOfDay = topicScore;
    result->_callPopularityGivenTimeOfDay = withEntity;
    result->_facetimePopularityGivenTimeOfDay = facetimeWithEntity;
    result->_timeOfDayGivenMessageWithEntity = givenTimeOfDay;
    result->_timeOfDayGivenCallWithEntity = entityGivenTimeOfDay;
    result->_timeOfDayGivenFacetimeWithEntity = withEntityGivenTimeOfDay;
    result->_messageWithEntityGivenTimeOfDay = coarseTimeOfDay;
    result->_callWithEntityGivenTimeOfDay = givenCoarseTimeOfDay;
    result->_facetimeWithEntityGivenTimeOfDay = popularityGivenCoarseTimeOfDay;
    result->_messagePopularityGivenCoarseTimeOfDay = messageWithEntity;
    result->_callPopularityGivenCoarseTimeOfDay = callWithEntity;
    result->_facetimePopularityGivenCoarseTimeOfDay = givenFacetimeWithEntity;
    result->_coarseTimeOfDayGivenMessageWithEntity = entityGivenCoarseTimeOfDay;
    result->_coarseTimeOfDayGivenCallWithEntity = withEntityGivenCoarseTimeOfDay;
    result->_coarseTimeOfDayGivenFacetimeWithEntity = facetimeWithEntityGivenCoarseTimeOfDay;
    result->_messageWithEntityGivenCoarseTimeOfDay = week;
    result->_callWithEntityGivenCoarseTimeOfDay = ofWeek;
    result->_facetimeWithEntityGivenCoarseTimeOfDay = dayOfWeek;
    result->_messagePopularityGivenDayOfWeek = givenMessageWithEntity;
    result->_callPopularityGivenDayOfWeek = givenCallWithEntity;
    result->_facetimePopularityGivenDayOfWeek = weekGivenFacetimeWithEntity;
    result->_dayOfWeekGivenMessageWithEntity = givenDayOfWeek;
    result->_dayOfWeekGivenCallWithEntity = entityGivenDayOfWeek;
    result->_dayOfWeekGivenFacetimeWithEntity = withEntityGivenDayOfWeek;
    result->_messageWithEntityGivenDayOfWeek = mode;
    result->_callWithEntityGivenDayOfWeek = focusMode;
    result->_facetimeWithEntityGivenDayOfWeek = givenFocusMode;
    result->_messagePopularityGivenFocusMode = modeGivenMessageWithEntity;
    result->_callPopularityGivenFocusMode = modeGivenCallWithEntity;
    result->_facetimePopularityGivenFocusMode = modeGivenFacetimeWithEntity;
    result->_focusModeGivenMessageWithEntity = entityGivenFocusMode;
    result->_focusModeGivenCallWithEntity = withEntityGivenFocusMode;
    result->_focusModeGivenFacetimeWithEntity = facetimeWithEntityGivenFocusMode;
    result->_messageWithEntityGivenFocusMode = i;
    result->_callWithEntityGivenFocusMode = oI;
    result->_facetimeWithEntityGivenFocusMode = lOI;
    result->_messagePopularityGivenLOI = iGivenMessageWithEntity;
    result->_callPopularityGivenLOI = iGivenCallWithEntity;
    result->_facetimePopularityGivenLOI = iGivenFacetimeWithEntity;
    result->_LOIGivenMessageWithEntity = givenLOI;
    result->_LOIGivenCallWithEntity = entityGivenLOI;
    result->_LOIGivenFacetimeWithEntity = withEntityGivenLOI;
    result->_messageWithEntityGivenLOI = hash;
    result->_callWithEntityGivenLOI = geoHash;
    result->_facetimeWithEntityGivenLOI = specificGeoHash;
    result->_messagePopularityGivenSpecificGeoHash = hashGivenMessageWithEntity;
    result->_callPopularityGivenSpecificGeoHash = hashGivenCallWithEntity;
    result->_facetimePopularityGivenSpecificGeoHash = hashGivenFacetimeWithEntity;
    result->_specificGeoHashGivenMessageWithEntity = givenSpecificGeoHash;
    result->_specificGeoHashGivenCallWithEntity = entityGivenSpecificGeoHash;
    result->_specificGeoHashGivenFacetimeWithEntity = withEntityGivenSpecificGeoHash;
    result->_messageWithEntityGivenSpecificGeoHash = a64;
    result->_callWithEntityGivenSpecificGeoHash = a65;
    result->_facetimeWithEntityGivenSpecificGeoHash = a66;
    result->_messagePopularityGivenCoarseGeoHash = a67;
    result->_callPopularityGivenCoarseGeoHash = a68;
    result->_facetimePopularityGivenCoarseGeoHash = a69;
    result->_coarseGeoHashGivenMessageWithEntity = a70;
    result->_coarseGeoHashGivenCallWithEntity = a71;
    result->_coarseGeoHashGivenFacetimeWithEntity = a72;
    result->_messageWithEntityGivenCoarseGeoHash = a73;
    result->_callWithEntityGivenCoarseGeoHash = a74;
    result->_facetimeWithEntityGivenCoarseGeoHash = a75;
    result->_messagePopularityGivenLargeGeoHash = a76;
    result->_callPopularityGivenLargeGeoHash = a77;
    *&result->_facetimePopularityGivenLargeGeoHash = STACK[0x280];
    *&result->_largeGeoHashGivenMessageWithEntity = STACK[0x288];
    *&result->_largeGeoHashGivenCallWithEntity = STACK[0x290];
    *&result->_largeGeoHashGivenFacetimeWithEntity = STACK[0x298];
    *&result->_messageWithEntityGivenLargeGeoHash = STACK[0x2A0];
    *&result->_callWithEntityGivenLargeGeoHash = STACK[0x2A8];
    *&result->_facetimeWithEntityGivenLargeGeoHash = STACK[0x2B0];
    *&result->_messagePopularityGivenMicroLocation = STACK[0x2B8];
    *&result->_callPopularityGivenMicroLocation = STACK[0x2C0];
    *&result->_facetimePopularityGivenMicroLocation = STACK[0x2C8];
    *&result->_microLocationGivenMessageWithEntity = STACK[0x2D0];
    *&result->_microLocationGivenCallWithEntity = STACK[0x2D8];
    *&result->_microLocationGivenFacetimeWithEntity = STACK[0x2E0];
    *&result->_messageWithEntityGivenMicroLocation = STACK[0x2E8];
    *&result->_callWithEntityGivenMicroLocation = STACK[0x2F0];
    *&result->_facetimeWithEntityGivenMicroLocation = STACK[0x2F8];
    *&result->_messagePopularityGivenMotionState = STACK[0x300];
    *&result->_callPopularityGivenMotionState = STACK[0x308];
    *&result->_facetimePopularityGivenMotionState = STACK[0x310];
    *&result->_motionStateGivenMessageWithEntity = STACK[0x318];
    *&result->_motionStateGivenCallWithEntity = STACK[0x320];
    *&result->_motionStateGivenFacetimeWithEntity = STACK[0x328];
    *&result->_messageWithEntityGivenMotionState = STACK[0x330];
    *&result->_callWithEntityGivenMotionState = STACK[0x338];
    *&result->_facetimeWithEntityGivenMotionState = STACK[0x340];
    *&result->_messagePopularityGivenWiFi = STACK[0x348];
    *&result->_callPopularityGivenWiFi = STACK[0x350];
    *&result->_facetimePopularityGivenWiFi = STACK[0x358];
    *&result->_wiFiGivenMessageWithEntity = STACK[0x360];
    *&result->_wiFiGivenCallWithEntity = STACK[0x368];
    *&result->_wiFiGivenFacetimeWithEntity = STACK[0x370];
    *&result->_messageWithEntityGivenWiFi = STACK[0x378];
    *&result->_callWithEntityGivenWiFi = STACK[0x380];
    *&result->_facetimeWithEntityGivenWiFi = STACK[0x388];
    *&result->_messagePopularityGivenSequence = STACK[0x390];
    *&result->_callPopularityGivenSequence = STACK[0x398];
    *&result->_facetimePopularityGivenSequence = STACK[0x3A0];
    *&result->_sequenceGivenMessageWithEntity = STACK[0x3A8];
    *&result->_sequenceGivenCallWithEntity = STACK[0x3B0];
    *&result->_sequenceGivenFacetimeWithEntity = STACK[0x3B8];
    *&result->_dailyDoseL2Error = STACK[0x3C0];
    *&result->_shortTermTrendingPopularity = STACK[0x3C8];
    *&result->_trendingPopularity = STACK[0x3D0];
    *&result->_longTermTrendingPopularity = STACK[0x3D8];
    __asm { FMOV            V0.2D, #-1.0 }

    *&result->_locationTrendingPopularity = _Q0;
    result->_lastExecutionAge = ofDay;
    result->_medianTimeIntervalBetweenExecution = timeOfDay;
    result->_dailyDoseL1Error = entity;
    result->_locationLastExecutionAge = -1;
  }

  return result;
}

- (GDEntityFeatures)initWithCandidateNameSimilarity:(double)similarity
{
  v5.receiver = self;
  v5.super_class = GDEntityFeatures;
  result = [(GDEntityFeatures *)&v5 init];
  if (result)
  {
    result->_candidateNameSimilarity = similarity;
  }

  return result;
}

@end