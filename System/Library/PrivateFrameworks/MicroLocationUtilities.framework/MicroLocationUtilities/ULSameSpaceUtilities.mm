@interface ULSameSpaceUtilities
+ (double)cosineSimilarityBetweenPredictionProbabilities:(id)a3 andLabelProbabilities:(id)a4;
+ (double)cosineSimilarityBetweenPredictionProbabilities:(id)a3 withPreCalculatedMagnitude:(double)a4 andLabelProbabilities:(id)a5;
@end

@implementation ULSameSpaceUtilities

+ (double)cosineSimilarityBetweenPredictionProbabilities:(id)a3 withPreCalculatedMagnitude:(double)a4 andLabelProbabilities:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = -1.0;
  if (a4 != 0.0)
  {
    [ULNumericUtilities sumOfVector:v8];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:1.0 - v10];
    v12 = [v8 arrayByAddingObject:v11];
    [ULNumericUtilities magnitudeOfVector:v12];
    v14 = v13;

    if (v14 != 0.0)
    {
      v15 = [ULNumericUtilities dotProduct:v7 vectorB:v8];
      [v15 doubleValue];
      v17 = v16;

      v9 = v17 / (v14 * a4);
    }
  }

  return v9;
}

+ (double)cosineSimilarityBetweenPredictionProbabilities:(id)a3 andLabelProbabilities:(id)a4
{
  v5 = a4;
  v6 = a3;
  [ULNumericUtilities sumOfVector:v6];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:1.0 - v7];
  v9 = [v6 arrayByAddingObject:v8];
  [ULNumericUtilities magnitudeOfVector:v9];
  v11 = v10;

  [ULSameSpaceUtilities cosineSimilarityBetweenPredictionProbabilities:v6 withPreCalculatedMagnitude:v5 andLabelProbabilities:v11];
  v13 = v12;

  return v13;
}

@end