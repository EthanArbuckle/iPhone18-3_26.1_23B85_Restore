@interface IRMiLoLSLSingleScoreMO
+ (id)miLoLSLSingleScoreMOWithMiLoLSLSingleScoreDO:(id)o miloPrediction:(id)prediction inManagedObjectContext:(id)context;
+ (void)setPropertiesOfMiLoLSLSingleScoreMO:(id)o IRMiLoLSLSingleScoreDO:(id)dO;
- (id)convert;
@end

@implementation IRMiLoLSLSingleScoreMO

+ (id)miLoLSLSingleScoreMOWithMiLoLSLSingleScoreDO:(id)o miloPrediction:(id)prediction inManagedObjectContext:(id)context
{
  contextCopy = context;
  predictionCopy = prediction;
  oCopy = o;
  v10 = [[IRMiLoLSLSingleScoreMO alloc] initWithContext:contextCopy];

  [(IRMiLoLSLSingleScoreMO *)v10 setPrediction:predictionCopy];
  [IRMiLoLSLSingleScoreMO setPropertiesOfMiLoLSLSingleScoreMO:v10 IRMiLoLSLSingleScoreDO:oCopy];

  return v10;
}

+ (void)setPropertiesOfMiLoLSLSingleScoreMO:(id)o IRMiLoLSLSingleScoreDO:(id)dO
{
  dOCopy = dO;
  oCopy = o;
  eventID = [dOCopy eventID];
  [oCopy setEventId:eventID];

  [dOCopy score];
  v8 = v7;

  [oCopy setScore:v8];
}

- (id)convert
{
  v3 = [IRMiloLslSingleScoreDO alloc];
  [(IRMiLoLSLSingleScoreMO *)self score];
  v5 = v4;
  eventId = [(IRMiLoLSLSingleScoreMO *)self eventId];
  v7 = [(IRMiloLslSingleScoreDO *)v3 initWithScore:eventId eventID:v5];

  return v7;
}

@end