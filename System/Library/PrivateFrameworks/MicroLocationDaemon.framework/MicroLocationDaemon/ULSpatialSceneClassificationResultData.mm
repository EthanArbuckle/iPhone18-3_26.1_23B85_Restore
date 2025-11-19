@interface ULSpatialSceneClassificationResultData
- (ULSpatialSceneClassificationResultData)initWithIndoorOutdoorLabel:(int64_t)a3 indoorOutdoorLabelProbabilities:(id)a4 spatialSceneClassifications:(id)a5;
- (id)description;
- (int64_t)_calculateWeightedMajorityVoteClassification;
@end

@implementation ULSpatialSceneClassificationResultData

- (ULSpatialSceneClassificationResultData)initWithIndoorOutdoorLabel:(int64_t)a3 indoorOutdoorLabelProbabilities:(id)a4 spatialSceneClassifications:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ULSpatialSceneClassificationResultData;
  v10 = [(ULSpatialSceneClassificationResultData *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(ULSpatialSceneClassificationResultData *)v10 setIndoorOutdoorLabel:a3];
    [(ULSpatialSceneClassificationResultData *)v11 setIndoorOutdoorProbabilities:v8];
    [(ULSpatialSceneClassificationResultData *)v11 setSpatialSceneClassifications:v9];
    [(ULSpatialSceneClassificationResultData *)v11 setWeightedMajorityVoteClassification:[(ULSpatialSceneClassificationResultData *)v11 _calculateWeightedMajorityVoteClassification]];
  }

  return v11;
}

- (int64_t)_calculateWeightedMajorityVoteClassification
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [(ULSpatialSceneClassificationResultData *)self spatialSceneClassifications];
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v5)
  {
    v6 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        v9 = [v8 first];
        v10 = [v8 second];
        if ([v9 intValue])
        {
          v11 = MEMORY[0x277CCABB0];
          v12 = [v3 objectForKeyedSubscript:v9];
          [v12 floatValue];
          v14 = v13;
          [v10 floatValue];
          *&v16 = v14 + v15;
          v17 = [v11 numberWithFloat:v16];
          [v3 setObject:v17 forKeyedSubscript:v9];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v5);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v3;
  v19 = 0;
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
          v19 = [v24 intValue];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v20);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ULSpatialSceneClassificationResultData *)self indoorOutdoorLabel];
  if (v4 > 2)
  {
    v5 = @"Invalid";
  }

  else
  {
    v5 = off_2798D55F0[v4];
  }

  v6 = [(ULSpatialSceneClassificationResultData *)self indoorOutdoorProbabilities];
  v7 = ULSpatialSceneTypeToString([(ULSpatialSceneClassificationResultData *)self weightedMajorityVoteClassification]);
  v8 = [(ULSpatialSceneClassificationResultData *)self spatialSceneClassifications];
  v9 = [v3 stringWithFormat:@"ULSpatialSceneClassificationResultData with indoorOutdoorLabel: %@, indoorOutdoorProbabilities: %@, weightedMajorityVoteClassification: %@, spatialSceneClassifications: %@", v5, v6, v7, v8];

  return v9;
}

@end