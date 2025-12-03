@interface IRMiLoPredictionEventMO
+ (IRMiLoPredictionEventMO)miloPredictionEventMOWithmiloPredictionEventDO:(id)o historyEventMO:(id)mO inManagedObjectContext:(id)context;
+ (void)setPropertiesOfMiloPredictionEventMO:(id)o withMiloPredictionEventDO:(id)dO;
- (id)convert;
@end

@implementation IRMiLoPredictionEventMO

+ (IRMiLoPredictionEventMO)miloPredictionEventMOWithmiloPredictionEventDO:(id)o historyEventMO:(id)mO inManagedObjectContext:(id)context
{
  contextCopy = context;
  mOCopy = mO;
  oCopy = o;
  v10 = [[IRMiLoPredictionEventMO alloc] initWithContext:contextCopy];

  [(IRMiLoPredictionEventMO *)v10 setHistoryEvent:mOCopy];
  [IRMiLoPredictionEventMO setPropertiesOfMiloPredictionEventMO:v10 withMiloPredictionEventDO:oCopy];

  return v10;
}

+ (void)setPropertiesOfMiloPredictionEventMO:(id)o withMiloPredictionEventDO:(id)dO
{
  dOCopy = dO;
  oCopy = o;
  label = [dOCopy label];
  [oCopy setLabel:label];

  predictionId = [dOCopy predictionId];

  [oCopy setPredictionId:predictionId];
}

- (id)convert
{
  label = [(IRMiLoPredictionEventMO *)self label];
  predictionId = [(IRMiLoPredictionEventMO *)self predictionId];
  v5 = [IRMiLoPredictionEventDO miLoPredictionEventDOWithLabel:label predictionId:predictionId];

  return v5;
}

@end