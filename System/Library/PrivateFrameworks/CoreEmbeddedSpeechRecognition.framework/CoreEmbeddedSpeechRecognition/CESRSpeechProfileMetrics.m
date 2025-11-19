@interface CESRSpeechProfileMetrics
- (CESRSpeechProfileMetrics)init;
- (id)description;
- (void)reset;
@end

@implementation CESRSpeechProfileMetrics

- (id)description
{
  v7 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v7 stringWithFormat:@"<%@: %p totalNumEntitiesReceived: %u; isCleanupIngestionEnabled: %d; numEntitiesContainingEmoji: %u; numEntitiesContainingSpecialCharacters: %u; numEntitiesCleaned: %u; isExtractionIngestionEnabled: %d; isExtractionSetupSuccessful: %d; numEntitiesExtractionAttempted: %u; numEntitiesContainingExtractions: %u; numEntitiesExtracted: %u>", v4, self, -[CESRSpeechProfileMetrics totalNumEntitiesReceived](self, "totalNumEntitiesReceived"), -[CESRSpeechProfileMetrics isCleanupIngestionEnabled](self, "isCleanupIngestionEnabled"), -[CESRSpeechProfileMetrics numEntitiesContainingEmoji](self, "numEntitiesContainingEmoji"), -[CESRSpeechProfileMetrics numEntitiesContainingSpecialCharacters](self, "numEntitiesContainingSpecialCharacters"), -[CESRSpeechProfileMetrics numEntitiesCleaned](self, "numEntitiesCleaned"), -[CESRSpeechProfileMetrics isExtractionIngestionEnabled](self, "isExtractionIngestionEnabled"), -[CESRSpeechProfileMetrics isExtractionSetupSuccessful](self, "isExtractionSetupSuccessful"), -[CESRSpeechProfileMetrics numEntitiesExtractionAttempted](self, "numEntitiesExtractionAttempted"), -[CESRSpeechProfileMetrics numEntitiesContainingExtractions](self, "numEntitiesContainingExtractions"), -[CESRSpeechProfileMetrics numEntitiesExtracted](self, "numEntitiesExtracted")];;

  return v5;
}

- (void)reset
{
  [(CESRSpeechProfileMetrics *)self setTotalNumEntitiesReceived:0];
  [(CESRSpeechProfileMetrics *)self setIsCleanupIngestionEnabled:0];
  [(CESRSpeechProfileMetrics *)self setNumEntitiesContainingEmoji:0];
  [(CESRSpeechProfileMetrics *)self setNumEntitiesContainingSpecialCharacters:0];
  [(CESRSpeechProfileMetrics *)self setNumEntitiesCleaned:0];
  [(CESRSpeechProfileMetrics *)self setIsExtractionIngestionEnabled:0];
  [(CESRSpeechProfileMetrics *)self setIsExtractionSetupSuccessful:0];
  [(CESRSpeechProfileMetrics *)self setNumEntitiesExtractionAttempted:0];
  [(CESRSpeechProfileMetrics *)self setNumEntitiesContainingExtractions:0];

  [(CESRSpeechProfileMetrics *)self setNumEntitiesExtracted:0];
}

- (CESRSpeechProfileMetrics)init
{
  v5.receiver = self;
  v5.super_class = CESRSpeechProfileMetrics;
  v2 = [(CESRSpeechProfileMetrics *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CESRSpeechProfileMetrics *)v2 reset];
  }

  return v3;
}

@end