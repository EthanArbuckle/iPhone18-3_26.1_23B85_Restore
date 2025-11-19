@interface IRMiLoPredictionEventMO
+ (IRMiLoPredictionEventMO)miloPredictionEventMOWithmiloPredictionEventDO:(id)a3 historyEventMO:(id)a4 inManagedObjectContext:(id)a5;
+ (void)setPropertiesOfMiloPredictionEventMO:(id)a3 withMiloPredictionEventDO:(id)a4;
- (id)convert;
@end

@implementation IRMiLoPredictionEventMO

+ (IRMiLoPredictionEventMO)miloPredictionEventMOWithmiloPredictionEventDO:(id)a3 historyEventMO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[IRMiLoPredictionEventMO alloc] initWithContext:v7];

  [(IRMiLoPredictionEventMO *)v10 setHistoryEvent:v8];
  [IRMiLoPredictionEventMO setPropertiesOfMiloPredictionEventMO:v10 withMiloPredictionEventDO:v9];

  return v10;
}

+ (void)setPropertiesOfMiloPredictionEventMO:(id)a3 withMiloPredictionEventDO:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 label];
  [v6 setLabel:v7];

  v8 = [v5 predictionId];

  [v6 setPredictionId:v8];
}

- (id)convert
{
  v3 = [(IRMiLoPredictionEventMO *)self label];
  v4 = [(IRMiLoPredictionEventMO *)self predictionId];
  v5 = [IRMiLoPredictionEventDO miLoPredictionEventDOWithLabel:v3 predictionId:v4];

  return v5;
}

@end