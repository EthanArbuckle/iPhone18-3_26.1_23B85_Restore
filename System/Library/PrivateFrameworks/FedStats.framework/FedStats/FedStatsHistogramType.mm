@interface FedStatsHistogramType
+ (id)createFromDict:(id)dict possibleError:(id *)error;
- (FedStatsHistogramType)initWithFeatureType:(id)type metricField:(id)field clippingBound:(id)bound featureFactors:(id)factors defaultFeatureFactor:(id)factor featureField:(id)featureField normType:(id)normType normDediscoTaskConfig:(id)self0;
- (id)decodeFromHistogramVector:(id)vector possibleError:(id *)error;
- (id)decodeFromIndex:(id)index possibleError:(id *)error;
- (id)decodeFromOneHotVector:(id)vector possibleError:(id *)error;
- (id)encodeToHistogramVector:(id)vector possibleError:(id *)error;
- (id)encodeToIndex:(id)index possibleError:(id *)error;
- (id)encodeToOneHotVector:(id)vector possibleError:(id *)error;
- (id)invertScaleAndShift:(id)shift;
- (id)scaleAndShift:(id)shift;
- (unint64_t)classCount;
@end

@implementation FedStatsHistogramType

- (FedStatsHistogramType)initWithFeatureType:(id)type metricField:(id)field clippingBound:(id)bound featureFactors:(id)factors defaultFeatureFactor:(id)factor featureField:(id)featureField normType:(id)normType normDediscoTaskConfig:(id)self0
{
  typeCopy = type;
  fieldCopy = field;
  boundCopy = bound;
  factorsCopy = factors;
  factorCopy = factor;
  featureFieldCopy = featureField;
  normTypeCopy = normType;
  configCopy = config;
  v28.receiver = self;
  v28.super_class = FedStatsHistogramType;
  v19 = [(FedStatsHistogramType *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_featureType, type);
    objc_storeStrong(&v20->_metricField, field);
    objc_storeStrong(&v20->_clippingBound, bound);
    objc_storeStrong(&v20->_featureFactors, factors);
    objc_storeStrong(&v20->_defaultFeatureFactor, factor);
    objc_storeStrong(&v20->_featureField, featureField);
    objc_storeStrong(&v20->_normType, normType);
    objc_storeStrong(&v20->_normDediscoTypeConfig, config);
  }

  return v20;
}

- (unint64_t)classCount
{
  featureType = [(FedStatsHistogramType *)self featureType];
  classCount = [featureType classCount];

  return classCount;
}

+ (id)createFromDict:(id)dict possibleError:(id *)error
{
  v75[2] = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v6 = [dictCopy objectForKey:kFedStatsHistogramTypeMetricFieldKey];
  if (!v6)
  {
    if (error)
    {
      v17 = LABEL_24:;
      *error = [FedStatsError errorWithCode:300 description:v17];
    }

LABEL_25:
    v18 = 0;
    goto LABEL_37;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v7 = [dictCopy objectForKey:kFedStatsHistogramTypeNormTypeKey];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
        v19 = {;
        *error = [FedStatsError errorWithCode:300 description:v19];
      }

      v18 = 0;
      goto LABEL_36;
    }
  }

  v8 = [dictCopy objectForKey:kFedStatsHistogramTypeFeatureTypesKey];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 count])
    {
      v9 = [dictCopy objectForKey:kFedStatsHistogramTypeClippingBoundKey];
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 floatValue];
          if (v10 > 0.0)
          {
            v68 = v9;
            v11 = [dictCopy objectForKey:kFedStatsCombinationTypeAvailableTypes];
            if (!v11)
            {
              if (error)
                v25 = {;
                *error = [FedStatsError errorWithCode:300 description:v25];

                v11 = 0;
              }

              v18 = 0;
              goto LABEL_164;
            }

            v67 = v11;
            v12 = [v11 objectForKey:v7];
            v13 = v12;
            if (!v7)
            {
LABEL_15:
              v66 = v13;
              if ([v8 count] != 1)
              {
                v74[0] = kFedStatsCombinationTypeStructure;
                v74[1] = kFedStatsCombinationTypeAvailableTypes;
                v75[0] = v8;
                v75[1] = v67;
                v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
                v71 = 0;
                v27 = [FedStatsCombinationType createFromDict:v26 possibleError:&v71];
                v28 = v71;
                v29 = v28;
                v65 = v27;
                if (!v27)
                {
                  v9 = v68;
                  if (error)
                  {
                    v41 = v28;
                    v42 = [FedStatsError errorWithCode:300 underlyingError:v28 description:@"HistogramType cannot create feature type"];
                    v29 = v41;
                    *error = v42;
                  }

                  firstObject = 0;
                  v16 = 0;
                  v18 = 0;
                  goto LABEL_162;
                }

                v64 = 0;
LABEL_52:
                v9 = v68;
                v30 = [dictCopy objectForKey:kFedStatsHistogramTypeDefaultFeatureFactorKey];
                if (v30)
                {
                  v31 = v30;
                  objc_opt_class();
                  v63 = v31;
                  if (objc_opt_isKindOfClass())
                  {
                    v62 = [v31 objectForKey:kFedStatsHistogramTypeFeatureFactorScaleKey];
                    if (v62)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v62 floatValue];
                        if (v32 > 0.0)
                        {
                          v33 = [v31 objectForKey:kFedStatsHistogramTypeFeatureFactorShiftKey];
                          if (v33)
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v60 = [dictCopy objectForKey:kFedStatsHistogramTypeFeatureFactorsKey];
                              if (v60)
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v55 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v60, "count")}];
                                  if ([v60 count])
                                  {
                                    v57 = 0;
                                    while (1)
                                    {
                                      v34 = [v60 objectAtIndex:v57];
                                      objc_opt_class();
                                      v59 = v34;
                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                      {
                                        break;
                                      }

                                      v58 = [v34 objectForKey:kFedStatsHistogramTypeFeatureFactorScaleKey];
                                      if (!v58)
                                      {
                                        if (!error)
                                        {
                                          goto LABEL_151;
                                        }

LABEL_144:
                                        kFedStatsHistogramTypeFeatureFactorScaleKey = [MEMORY[0x277CCACA8] stringWithFormat:v48, kFedStatsHistogramTypeFeatureFactorsKey, v57, kFedStatsHistogramTypeFeatureFactorScaleKey];
                                        *error = [FedStatsError errorWithCode:300 description:kFedStatsHistogramTypeFeatureFactorScaleKey];

                                        goto LABEL_151;
                                      }

                                      objc_opt_class();
                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                      {
                                        if (!error)
                                        {
                                          goto LABEL_151;
                                        }

                                        goto LABEL_144;
                                      }

                                      [v58 floatValue];
                                      if (v35 <= 0.0)
                                      {
                                        if (!error)
                                        {
                                          goto LABEL_151;
                                        }

                                        goto LABEL_144;
                                      }

                                      v36 = [v34 objectForKey:kFedStatsHistogramTypeFeatureFactorShiftKey];
                                      if (!v36)
                                      {
                                        if (error)
                                        {
                                          goto LABEL_149;
                                        }

LABEL_150:

LABEL_151:
                                        goto LABEL_152;
                                      }

                                      objc_opt_class();
                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                      {
                                        if (error)
                                        {
LABEL_149:
                                          kFedStatsHistogramTypeFeatureFactorShiftKey = [MEMORY[0x277CCACA8] stringWithFormat:v50, kFedStatsHistogramTypeFeatureFactorsKey, v57, kFedStatsHistogramTypeFeatureFactorShiftKey];
                                          *error = [FedStatsError errorWithCode:300 description:kFedStatsHistogramTypeFeatureFactorShiftKey];
                                        }

                                        goto LABEL_150;
                                      }

                                      v72[0] = kFedStatsHistogramTypeFeatureFactorScaleKey;
                                      v72[1] = kFedStatsHistogramTypeFeatureFactorShiftKey;
                                      v73[0] = v58;
                                      v73[1] = v36;
                                      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
                                      if (v64)
                                      {
                                        v37 = [v34 objectForKey:v64];
                                        if (v37)
                                        {
                                          v69 = 0;
                                          v18 = [v65 encodeToIndex:v37 possibleError:&v69];
                                          v53 = v69;
                                        }

                                        else
                                        {
                                          v53 = [FedStatsError errorWithCode:401 description:@"HistogramType cannot find feature value"];
                                          v18 = 0;
                                        }
                                      }

                                      else
                                      {
                                        v70 = 0;
                                        v18 = [v65 encodeToIndex:v34 possibleError:&v70];
                                        v53 = v70;
                                      }

                                      if (v18)
                                      {
                                        [v55 setObject:v54 forKey:v18];
                                      }

                                      else if (error)
                                        v38 = {;
                                        *error = [FedStatsError errorWithCode:300 underlyingError:v53 description:v38];
                                      }

                                      if (!v18)
                                      {
                                        goto LABEL_154;
                                      }

                                      if (++v57 >= [v60 count])
                                      {
                                        goto LABEL_81;
                                      }
                                    }

                                    if (error)
                                      v46 = {;
                                      *error = [FedStatsError errorWithCode:300 description:v46];
                                    }

                                    goto LABEL_152;
                                  }

LABEL_81:
                                  v39 = *MEMORY[0x277D05390];
                                  v59 = [dictCopy objectForKey:*MEMORY[0x277D05390]];
                                  if (!v7)
                                  {
LABEL_84:
                                    v18 = [[FedStatsHistogramType alloc] initWithFeatureType:v65 metricField:v6 clippingBound:v68 featureFactors:v55 defaultFeatureFactor:v63 featureField:v64 normType:v66 normDediscoTaskConfig:v59];
                                    goto LABEL_153;
                                  }

                                  if (v59)
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      goto LABEL_84;
                                    }

                                    if (error)
                                    {
                                      goto LABEL_137;
                                    }
                                  }

                                  else if (error)
                                  {
                                    v47 = LABEL_137:;
                                    *error = [FedStatsError errorWithCode:300 description:v47];
                                  }

LABEL_152:
                                  v18 = 0;
LABEL_153:

LABEL_154:
                                  goto LABEL_155;
                                }

                                if (error)
                                {
                                  goto LABEL_129;
                                }
                              }

                              else if (error)
                              {
                                v56 = LABEL_129:;
                                [FedStatsError errorWithCode:300 description:?];
                                *error = v18 = 0;

LABEL_155:
                                goto LABEL_156;
                              }

                              v18 = 0;
                              goto LABEL_155;
                            }

                            if (error)
                            {
                              goto LABEL_123;
                            }
                          }

                          else if (error)
                          {
                            v61 = LABEL_123:;
                            [FedStatsError errorWithCode:300 description:?];
                            *error = v18 = 0;

                            goto LABEL_156;
                          }

                          v18 = 0;
                          goto LABEL_156;
                        }

                        if (error)
                          v33 = {;
                          [FedStatsError errorWithCode:300 description:v33];
                          *error = v18 = 0;
LABEL_156:
                          v9 = v68;
                          goto LABEL_157;
                        }

                        v18 = 0;
                        v9 = v68;
LABEL_158:
                        firstObject = v64;
                        v16 = v65;
                        v43 = v62;
                        goto LABEL_159;
                      }

                      if (error)
                      {
                        goto LABEL_114;
                      }
                    }

                    else if (error)
                    {
                      v33 = LABEL_114:;
                      [FedStatsError errorWithCode:300 description:v33];
                      *error = v18 = 0;
LABEL_157:

                      goto LABEL_158;
                    }

                    v18 = 0;
                    goto LABEL_158;
                  }

                  if (!error)
                  {
                    v18 = 0;
                    firstObject = v64;
                    v16 = v65;
LABEL_160:
                    v30 = v63;
                    goto LABEL_161;
                  }
                }

                else
                {
                  if (!error)
                  {
                    v18 = 0;
                    firstObject = v64;
                    v16 = v65;
LABEL_161:

                    goto LABEL_162;
                  }

                  v63 = 0;
                }
                v43 = ;
                [FedStatsError errorWithCode:300 description:v43];
                *error = v18 = 0;
                firstObject = v64;
                v16 = v65;
LABEL_159:

                goto LABEL_160;
              }

              firstObject = [v8 firstObject];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v15 = [v67 objectForKey:firstObject];
                if (v15)
                {
                  v16 = v15;
                  if ([v15 conformsToProtocol:&unk_285E13BF8])
                  {
                    v64 = firstObject;
                    v65 = v16;
                    goto LABEL_52;
                  }

                  if (error)
                    v45 = {;
                    *error = [FedStatsError errorWithCode:300 description:v45];
                  }

LABEL_105:
                  v18 = 0;
LABEL_162:

                  v13 = v66;
                  goto LABEL_163;
                }

                if (error)
                {
                  goto LABEL_103;
                }
              }

              else if (error)
              {
                v44 = LABEL_103:;
                *error = [FedStatsError errorWithCode:300 description:v44];
              }

              v16 = 0;
              goto LABEL_105;
            }

            if (v12)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                goto LABEL_15;
              }

              if (error)
              {
                goto LABEL_89;
              }
            }

            else if (error)
            {
              v40 = LABEL_89:;
              *error = [FedStatsError errorWithCode:300 description:v40];
            }

            v18 = 0;
LABEL_163:

            v11 = v67;
LABEL_164:

            goto LABEL_46;
          }
        }

        if (error)
        {
          v23 = v9;
          v24 = LABEL_44:;
          v9 = v23;
          *error = [FedStatsError errorWithCode:300 description:v24];
        }
      }

      else if (error)
      {
        v23 = 0;
        goto LABEL_44;
      }

      v18 = 0;
LABEL_46:

      goto LABEL_35;
    }

    if (error)
    {
      v20 = LABEL_33:;
      *error = [FedStatsError errorWithCode:300 description:v20];
    }
  }

  else if (error)
  {
    goto LABEL_33;
  }

  v18 = 0;
LABEL_35:

LABEL_36:
LABEL_37:

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)scaleAndShift:(id)shift
{
  shiftCopy = shift;
  if (shiftCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(shiftCopy, "count")}];
    if ([shiftCopy count])
    {
      v6 = 0;
      do
      {
        featureFactors = [(FedStatsHistogramType *)self featureFactors];
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
        defaultFeatureFactor = [featureFactors objectForKey:v8];

        if (!defaultFeatureFactor)
        {
          defaultFeatureFactor = [(FedStatsHistogramType *)self defaultFeatureFactor];
        }

        v10 = [defaultFeatureFactor objectForKey:kFedStatsHistogramTypeFeatureFactorScaleKey];
        [v10 floatValue];
        v12 = v11;

        v13 = [defaultFeatureFactor objectForKey:kFedStatsHistogramTypeFeatureFactorShiftKey];
        [v13 floatValue];
        v15 = v14;

        v16 = [shiftCopy objectAtIndex:v6];
        [v16 floatValue];
        v18 = -(v15 - (v12 * v17));

        *&v19 = v18;
        v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
        [v5 addObject:v20];

        ++v6;
      }

      while (v6 < [shiftCopy count]);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)invertScaleAndShift:(id)shift
{
  shiftCopy = shift;
  if (shiftCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(shiftCopy, "count")}];
    if ([shiftCopy count])
    {
      v6 = 0;
      do
      {
        featureFactors = [(FedStatsHistogramType *)self featureFactors];
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
        defaultFeatureFactor = [featureFactors objectForKey:v8];

        if (!defaultFeatureFactor)
        {
          defaultFeatureFactor = [(FedStatsHistogramType *)self defaultFeatureFactor];
        }

        v10 = [defaultFeatureFactor objectForKey:kFedStatsHistogramTypeFeatureFactorScaleKey];
        [v10 floatValue];
        v12 = v11;

        v13 = [defaultFeatureFactor objectForKey:kFedStatsHistogramTypeFeatureFactorShiftKey];
        [v13 floatValue];
        v15 = v14;

        v16 = [shiftCopy objectAtIndex:v6];
        [v16 floatValue];
        v18 = (v15 + v17) / v12;

        *&v19 = v18;
        v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
        [v5 addObject:v20];

        ++v6;
      }

      while (v6 < [shiftCopy count]);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)encodeToIndex:(id)index possibleError:(id *)error
{
  if (error)
  {
    *error = [FedStatsError errorWithCode:900 description:@"encoding to index not implemented for histogram type"];
  }

  return 0;
}

- (id)decodeFromIndex:(id)index possibleError:(id *)error
{
  if (error)
  {
    *error = [FedStatsError errorWithCode:900 description:@"decoding from index not implemented for histogram type"];
  }

  return 0;
}

- (id)encodeToOneHotVector:(id)vector possibleError:(id *)error
{
  if (error)
  {
    *error = [FedStatsError errorWithCode:900 description:@"encoding to one-hot vector not implemented for histogram type"];
  }

  return 0;
}

- (id)decodeFromOneHotVector:(id)vector possibleError:(id *)error
{
  if (error)
  {
    *error = [FedStatsError errorWithCode:900 description:@"decoding from vector not implemented for histogram type"];
  }

  return 0;
}

- (id)encodeToHistogramVector:(id)vector possibleError:(id *)error
{
  vectorCopy = vector;
  metricField = [(FedStatsHistogramType *)self metricField];
  v8 = [vectorCopy objectForKey:metricField];

  if (!v8)
  {
    if (error)
    {
      v14 = MEMORY[0x277CCACA8];
      metricField2 = [(FedStatsHistogramType *)self metricField];
      [v14 stringWithFormat:@"Histogram type encoder input is missing the key '%@'", metricField2];
      v17 = LABEL_9:;
      *error = [FedStatsError errorWithCode:401 description:v17];
    }

LABEL_10:
    v18 = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v16 = MEMORY[0x277CCACA8];
      metricField2 = [(FedStatsHistogramType *)self metricField];
      [v16 stringWithFormat:@"Histogram type encoder input's value for '%@' is not a number", metricField2];
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  featureType = [(FedStatsHistogramType *)self featureType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    featureType2 = [(FedStatsHistogramType *)self featureType];
    v29 = 0;
    v12 = [featureType2 encodeToIndex:vectorCopy possibleError:&v29];
    v13 = v29;
  }

  else
  {
    featureField = [(FedStatsHistogramType *)self featureField];
    featureType2 = [vectorCopy objectForKey:featureField];

    if (!featureType2)
    {
      if (error)
      {
        v24 = MEMORY[0x277CCACA8];
        featureField2 = [(FedStatsHistogramType *)self featureField];
        v26 = [v24 stringWithFormat:@"Histogram type encoder input data is missing value for the field %@", featureField2];
        *error = [FedStatsError errorWithCode:401 description:v26];
      }

      v13 = 0;
      goto LABEL_20;
    }

    featureType3 = [(FedStatsHistogramType *)self featureType];
    v28 = 0;
    v12 = [featureType3 encodeToIndex:featureType2 possibleError:&v28];
    v13 = v28;
  }

  if (!v12)
  {
    if (error)
    {
      [FedStatsError errorWithCode:401 underlyingError:v13 description:@"Histogram type encoder input data cannot be encoded to an index"];
      *error = v18 = 0;
      goto LABEL_21;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v21 = MEMORY[0x277CBEB18];
  featureType4 = [(FedStatsHistogramType *)self featureType];
  v23 = [v21 arrayWithObject:&unk_285E12C50 repeated:{objc_msgSend(featureType4, "classCount")}];

  [v23 setObject:v8 atIndexedSubscript:{objc_msgSend(v12, "unsignedIntegerValue")}];
  v18 = [MEMORY[0x277CBEA90] dataWithArray:v23];

LABEL_21:
LABEL_22:

  return v18;
}

- (id)decodeFromHistogramVector:(id)vector possibleError:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v7 = [MEMORY[0x277CBEA60] arrayWithData:vectorCopy];
  if ([v7 count])
  {
    v8 = 0;
    v9 = &unk_285E12DE8;
    v10 = -1;
    while (1)
    {
      v11 = [v7 objectAtIndex:v8];
      if (([v11 isEqualToNumber:&unk_285E12C50] & 1) == 0)
      {
        if (v10 != -1)
        {
          if (error)
          {
            *error = [FedStatsError errorWithCode:500 description:@"Histogram vector cannot have multiple indices with non-zero value"];
          }

          v19 = 0;
          goto LABEL_20;
        }

        v12 = v11;

        v9 = v12;
        v10 = v8;
      }

      if (++v8 >= [v7 count])
      {
        goto LABEL_9;
      }
    }
  }

  v10 = -1;
  v9 = &unk_285E12DE8;
LABEL_9:
  featureType = [(FedStatsHistogramType *)self featureType];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v23 = 0;
  v15 = [featureType decodeFromIndex:v14 possibleError:&v23];
  v16 = v23;

  if (v15)
  {
    metricField = [(FedStatsHistogramType *)self metricField];
    v24 = metricField;
    v25[0] = v9;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v19 = [v18 mutableCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 addEntriesFromDictionary:v15];
    }

    else
    {
      featureField = [(FedStatsHistogramType *)self featureField];
      [v19 setObject:v15 forKey:featureField];
    }
  }

  else if (error)
  {
    [FedStatsError errorWithCode:500 underlyingError:v16 description:@"Cannot decode feature value for histogram"];
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_20:
  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

@end