@interface ULSameSpaceUtilities
+ (double)cosineSimilarityBetweenPredictionProbabilities:(id)probabilities andLabelProbabilities:(id)labelProbabilities;
+ (double)cosineSimilarityBetweenPredictionProbabilities:(id)probabilities withPreCalculatedMagnitude:(double)magnitude andLabelProbabilities:(id)labelProbabilities;
@end

@implementation ULSameSpaceUtilities

+ (double)cosineSimilarityBetweenPredictionProbabilities:(id)probabilities withPreCalculatedMagnitude:(double)magnitude andLabelProbabilities:(id)labelProbabilities
{
  probabilitiesCopy = probabilities;
  labelProbabilitiesCopy = labelProbabilities;
  v9 = -1.0;
  if (magnitude != 0.0)
  {
    [ULNumericUtilities sumOfVector:labelProbabilitiesCopy];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:1.0 - v10];
    v12 = [labelProbabilitiesCopy arrayByAddingObject:v11];
    [ULNumericUtilities magnitudeOfVector:v12];
    v14 = v13;

    if (v14 != 0.0)
    {
      v15 = [ULNumericUtilities dotProduct:probabilitiesCopy vectorB:labelProbabilitiesCopy];
      [v15 doubleValue];
      v17 = v16;

      v9 = v17 / (v14 * magnitude);
    }
  }

  return v9;
}

+ (double)cosineSimilarityBetweenPredictionProbabilities:(id)probabilities andLabelProbabilities:(id)labelProbabilities
{
  labelProbabilitiesCopy = labelProbabilities;
  probabilitiesCopy = probabilities;
  [ULNumericUtilities sumOfVector:probabilitiesCopy];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:1.0 - v7];
  v9 = [probabilitiesCopy arrayByAddingObject:v8];
  [ULNumericUtilities magnitudeOfVector:v9];
  v11 = v10;

  [ULSameSpaceUtilities cosineSimilarityBetweenPredictionProbabilities:probabilitiesCopy withPreCalculatedMagnitude:labelProbabilitiesCopy andLabelProbabilities:v11];
  v13 = v12;

  return v13;
}

@end