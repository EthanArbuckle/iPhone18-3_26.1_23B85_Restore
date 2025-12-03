@interface IRMiLoLSLPredictionMO
+ (id)miLoLSLPredictionMOWithMiLoLSLPredictionDO:(id)o replayEvent:(id)event inManagedObjectContext:(id)context;
+ (void)setPropertiesOfMiLoLSLPredictionMO:(id)o withMiLoLSLPredictionDO:(id)dO inManagedObjectContext:(id)context;
- (id)convert;
@end

@implementation IRMiLoLSLPredictionMO

+ (id)miLoLSLPredictionMOWithMiLoLSLPredictionDO:(id)o replayEvent:(id)event inManagedObjectContext:(id)context
{
  contextCopy = context;
  eventCopy = event;
  oCopy = o;
  v10 = [[IRMiLoLSLPredictionMO alloc] initWithContext:contextCopy];
  [(IRMiLoLSLPredictionMO *)v10 setReplayEvent:eventCopy];

  [IRMiLoLSLPredictionMO setPropertiesOfMiLoLSLPredictionMO:v10 withMiLoLSLPredictionDO:oCopy inManagedObjectContext:contextCopy];

  return v10;
}

+ (void)setPropertiesOfMiLoLSLPredictionMO:(id)o withMiLoLSLPredictionDO:(id)dO inManagedObjectContext:(id)context
{
  oCopy = o;
  contextCopy = context;
  dOCopy = dO;
  predictionId = [dOCopy predictionId];
  [oCopy setPredictionId:predictionId];

  predictionTime = [dOCopy predictionTime];
  [oCopy setPredictionTime:predictionTime];

  [oCopy setIsPredictionValid:{objc_msgSend(dOCopy, "isPredictionValid")}];
  [oCopy setIsMapValid:{objc_msgSend(dOCopy, "isMapValid")}];
  [oCopy setIsMotionDetected:{objc_msgSend(dOCopy, "isMotionDetected")}];
  scores = [dOCopy scores];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __107__IRMiLoLSLPredictionMO_setPropertiesOfMiLoLSLPredictionMO_withMiLoLSLPredictionDO_inManagedObjectContext___block_invoke;
  v15[3] = &unk_2797E1448;
  v16 = oCopy;
  v17 = contextCopy;
  v13 = contextCopy;
  v14 = oCopy;
  [scores enumerateObjectsUsingBlock:v15];
}

void __107__IRMiLoLSLPredictionMO_setPropertiesOfMiLoLSLPredictionMO_withMiLoLSLPredictionDO_inManagedObjectContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [IRMiLoLSLSingleScoreMO miLoLSLSingleScoreMOWithMiLoLSLSingleScoreDO:a2 miloPrediction:v2 inManagedObjectContext:*(a1 + 40)];
  [v2 addScoresObject:v3];
}

- (id)convert
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  scores = [(IRMiLoLSLPredictionMO *)self scores];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __32__IRMiLoLSLPredictionMO_convert__block_invoke;
  v13[3] = &unk_2797E1470;
  v14 = v3;
  v5 = v3;
  [scores enumerateObjectsUsingBlock:v13];

  predictionId = [(IRMiLoLSLPredictionMO *)self predictionId];
  isPredictionValid = [(IRMiLoLSLPredictionMO *)self isPredictionValid];
  isMapValid = [(IRMiLoLSLPredictionMO *)self isMapValid];
  isMotionDetected = [(IRMiLoLSLPredictionMO *)self isMotionDetected];
  predictionTime = [(IRMiLoLSLPredictionMO *)self predictionTime];
  v11 = [IRMiloLslPredictionDO miloLslPredictionDOWithPredictionId:predictionId isPredictionValid:isPredictionValid isMapValid:isMapValid isMotionDetected:isMotionDetected scores:v5 predictionTime:predictionTime];

  return v11;
}

void __32__IRMiLoLSLPredictionMO_convert__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 convert];
  [v2 addObject:v3];
}

@end