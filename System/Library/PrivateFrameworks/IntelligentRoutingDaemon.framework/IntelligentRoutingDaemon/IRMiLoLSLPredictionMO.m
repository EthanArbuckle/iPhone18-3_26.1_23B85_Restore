@interface IRMiLoLSLPredictionMO
+ (id)miLoLSLPredictionMOWithMiLoLSLPredictionDO:(id)a3 replayEvent:(id)a4 inManagedObjectContext:(id)a5;
+ (void)setPropertiesOfMiLoLSLPredictionMO:(id)a3 withMiLoLSLPredictionDO:(id)a4 inManagedObjectContext:(id)a5;
- (id)convert;
@end

@implementation IRMiLoLSLPredictionMO

+ (id)miLoLSLPredictionMOWithMiLoLSLPredictionDO:(id)a3 replayEvent:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[IRMiLoLSLPredictionMO alloc] initWithContext:v7];
  [(IRMiLoLSLPredictionMO *)v10 setReplayEvent:v8];

  [IRMiLoLSLPredictionMO setPropertiesOfMiLoLSLPredictionMO:v10 withMiLoLSLPredictionDO:v9 inManagedObjectContext:v7];

  return v10;
}

+ (void)setPropertiesOfMiLoLSLPredictionMO:(id)a3 withMiLoLSLPredictionDO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v9 predictionId];
  [v7 setPredictionId:v10];

  v11 = [v9 predictionTime];
  [v7 setPredictionTime:v11];

  [v7 setIsPredictionValid:{objc_msgSend(v9, "isPredictionValid")}];
  [v7 setIsMapValid:{objc_msgSend(v9, "isMapValid")}];
  [v7 setIsMotionDetected:{objc_msgSend(v9, "isMotionDetected")}];
  v12 = [v9 scores];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __107__IRMiLoLSLPredictionMO_setPropertiesOfMiLoLSLPredictionMO_withMiLoLSLPredictionDO_inManagedObjectContext___block_invoke;
  v15[3] = &unk_2797E1448;
  v16 = v7;
  v17 = v8;
  v13 = v8;
  v14 = v7;
  [v12 enumerateObjectsUsingBlock:v15];
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
  v4 = [(IRMiLoLSLPredictionMO *)self scores];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __32__IRMiLoLSLPredictionMO_convert__block_invoke;
  v13[3] = &unk_2797E1470;
  v14 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v13];

  v6 = [(IRMiLoLSLPredictionMO *)self predictionId];
  v7 = [(IRMiLoLSLPredictionMO *)self isPredictionValid];
  v8 = [(IRMiLoLSLPredictionMO *)self isMapValid];
  v9 = [(IRMiLoLSLPredictionMO *)self isMotionDetected];
  v10 = [(IRMiLoLSLPredictionMO *)self predictionTime];
  v11 = [IRMiloLslPredictionDO miloLslPredictionDOWithPredictionId:v6 isPredictionValid:v7 isMapValid:v8 isMotionDetected:v9 scores:v5 predictionTime:v10];

  return v11;
}

void __32__IRMiLoLSLPredictionMO_convert__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 convert];
  [v2 addObject:v3];
}

@end