@interface BMTrialNamespaceUpdates
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMTrialNamespaceUpdates)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMTrialNamespaceUpdates)initWithNamespaceNames:(id)a3 experimentStatus:(int)a4 userId:(id)a5 experimentId:(id)a6 deploymentId:(id)a7 treatmentId:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMTrialNamespaceUpdates

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMTrialNamespaceUpdates *)self NamespaceNames];
    v7 = [v5 NamespaceNames];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMTrialNamespaceUpdates *)self NamespaceNames];
      v10 = [v5 NamespaceNames];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    v13 = [(BMTrialNamespaceUpdates *)self experimentStatus];
    if (v13 == [v5 experimentStatus])
    {
      v14 = [(BMTrialNamespaceUpdates *)self userId];
      v15 = [v5 userId];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMTrialNamespaceUpdates *)self userId];
        v18 = [v5 userId];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_18;
        }
      }

      v20 = [(BMTrialNamespaceUpdates *)self experimentId];
      v21 = [v5 experimentId];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMTrialNamespaceUpdates *)self experimentId];
        v24 = [v5 experimentId];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_18;
        }
      }

      v26 = [(BMTrialNamespaceUpdates *)self deploymentId];
      v27 = [v5 deploymentId];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMTrialNamespaceUpdates *)self deploymentId];
        v30 = [v5 deploymentId];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_18;
        }
      }

      v33 = [(BMTrialNamespaceUpdates *)self treatmentId];
      v34 = [v5 treatmentId];
      if (v33 == v34)
      {
        v12 = 1;
      }

      else
      {
        v35 = [(BMTrialNamespaceUpdates *)self treatmentId];
        v36 = [v5 treatmentId];
        v12 = [v35 isEqual:v36];
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
  v3 = [(BMTrialNamespaceUpdates *)self NamespaceNames];
  v4 = [v3 jsonDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMTrialNamespaceUpdates experimentStatus](self, "experimentStatus")}];
  v6 = [(BMTrialNamespaceUpdates *)self userId];
  v7 = [(BMTrialNamespaceUpdates *)self experimentId];
  v8 = [(BMTrialNamespaceUpdates *)self deploymentId];
  v9 = [(BMTrialNamespaceUpdates *)self treatmentId];
  v23[0] = @"NamespaceNames";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v10;
  v24[0] = v10;
  v23[1] = @"experimentStatus";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v11;
  v24[1] = v11;
  v23[2] = @"userId";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v4;
  v24[2] = v12;
  v23[3] = @"experimentId";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = v13;
  v23[4] = @"deploymentId";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = v14;
  v23[5] = @"treatmentId";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v24[5] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:{6, v19}];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_15;
    }

LABEL_23:

    if (v7)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (v7)
  {
    goto LABEL_16;
  }

LABEL_24:

LABEL_16:
  if (v6)
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

- (BMTrialNamespaceUpdates)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v67[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"NamespaceNames"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v52 = v7;
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v55 = 0;
    v8 = [[BMTrialNamespaceUpdatesNamespaceNamesList alloc] initWithJSONDictionary:v10 error:&v55];
    v11 = v55;
    if (v11)
    {
      if (a4)
      {
        v11 = v11;
        *a4 = v11;
      }

      v12 = 0;
      goto LABEL_55;
    }

    v52 = v7;

LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"experimentStatus"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v9;
      }

      else
      {
        v10 = a4;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
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
          *a4 = [v42 initWithDomain:v45 code:2 userInfo:v19];
          v10 = 0;
LABEL_53:

LABEL_54:
          v7 = v52;
          goto LABEL_55;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInt:BMTrialNamespaceUpdatesEventTypeFromString(v9)];
      }

      v10 = v13;
    }

    else
    {
      v10 = 0;
    }

    v19 = [v6 objectForKeyedSubscript:@"userId"];
    v53 = v8;
    v51 = v10;
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v54 = 0;
          v12 = 0;
          goto LABEL_53;
        }

        v28 = v9;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = a4;
        v31 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userId"];
        v63 = v22;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v32 = v29;
        v9 = v28;
        v54 = 0;
        v12 = 0;
        *v30 = [v32 initWithDomain:v31 code:2 userInfo:v20];
        goto LABEL_63;
      }

      v54 = v19;
    }

    else
    {
      v54 = 0;
    }

    v20 = [v6 objectForKeyedSubscript:@"experimentId"];
    v49 = v9;
    v21 = a4;
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
      v23 = [v6 objectForKeyedSubscript:@"deploymentId"];
      v50 = v22;
      if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v24 = self;
        v25 = 0;
        goto LABEL_28;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = self;
        v25 = v23;
LABEL_28:
        v26 = [v6 objectForKeyedSubscript:@"treatmentId"];
        if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v27 = 0;
LABEL_31:
          v10 = v51;
          v12 = -[BMTrialNamespaceUpdates initWithNamespaceNames:experimentStatus:userId:experimentId:deploymentId:treatmentId:](v24, "initWithNamespaceNames:experimentStatus:userId:experimentId:deploymentId:treatmentId:", v53, [v51 intValue], v54, v50, v25, v27);
          v24 = v12;
LABEL_50:

          self = v24;
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

        if (v21)
        {
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v46 = *MEMORY[0x1E698F240];
          v56 = *MEMORY[0x1E696A578];
          v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"treatmentId"];
          v57 = v38;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          *v21 = [v48 initWithDomain:v46 code:2 userInfo:v39];
        }

        v27 = 0;
        v12 = 0;
LABEL_49:
        v10 = v51;
        goto LABEL_50;
      }

      if (v21)
      {
        v24 = self;
        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deploymentId"];
        v59 = v27;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v37 = [v47 initWithDomain:v36 code:2 userInfo:v26];
        v25 = 0;
        v12 = 0;
        *v21 = v37;
        goto LABEL_49;
      }

      v25 = 0;
      v12 = 0;
LABEL_65:
      v10 = v51;
      goto LABEL_51;
    }

    if (a4)
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
      *v21 = v35;
      goto LABEL_65;
    }

    v22 = 0;
    v12 = 0;
LABEL_63:
    v10 = v51;
    goto LABEL_52;
  }

  if (!a4)
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
  *a4 = [v14 initWithDomain:v18 code:2 userInfo:v17];
  v10 = v17;
LABEL_55:

LABEL_56:
  v40 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTrialNamespaceUpdates *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_NamespaceNames)
  {
    PBDataWriterPlaceMark();
    [(BMTrialNamespaceUpdatesNamespaceNamesList *)self->_NamespaceNames writeTo:v4];
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMTrialNamespaceUpdates;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_52;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_50;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v23 = [v4 position] + 1;
            if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
            {
              v25 = [v4 data];
              [v25 getBytes:v32 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if (([v4 hasError] & 1) != 0 || v22 > 2)
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

      v18 = [[BMTrialNamespaceUpdatesNamespaceNamesList alloc] initByReadFrom:v4];
      if (!v18)
      {
        goto LABEL_51;
      }

      NamespaceNames = v5->_NamespaceNames;
      v5->_NamespaceNames = v18;

      PBReaderRecallMark();
LABEL_44:
      v28 = [v4 position];
      if (v28 >= [v4 length])
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
  if ([v4 hasError])
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
  v4 = [(BMTrialNamespaceUpdates *)self NamespaceNames];
  v5 = BMTrialNamespaceUpdatesEventTypeAsString([(BMTrialNamespaceUpdates *)self experimentStatus]);
  v6 = [(BMTrialNamespaceUpdates *)self userId];
  v7 = [(BMTrialNamespaceUpdates *)self experimentId];
  v8 = [(BMTrialNamespaceUpdates *)self deploymentId];
  v9 = [(BMTrialNamespaceUpdates *)self treatmentId];
  v10 = [v3 initWithFormat:@"BMTrialNamespaceUpdates with NamespaceNames: %@, experimentStatus: %@, userId: %@, experimentId: %@, deploymentId: %@, treatmentId: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMTrialNamespaceUpdates)initWithNamespaceNames:(id)a3 experimentStatus:(int)a4 userId:(id)a5 experimentId:(id)a6 deploymentId:(id)a7 treatmentId:(id)a8
{
  v21 = a3;
  v20 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = BMTrialNamespaceUpdates;
  v18 = [(BMEventBase *)&v22 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_NamespaceNames, a3);
    v18->_experimentStatus = a4;
    objc_storeStrong(&v18->_userId, a5);
    objc_storeStrong(&v18->_experimentId, a6);
    objc_storeStrong(&v18->_deploymentId, a7);
    objc_storeStrong(&v18->_treatmentId, a8);
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

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