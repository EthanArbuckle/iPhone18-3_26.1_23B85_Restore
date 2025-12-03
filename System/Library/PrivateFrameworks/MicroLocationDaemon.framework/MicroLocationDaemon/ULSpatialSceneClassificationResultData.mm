@interface ULSpatialSceneClassificationResultData
- (ULSpatialSceneClassificationResultData)initWithIndoorOutdoorLabel:(int64_t)label indoorOutdoorLabelProbabilities:(id)probabilities spatialSceneClassifications:(id)classifications;
- (id)description;
- (int64_t)_calculateWeightedMajorityVoteClassification;
@end

@implementation ULSpatialSceneClassificationResultData

- (ULSpatialSceneClassificationResultData)initWithIndoorOutdoorLabel:(int64_t)label indoorOutdoorLabelProbabilities:(id)probabilities spatialSceneClassifications:(id)classifications
{
  probabilitiesCopy = probabilities;
  classificationsCopy = classifications;
  v13.receiver = self;
  v13.super_class = ULSpatialSceneClassificationResultData;
  v10 = [(ULSpatialSceneClassificationResultData *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(ULSpatialSceneClassificationResultData *)v10 setIndoorOutdoorLabel:label];
    [(ULSpatialSceneClassificationResultData *)v11 setIndoorOutdoorProbabilities:probabilitiesCopy];
    [(ULSpatialSceneClassificationResultData *)v11 setSpatialSceneClassifications:classificationsCopy];
    [(ULSpatialSceneClassificationResultData *)v11 setWeightedMajorityVoteClassification:[(ULSpatialSceneClassificationResultData *)v11 _calculateWeightedMajorityVoteClassification]];
  }

  return v11;
}

- (int64_t)_calculateWeightedMajorityVoteClassification
{
  v40 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  spatialSceneClassifications = [(ULSpatialSceneClassificationResultData *)self spatialSceneClassifications];
  v5 = [spatialSceneClassifications countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v5)
  {
    v6 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(spatialSceneClassifications);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        first = [v8 first];
        second = [v8 second];
        if ([first intValue])
        {
          v11 = MEMORY[0x277CCABB0];
          v12 = [dictionary objectForKeyedSubscript:first];
          [v12 floatValue];
          v14 = v13;
          [second floatValue];
          *&v16 = v14 + v15;
          v17 = [v11 numberWithFloat:v16];
          [dictionary setObject:v17 forKeyedSubscript:first];
        }
      }

      v5 = [spatialSceneClassifications countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v5);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = dictionary;
  intValue = 0;
  v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v20)
  {
    v21 = *v31;
    v22 = 0.0;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v30 + 1) + 8 * j);
        v25 = [v18 objectForKeyedSubscript:{v24, v30}];
        [v25 floatValue];
        if (v26 > v22)
        {
          [v25 floatValue];
          v22 = v27;
          intValue = [v24 intValue];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v20);
  }

  v28 = *MEMORY[0x277D85DE8];
  return intValue;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  indoorOutdoorLabel = [(ULSpatialSceneClassificationResultData *)self indoorOutdoorLabel];
  if (indoorOutdoorLabel > 2)
  {
    v5 = @"Invalid";
  }

  else
  {
    v5 = off_2798D55F0[indoorOutdoorLabel];
  }

  indoorOutdoorProbabilities = [(ULSpatialSceneClassificationResultData *)self indoorOutdoorProbabilities];
  v7 = ULSpatialSceneTypeToString([(ULSpatialSceneClassificationResultData *)self weightedMajorityVoteClassification]);
  spatialSceneClassifications = [(ULSpatialSceneClassificationResultData *)self spatialSceneClassifications];
  v9 = [v3 stringWithFormat:@"ULSpatialSceneClassificationResultData with indoorOutdoorLabel: %@, indoorOutdoorProbabilities: %@, weightedMajorityVoteClassification: %@, spatialSceneClassifications: %@", v5, indoorOutdoorProbabilities, v7, spatialSceneClassifications];

  return v9;
}

@end