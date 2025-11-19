@interface BMSiriUserEngagementStatisticsUserEngagementStatsMetadata
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriUserEngagementStatisticsUserEngagementStatsMetadata)initWithDeviceFamily:(id)a3 siriInputLocale:(id)a4 systemBuild:(id)a5 audioInputRoute:(id)a6 invocationSource:(id)a7 waitTime:(id)a8;
- (BMSiriUserEngagementStatisticsUserEngagementStatsMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriUserEngagementStatisticsUserEngagementStatsMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self deviceFamily];
    v7 = [v5 deviceFamily];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self deviceFamily];
      v10 = [v5 deviceFamily];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_28;
      }
    }

    v13 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self siriInputLocale];
    v14 = [v5 siriInputLocale];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self siriInputLocale];
      v17 = [v5 siriInputLocale];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_28;
      }
    }

    v19 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self systemBuild];
    v20 = [v5 systemBuild];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self systemBuild];
      v23 = [v5 systemBuild];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_28;
      }
    }

    v25 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self audioInputRoute];
    v26 = [v5 audioInputRoute];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self audioInputRoute];
      v29 = [v5 audioInputRoute];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_28;
      }
    }

    v31 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self invocationSource];
    v32 = [v5 invocationSource];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self invocationSource];
      v35 = [v5 invocationSource];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_28;
      }
    }

    if (!-[BMSiriUserEngagementStatisticsUserEngagementStatsMetadata hasWaitTime](self, "hasWaitTime") && ![v5 hasWaitTime])
    {
      v12 = 1;
      goto LABEL_29;
    }

    if (-[BMSiriUserEngagementStatisticsUserEngagementStatsMetadata hasWaitTime](self, "hasWaitTime") && [v5 hasWaitTime])
    {
      v37 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self waitTime];
      v12 = v37 == [v5 waitTime];
LABEL_29:

      goto LABEL_30;
    }

LABEL_28:
    v12 = 0;
    goto LABEL_29;
  }

  v12 = 0;
LABEL_30:

  return v12;
}

- (id)jsonDictionary
{
  v24[6] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self deviceFamily];
  v4 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self siriInputLocale];
  v5 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self systemBuild];
  v6 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self audioInputRoute];
  v7 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self invocationSource];
  if ([(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self hasWaitTime])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsUserEngagementStatsMetadata waitTime](self, "waitTime")}];
  }

  else
  {
    v8 = 0;
  }

  v23[0] = @"deviceFamily";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v9;
  v22 = v4;
  v24[0] = v9;
  v23[1] = @"siriInputLocale";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v10;
  v24[1] = v10;
  v23[2] = @"systemBuild";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = v11;
  v23[3] = @"audioInputRoute";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v13 = v3;
  v24[3] = v12;
  v23[4] = @"invocationSource";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = v14;
  v23[5] = @"waitTime";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v24[5] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:{6, v19}];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v7)
    {
LABEL_18:
      if (v6)
      {
        goto LABEL_19;
      }

LABEL_27:

      if (v5)
      {
        goto LABEL_20;
      }

      goto LABEL_28;
    }
  }

  if (!v6)
  {
    goto LABEL_27;
  }

LABEL_19:
  if (v5)
  {
    goto LABEL_20;
  }

LABEL_28:

LABEL_20:
  if (v22)
  {
    if (v13)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (v13)
    {
      goto LABEL_22;
    }
  }

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMSiriUserEngagementStatisticsUserEngagementStatsMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v65[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"deviceFamily"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"siriInputLocale"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v17 = 0;
          v16 = 0;
          goto LABEL_25;
        }

        v24 = v8;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = a4;
        v26 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"siriInputLocale"];
        v63 = v27;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v28 = v25;
        v8 = v24;
        v29 = v26;
        a4 = v27;
        v17 = 0;
        v16 = 0;
        *v44 = [v28 initWithDomain:v29 code:2 userInfo:v10];
        goto LABEL_24;
      }

      v52 = v9;
    }

    else
    {
      v52 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"systemBuild"];
    v53 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v16 = 0;
          v17 = v52;
          goto LABEL_24;
        }

        v30 = v8;
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = a4;
        v32 = *MEMORY[0x1E698F240];
        v60 = *MEMORY[0x1E696A578];
        v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemBuild"];
        v61 = v51;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v33 = v31;
        v8 = v30;
        v34 = [v33 initWithDomain:v32 code:2 userInfo:v11];
        a4 = 0;
        v16 = 0;
        *v45 = v34;
        goto LABEL_22;
      }

      v48 = v10;
    }

    else
    {
      v48 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"audioInputRoute"];
    v49 = v7;
    v50 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v51 = 0;
          v16 = 0;
          v17 = v52;
          a4 = v48;
          goto LABEL_23;
        }

        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"audioInputRoute"];
        v59 = v13;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v37 = [v35 initWithDomain:v36 code:2 userInfo:v12];
        v51 = 0;
        v16 = 0;
        *a4 = v37;
        goto LABEL_57;
      }

      v51 = v11;
    }

    else
    {
      v51 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"invocationSource"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
LABEL_16:
      v14 = [v6 objectForKeyedSubscript:@"waitTime"];
      if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v47 = objc_alloc(MEMORY[0x1E696ABC0]);
            v43 = *MEMORY[0x1E698F240];
            v54 = *MEMORY[0x1E696A578];
            v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"waitTime"];
            v55 = v41;
            v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
            *a4 = [v47 initWithDomain:v43 code:2 userInfo:v42];
          }

          v15 = 0;
          v16 = 0;
          a4 = v48;
          goto LABEL_20;
        }

        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      a4 = v48;
      v16 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)v53 initWithDeviceFamily:v50 siriInputLocale:v52 systemBuild:v48 audioInputRoute:v51 invocationSource:v13 waitTime:v15];
      v53 = v16;
LABEL_20:

LABEL_21:
      v7 = v49;
      v8 = v50;
LABEL_22:
      v17 = v52;
LABEL_23:

      self = v53;
LABEL_24:

      goto LABEL_25;
    }

    if (a4)
    {
      v46 = a4;
      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v39 = *MEMORY[0x1E698F240];
      v56 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"invocationSource"];
      v57 = v15;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v40 = [v38 initWithDomain:v39 code:2 userInfo:v14];
      v13 = 0;
      v16 = 0;
      a4 = v48;
      *v46 = v40;
      goto LABEL_20;
    }

    v13 = 0;
    v16 = 0;
LABEL_57:
    a4 = v48;
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    v16 = 0;
    goto LABEL_26;
  }

  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = a4;
  v22 = *MEMORY[0x1E698F240];
  v64 = *MEMORY[0x1E696A578];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceFamily"];
  v65[0] = v17;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
  v23 = [v20 initWithDomain:v22 code:2 userInfo:v9];
  v8 = 0;
  v16 = 0;
  *v21 = v23;
LABEL_25:

LABEL_26:
  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_deviceFamily)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_siriInputLocale)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_systemBuild)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_audioInputRoute)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_invocationSource)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_hasWaitTime)
  {
    waitTime = self->_waitTime;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = BMSiriUserEngagementStatisticsUserEngagementStatsMetadata;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_50;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v30 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v30 & 0x7F) << v7;
        if ((v30 & 0x80) == 0)
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        switch(v15)
        {
          case 4:
            v16 = PBReaderReadString();
            v17 = 64;
            break;
          case 5:
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v5->_hasWaitTime = 1;
            while (1)
            {
              v30 = 0;
              v23 = [v4 position] + 1;
              if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
              {
                v25 = [v4 data];
                [v25 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v22 |= (v30 & 0x7F) << v20;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v13 = v21++ >= 9;
              if (v13)
              {
                v26 = 0;
                goto LABEL_47;
              }
            }

            if ([v4 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v22;
            }

LABEL_47:
            v5->_waitTime = v26;
            goto LABEL_33;
          case 6:
            v16 = PBReaderReadString();
            v17 = 32;
            break;
          default:
LABEL_29:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_49;
            }

            goto LABEL_33;
        }
      }

      else
      {
        switch(v15)
        {
          case 1:
            v16 = PBReaderReadString();
            v17 = 40;
            break;
          case 2:
            v16 = PBReaderReadString();
            v17 = 48;
            break;
          case 3:
            v16 = PBReaderReadString();
            v17 = 56;
            break;
          default:
            goto LABEL_29;
        }
      }

      v18 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_33:
      v19 = [v4 position];
    }

    while (v19 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_49:
    v27 = 0;
  }

  else
  {
LABEL_50:
    v27 = v5;
  }

  return v27;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self deviceFamily];
  v5 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self siriInputLocale];
  v6 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self systemBuild];
  v7 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self audioInputRoute];
  v8 = [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self invocationSource];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsUserEngagementStatsMetadata waitTime](self, "waitTime")}];
  v10 = [v3 initWithFormat:@"BMSiriUserEngagementStatisticsUserEngagementStatsMetadata with deviceFamily: %@, siriInputLocale: %@, systemBuild: %@, audioInputRoute: %@, invocationSource: %@, waitTime: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMSiriUserEngagementStatisticsUserEngagementStatsMetadata)initWithDeviceFamily:(id)a3 siriInputLocale:(id)a4 systemBuild:(id)a5 audioInputRoute:(id)a6 invocationSource:(id)a7 waitTime:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = BMSiriUserEngagementStatisticsUserEngagementStatsMetadata;
  v18 = [(BMEventBase *)&v24 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_deviceFamily, a3);
    objc_storeStrong(&v18->_siriInputLocale, a4);
    objc_storeStrong(&v18->_systemBuild, a5);
    objc_storeStrong(&v18->_audioInputRoute, a6);
    objc_storeStrong(&v18->_invocationSource, a7);
    if (v17)
    {
      v18->_hasWaitTime = 1;
      v19 = [v17 intValue];
    }

    else
    {
      v18->_hasWaitTime = 0;
      v19 = -1;
    }

    v18->_waitTime = v19;
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceFamily" number:6 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriInputLocale" number:1 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemBuild" number:2 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audioInputRoute" number:3 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"invocationSource" number:4 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"waitTime" number:5 type:2 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceFamily" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriInputLocale" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemBuild" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audioInputRoute" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"invocationSource" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"waitTime" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:2 convertedType:0];
  v11[0] = v3;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v11[5] = v2;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
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

    v8 = [[BMSiriUserEngagementStatisticsUserEngagementStatsMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end