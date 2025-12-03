@interface BMTrialNamespaceUpdates
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMTrialNamespaceUpdates)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMTrialNamespaceUpdates)initWithNamespaceNames:(id)names experimentStatus:(int)status userId:(id)id experimentId:(id)experimentId deploymentId:(id)deploymentId treatmentId:(id)treatmentId;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMTrialNamespaceUpdates

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    namespaceNames = [(BMTrialNamespaceUpdates *)self NamespaceNames];
    namespaceNames2 = [v5 NamespaceNames];
    v8 = namespaceNames2;
    if (namespaceNames == namespaceNames2)
    {
    }

    else
    {
      namespaceNames3 = [(BMTrialNamespaceUpdates *)self NamespaceNames];
      namespaceNames4 = [v5 NamespaceNames];
      v11 = [namespaceNames3 isEqual:namespaceNames4];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    experimentStatus = [(BMTrialNamespaceUpdates *)self experimentStatus];
    if (experimentStatus == [v5 experimentStatus])
    {
      userId = [(BMTrialNamespaceUpdates *)self userId];
      userId2 = [v5 userId];
      v16 = userId2;
      if (userId == userId2)
      {
      }

      else
      {
        userId3 = [(BMTrialNamespaceUpdates *)self userId];
        userId4 = [v5 userId];
        v19 = [userId3 isEqual:userId4];

        if (!v19)
        {
          goto LABEL_18;
        }
      }

      experimentId = [(BMTrialNamespaceUpdates *)self experimentId];
      experimentId2 = [v5 experimentId];
      v22 = experimentId2;
      if (experimentId == experimentId2)
      {
      }

      else
      {
        experimentId3 = [(BMTrialNamespaceUpdates *)self experimentId];
        experimentId4 = [v5 experimentId];
        v25 = [experimentId3 isEqual:experimentId4];

        if (!v25)
        {
          goto LABEL_18;
        }
      }

      deploymentId = [(BMTrialNamespaceUpdates *)self deploymentId];
      deploymentId2 = [v5 deploymentId];
      v28 = deploymentId2;
      if (deploymentId == deploymentId2)
      {
      }

      else
      {
        deploymentId3 = [(BMTrialNamespaceUpdates *)self deploymentId];
        deploymentId4 = [v5 deploymentId];
        v31 = [deploymentId3 isEqual:deploymentId4];

        if (!v31)
        {
          goto LABEL_18;
        }
      }

      treatmentId = [(BMTrialNamespaceUpdates *)self treatmentId];
      treatmentId2 = [v5 treatmentId];
      if (treatmentId == treatmentId2)
      {
        v12 = 1;
      }

      else
      {
        treatmentId3 = [(BMTrialNamespaceUpdates *)self treatmentId];
        treatmentId4 = [v5 treatmentId];
        v12 = [treatmentId3 isEqual:treatmentId4];
      }

      goto LABEL_19;
    }

LABEL_18:
    v12 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v24[6] = *MEMORY[0x1E69E9840];
  namespaceNames = [(BMTrialNamespaceUpdates *)self NamespaceNames];
  jsonDictionary = [namespaceNames jsonDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMTrialNamespaceUpdates experimentStatus](self, "experimentStatus")}];
  userId = [(BMTrialNamespaceUpdates *)self userId];
  experimentId = [(BMTrialNamespaceUpdates *)self experimentId];
  deploymentId = [(BMTrialNamespaceUpdates *)self deploymentId];
  treatmentId = [(BMTrialNamespaceUpdates *)self treatmentId];
  v23[0] = @"NamespaceNames";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v24[0] = null;
  v23[1] = @"experimentStatus";
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null2;
  v24[1] = null2;
  v23[2] = @"userId";
  null3 = userId;
  if (!userId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = jsonDictionary;
  v24[2] = null3;
  v23[3] = @"experimentId";
  null4 = experimentId;
  if (!experimentId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = null4;
  v23[4] = @"deploymentId";
  null5 = deploymentId;
  if (!deploymentId)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = null5;
  v23[5] = @"treatmentId";
  null6 = treatmentId;
  if (!treatmentId)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v24[5] = null6;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:{6, v19}];
  if (treatmentId)
  {
    if (deploymentId)
    {
      goto LABEL_15;
    }

LABEL_23:

    if (experimentId)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (!deploymentId)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (experimentId)
  {
    goto LABEL_16;
  }

LABEL_24:

LABEL_16:
  if (userId)
  {
    if (v5)
    {
      goto LABEL_18;
    }

LABEL_26:

    if (v22)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (v22)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMTrialNamespaceUpdates)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v67[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"NamespaceNames"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v52 = v7;
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    errorCopy = v7;
    v55 = 0;
    v8 = [[BMTrialNamespaceUpdatesNamespaceNamesList alloc] initWithJSONDictionary:errorCopy error:&v55];
    v11 = v55;
    if (v11)
    {
      if (error)
      {
        v11 = v11;
        *error = v11;
      }

      v12 = 0;
      goto LABEL_55;
    }

    v52 = v7;

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"experimentStatus"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v9;
      }

      else
      {
        errorCopy = error;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v12 = 0;
            goto LABEL_54;
          }

          v42 = objc_alloc(MEMORY[0x1E696ABC0]);
          v43 = v9;
          v44 = *MEMORY[0x1E698F240];
          v64 = *MEMORY[0x1E696A578];
          v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"experimentStatus"];
          v65 = v54;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
          v45 = v44;
          v9 = v43;
          v12 = 0;
          *error = [v42 initWithDomain:v45 code:2 userInfo:v19];
          errorCopy = 0;
LABEL_53:

LABEL_54:
          v7 = v52;
          goto LABEL_55;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInt:BMTrialNamespaceUpdatesEventTypeFromString(v9)];
      }

      errorCopy = v13;
    }

    else
    {
      errorCopy = 0;
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"userId"];
    v53 = v8;
    v51 = errorCopy;
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v54 = 0;
          v12 = 0;
          goto LABEL_53;
        }

        v28 = v9;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v31 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userId"];
        v63 = v22;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v32 = v29;
        v9 = v28;
        v54 = 0;
        v12 = 0;
        *errorCopy2 = [v32 initWithDomain:v31 code:2 userInfo:v20];
        goto LABEL_63;
      }

      v54 = v19;
    }

    else
    {
      v54 = 0;
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"experimentId"];
    v49 = v9;
    errorCopy3 = error;
    if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = 0;
      goto LABEL_25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v20;
LABEL_25:
      v23 = [dictionaryCopy objectForKeyedSubscript:@"deploymentId"];
      v50 = v22;
      if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        selfCopy3 = self;
        v25 = 0;
        goto LABEL_28;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        selfCopy3 = self;
        v25 = v23;
LABEL_28:
        v26 = [dictionaryCopy objectForKeyedSubscript:@"treatmentId"];
        if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v27 = 0;
LABEL_31:
          errorCopy = v51;
          v12 = -[BMTrialNamespaceUpdates initWithNamespaceNames:experimentStatus:userId:experimentId:deploymentId:treatmentId:](selfCopy3, "initWithNamespaceNames:experimentStatus:userId:experimentId:deploymentId:treatmentId:", v53, [v51 intValue], v54, v50, v25, v27);
          selfCopy3 = v12;
LABEL_50:

          self = selfCopy3;
          v22 = v50;
LABEL_51:

          v9 = v49;
LABEL_52:

          v8 = v53;
          goto LABEL_53;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v26;
          goto LABEL_31;
        }

        if (errorCopy3)
        {
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v46 = *MEMORY[0x1E698F240];
          v56 = *MEMORY[0x1E696A578];
          v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"treatmentId"];
          v57 = v38;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          *errorCopy3 = [v48 initWithDomain:v46 code:2 userInfo:v39];
        }

        v27 = 0;
        v12 = 0;
LABEL_49:
        errorCopy = v51;
        goto LABEL_50;
      }

      if (errorCopy3)
      {
        selfCopy3 = self;
        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deploymentId"];
        v59 = v27;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v37 = [v47 initWithDomain:v36 code:2 userInfo:v26];
        v25 = 0;
        v12 = 0;
        *errorCopy3 = v37;
        goto LABEL_49;
      }

      v25 = 0;
      v12 = 0;
LABEL_65:
      errorCopy = v51;
      goto LABEL_51;
    }

    if (error)
    {
      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      v34 = *MEMORY[0x1E698F240];
      v60 = *MEMORY[0x1E696A578];
      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"experimentId"];
      v61 = v25;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v35 = [v33 initWithDomain:v34 code:2 userInfo:v23];
      v22 = 0;
      v12 = 0;
      *errorCopy3 = v35;
      goto LABEL_65;
    }

    v22 = 0;
    v12 = 0;
LABEL_63:
    errorCopy = v51;
    goto LABEL_52;
  }

  if (!error)
  {
    v12 = 0;
    goto LABEL_56;
  }

  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v15 = v7;
  v16 = *MEMORY[0x1E698F240];
  v66 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"NamespaceNames"];
  v67[0] = v8;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v66 count:1];
  v18 = v16;
  v7 = v15;
  v12 = 0;
  *error = [v14 initWithDomain:v18 code:2 userInfo:v17];
  errorCopy = v17;
LABEL_55:

LABEL_56:
  v40 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTrialNamespaceUpdates *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_NamespaceNames)
  {
    PBDataWriterPlaceMark();
    [(BMTrialNamespaceUpdatesNamespaceNamesList *)self->_NamespaceNames writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  experimentStatus = self->_experimentStatus;
  PBDataWriterWriteUint32Field();
  if (self->_userId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_experimentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deploymentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_treatmentId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMTrialNamespaceUpdates;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_52;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_50;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v32[0] & 0x7F) << v7;
        if ((v32[0] & 0x80) == 0)
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
        goto LABEL_50;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        break;
      }

      if (v15 != 1)
      {
        if (v15 == 2)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          while (1)
          {
            LOBYTE(v32[0]) = 0;
            v23 = [fromCopy position] + 1;
            if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v22 |= (v32[0] & 0x7F) << v20;
            if ((v32[0] & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            if (v21++ > 8)
            {
              goto LABEL_48;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v22 > 2)
          {
LABEL_48:
            LODWORD(v22) = 0;
          }

          v5->_experimentStatus = v22;
          goto LABEL_44;
        }

        if (v15 != 3)
        {
          goto LABEL_31;
        }

        v16 = PBReaderReadString();
        v17 = 32;
        goto LABEL_43;
      }

      v32[0] = 0;
      v32[1] = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_51;
      }

      v18 = [[BMTrialNamespaceUpdatesNamespaceNamesList alloc] initByReadFrom:fromCopy];
      if (!v18)
      {
        goto LABEL_51;
      }

      NamespaceNames = v5->_NamespaceNames;
      v5->_NamespaceNames = v18;

      PBReaderRecallMark();
LABEL_44:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_50;
      }
    }

    switch(v15)
    {
      case 4:
        v16 = PBReaderReadString();
        v17 = 40;
        break;
      case 5:
        v16 = PBReaderReadString();
        v17 = 48;
        break;
      case 6:
        v16 = PBReaderReadString();
        v17 = 56;
        break;
      default:
LABEL_31:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_44;
    }

LABEL_43:
    v27 = *(&v5->super.super.isa + v17);
    *(&v5->super.super.isa + v17) = v16;

    goto LABEL_44;
  }

LABEL_50:
  if ([fromCopy hasError])
  {
LABEL_51:
    v29 = 0;
  }

  else
  {
LABEL_52:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  namespaceNames = [(BMTrialNamespaceUpdates *)self NamespaceNames];
  v5 = BMTrialNamespaceUpdatesEventTypeAsString([(BMTrialNamespaceUpdates *)self experimentStatus]);
  userId = [(BMTrialNamespaceUpdates *)self userId];
  experimentId = [(BMTrialNamespaceUpdates *)self experimentId];
  deploymentId = [(BMTrialNamespaceUpdates *)self deploymentId];
  treatmentId = [(BMTrialNamespaceUpdates *)self treatmentId];
  v10 = [v3 initWithFormat:@"BMTrialNamespaceUpdates with NamespaceNames: %@, experimentStatus: %@, userId: %@, experimentId: %@, deploymentId: %@, treatmentId: %@", namespaceNames, v5, userId, experimentId, deploymentId, treatmentId];

  return v10;
}

- (BMTrialNamespaceUpdates)initWithNamespaceNames:(id)names experimentStatus:(int)status userId:(id)id experimentId:(id)experimentId deploymentId:(id)deploymentId treatmentId:(id)treatmentId
{
  namesCopy = names;
  idCopy = id;
  experimentIdCopy = experimentId;
  deploymentIdCopy = deploymentId;
  treatmentIdCopy = treatmentId;
  v22.receiver = self;
  v22.super_class = BMTrialNamespaceUpdates;
  v18 = [(BMEventBase *)&v22 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_NamespaceNames, names);
    v18->_experimentStatus = status;
    objc_storeStrong(&v18->_userId, id);
    objc_storeStrong(&v18->_experimentId, experimentId);
    objc_storeStrong(&v18->_deploymentId, deploymentId);
    objc_storeStrong(&v18->_treatmentId, treatmentId);
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"NamespaceNames" number:1 type:14 subMessageClass:objc_opt_class()];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"experimentStatus" number:2 type:4 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userId" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"experimentId" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deploymentId" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"treatmentId" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"NamespaceNames_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_156_90028];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"experimentStatus" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"experimentId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deploymentId" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"treatmentId" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
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

id __34__BMTrialNamespaceUpdates_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 NamespaceNames];
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

    v8 = [[BMTrialNamespaceUpdates alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end