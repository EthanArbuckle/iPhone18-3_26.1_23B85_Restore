@interface ULMap
+ (id)emptyMap;
- (BOOL)_cosineSimilarity_isSameSpaceForLabel:(id)a3;
- (BOOL)_geo_isSameSpaceForLabel:(id)a3;
- (BOOL)_image_isSameSpaceForLabel:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ULMap)initWithCoder:(id)a3;
- (id)_extendProbabilityVectorForLabel:(id)a3 toMatchPredictionContext:(id)a4;
- (id)copyWithReplacementPredictionContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)labelsInSameSpaceForMapItem:(id)a3;
- (int64_t)averageRSSIOfSameSpaceLabelsForMapItem:(id)a3;
- (unint64_t)hash;
- (unint64_t)numberOfLabelsInSameSpaceForMapItem:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULMap

+ (id)emptyMap
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277CBEA60] array];
  v4 = +[ULPredictionContext emptyPredictionContext];
  v5 = +[ULLocationOfInterest emptyLocationOfInterest];
  v6 = [[ULServiceSuspendReason alloc] initWithSuspendReasonEnum:4];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v8 = +[ULServiceMetaInfo emptyServiceMetaInfo];
  v9 = +[ULHomeSlamModelData emptyHomeSlamModelData];
  v10 = [v2 initWithMapItems:v3 predictionContext:v4 locationOfInterest:v5 serviceState:1 serviceSuspendReasons:v7 isMapValid:0 metaInfo:v8 homeSlamModelData:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)copyWithReplacementPredictionContext:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [(ULMap *)v4 mapItems];
  v7 = [(ULMap *)v4 locationOfInterest];
  v8 = [(ULMap *)v4 serviceState];
  v9 = [(ULMap *)v4 serviceSuspendReasons];
  v10 = [(ULMap *)v4 isMapValid];
  v11 = [(ULMap *)v4 metaInfo];
  v12 = [(ULMap *)v4 homeSlamModelData];
  v13 = [(ULMap *)v4 initWithMapItems:v6 predictionContext:v5 locationOfInterest:v7 serviceState:v8 serviceSuspendReasons:v9 isMapValid:v10 metaInfo:v11 homeSlamModelData:v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ULMap *)self mapItems];
  v6 = [(ULMap *)self predictionContext];
  v7 = [(ULMap *)self locationOfInterest];
  v8 = [(ULMap *)self serviceState];
  v9 = [(ULMap *)self serviceSuspendReasons];
  v10 = [(ULMap *)self isMapValid];
  v11 = [(ULMap *)self metaInfo];
  v12 = [(ULMap *)self homeSlamModelData];
  v13 = [v4 initWithMapItems:v5 predictionContext:v6 locationOfInterest:v7 serviceState:v8 serviceSuspendReasons:v9 isMapValid:v10 metaInfo:v11 homeSlamModelData:v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  mapItems = self->_mapItems;
  v7 = a3;
  [v7 encodeObject:mapItems forKey:@"mapItems"];
  [v7 encodeObject:self->_predictionContext forKey:@"predictionContext"];
  [v7 encodeObject:self->_locationOfInterest forKey:@"locationOfInterest"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_serviceState];
  [v7 encodeObject:v5 forKey:@"serviceState"];

  [v7 encodeObject:self->_serviceSuspendReasons forKey:@"serviceSuspendReasons"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMapValid];
  [v7 encodeObject:v6 forKey:@"isMapValid"];

  [v7 encodeObject:self->_metaInfo forKey:@"metaInfo"];
  [v7 encodeObject:self->_homeSlamModelData forKey:@"homeSlamModelData"];
}

- (ULMap)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ULMap;
  v5 = [(ULMap *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"mapItems"];
    if (v6)
    {
      v7 = objc_opt_self();

      mapItems = v5->_mapItems;
      v5->_mapItems = v7;

      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionContext"];
      if (v6)
      {
        v9 = objc_opt_self();

        predictionContext = v5->_predictionContext;
        v5->_predictionContext = v9;

        v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationOfInterest"];
        if (v6)
        {
          v11 = objc_opt_self();

          locationOfInterest = v5->_locationOfInterest;
          v5->_locationOfInterest = v11;

          v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceState"];
          v6 = v13;
          if (v13)
          {
            v14 = [(ULMap *)v13 unsignedIntegerValue];

            v5->_serviceState = v14;
            v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"serviceSuspendReasons"];
            if (v6)
            {
              v15 = objc_opt_self();

              serviceSuspendReasons = v5->_serviceSuspendReasons;
              v5->_serviceSuspendReasons = v15;

              v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isMapValid"];
              v6 = v17;
              if (v17)
              {
                v18 = [(ULMap *)v17 BOOLValue];

                v5->_isMapValid = v18;
                v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metaInfo"];
                if (v6)
                {
                  v19 = objc_opt_self();

                  metaInfo = v5->_metaInfo;
                  v5->_metaInfo = v19;

                  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeSlamModelData"];
                  if (v6)
                  {
                    v21 = objc_opt_self();

                    homeSlamModelData = v5->_homeSlamModelData;
                    v5->_homeSlamModelData = v21;

                    v6 = v5;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"%@: ", v5];

  v7 = [(ULMap *)self mapItems];
  [v6 appendFormat:@", mapItems: %@", v7];

  v8 = [(ULMap *)self predictionContext];
  [v6 appendFormat:@", predictionContext: %@", v8];

  v9 = [(ULMap *)self locationOfInterest];
  [v6 appendFormat:@", locationOfInterest: %@", v9];

  v10 = ULServiceStateToString([(ULMap *)self serviceState]);
  [v6 appendFormat:@", serviceState: %@", v10];

  v11 = [(ULMap *)self serviceSuspendReasons];
  [v6 appendFormat:@", serviceSuspendReasons: %@", v11];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[ULMap isMapValid](self, "isMapValid")}];
  [v6 appendFormat:@", isMapValid: %@", v12];

  v13 = [(ULMap *)self metaInfo];
  [v6 appendFormat:@", metaInfo: %@", v13];

  v14 = [(ULMap *)self homeSlamModelData];
  [v6 appendFormat:@", homeSlamModelData: %@", v14];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v5 = [(ULMap *)self mapItems];
  v6 = [v4 mapItems];
  if ([v5 isEqual:v6])
  {
  }

  else
  {
    v7 = [(ULMap *)self mapItems];
    v8 = [v4 mapItems];

    if (v7 != v8)
    {
      goto LABEL_19;
    }
  }

  v9 = [(ULMap *)self predictionContext];
  v10 = [v4 predictionContext];
  if ([v9 isEqual:v10])
  {
  }

  else
  {
    v11 = [(ULMap *)self predictionContext];
    v12 = [v4 predictionContext];

    if (v11 != v12)
    {
      goto LABEL_19;
    }
  }

  v13 = [(ULMap *)self locationOfInterest];
  v14 = [v4 locationOfInterest];
  if ([v13 isEqual:v14])
  {
  }

  else
  {
    v15 = [(ULMap *)self locationOfInterest];
    v16 = [v4 locationOfInterest];

    if (v15 != v16)
    {
      goto LABEL_19;
    }
  }

  v17 = [(ULMap *)self serviceState];
  if (v17 != [v4 serviceState])
  {
    goto LABEL_19;
  }

  v18 = [(ULMap *)self serviceSuspendReasons];
  v19 = [v4 serviceSuspendReasons];
  if ([v18 isEqual:v19])
  {
  }

  else
  {
    v20 = [(ULMap *)self serviceSuspendReasons];
    v21 = [v4 serviceSuspendReasons];

    if (v20 != v21)
    {
      goto LABEL_19;
    }
  }

  v22 = [(ULMap *)self isMapValid];
  if (v22 != [v4 isMapValid])
  {
    goto LABEL_19;
  }

  v23 = [(ULMap *)self metaInfo];
  v24 = [v4 metaInfo];
  if ([v23 isEqual:v24])
  {

    goto LABEL_21;
  }

  v25 = [(ULMap *)self metaInfo];
  v26 = [v4 metaInfo];

  if (v25 != v26)
  {
LABEL_19:
    v27 = 0;
    goto LABEL_20;
  }

LABEL_21:
  v29 = [(ULMap *)self homeSlamModelData];
  v30 = [v4 homeSlamModelData];
  if ([v29 isEqual:v30])
  {

    v27 = 1;
  }

  else
  {
    v31 = [(ULMap *)self homeSlamModelData];
    v32 = [v4 homeSlamModelData];
    v27 = v31 == v32;
  }

LABEL_20:

  return v27;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_mapItems hash];
  v4 = [(ULPredictionContext *)self->_predictionContext hash];
  v5 = [(ULLocationOfInterest *)self->_locationOfInterest hash];
  serviceState = self->_serviceState;
  v7 = [(NSArray *)self->_serviceSuspendReasons hash];
  isMapValid = self->_isMapValid;
  v9 = [(ULServiceMetaInfo *)self->_metaInfo hash];
  return v3 ^ v4 ^ v5 ^ serviceState ^ v7 ^ isMapValid ^ v9 ^ [(ULHomeSlamModelData *)self->_homeSlamModelData hash]^ 0x1F;
}

- (id)labelsInSameSpaceForMapItem:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  if ([(ULMap *)self isMapValid])
  {
    v6 = [(ULMap *)self predictionContext];
    v7 = [v6 isPredictionValid];

    if (v7)
    {
      v8 = [(ULMap *)self predictionContext];
      [v8 coordinates];
      v23 = v9;
      v22 = ULCoordinatesNotAvailable;

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = [v4 labels];
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v11)
      {
        goto LABEL_17;
      }

      v12 = v11;
      v13 = vceqq_f32(v23, ULCoordinatesNotAvailable);
      v13.i32[3] = v13.i32[2];
      v14 = vminvq_u32(v13);
      v15 = *v25;
      while (1)
      {
        v16 = 0;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v24 + 1) + 8 * v16);
          if ([(ULMap *)self _image_isSameSpaceForLabel:v17, v22, *&v23])
          {
            goto LABEL_11;
          }

          if ((v14 & 0x80000000) == 0)
          {
            if (![(ULMap *)self _geo_isSameSpaceForLabel:v17])
            {
              goto LABEL_12;
            }

LABEL_11:
            [v5 addObject:v17];
            goto LABEL_12;
          }

          if ([(ULMap *)self _cosineSimilarity_isSameSpaceForLabel:v17])
          {
            goto LABEL_11;
          }

LABEL_12:
          ++v16;
        }

        while (v12 != v16);
        v18 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        v12 = v18;
        if (!v18)
        {
LABEL_17:

          break;
        }
      }
    }
  }

  v19 = [v5 copy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (unint64_t)numberOfLabelsInSameSpaceForMapItem:(id)a3
{
  v3 = [(ULMap *)self labelsInSameSpaceForMapItem:a3];
  v4 = [v3 count];

  return v4;
}

- (int64_t)averageRSSIOfSameSpaceLabelsForMapItem:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 labels];
  v6 = [v5 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(ULMap *)self labelsInSameSpaceForMapItem:v4];
    if ([v8 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = 0;
        v14 = *v21;
        v15 = 0xFFFFFFFF80000000;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v9);
            }

            v17 = *(*(&v20 + 1) + 8 * i);
            if ([v17 rssi] != 0xFFFFFFFF80000000)
            {
              v12 += [v17 rssi];
              ++v13;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v11);

        if (v13)
        {
          v15 = v12 / v13;
        }

        goto LABEL_17;
      }
    }

    v15 = 0xFFFFFFFF80000000;
LABEL_17:

    goto LABEL_18;
  }

  v15 = 0xFFFFFFFF80000000;
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_image_isSameSpaceForLabel:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = [a3 imageIdentifiersVector];
  v6 = [v4 setWithArray:v5];

  v7 = MEMORY[0x277CBEB98];
  v8 = [(ULMap *)self predictionContext];
  v9 = [v8 imageIdentifiersVector];
  v10 = [v7 setWithArray:v9];

  LOBYTE(v8) = [v6 intersectsSet:v10];
  return v8;
}

- (BOOL)_cosineSimilarity_isSameSpaceForLabel:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D28858];
  v6 = [(ULMap *)self predictionContext];
  v7 = [v6 probabilityVector];
  [v5 sumOfVector:v7];
  v9 = 1.0 - v8;

  v10 = MEMORY[0x277D28858];
  v11 = [(ULMap *)self predictionContext];
  v12 = [v11 probabilityVector];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v14 = [v12 arrayByAddingObject:v13];
  [v10 magnitudeOfVector:v14];
  v16 = v15;

  if (v16 == 0.0)
  {
    v17 = 0;
  }

  else
  {
    v18 = [(ULMap *)self predictionContext];
    v19 = [(ULMap *)self _extendProbabilityVectorForLabel:v4 toMatchPredictionContext:v18];

    v20 = MEMORY[0x277D28878];
    v21 = [(ULMap *)self predictionContext];
    v22 = [v21 probabilityVector];
    [v20 cosineSimilarityBetweenPredictionProbabilities:v22 withPreCalculatedMagnitude:v19 andLabelProbabilities:v16];
    v24 = v23;

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMap _cosineSimilarity_isSameSpaceForLabel:];
    }

    v25 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v26 = v25;
      v27 = [v4 name];
      v28 = [v4 probabilityVector];
      v29 = [(ULMap *)self predictionContext];
      v30 = [v29 probabilityVector];
      v31 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
      v34 = 138413058;
      v35 = v27;
      v36 = 2112;
      v37 = v28;
      v38 = 2112;
      v39 = v30;
      v40 = 2112;
      v41 = v31;
      _os_log_impl(&dword_258FC9000, v26, OS_LOG_TYPE_INFO, "[ULMap]: _cosineSimilarity_isSameSpaceForLabel: labelName: %@, labelProbabilityVector: %@, predictionContextProbabilityVector: %@, cosineSimilarity: %@", &v34, 0x2Au);
    }

    v17 = v24 >= 0.7 && v24 != -1.0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_geo_isSameSpaceForLabel:(id)a3
{
  v4 = MEMORY[0x277D28878];
  v5 = a3;
  v6 = [(ULMap *)self predictionContext];
  [v6 coordinates];
  v19 = v7;
  [v5 coordinates];
  [v4 horizontalDistanceSquaredBetweenPredictionCoordinates:v19 andLabelCoordinates:v8];
  v10 = v9;

  v11 = MEMORY[0x277D28878];
  v12 = [(ULMap *)self predictionContext];
  [v12 coordinates];
  v20 = v13;
  [v5 coordinates];
  v18 = v14;

  [v11 absoluteVerticalDistanceBetweenPredictionCoordinates:v20 andLabelCoordinates:v18];
  v16 = v15;

  return v16 < 2.0 && v10 < 16.0;
}

- (id)_extendProbabilityVectorForLabel:(id)a3 toMatchPredictionContext:(id)a4
{
  v5 = a4;
  v6 = [a3 probabilityVector];
  v7 = [v6 mutableCopy];

  v8 = [v7 count];
  v9 = [v5 probabilityVector];
  v10 = [v9 count];

  if (v8 < v10)
  {
    do
    {
      [v7 addObject:&unk_286A52AB0];
      v11 = [v7 count];
      v12 = [v5 probabilityVector];
      v13 = [v12 count];
    }

    while (v11 < v13);
  }

  v14 = [v7 copy];

  return v14;
}

@end