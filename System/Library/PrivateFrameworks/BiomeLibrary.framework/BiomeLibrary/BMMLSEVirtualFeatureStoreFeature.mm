@interface BMMLSEVirtualFeatureStoreFeature
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSEVirtualFeatureStoreFeature)initWithFeatureName:(int)name featureValue:(id)value featureItselfVersion:(id)version featureFreshnessInHours:(id)hours eventVolumeToComputeFeature:(id)feature timeSpentToComputeFeature:(id)computeFeature;
- (BMMLSEVirtualFeatureStoreFeature)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSEVirtualFeatureStoreFeature

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    featureName = [(BMMLSEVirtualFeatureStoreFeature *)self featureName];
    if (featureName == [v5 featureName])
    {
      featureValue = [(BMMLSEVirtualFeatureStoreFeature *)self featureValue];
      featureValue2 = [v5 featureValue];
      v9 = featureValue2;
      if (featureValue == featureValue2)
      {
      }

      else
      {
        featureValue3 = [(BMMLSEVirtualFeatureStoreFeature *)self featureValue];
        featureValue4 = [v5 featureValue];
        v12 = [featureValue3 isEqual:featureValue4];

        if (!v12)
        {
          goto LABEL_28;
        }
      }

      if (!-[BMMLSEVirtualFeatureStoreFeature hasFeatureItselfVersion](self, "hasFeatureItselfVersion") && ![v5 hasFeatureItselfVersion] || -[BMMLSEVirtualFeatureStoreFeature hasFeatureItselfVersion](self, "hasFeatureItselfVersion") && objc_msgSend(v5, "hasFeatureItselfVersion") && (v14 = -[BMMLSEVirtualFeatureStoreFeature featureItselfVersion](self, "featureItselfVersion"), v14 == objc_msgSend(v5, "featureItselfVersion")))
      {
        if (!-[BMMLSEVirtualFeatureStoreFeature hasFeatureFreshnessInHours](self, "hasFeatureFreshnessInHours") && ![v5 hasFeatureFreshnessInHours] || -[BMMLSEVirtualFeatureStoreFeature hasFeatureFreshnessInHours](self, "hasFeatureFreshnessInHours") && objc_msgSend(v5, "hasFeatureFreshnessInHours") && (v15 = -[BMMLSEVirtualFeatureStoreFeature featureFreshnessInHours](self, "featureFreshnessInHours"), v15 == objc_msgSend(v5, "featureFreshnessInHours")))
        {
          if (!-[BMMLSEVirtualFeatureStoreFeature hasEventVolumeToComputeFeature](self, "hasEventVolumeToComputeFeature") && ![v5 hasEventVolumeToComputeFeature] || -[BMMLSEVirtualFeatureStoreFeature hasEventVolumeToComputeFeature](self, "hasEventVolumeToComputeFeature") && objc_msgSend(v5, "hasEventVolumeToComputeFeature") && (v16 = -[BMMLSEVirtualFeatureStoreFeature eventVolumeToComputeFeature](self, "eventVolumeToComputeFeature"), v16 == objc_msgSend(v5, "eventVolumeToComputeFeature")))
          {
            if (!-[BMMLSEVirtualFeatureStoreFeature hasTimeSpentToComputeFeature](self, "hasTimeSpentToComputeFeature") && ![v5 hasTimeSpentToComputeFeature])
            {
              v13 = 1;
              goto LABEL_29;
            }

            if (-[BMMLSEVirtualFeatureStoreFeature hasTimeSpentToComputeFeature](self, "hasTimeSpentToComputeFeature") && [v5 hasTimeSpentToComputeFeature])
            {
              timeSpentToComputeFeature = [(BMMLSEVirtualFeatureStoreFeature *)self timeSpentToComputeFeature];
              v13 = timeSpentToComputeFeature == [v5 timeSpentToComputeFeature];
LABEL_29:

              goto LABEL_30;
            }
          }
        }
      }
    }

LABEL_28:
    v13 = 0;
    goto LABEL_29;
  }

  v13 = 0;
LABEL_30:

  return v13;
}

- (id)jsonDictionary
{
  v24[6] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSEVirtualFeatureStoreFeature featureName](self, "featureName")}];
  featureValue = [(BMMLSEVirtualFeatureStoreFeature *)self featureValue];
  jsonDictionary = [featureValue jsonDictionary];

  if ([(BMMLSEVirtualFeatureStoreFeature *)self hasFeatureItselfVersion])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEVirtualFeatureStoreFeature featureItselfVersion](self, "featureItselfVersion")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMMLSEVirtualFeatureStoreFeature *)self hasFeatureFreshnessInHours])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEVirtualFeatureStoreFeature featureFreshnessInHours](self, "featureFreshnessInHours")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMMLSEVirtualFeatureStoreFeature *)self hasEventVolumeToComputeFeature])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEVirtualFeatureStoreFeature eventVolumeToComputeFeature](self, "eventVolumeToComputeFeature")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMMLSEVirtualFeatureStoreFeature *)self hasTimeSpentToComputeFeature])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEVirtualFeatureStoreFeature timeSpentToComputeFeature](self, "timeSpentToComputeFeature")}];
  }

  else
  {
    v9 = 0;
  }

  v23[0] = @"featureName";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null;
  v21 = jsonDictionary;
  v24[0] = null;
  v23[1] = @"featureValue";
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = null2;
  v23[2] = @"featureItselfVersion";
  null3 = v6;
  if (!v6)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v3;
  v24[2] = null3;
  v23[3] = @"featureFreshnessInHours";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = null4;
  v23[4] = @"eventVolumeToComputeFeature";
  null5 = v8;
  if (!v8)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = null5;
  v23[5] = @"timeSpentToComputeFeature";
  null6 = v9;
  if (!v9)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v24[5] = null6;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:{6, v19}];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_27;
    }

LABEL_36:

    if (v7)
    {
      goto LABEL_28;
    }

    goto LABEL_37;
  }

  if (!v8)
  {
    goto LABEL_36;
  }

LABEL_27:
  if (v7)
  {
    goto LABEL_28;
  }

LABEL_37:

LABEL_28:
  if (!v6)
  {
  }

  if (v21)
  {
    if (v22)
    {
      goto LABEL_32;
    }
  }

  else
  {

    if (v22)
    {
      goto LABEL_32;
    }
  }

LABEL_32:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMMLSEVirtualFeatureStoreFeature)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v72[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"featureName"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v8 = 0;
          v20 = 0;
          goto LABEL_59;
        }

        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v71 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"featureName"];
        v72[0] = v21;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:&v71 count:1];
        v40 = [v38 initWithDomain:v39 code:2 userInfo:v11];
        v8 = 0;
        v20 = 0;
        *error = v40;
        goto LABEL_57;
      }

      v9 = [MEMORY[0x1E696AD98] numberWithInt:BMMLSEVirtualFeatureStoreFeaturefeatureNameFromString(v7)];
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"featureValue"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v20 = 0;
        goto LABEL_58;
      }

      v55 = v7;
      v23 = v8;
      v24 = objc_alloc(MEMORY[0x1E696ABC0]);
      v25 = *MEMORY[0x1E698F240];
      v69 = *MEMORY[0x1E696A578];
      v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"featureValue"];
      v11 = v70;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v27 = v24;
      v8 = v23;
      v7 = v55;
      *error = [v27 initWithDomain:v25 code:2 userInfo:v26];

      v20 = 0;
      goto LABEL_56;
    }

    v21 = v10;
    v60 = 0;
    v11 = [[BMMLSEVirtualFeatureStoreFeatureFeatureValue alloc] initWithJSONDictionary:v21 error:&v60];
    v22 = v60;
    if (v22)
    {
      if (error)
      {
        v22 = v22;
        *error = v22;
      }

      v20 = 0;
      goto LABEL_57;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"featureItselfVersion"];
  selfCopy = self;
  if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v58 = 0;
LABEL_15:
    v13 = [dictionaryCopy objectForKeyedSubscript:@"featureFreshnessInHours"];
    v53 = v12;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v57 = 0;
          v20 = 0;
          goto LABEL_54;
        }

        v33 = v7;
        v34 = v8;
        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v36 = *MEMORY[0x1E698F240];
        v65 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"featureFreshnessInHours"];
        v66 = v17;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v37 = v35;
        v8 = v34;
        v7 = v33;
        v57 = 0;
        v20 = 0;
        *errorCopy = [v37 initWithDomain:v36 code:2 userInfo:v14];
        goto LABEL_53;
      }

      v57 = v13;
    }

    else
    {
      v57 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"eventVolumeToComputeFeature"];
    v54 = v7;
    v52 = v11;
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v17 = 0;
          v20 = 0;
          goto LABEL_53;
        }

        v16 = v8;
        v50 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v63 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventVolumeToComputeFeature"];
        v64 = v19;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v18 = v42 = error;
        v43 = [v50 initWithDomain:v41 code:2 userInfo:v18];
        v17 = 0;
        v20 = 0;
        *v42 = v43;
        goto LABEL_51;
      }

      errorCopy3 = error;
      v16 = v8;
      v17 = v14;
    }

    else
    {
      errorCopy3 = error;
      v16 = v8;
      v17 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"timeSpentToComputeFeature"];
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = 0;
LABEL_24:
      v11 = v52;
      v20 = -[BMMLSEVirtualFeatureStoreFeature initWithFeatureName:featureValue:featureItselfVersion:featureFreshnessInHours:eventVolumeToComputeFeature:timeSpentToComputeFeature:](selfCopy, "initWithFeatureName:featureValue:featureItselfVersion:featureFreshnessInHours:eventVolumeToComputeFeature:timeSpentToComputeFeature:", [v16 intValue], v52, v58, v57, v17, v19);
      selfCopy = v20;
LABEL_52:

      v8 = v16;
      v7 = v54;
LABEL_53:

      v12 = v53;
      goto LABEL_54;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
      goto LABEL_24;
    }

    if (errorCopy3)
    {
      v51 = objc_alloc(MEMORY[0x1E696ABC0]);
      v48 = *MEMORY[0x1E698F240];
      v61 = *MEMORY[0x1E696A578];
      v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timeSpentToComputeFeature"];
      v62 = v44;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      *errorCopy3 = [v51 initWithDomain:v48 code:2 userInfo:v45];
    }

    v19 = 0;
    v20 = 0;
LABEL_51:
    v11 = v52;
    goto LABEL_52;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v58 = v12;
    goto LABEL_15;
  }

  if (!error)
  {
    v58 = 0;
    v20 = 0;
    goto LABEL_55;
  }

  v56 = v7;
  v28 = v8;
  v29 = objc_alloc(MEMORY[0x1E696ABC0]);
  v30 = *MEMORY[0x1E698F240];
  v67 = *MEMORY[0x1E696A578];
  v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"featureItselfVersion"];
  v68 = v57;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v31 = v29;
  v8 = v28;
  v7 = v56;
  v32 = [v31 initWithDomain:v30 code:2 userInfo:v13];
  v58 = 0;
  v20 = 0;
  *error = v32;
LABEL_54:

  self = selfCopy;
LABEL_55:

LABEL_56:
  v21 = v10;
LABEL_57:

  v10 = v21;
LABEL_58:

LABEL_59:
  v46 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEVirtualFeatureStoreFeature *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  featureName = self->_featureName;
  PBDataWriterWriteUint32Field();
  if (self->_featureValue)
  {
    PBDataWriterPlaceMark();
    [(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self->_featureValue writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasFeatureItselfVersion)
  {
    featureItselfVersion = self->_featureItselfVersion;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFeatureFreshnessInHours)
  {
    featureFreshnessInHours = self->_featureFreshnessInHours;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasEventVolumeToComputeFeature)
  {
    eventVolumeToComputeFeature = self->_eventVolumeToComputeFeature;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasTimeSpentToComputeFeature)
  {
    timeSpentToComputeFeature = self->_timeSpentToComputeFeature;
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v54.receiver = self;
  v54.super_class = BMMLSEVirtualFeatureStoreFeature;
  v5 = [(BMEventBase *)&v54 init];
  if (!v5)
  {
    goto LABEL_99;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_97;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v55[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v55 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v55[0] & 0x7F) << v7;
        if ((v55[0] & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_97;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        break;
      }

      if (v15 == 1)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v55 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v31 |= (v55[0] & 0x7F) << v29;
          if ((v55[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          if (v30++ > 8)
          {
            goto LABEL_77;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v31 > 0x2C5)
        {
LABEL_77:
          LODWORD(v31) = 0;
        }

        v5->_featureName = v31;
        goto LABEL_96;
      }

      if (v15 != 2)
      {
        if (v15 != 3)
        {
          goto LABEL_61;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasFeatureItselfVersion = 1;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:v55 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v55[0] & 0x7F) << v16;
          if ((v55[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_86;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_86:
        v50 = 28;
LABEL_95:
        *(&v5->super.super.isa + v50) = v22;
        goto LABEL_96;
      }

      v55[0] = 0;
      v55[1] = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_98;
      }

      v42 = [[BMMLSEVirtualFeatureStoreFeatureFeatureValue alloc] initByReadFrom:fromCopy];
      if (!v42)
      {
        goto LABEL_98;
      }

      featureValue = v5->_featureValue;
      v5->_featureValue = v42;

      PBReaderRecallMark();
LABEL_96:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_97;
      }
    }

    switch(v15)
    {
      case 4:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v5->_hasFeatureFreshnessInHours = 1;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v39 = [fromCopy position] + 1;
          if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 1, v40 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:v55 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v38 |= (v55[0] & 0x7F) << v36;
          if ((v55[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v13 = v37++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_82;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v38;
        }

LABEL_82:
        v50 = 32;
        break;
      case 5:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v5->_hasEventVolumeToComputeFeature = 1;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v47 = [fromCopy position] + 1;
          if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:v55 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v46 |= (v55[0] & 0x7F) << v44;
          if ((v55[0] & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v13 = v45++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_94;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v46;
        }

LABEL_94:
        v50 = 36;
        break;
      case 6:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasTimeSpentToComputeFeature = 1;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:v55 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (v55[0] & 0x7F) << v23;
          if ((v55[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v13 = v24++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_90;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_90:
        v50 = 40;
        break;
      default:
LABEL_61:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_98;
        }

        goto LABEL_96;
    }

    goto LABEL_95;
  }

LABEL_97:
  if ([fromCopy hasError])
  {
LABEL_98:
    v52 = 0;
  }

  else
  {
LABEL_99:
    v52 = v5;
  }

  return v52;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMMLSEVirtualFeatureStoreFeaturefeatureNameAsString([(BMMLSEVirtualFeatureStoreFeature *)self featureName]);
  featureValue = [(BMMLSEVirtualFeatureStoreFeature *)self featureValue];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEVirtualFeatureStoreFeature featureItselfVersion](self, "featureItselfVersion")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEVirtualFeatureStoreFeature featureFreshnessInHours](self, "featureFreshnessInHours")}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEVirtualFeatureStoreFeature eventVolumeToComputeFeature](self, "eventVolumeToComputeFeature")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEVirtualFeatureStoreFeature timeSpentToComputeFeature](self, "timeSpentToComputeFeature")}];
  v10 = [v3 initWithFormat:@"BMMLSEVirtualFeatureStoreFeature with featureName: %@, featureValue: %@, featureItselfVersion: %@, featureFreshnessInHours: %@, eventVolumeToComputeFeature: %@, timeSpentToComputeFeature: %@", v4, featureValue, v6, v7, v8, v9];

  return v10;
}

- (BMMLSEVirtualFeatureStoreFeature)initWithFeatureName:(int)name featureValue:(id)value featureItselfVersion:(id)version featureFreshnessInHours:(id)hours eventVolumeToComputeFeature:(id)feature timeSpentToComputeFeature:(id)computeFeature
{
  valueCopy = value;
  versionCopy = version;
  hoursCopy = hours;
  featureCopy = feature;
  computeFeatureCopy = computeFeature;
  v26.receiver = self;
  v26.super_class = BMMLSEVirtualFeatureStoreFeature;
  v20 = [(BMEventBase *)&v26 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    v20->_featureName = name;
    objc_storeStrong(&v20->_featureValue, value);
    if (versionCopy)
    {
      v20->_hasFeatureItselfVersion = 1;
      unsignedIntValue = [versionCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v20->_hasFeatureItselfVersion = 0;
    }

    v20->_featureItselfVersion = unsignedIntValue;
    if (hoursCopy)
    {
      v20->_hasFeatureFreshnessInHours = 1;
      unsignedIntValue2 = [hoursCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v20->_hasFeatureFreshnessInHours = 0;
    }

    v20->_featureFreshnessInHours = unsignedIntValue2;
    if (featureCopy)
    {
      v20->_hasEventVolumeToComputeFeature = 1;
      unsignedIntValue3 = [featureCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v20->_hasEventVolumeToComputeFeature = 0;
    }

    v20->_eventVolumeToComputeFeature = unsignedIntValue3;
    if (computeFeatureCopy)
    {
      v20->_hasTimeSpentToComputeFeature = 1;
      unsignedIntValue4 = [computeFeatureCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue4 = 0;
      v20->_hasTimeSpentToComputeFeature = 0;
    }

    v20->_timeSpentToComputeFeature = unsignedIntValue4;
  }

  return v20;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureName" number:1 type:4 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureValue" number:2 type:14 subMessageClass:objc_opt_class()];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureItselfVersion" number:3 type:4 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureFreshnessInHours" number:4 type:4 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventVolumeToComputeFeature" number:5 type:4 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSpentToComputeFeature" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"featureName" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"featureValue_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_2398];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"featureItselfVersion" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"featureFreshnessInHours" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventVolumeToComputeFeature" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeSpentToComputeFeature" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __43__BMMLSEVirtualFeatureStoreFeature_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 featureValue];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMMLSEVirtualFeatureStoreFeature alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end