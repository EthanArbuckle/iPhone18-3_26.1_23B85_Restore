@interface ULMap
+ (id)emptyMap;
- (BOOL)_cosineSimilarity_isSameSpaceForLabel:(id)label;
- (BOOL)_geo_isSameSpaceForLabel:(id)label;
- (BOOL)_image_isSameSpaceForLabel:(id)label;
- (BOOL)isEqual:(id)equal;
- (ULMap)initWithCoder:(id)coder;
- (id)_extendProbabilityVectorForLabel:(id)label toMatchPredictionContext:(id)context;
- (id)copyWithReplacementPredictionContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)labelsInSameSpaceForMapItem:(id)item;
- (int64_t)averageRSSIOfSameSpaceLabelsForMapItem:(id)item;
- (unint64_t)hash;
- (unint64_t)numberOfLabelsInSameSpaceForMapItem:(id)item;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULMap

+ (id)emptyMap
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [self alloc];
  array = [MEMORY[0x277CBEA60] array];
  v4 = +[ULPredictionContext emptyPredictionContext];
  v5 = +[ULLocationOfInterest emptyLocationOfInterest];
  v6 = [[ULServiceSuspendReason alloc] initWithSuspendReasonEnum:4];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v8 = +[ULServiceMetaInfo emptyServiceMetaInfo];
  v9 = +[ULHomeSlamModelData emptyHomeSlamModelData];
  v10 = [v2 initWithMapItems:array predictionContext:v4 locationOfInterest:v5 serviceState:1 serviceSuspendReasons:v7 isMapValid:0 metaInfo:v8 homeSlamModelData:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)copyWithReplacementPredictionContext:(id)context
{
  selfCopy = self;
  contextCopy = context;
  mapItems = [(ULMap *)selfCopy mapItems];
  locationOfInterest = [(ULMap *)selfCopy locationOfInterest];
  serviceState = [(ULMap *)selfCopy serviceState];
  serviceSuspendReasons = [(ULMap *)selfCopy serviceSuspendReasons];
  isMapValid = [(ULMap *)selfCopy isMapValid];
  metaInfo = [(ULMap *)selfCopy metaInfo];
  homeSlamModelData = [(ULMap *)selfCopy homeSlamModelData];
  v13 = [(ULMap *)selfCopy initWithMapItems:mapItems predictionContext:contextCopy locationOfInterest:locationOfInterest serviceState:serviceState serviceSuspendReasons:serviceSuspendReasons isMapValid:isMapValid metaInfo:metaInfo homeSlamModelData:homeSlamModelData];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  mapItems = [(ULMap *)self mapItems];
  predictionContext = [(ULMap *)self predictionContext];
  locationOfInterest = [(ULMap *)self locationOfInterest];
  serviceState = [(ULMap *)self serviceState];
  serviceSuspendReasons = [(ULMap *)self serviceSuspendReasons];
  isMapValid = [(ULMap *)self isMapValid];
  metaInfo = [(ULMap *)self metaInfo];
  homeSlamModelData = [(ULMap *)self homeSlamModelData];
  v13 = [v4 initWithMapItems:mapItems predictionContext:predictionContext locationOfInterest:locationOfInterest serviceState:serviceState serviceSuspendReasons:serviceSuspendReasons isMapValid:isMapValid metaInfo:metaInfo homeSlamModelData:homeSlamModelData];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  mapItems = self->_mapItems;
  coderCopy = coder;
  [coderCopy encodeObject:mapItems forKey:@"mapItems"];
  [coderCopy encodeObject:self->_predictionContext forKey:@"predictionContext"];
  [coderCopy encodeObject:self->_locationOfInterest forKey:@"locationOfInterest"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_serviceState];
  [coderCopy encodeObject:v5 forKey:@"serviceState"];

  [coderCopy encodeObject:self->_serviceSuspendReasons forKey:@"serviceSuspendReasons"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMapValid];
  [coderCopy encodeObject:v6 forKey:@"isMapValid"];

  [coderCopy encodeObject:self->_metaInfo forKey:@"metaInfo"];
  [coderCopy encodeObject:self->_homeSlamModelData forKey:@"homeSlamModelData"];
}

- (ULMap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = ULMap;
  v5 = [(ULMap *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"mapItems"];
    if (v6)
    {
      v7 = objc_opt_self();

      mapItems = v5->_mapItems;
      v5->_mapItems = v7;

      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionContext"];
      if (v6)
      {
        v9 = objc_opt_self();

        predictionContext = v5->_predictionContext;
        v5->_predictionContext = v9;

        v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationOfInterest"];
        if (v6)
        {
          v11 = objc_opt_self();

          locationOfInterest = v5->_locationOfInterest;
          v5->_locationOfInterest = v11;

          v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceState"];
          v6 = v13;
          if (v13)
          {
            unsignedIntegerValue = [(ULMap *)v13 unsignedIntegerValue];

            v5->_serviceState = unsignedIntegerValue;
            v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"serviceSuspendReasons"];
            if (v6)
            {
              v15 = objc_opt_self();

              serviceSuspendReasons = v5->_serviceSuspendReasons;
              v5->_serviceSuspendReasons = v15;

              v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isMapValid"];
              v6 = v17;
              if (v17)
              {
                bOOLValue = [(ULMap *)v17 BOOLValue];

                v5->_isMapValid = bOOLValue;
                v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metaInfo"];
                if (v6)
                {
                  v19 = objc_opt_self();

                  metaInfo = v5->_metaInfo;
                  v5->_metaInfo = v19;

                  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeSlamModelData"];
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

  mapItems = [(ULMap *)self mapItems];
  [v6 appendFormat:@", mapItems: %@", mapItems];

  predictionContext = [(ULMap *)self predictionContext];
  [v6 appendFormat:@", predictionContext: %@", predictionContext];

  locationOfInterest = [(ULMap *)self locationOfInterest];
  [v6 appendFormat:@", locationOfInterest: %@", locationOfInterest];

  v10 = ULServiceStateToString([(ULMap *)self serviceState]);
  [v6 appendFormat:@", serviceState: %@", v10];

  serviceSuspendReasons = [(ULMap *)self serviceSuspendReasons];
  [v6 appendFormat:@", serviceSuspendReasons: %@", serviceSuspendReasons];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[ULMap isMapValid](self, "isMapValid")}];
  [v6 appendFormat:@", isMapValid: %@", v12];

  metaInfo = [(ULMap *)self metaInfo];
  [v6 appendFormat:@", metaInfo: %@", metaInfo];

  homeSlamModelData = [(ULMap *)self homeSlamModelData];
  [v6 appendFormat:@", homeSlamModelData: %@", homeSlamModelData];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  mapItems = [(ULMap *)self mapItems];
  mapItems2 = [equalCopy mapItems];
  if ([mapItems isEqual:mapItems2])
  {
  }

  else
  {
    mapItems3 = [(ULMap *)self mapItems];
    mapItems4 = [equalCopy mapItems];

    if (mapItems3 != mapItems4)
    {
      goto LABEL_19;
    }
  }

  predictionContext = [(ULMap *)self predictionContext];
  predictionContext2 = [equalCopy predictionContext];
  if ([predictionContext isEqual:predictionContext2])
  {
  }

  else
  {
    predictionContext3 = [(ULMap *)self predictionContext];
    predictionContext4 = [equalCopy predictionContext];

    if (predictionContext3 != predictionContext4)
    {
      goto LABEL_19;
    }
  }

  locationOfInterest = [(ULMap *)self locationOfInterest];
  locationOfInterest2 = [equalCopy locationOfInterest];
  if ([locationOfInterest isEqual:locationOfInterest2])
  {
  }

  else
  {
    locationOfInterest3 = [(ULMap *)self locationOfInterest];
    locationOfInterest4 = [equalCopy locationOfInterest];

    if (locationOfInterest3 != locationOfInterest4)
    {
      goto LABEL_19;
    }
  }

  serviceState = [(ULMap *)self serviceState];
  if (serviceState != [equalCopy serviceState])
  {
    goto LABEL_19;
  }

  serviceSuspendReasons = [(ULMap *)self serviceSuspendReasons];
  serviceSuspendReasons2 = [equalCopy serviceSuspendReasons];
  if ([serviceSuspendReasons isEqual:serviceSuspendReasons2])
  {
  }

  else
  {
    serviceSuspendReasons3 = [(ULMap *)self serviceSuspendReasons];
    serviceSuspendReasons4 = [equalCopy serviceSuspendReasons];

    if (serviceSuspendReasons3 != serviceSuspendReasons4)
    {
      goto LABEL_19;
    }
  }

  isMapValid = [(ULMap *)self isMapValid];
  if (isMapValid != [equalCopy isMapValid])
  {
    goto LABEL_19;
  }

  metaInfo = [(ULMap *)self metaInfo];
  metaInfo2 = [equalCopy metaInfo];
  if ([metaInfo isEqual:metaInfo2])
  {

    goto LABEL_21;
  }

  metaInfo3 = [(ULMap *)self metaInfo];
  metaInfo4 = [equalCopy metaInfo];

  if (metaInfo3 != metaInfo4)
  {
LABEL_19:
    v27 = 0;
    goto LABEL_20;
  }

LABEL_21:
  homeSlamModelData = [(ULMap *)self homeSlamModelData];
  homeSlamModelData2 = [equalCopy homeSlamModelData];
  if ([homeSlamModelData isEqual:homeSlamModelData2])
  {

    v27 = 1;
  }

  else
  {
    homeSlamModelData3 = [(ULMap *)self homeSlamModelData];
    homeSlamModelData4 = [equalCopy homeSlamModelData];
    v27 = homeSlamModelData3 == homeSlamModelData4;
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

- (id)labelsInSameSpaceForMapItem:(id)item
{
  v29 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  array = [MEMORY[0x277CBEB18] array];
  if ([(ULMap *)self isMapValid])
  {
    predictionContext = [(ULMap *)self predictionContext];
    isPredictionValid = [predictionContext isPredictionValid];

    if (isPredictionValid)
    {
      predictionContext2 = [(ULMap *)self predictionContext];
      [predictionContext2 coordinates];
      v23 = v9;
      v22 = ULCoordinatesNotAvailable;

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      labels = [itemCopy labels];
      v11 = [labels countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(labels);
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
            [array addObject:v17];
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
        v18 = [labels countByEnumeratingWithState:&v24 objects:v28 count:16];
        v12 = v18;
        if (!v18)
        {
LABEL_17:

          break;
        }
      }
    }
  }

  v19 = [array copy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (unint64_t)numberOfLabelsInSameSpaceForMapItem:(id)item
{
  v3 = [(ULMap *)self labelsInSameSpaceForMapItem:item];
  v4 = [v3 count];

  return v4;
}

- (int64_t)averageRSSIOfSameSpaceLabelsForMapItem:(id)item
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  labels = [itemCopy labels];
  firstObject = [labels firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(ULMap *)self labelsInSameSpaceForMapItem:itemCopy];
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

- (BOOL)_image_isSameSpaceForLabel:(id)label
{
  v4 = MEMORY[0x277CBEB98];
  imageIdentifiersVector = [label imageIdentifiersVector];
  v6 = [v4 setWithArray:imageIdentifiersVector];

  v7 = MEMORY[0x277CBEB98];
  predictionContext = [(ULMap *)self predictionContext];
  imageIdentifiersVector2 = [predictionContext imageIdentifiersVector];
  v10 = [v7 setWithArray:imageIdentifiersVector2];

  LOBYTE(predictionContext) = [v6 intersectsSet:v10];
  return predictionContext;
}

- (BOOL)_cosineSimilarity_isSameSpaceForLabel:(id)label
{
  v42 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v5 = MEMORY[0x277D28858];
  predictionContext = [(ULMap *)self predictionContext];
  probabilityVector = [predictionContext probabilityVector];
  [v5 sumOfVector:probabilityVector];
  v9 = 1.0 - v8;

  v10 = MEMORY[0x277D28858];
  predictionContext2 = [(ULMap *)self predictionContext];
  probabilityVector2 = [predictionContext2 probabilityVector];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v14 = [probabilityVector2 arrayByAddingObject:v13];
  [v10 magnitudeOfVector:v14];
  v16 = v15;

  if (v16 == 0.0)
  {
    v17 = 0;
  }

  else
  {
    predictionContext3 = [(ULMap *)self predictionContext];
    v19 = [(ULMap *)self _extendProbabilityVectorForLabel:labelCopy toMatchPredictionContext:predictionContext3];

    v20 = MEMORY[0x277D28878];
    predictionContext4 = [(ULMap *)self predictionContext];
    probabilityVector3 = [predictionContext4 probabilityVector];
    [v20 cosineSimilarityBetweenPredictionProbabilities:probabilityVector3 withPreCalculatedMagnitude:v19 andLabelProbabilities:v16];
    v24 = v23;

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMap _cosineSimilarity_isSameSpaceForLabel:];
    }

    v25 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v26 = v25;
      name = [labelCopy name];
      probabilityVector4 = [labelCopy probabilityVector];
      predictionContext5 = [(ULMap *)self predictionContext];
      probabilityVector5 = [predictionContext5 probabilityVector];
      v31 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
      v34 = 138413058;
      v35 = name;
      v36 = 2112;
      v37 = probabilityVector4;
      v38 = 2112;
      v39 = probabilityVector5;
      v40 = 2112;
      v41 = v31;
      _os_log_impl(&dword_258FC9000, v26, OS_LOG_TYPE_INFO, "[ULMap]: _cosineSimilarity_isSameSpaceForLabel: labelName: %@, labelProbabilityVector: %@, predictionContextProbabilityVector: %@, cosineSimilarity: %@", &v34, 0x2Au);
    }

    v17 = v24 >= 0.7 && v24 != -1.0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_geo_isSameSpaceForLabel:(id)label
{
  v4 = MEMORY[0x277D28878];
  labelCopy = label;
  predictionContext = [(ULMap *)self predictionContext];
  [predictionContext coordinates];
  v19 = v7;
  [labelCopy coordinates];
  [v4 horizontalDistanceSquaredBetweenPredictionCoordinates:v19 andLabelCoordinates:v8];
  v10 = v9;

  v11 = MEMORY[0x277D28878];
  predictionContext2 = [(ULMap *)self predictionContext];
  [predictionContext2 coordinates];
  v20 = v13;
  [labelCopy coordinates];
  v18 = v14;

  [v11 absoluteVerticalDistanceBetweenPredictionCoordinates:v20 andLabelCoordinates:v18];
  v16 = v15;

  return v16 < 2.0 && v10 < 16.0;
}

- (id)_extendProbabilityVectorForLabel:(id)label toMatchPredictionContext:(id)context
{
  contextCopy = context;
  probabilityVector = [label probabilityVector];
  v7 = [probabilityVector mutableCopy];

  v8 = [v7 count];
  probabilityVector2 = [contextCopy probabilityVector];
  v10 = [probabilityVector2 count];

  if (v8 < v10)
  {
    do
    {
      [v7 addObject:&unk_286A52AB0];
      v11 = [v7 count];
      probabilityVector3 = [contextCopy probabilityVector];
      v13 = [probabilityVector3 count];
    }

    while (v11 < v13);
  }

  v14 = [v7 copy];

  return v14;
}

@end