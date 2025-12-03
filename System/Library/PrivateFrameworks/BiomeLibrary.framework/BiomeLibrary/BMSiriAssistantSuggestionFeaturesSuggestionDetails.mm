@interface BMSiriAssistantSuggestionFeaturesSuggestionDetails
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriAssistantSuggestionFeaturesSuggestionDetails)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriAssistantSuggestionFeaturesSuggestionDetails)initWithSuggestionId:(id)id targetOwner:(id)owner sourceOwner:(id)sourceOwner classificationCentroid:(id)centroid channel:(id)channel confidence:(id)confidence deliveryVehicle:(id)vehicle;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriAssistantSuggestionFeaturesSuggestionDetails

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    suggestionId = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self suggestionId];
    suggestionId2 = [v5 suggestionId];
    v8 = suggestionId2;
    if (suggestionId == suggestionId2)
    {
    }

    else
    {
      suggestionId3 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self suggestionId];
      suggestionId4 = [v5 suggestionId];
      v11 = [suggestionId3 isEqual:suggestionId4];

      if (!v11)
      {
        goto LABEL_30;
      }
    }

    targetOwner = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self targetOwner];
    targetOwner2 = [v5 targetOwner];
    v15 = targetOwner2;
    if (targetOwner == targetOwner2)
    {
    }

    else
    {
      targetOwner3 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self targetOwner];
      targetOwner4 = [v5 targetOwner];
      v18 = [targetOwner3 isEqual:targetOwner4];

      if (!v18)
      {
        goto LABEL_30;
      }
    }

    sourceOwner = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self sourceOwner];
    sourceOwner2 = [v5 sourceOwner];
    v21 = sourceOwner2;
    if (sourceOwner == sourceOwner2)
    {
    }

    else
    {
      sourceOwner3 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self sourceOwner];
      sourceOwner4 = [v5 sourceOwner];
      v24 = [sourceOwner3 isEqual:sourceOwner4];

      if (!v24)
      {
        goto LABEL_30;
      }
    }

    classificationCentroid = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self classificationCentroid];
    classificationCentroid2 = [v5 classificationCentroid];
    v27 = classificationCentroid2;
    if (classificationCentroid == classificationCentroid2)
    {
    }

    else
    {
      classificationCentroid3 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self classificationCentroid];
      classificationCentroid4 = [v5 classificationCentroid];
      v30 = [classificationCentroid3 isEqual:classificationCentroid4];

      if (!v30)
      {
        goto LABEL_30;
      }
    }

    channel = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self channel];
    channel2 = [v5 channel];
    v33 = channel2;
    if (channel == channel2)
    {
    }

    else
    {
      channel3 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self channel];
      channel4 = [v5 channel];
      v36 = [channel3 isEqual:channel4];

      if (!v36)
      {
        goto LABEL_30;
      }
    }

    if (!-[BMSiriAssistantSuggestionFeaturesSuggestionDetails hasConfidence](self, "hasConfidence") && ![v5 hasConfidence] || -[BMSiriAssistantSuggestionFeaturesSuggestionDetails hasConfidence](self, "hasConfidence") && objc_msgSend(v5, "hasConfidence") && (-[BMSiriAssistantSuggestionFeaturesSuggestionDetails confidence](self, "confidence"), v38 = v37, objc_msgSend(v5, "confidence"), v38 == v39))
    {
      deliveryVehicle = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self deliveryVehicle];
      deliveryVehicle2 = [v5 deliveryVehicle];
      if (deliveryVehicle == deliveryVehicle2)
      {
        v12 = 1;
      }

      else
      {
        deliveryVehicle3 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self deliveryVehicle];
        deliveryVehicle4 = [v5 deliveryVehicle];
        v12 = [deliveryVehicle3 isEqual:deliveryVehicle4];
      }

      goto LABEL_31;
    }

LABEL_30:
    v12 = 0;
LABEL_31:

    goto LABEL_32;
  }

  v12 = 0;
LABEL_32:

  return v12;
}

- (id)jsonDictionary
{
  v27[7] = *MEMORY[0x1E69E9840];
  suggestionId = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self suggestionId];
  targetOwner = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self targetOwner];
  sourceOwner = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self sourceOwner];
  classificationCentroid = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self classificationCentroid];
  channel = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self channel];
  if (![(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self hasConfidence]|| ([(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self confidence], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self confidence];
    v8 = MEMORY[0x1E696AD98];
    [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self confidence];
    v9 = [v8 numberWithDouble:?];
  }

  deliveryVehicle = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self deliveryVehicle];
  v26[0] = @"suggestionId";
  null = suggestionId;
  if (!suggestionId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v27[0] = null;
  v26[1] = @"targetOwner";
  null2 = targetOwner;
  if (!targetOwner)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null2;
  v27[1] = null2;
  v26[2] = @"sourceOwner";
  null3 = sourceOwner;
  if (!sourceOwner)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = suggestionId;
  v27[2] = null3;
  v26[3] = @"classificationCentroid";
  null4 = classificationCentroid;
  if (!classificationCentroid)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = targetOwner;
  v27[3] = null4;
  v26[4] = @"channel";
  null5 = channel;
  if (!channel)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = null5;
  v26[5] = @"confidence";
  null6 = v9;
  if (!v9)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v27[5] = null6;
  v26[6] = @"deliveryVehicle";
  null7 = deliveryVehicle;
  if (!deliveryVehicle)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v27[6] = null7;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:7];
  if (deliveryVehicle)
  {
    if (v9)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_21;
    }
  }

LABEL_21:
  if (!channel)
  {
  }

  if (!classificationCentroid)
  {
  }

  if (sourceOwner)
  {
    if (v23)
    {
      goto LABEL_27;
    }

LABEL_34:

    if (v24)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if (!v23)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (v24)
  {
    goto LABEL_28;
  }

LABEL_35:

LABEL_28:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BMSiriAssistantSuggestionFeaturesSuggestionDetails)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v72[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"suggestionId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"targetOwner"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v20 = 0;
          goto LABEL_29;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v69 = *MEMORY[0x1E696A578];
        v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"targetOwner"];
        v70 = v58;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
        v11 = v31 = error;
        v32 = [v29 initWithDomain:v30 code:2 userInfo:v11];
        v10 = 0;
        v20 = 0;
        *v31 = v32;
        goto LABEL_28;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"sourceOwner"];
    v55 = v9;
    v57 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v58 = 0;
          v20 = 0;
          goto LABEL_28;
        }

        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v67 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceOwner"];
        v68 = v21;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v35 = v33;
        v10 = v57;
        v36 = [v35 initWithDomain:v34 code:2 userInfo:v12];
        v58 = 0;
        v20 = 0;
        *errorCopy = v36;
LABEL_27:

        v9 = v55;
LABEL_28:

        goto LABEL_29;
      }

      v58 = v11;
    }

    else
    {
      v58 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"classificationCentroid"];
    v52 = v7;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v21 = 0;
          v20 = 0;
          goto LABEL_27;
        }

        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v38 = *MEMORY[0x1E698F240];
        v65 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"classificationCentroid"];
        v66 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v39 = v37;
        v10 = v57;
        v40 = [v39 initWithDomain:v38 code:2 userInfo:v13];
        v21 = 0;
        v20 = 0;
        *errorCopy = v40;
        goto LABEL_26;
      }

      v54 = v12;
    }

    else
    {
      v54 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"channel"];
    v53 = v8;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v14 = 0;
          v20 = 0;
          goto LABEL_25;
        }

        selfCopy3 = self;
        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v63 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"channel"];
        v64 = v17;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v43 = [v41 initWithDomain:v42 code:2 userInfo:v15];
        v14 = 0;
        v20 = 0;
        *errorCopy = v43;
LABEL_24:

        self = selfCopy3;
        v8 = v53;
        v10 = v57;
LABEL_25:
        v21 = v54;
LABEL_26:

        v7 = v52;
        goto LABEL_27;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"confidence"];
    v51 = v14;
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      selfCopy3 = self;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v17 = 0;
          v20 = 0;
          goto LABEL_24;
        }

        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = *MEMORY[0x1E698F240];
        v61 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidence"];
        v62 = v19;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v46 = [v44 initWithDomain:v45 code:2 userInfo:v18];
        v17 = 0;
        v20 = 0;
        *errorCopy = v46;
        goto LABEL_23;
      }

      v17 = v15;
    }

    else
    {
      selfCopy3 = self;
      v17 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"deliveryVehicle"];
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = *MEMORY[0x1E698F240];
          v59 = *MEMORY[0x1E696A578];
          v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deliveryVehicle"];
          v60 = v47;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          *errorCopy = [v50 initWithDomain:v49 code:2 userInfo:v48];
        }

        v19 = 0;
        v20 = 0;
        goto LABEL_23;
      }

      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)selfCopy3 initWithSuggestionId:v53 targetOwner:v57 sourceOwner:v58 classificationCentroid:v54 channel:v51 confidence:v17 deliveryVehicle:v19];
    selfCopy3 = v20;
LABEL_23:

    v14 = v51;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v20 = 0;
    goto LABEL_30;
  }

  v24 = objc_alloc(MEMORY[0x1E696ABC0]);
  v25 = *MEMORY[0x1E698F240];
  v71 = *MEMORY[0x1E696A578];
  v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionId"];
  v72[0] = v26;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:&v71 count:1];
  v27 = v24;
  v10 = v26;
  v28 = [v27 initWithDomain:v25 code:2 userInfo:v9];
  v8 = 0;
  v20 = 0;
  *error = v28;
LABEL_29:

LABEL_30:
  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_suggestionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_targetOwner)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_sourceOwner)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_classificationCentroid)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_channel)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hasConfidence)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_deliveryVehicle)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMSiriAssistantSuggestionFeaturesSuggestionDetails;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_45;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        switch(v15)
        {
          case 1:
            v16 = PBReaderReadString();
            v17 = 24;
            break;
          case 2:
            v16 = PBReaderReadString();
            v17 = 32;
            break;
          case 3:
            v16 = PBReaderReadString();
            v17 = 40;
            break;
          default:
            goto LABEL_31;
        }
      }

      else if (v15 > 5)
      {
        if (v15 == 6)
        {
          v5->_hasConfidence = 1;
          v26 = 0.0;
          v18 = [fromCopy position] + 8;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_confidence = v26;
          goto LABEL_39;
        }

        if (v15 != 7)
        {
LABEL_31:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_44;
          }

          goto LABEL_39;
        }

        v16 = PBReaderReadString();
        v17 = 72;
      }

      else if (v15 == 4)
      {
        v16 = PBReaderReadString();
        v17 = 48;
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_31;
        }

        v16 = PBReaderReadString();
        v17 = 56;
      }

      v20 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_39:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_44:
    v23 = 0;
  }

  else
  {
LABEL_45:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  suggestionId = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self suggestionId];
  targetOwner = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self targetOwner];
  sourceOwner = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self sourceOwner];
  classificationCentroid = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self classificationCentroid];
  channel = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self channel];
  v9 = MEMORY[0x1E696AD98];
  [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self confidence];
  v10 = [v9 numberWithDouble:?];
  deliveryVehicle = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self deliveryVehicle];
  v12 = [v3 initWithFormat:@"BMSiriAssistantSuggestionFeaturesSuggestionDetails with suggestionId: %@, targetOwner: %@, sourceOwner: %@, classificationCentroid: %@, channel: %@, confidence: %@, deliveryVehicle: %@", suggestionId, targetOwner, sourceOwner, classificationCentroid, channel, v10, deliveryVehicle];

  return v12;
}

- (BMSiriAssistantSuggestionFeaturesSuggestionDetails)initWithSuggestionId:(id)id targetOwner:(id)owner sourceOwner:(id)sourceOwner classificationCentroid:(id)centroid channel:(id)channel confidence:(id)confidence deliveryVehicle:(id)vehicle
{
  idCopy = id;
  ownerCopy = owner;
  sourceOwnerCopy = sourceOwner;
  centroidCopy = centroid;
  channelCopy = channel;
  confidenceCopy = confidence;
  vehicleCopy = vehicle;
  v26.receiver = self;
  v26.super_class = BMSiriAssistantSuggestionFeaturesSuggestionDetails;
  v19 = [(BMEventBase *)&v26 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_suggestionId, id);
    objc_storeStrong(&v19->_targetOwner, owner);
    objc_storeStrong(&v19->_sourceOwner, sourceOwner);
    objc_storeStrong(&v19->_classificationCentroid, centroid);
    objc_storeStrong(&v19->_channel, channel);
    if (confidenceCopy)
    {
      v19->_hasConfidence = 1;
      [confidenceCopy doubleValue];
    }

    else
    {
      v19->_hasConfidence = 0;
      v20 = -1.0;
    }

    v19->_confidence = v20;
    objc_storeStrong(&v19->_deliveryVehicle, vehicle);
  }

  return v19;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionId" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"targetOwner" number:2 type:13 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceOwner" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"classificationCentroid" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"channel" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidence" number:6 type:0 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deliveryVehicle" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"targetOwner" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceOwner" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"classificationCentroid" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"channel" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidence" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deliveryVehicle" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
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

    v8 = [[BMSiriAssistantSuggestionFeaturesSuggestionDetails alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end