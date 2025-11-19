@interface FedStatsHistogramType
+ (id)createFromDict:(id)a3 possibleError:(id *)a4;
- (FedStatsHistogramType)initWithFeatureType:(id)a3 metricField:(id)a4 clippingBound:(id)a5 featureFactors:(id)a6 defaultFeatureFactor:(id)a7 featureField:(id)a8 normType:(id)a9 normDediscoTaskConfig:(id)a10;
- (id)decodeFromHistogramVector:(id)a3 possibleError:(id *)a4;
- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4;
- (id)decodeFromOneHotVector:(id)a3 possibleError:(id *)a4;
- (id)encodeToHistogramVector:(id)a3 possibleError:(id *)a4;
- (id)encodeToIndex:(id)a3 possibleError:(id *)a4;
- (id)encodeToOneHotVector:(id)a3 possibleError:(id *)a4;
- (id)invertScaleAndShift:(id)a3;
- (id)scaleAndShift:(id)a3;
- (unint64_t)classCount;
@end

@implementation FedStatsHistogramType

- (FedStatsHistogramType)initWithFeatureType:(id)a3 metricField:(id)a4 clippingBound:(id)a5 featureFactors:(id)a6 defaultFeatureFactor:(id)a7 featureField:(id)a8 normType:(id)a9 normDediscoTaskConfig:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = FedStatsHistogramType;
  v19 = [(FedStatsHistogramType *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_featureType, a3);
    objc_storeStrong(&v20->_metricField, a4);
    objc_storeStrong(&v20->_clippingBound, a5);
    objc_storeStrong(&v20->_featureFactors, a6);
    objc_storeStrong(&v20->_defaultFeatureFactor, a7);
    objc_storeStrong(&v20->_featureField, a8);
    objc_storeStrong(&v20->_normType, a9);
    objc_storeStrong(&v20->_normDediscoTypeConfig, a10);
  }

  return v20;
}

- (unint64_t)classCount
{
  v2 = [(FedStatsHistogramType *)self featureType];
  v3 = [v2 classCount];

  return v3;
}

+ (id)createFromDict:(id)a3 possibleError:(id *)a4
{
  v75[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKey:kFedStatsHistogramTypeMetricFieldKey];
  if (!v6)
  {
    if (a4)
    {
      v17 = LABEL_24:;
      *a4 = [FedStatsError errorWithCode:300 description:v17];
    }

LABEL_25:
    v18 = 0;
    goto LABEL_37;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v7 = [v5 objectForKey:kFedStatsHistogramTypeNormTypeKey];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
        v19 = {;
        *a4 = [FedStatsError errorWithCode:300 description:v19];
      }

      v18 = 0;
      goto LABEL_36;
    }
  }

  v8 = [v5 objectForKey:kFedStatsHistogramTypeFeatureTypesKey];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 count])
    {
      v9 = [v5 objectForKey:kFedStatsHistogramTypeClippingBoundKey];
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 floatValue];
          if (v10 > 0.0)
          {
            v68 = v9;
            v11 = [v5 objectForKey:kFedStatsCombinationTypeAvailableTypes];
            if (!v11)
            {
              if (a4)
                v25 = {;
                *a4 = [FedStatsError errorWithCode:300 description:v25];

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
                  if (a4)
                  {
                    v41 = v28;
                    v42 = [FedStatsError errorWithCode:300 underlyingError:v28 description:@"HistogramType cannot create feature type"];
                    v29 = v41;
                    *a4 = v42;
                  }

                  v14 = 0;
                  v16 = 0;
                  v18 = 0;
                  goto LABEL_162;
                }

                v64 = 0;
LABEL_52:
                v9 = v68;
                v30 = [v5 objectForKey:kFedStatsHistogramTypeDefaultFeatureFactorKey];
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
                              v60 = [v5 objectForKey:kFedStatsHistogramTypeFeatureFactorsKey];
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
                                        if (!a4)
                                        {
                                          goto LABEL_151;
                                        }

LABEL_144:
                                        v49 = [MEMORY[0x277CCACA8] stringWithFormat:v48, kFedStatsHistogramTypeFeatureFactorsKey, v57, kFedStatsHistogramTypeFeatureFactorScaleKey];
                                        *a4 = [FedStatsError errorWithCode:300 description:v49];

                                        goto LABEL_151;
                                      }

                                      objc_opt_class();
                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                      {
                                        if (!a4)
                                        {
                                          goto LABEL_151;
                                        }

                                        goto LABEL_144;
                                      }

                                      [v58 floatValue];
                                      if (v35 <= 0.0)
                                      {
                                        if (!a4)
                                        {
                                          goto LABEL_151;
                                        }

                                        goto LABEL_144;
                                      }

                                      v36 = [v34 objectForKey:kFedStatsHistogramTypeFeatureFactorShiftKey];
                                      if (!v36)
                                      {
                                        if (a4)
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
                                        if (a4)
                                        {
LABEL_149:
                                          v51 = [MEMORY[0x277CCACA8] stringWithFormat:v50, kFedStatsHistogramTypeFeatureFactorsKey, v57, kFedStatsHistogramTypeFeatureFactorShiftKey];
                                          *a4 = [FedStatsError errorWithCode:300 description:v51];
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

                                      else if (a4)
                                        v38 = {;
                                        *a4 = [FedStatsError errorWithCode:300 underlyingError:v53 description:v38];
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

                                    if (a4)
                                      v46 = {;
                                      *a4 = [FedStatsError errorWithCode:300 description:v46];
                                    }

                                    goto LABEL_152;
                                  }

LABEL_81:
                                  v39 = *MEMORY[0x277D05390];
                                  v59 = [v5 objectForKey:*MEMORY[0x277D05390]];
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

                                    if (a4)
                                    {
                                      goto LABEL_137;
                                    }
                                  }

                                  else if (a4)
                                  {
                                    v47 = LABEL_137:;
                                    *a4 = [FedStatsError errorWithCode:300 description:v47];
                                  }

LABEL_152:
                                  v18 = 0;
LABEL_153:

LABEL_154:
                                  goto LABEL_155;
                                }

                                if (a4)
                                {
                                  goto LABEL_129;
                                }
                              }

                              else if (a4)
                              {
                                v56 = LABEL_129:;
                                [FedStatsError errorWithCode:300 description:?];
                                *a4 = v18 = 0;

LABEL_155:
                                goto LABEL_156;
                              }

                              v18 = 0;
                              goto LABEL_155;
                            }

                            if (a4)
                            {
                              goto LABEL_123;
                            }
                          }

                          else if (a4)
                          {
                            v61 = LABEL_123:;
                            [FedStatsError errorWithCode:300 description:?];
                            *a4 = v18 = 0;

                            goto LABEL_156;
                          }

                          v18 = 0;
                          goto LABEL_156;
                        }

                        if (a4)
                          v33 = {;
                          [FedStatsError errorWithCode:300 description:v33];
                          *a4 = v18 = 0;
LABEL_156:
                          v9 = v68;
                          goto LABEL_157;
                        }

                        v18 = 0;
                        v9 = v68;
LABEL_158:
                        v14 = v64;
                        v16 = v65;
                        v43 = v62;
                        goto LABEL_159;
                      }

                      if (a4)
                      {
                        goto LABEL_114;
                      }
                    }

                    else if (a4)
                    {
                      v33 = LABEL_114:;
                      [FedStatsError errorWithCode:300 description:v33];
                      *a4 = v18 = 0;
LABEL_157:

                      goto LABEL_158;
                    }

                    v18 = 0;
                    goto LABEL_158;
                  }

                  if (!a4)
                  {
                    v18 = 0;
                    v14 = v64;
                    v16 = v65;
LABEL_160:
                    v30 = v63;
                    goto LABEL_161;
                  }
                }

                else
                {
                  if (!a4)
                  {
                    v18 = 0;
                    v14 = v64;
                    v16 = v65;
LABEL_161:

                    goto LABEL_162;
                  }

                  v63 = 0;
                }
                v43 = ;
                [FedStatsError errorWithCode:300 description:v43];
                *a4 = v18 = 0;
                v14 = v64;
                v16 = v65;
LABEL_159:

                goto LABEL_160;
              }

              v14 = [v8 firstObject];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v15 = [v67 objectForKey:v14];
                if (v15)
                {
                  v16 = v15;
                  if ([v15 conformsToProtocol:&unk_285E13BF8])
                  {
                    v64 = v14;
                    v65 = v16;
                    goto LABEL_52;
                  }

                  if (a4)
                    v45 = {;
                    *a4 = [FedStatsError errorWithCode:300 description:v45];
                  }

LABEL_105:
                  v18 = 0;
LABEL_162:

                  v13 = v66;
                  goto LABEL_163;
                }

                if (a4)
                {
                  goto LABEL_103;
                }
              }

              else if (a4)
              {
                v44 = LABEL_103:;
                *a4 = [FedStatsError errorWithCode:300 description:v44];
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

              if (a4)
              {
                goto LABEL_89;
              }
            }

            else if (a4)
            {
              v40 = LABEL_89:;
              *a4 = [FedStatsError errorWithCode:300 description:v40];
            }

            v18 = 0;
LABEL_163:

            v11 = v67;
LABEL_164:

            goto LABEL_46;
          }
        }

        if (a4)
        {
          v23 = v9;
          v24 = LABEL_44:;
          v9 = v23;
          *a4 = [FedStatsError errorWithCode:300 description:v24];
        }
      }

      else if (a4)
      {
        v23 = 0;
        goto LABEL_44;
      }

      v18 = 0;
LABEL_46:

      goto LABEL_35;
    }

    if (a4)
    {
      v20 = LABEL_33:;
      *a4 = [FedStatsError errorWithCode:300 description:v20];
    }
  }

  else if (a4)
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

- (id)scaleAndShift:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    if ([v4 count])
    {
      v6 = 0;
      do
      {
        v7 = [(FedStatsHistogramType *)self featureFactors];
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
        v9 = [v7 objectForKey:v8];

        if (!v9)
        {
          v9 = [(FedStatsHistogramType *)self defaultFeatureFactor];
        }

        v10 = [v9 objectForKey:kFedStatsHistogramTypeFeatureFactorScaleKey];
        [v10 floatValue];
        v12 = v11;

        v13 = [v9 objectForKey:kFedStatsHistogramTypeFeatureFactorShiftKey];
        [v13 floatValue];
        v15 = v14;

        v16 = [v4 objectAtIndex:v6];
        [v16 floatValue];
        v18 = -(v15 - (v12 * v17));

        *&v19 = v18;
        v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
        [v5 addObject:v20];

        ++v6;
      }

      while (v6 < [v4 count]);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)invertScaleAndShift:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    if ([v4 count])
    {
      v6 = 0;
      do
      {
        v7 = [(FedStatsHistogramType *)self featureFactors];
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
        v9 = [v7 objectForKey:v8];

        if (!v9)
        {
          v9 = [(FedStatsHistogramType *)self defaultFeatureFactor];
        }

        v10 = [v9 objectForKey:kFedStatsHistogramTypeFeatureFactorScaleKey];
        [v10 floatValue];
        v12 = v11;

        v13 = [v9 objectForKey:kFedStatsHistogramTypeFeatureFactorShiftKey];
        [v13 floatValue];
        v15 = v14;

        v16 = [v4 objectAtIndex:v6];
        [v16 floatValue];
        v18 = (v15 + v17) / v12;

        *&v19 = v18;
        v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
        [v5 addObject:v20];

        ++v6;
      }

      while (v6 < [v4 count]);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)encodeToIndex:(id)a3 possibleError:(id *)a4
{
  if (a4)
  {
    *a4 = [FedStatsError errorWithCode:900 description:@"encoding to index not implemented for histogram type"];
  }

  return 0;
}

- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4
{
  if (a4)
  {
    *a4 = [FedStatsError errorWithCode:900 description:@"decoding from index not implemented for histogram type"];
  }

  return 0;
}

- (id)encodeToOneHotVector:(id)a3 possibleError:(id *)a4
{
  if (a4)
  {
    *a4 = [FedStatsError errorWithCode:900 description:@"encoding to one-hot vector not implemented for histogram type"];
  }

  return 0;
}

- (id)decodeFromOneHotVector:(id)a3 possibleError:(id *)a4
{
  if (a4)
  {
    *a4 = [FedStatsError errorWithCode:900 description:@"decoding from vector not implemented for histogram type"];
  }

  return 0;
}

- (id)encodeToHistogramVector:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = [(FedStatsHistogramType *)self metricField];
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {
    if (a4)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [(FedStatsHistogramType *)self metricField];
      [v14 stringWithFormat:@"Histogram type encoder input is missing the key '%@'", v15];
      v17 = LABEL_9:;
      *a4 = [FedStatsError errorWithCode:401 description:v17];
    }

LABEL_10:
    v18 = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v16 = MEMORY[0x277CCACA8];
      v15 = [(FedStatsHistogramType *)self metricField];
      [v16 stringWithFormat:@"Histogram type encoder input's value for '%@' is not a number", v15];
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v9 = [(FedStatsHistogramType *)self featureType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [(FedStatsHistogramType *)self featureType];
    v29 = 0;
    v12 = [v11 encodeToIndex:v6 possibleError:&v29];
    v13 = v29;
  }

  else
  {
    v19 = [(FedStatsHistogramType *)self featureField];
    v11 = [v6 objectForKey:v19];

    if (!v11)
    {
      if (a4)
      {
        v24 = MEMORY[0x277CCACA8];
        v25 = [(FedStatsHistogramType *)self featureField];
        v26 = [v24 stringWithFormat:@"Histogram type encoder input data is missing value for the field %@", v25];
        *a4 = [FedStatsError errorWithCode:401 description:v26];
      }

      v13 = 0;
      goto LABEL_20;
    }

    v20 = [(FedStatsHistogramType *)self featureType];
    v28 = 0;
    v12 = [v20 encodeToIndex:v11 possibleError:&v28];
    v13 = v28;
  }

  if (!v12)
  {
    if (a4)
    {
      [FedStatsError errorWithCode:401 underlyingError:v13 description:@"Histogram type encoder input data cannot be encoded to an index"];
      *a4 = v18 = 0;
      goto LABEL_21;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v21 = MEMORY[0x277CBEB18];
  v22 = [(FedStatsHistogramType *)self featureType];
  v23 = [v21 arrayWithObject:&unk_285E12C50 repeated:{objc_msgSend(v22, "classCount")}];

  [v23 setObject:v8 atIndexedSubscript:{objc_msgSend(v12, "unsignedIntegerValue")}];
  v18 = [MEMORY[0x277CBEA90] dataWithArray:v23];

LABEL_21:
LABEL_22:

  return v18;
}

- (id)decodeFromHistogramVector:(id)a3 possibleError:(id *)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEA60] arrayWithData:v6];
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
          if (a4)
          {
            *a4 = [FedStatsError errorWithCode:500 description:@"Histogram vector cannot have multiple indices with non-zero value"];
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
  v13 = [(FedStatsHistogramType *)self featureType];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v23 = 0;
  v15 = [v13 decodeFromIndex:v14 possibleError:&v23];
  v16 = v23;

  if (v15)
  {
    v17 = [(FedStatsHistogramType *)self metricField];
    v24 = v17;
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
      v20 = [(FedStatsHistogramType *)self featureField];
      [v19 setObject:v15 forKey:v20];
    }
  }

  else if (a4)
  {
    [FedStatsError errorWithCode:500 underlyingError:v16 description:@"Cannot decode feature value for histogram"];
    *a4 = v19 = 0;
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