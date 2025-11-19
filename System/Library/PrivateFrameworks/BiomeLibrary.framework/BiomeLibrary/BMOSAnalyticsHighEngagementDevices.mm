@interface BMOSAnalyticsHighEngagementDevices
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMOSAnalyticsHighEngagementDevices)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMOSAnalyticsHighEngagementDevices)initWithTopCategory1:(id)a3 topCategory2:(id)a4 topCategory3:(id)a5 highEngagementCategory1:(id)a6 highEngagementCategory2:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMOSAnalyticsHighEngagementDevices

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory1];
    v7 = [v5 topCategory1];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory1];
      v10 = [v5 topCategory1];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory2];
    v14 = [v5 topCategory2];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory2];
      v17 = [v5 topCategory2];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory3];
    v20 = [v5 topCategory3];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory3];
      v23 = [v5 topCategory3];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory1];
    v26 = [v5 highEngagementCategory1];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory1];
      v29 = [v5 highEngagementCategory1];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v31 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory2];
    v32 = [v5 highEngagementCategory2];
    if (v31 == v32)
    {
      v12 = 1;
    }

    else
    {
      v33 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory2];
      v34 = [v5 highEngagementCategory2];
      v12 = [v33 isEqual:v34];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory1];
  v4 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory2];
  v5 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory3];
  v6 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory1];
  v7 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory2];
  v18 = @"topCategory1";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v8;
  v23[0] = v8;
  v19 = @"topCategory2";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v9;
  v20 = @"topCategory3";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v10;
  v21 = @"highEngagementCategory1";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v11;
  v22 = @"highEngagementCategory2";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v6)
    {
LABEL_13:
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v5)
  {
LABEL_14:
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMOSAnalyticsHighEngagementDevices)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v48[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"topCategory1"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"topCategory2"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v38 = 0;
          v16 = 0;
          goto LABEL_20;
        }

        v32 = a4;
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v45 = *MEMORY[0x1E696A578];
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"topCategory2"];
        v46 = v36;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v38 = 0;
        v16 = 0;
        *v32 = [v22 initWithDomain:v23 code:2 userInfo:v10];
        goto LABEL_19;
      }

      v38 = v9;
    }

    else
    {
      v38 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"topCategory3"];
    v35 = v8;
    v37 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v36 = 0;
          v16 = 0;
          goto LABEL_19;
        }

        v24 = a4;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"topCategory3"];
        v44 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v36 = 0;
        v16 = 0;
        *v24 = [v25 initWithDomain:v26 code:2 userInfo:v11];
LABEL_18:

        self = v37;
        v8 = v35;
LABEL_19:

        goto LABEL_20;
      }

      v36 = v10;
    }

    else
    {
      v36 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"highEngagementCategory1"];
    v12 = a4;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v13 = 0;
          v16 = 0;
          goto LABEL_18;
        }

        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v41 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"highEngagementCategory1"];
        v42 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v28 = [v33 initWithDomain:v27 code:2 userInfo:v14];
        v13 = 0;
        v16 = 0;
        *v12 = v28;
        goto LABEL_17;
      }

      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"highEngagementCategory2"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v12)
        {
          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v39 = *MEMORY[0x1E696A578];
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"highEngagementCategory2"];
          v40 = v29;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          *v12 = [v34 initWithDomain:v31 code:2 userInfo:v30];
        }

        v15 = 0;
        v16 = 0;
        goto LABEL_17;
      }

      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [(BMOSAnalyticsHighEngagementDevices *)v37 initWithTopCategory1:v35 topCategory2:v38 topCategory3:v36 highEngagementCategory1:v13 highEngagementCategory2:v15];
    v37 = v16;
LABEL_17:

    goto LABEL_18;
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
    goto LABEL_21;
  }

  v19 = a4;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v47 = *MEMORY[0x1E696A578];
  v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"topCategory1"];
  v48[0] = v38;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
  v8 = 0;
  v16 = 0;
  *v19 = [v20 initWithDomain:v21 code:2 userInfo:v9];
LABEL_20:

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOSAnalyticsHighEngagementDevices *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_topCategory1)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_topCategory2)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_topCategory3)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_highEngagementCategory1)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_highEngagementCategory2)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = BMOSAnalyticsHighEngagementDevices;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v24 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v24 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
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
        break;
      }

      v15 = (v14 >> 3) - 1;
      if (v15 >= 5)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6E899A8[v15];
        v17 = PBReaderReadString();
        v18 = *v16;
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
      }

      v20 = [v4 position];
    }

    while (v20 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_23:
    v21 = 0;
  }

  else
  {
LABEL_24:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory1];
  v5 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory2];
  v6 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory3];
  v7 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory1];
  v8 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory2];
  v9 = [v3 initWithFormat:@"BMOSAnalyticsHighEngagementDevices with topCategory1: %@, topCategory2: %@, topCategory3: %@, highEngagementCategory1: %@, highEngagementCategory2: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMOSAnalyticsHighEngagementDevices)initWithTopCategory1:(id)a3 topCategory2:(id)a4 topCategory3:(id)a5 highEngagementCategory1:(id)a6 highEngagementCategory2:(id)a7
{
  v19 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMOSAnalyticsHighEngagementDevices;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_topCategory1, a3);
    objc_storeStrong(&v17->_topCategory2, a4);
    objc_storeStrong(&v17->_topCategory3, a5);
    objc_storeStrong(&v17->_highEngagementCategory1, a6);
    objc_storeStrong(&v17->_highEngagementCategory2, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topCategory1" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topCategory2" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topCategory3" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highEngagementCategory1" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highEngagementCategory2" number:5 type:13 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"topCategory1" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"topCategory2" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"topCategory3" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highEngagementCategory1" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highEngagementCategory2" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
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

    v8 = [[BMOSAnalyticsHighEngagementDevices alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end