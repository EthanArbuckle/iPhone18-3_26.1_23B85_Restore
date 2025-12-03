@interface CESRSpeechProfileSelfHelper
- (CESRSpeechProfileSelfHelper)init;
- (void)logASRSpeechProfileUpdateEndedWithUserDataMetrics:(id)metrics;
- (void)logASRSpeechProfileUpdateStarted;
- (void)wrapAndEmitTopLevelEvent:(id)event;
@end

@implementation CESRSpeechProfileSelfHelper

- (void)wrapAndEmitTopLevelEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_alloc_init(MEMORY[0x277D56AC0]);
  v6 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:self->_componentId];
  [v5 setSpeechProfileId:v6];
  v7 = objc_alloc_init(MEMORY[0x277D56AB8]);
  [v7 setEventMetadata:v5];
  [v7 setSpeechProfileUpdateContext:eventCopy];
  v8 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    v13 = v8;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = 136315394;
    v17 = "[CESRSpeechProfileSelfHelper wrapAndEmitTopLevelEvent:]";
    v18 = 2112;
    v19 = v15;
    _os_log_debug_impl(&dword_225EEB000, v13, OS_LOG_TYPE_DEBUG, "%s SELF: Wrapping and logging an event of type %@", &v16, 0x16u);
  }

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedAnalytics];
  defaultMessageStream = [mEMORY[0x277D552C0] defaultMessageStream];
  uUID = [MEMORY[0x277CCAD78] UUID];
  [defaultMessageStream emitMessage:v7 isolatedStreamUUID:uUID];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logASRSpeechProfileUpdateEndedWithUserDataMetrics:(id)metrics
{
  metricsCopy = metrics;
  v7 = +[CESRSpeechProfileSelfHelper _cleanupMetricsWithIsIngestionEnabled:numEntitiesContainingEmoji:numEntitiesContainingSpecialCharacters:numEntitiesCleaned:](CESRSpeechProfileSelfHelper, "_cleanupMetricsWithIsIngestionEnabled:numEntitiesContainingEmoji:numEntitiesContainingSpecialCharacters:numEntitiesCleaned:", [metricsCopy isCleanupIngestionEnabled], objc_msgSend(metricsCopy, "numEntitiesContainingEmoji"), objc_msgSend(metricsCopy, "numEntitiesContainingSpecialCharacters"), objc_msgSend(metricsCopy, "numEntitiesCleaned"));
  v5 = +[CESRSpeechProfileSelfHelper _extractionMetricsWithIsIngestionEnabled:isExtractionSetupSuccessful:numEntitiesExtractionAttempted:numEntitiesContainingExtractions:numEntitiesExtracted:](CESRSpeechProfileSelfHelper, "_extractionMetricsWithIsIngestionEnabled:isExtractionSetupSuccessful:numEntitiesExtractionAttempted:numEntitiesContainingExtractions:numEntitiesExtracted:", [metricsCopy isExtractionIngestionEnabled], objc_msgSend(metricsCopy, "isExtractionSetupSuccessful"), objc_msgSend(metricsCopy, "numEntitiesExtractionAttempted"), objc_msgSend(metricsCopy, "numEntitiesContainingExtractions"), objc_msgSend(metricsCopy, "numEntitiesExtracted"));
  totalNumEntitiesReceived = [metricsCopy totalNumEntitiesReceived];

  [(CESRSpeechProfileSelfHelper *)self logASRSpeechProfileUpdateEndedWithTotalNumEntitiesReceived:totalNumEntitiesReceived entityCleanupMetrics:v7 entityExtractionMetrics:v5];
}

- (void)logASRSpeechProfileUpdateStarted
{
  v4 = objc_alloc_init(MEMORY[0x277D56AF0]);
  [v4 setExists:1];
  v3 = objc_alloc_init(MEMORY[0x277D56AD8]);
  [v3 setStartedOrChanged:v4];
  [(CESRSpeechProfileSelfHelper *)self wrapAndEmitTopLevelEvent:v3];
}

- (CESRSpeechProfileSelfHelper)init
{
  v6.receiver = self;
  v6.super_class = CESRSpeechProfileSelfHelper;
  v2 = [(CESRSpeechProfileSelfHelper *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    componentId = v2->_componentId;
    v2->_componentId = uUID;
  }

  return v2;
}

@end