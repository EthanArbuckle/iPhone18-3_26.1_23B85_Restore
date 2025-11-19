@interface CESRSpeechProfileSelfHelper
- (CESRSpeechProfileSelfHelper)init;
- (void)logASRSpeechProfileUpdateEndedWithUserDataMetrics:(id)a3;
- (void)logASRSpeechProfileUpdateStarted;
- (void)wrapAndEmitTopLevelEvent:(id)a3;
@end

@implementation CESRSpeechProfileSelfHelper

- (void)wrapAndEmitTopLevelEvent:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D56AC0]);
  v6 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:self->_componentId];
  [v5 setSpeechProfileId:v6];
  v7 = objc_alloc_init(MEMORY[0x277D56AB8]);
  [v7 setEventMetadata:v5];
  [v7 setSpeechProfileUpdateContext:v4];
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

  v9 = [MEMORY[0x277D552C0] sharedAnalytics];
  v10 = [v9 defaultMessageStream];
  v11 = [MEMORY[0x277CCAD78] UUID];
  [v10 emitMessage:v7 isolatedStreamUUID:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logASRSpeechProfileUpdateEndedWithUserDataMetrics:(id)a3
{
  v4 = a3;
  v7 = +[CESRSpeechProfileSelfHelper _cleanupMetricsWithIsIngestionEnabled:numEntitiesContainingEmoji:numEntitiesContainingSpecialCharacters:numEntitiesCleaned:](CESRSpeechProfileSelfHelper, "_cleanupMetricsWithIsIngestionEnabled:numEntitiesContainingEmoji:numEntitiesContainingSpecialCharacters:numEntitiesCleaned:", [v4 isCleanupIngestionEnabled], objc_msgSend(v4, "numEntitiesContainingEmoji"), objc_msgSend(v4, "numEntitiesContainingSpecialCharacters"), objc_msgSend(v4, "numEntitiesCleaned"));
  v5 = +[CESRSpeechProfileSelfHelper _extractionMetricsWithIsIngestionEnabled:isExtractionSetupSuccessful:numEntitiesExtractionAttempted:numEntitiesContainingExtractions:numEntitiesExtracted:](CESRSpeechProfileSelfHelper, "_extractionMetricsWithIsIngestionEnabled:isExtractionSetupSuccessful:numEntitiesExtractionAttempted:numEntitiesContainingExtractions:numEntitiesExtracted:", [v4 isExtractionIngestionEnabled], objc_msgSend(v4, "isExtractionSetupSuccessful"), objc_msgSend(v4, "numEntitiesExtractionAttempted"), objc_msgSend(v4, "numEntitiesContainingExtractions"), objc_msgSend(v4, "numEntitiesExtracted"));
  v6 = [v4 totalNumEntitiesReceived];

  [(CESRSpeechProfileSelfHelper *)self logASRSpeechProfileUpdateEndedWithTotalNumEntitiesReceived:v6 entityCleanupMetrics:v7 entityExtractionMetrics:v5];
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
    v3 = [MEMORY[0x277CCAD78] UUID];
    componentId = v2->_componentId;
    v2->_componentId = v3;
  }

  return v2;
}

@end