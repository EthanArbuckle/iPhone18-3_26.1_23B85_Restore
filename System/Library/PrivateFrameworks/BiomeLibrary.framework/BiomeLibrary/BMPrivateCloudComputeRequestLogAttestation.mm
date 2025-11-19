@interface BMPrivateCloudComputeRequestLogAttestation
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMPrivateCloudComputeRequestLogAttestation)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMPrivateCloudComputeRequestLogAttestation)initWithNode:(id)a3 nodeState:(id)a4 attestationBundle:(id)a5 proxiedBy:(id)a6 requestExecutionLogFinalized:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPrivateCloudComputeRequestLogAttestation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMPrivateCloudComputeRequestLogAttestation *)self node];
    v7 = [v5 node];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMPrivateCloudComputeRequestLogAttestation *)self node];
      v10 = [v5 node];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_24;
      }
    }

    v13 = [(BMPrivateCloudComputeRequestLogAttestation *)self nodeState];
    v14 = [v5 nodeState];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMPrivateCloudComputeRequestLogAttestation *)self nodeState];
      v17 = [v5 nodeState];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_24;
      }
    }

    v19 = [(BMPrivateCloudComputeRequestLogAttestation *)self attestationBundle];
    v20 = [v5 attestationBundle];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMPrivateCloudComputeRequestLogAttestation *)self attestationBundle];
      v23 = [v5 attestationBundle];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_24;
      }
    }

    v25 = [(BMPrivateCloudComputeRequestLogAttestation *)self proxiedBy];
    v26 = [v5 proxiedBy];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMPrivateCloudComputeRequestLogAttestation *)self proxiedBy];
      v29 = [v5 proxiedBy];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_24;
      }
    }

    if (!-[BMPrivateCloudComputeRequestLogAttestation hasRequestExecutionLogFinalized](self, "hasRequestExecutionLogFinalized") && ![v5 hasRequestExecutionLogFinalized])
    {
      LOBYTE(v12) = 1;
      goto LABEL_25;
    }

    if (-[BMPrivateCloudComputeRequestLogAttestation hasRequestExecutionLogFinalized](self, "hasRequestExecutionLogFinalized") && [v5 hasRequestExecutionLogFinalized])
    {
      v31 = [(BMPrivateCloudComputeRequestLogAttestation *)self requestExecutionLogFinalized];
      v12 = v31 ^ [v5 requestExecutionLogFinalized] ^ 1;
LABEL_25:

      goto LABEL_26;
    }

LABEL_24:
    LOBYTE(v12) = 0;
    goto LABEL_25;
  }

  LOBYTE(v12) = 0;
LABEL_26:

  return v12;
}

- (id)jsonDictionary
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(BMPrivateCloudComputeRequestLogAttestation *)self node];
  v4 = [(BMPrivateCloudComputeRequestLogAttestation *)self nodeState];
  v5 = [(BMPrivateCloudComputeRequestLogAttestation *)self attestationBundle];
  v6 = [(BMPrivateCloudComputeRequestLogAttestation *)self proxiedBy];
  if ([(BMPrivateCloudComputeRequestLogAttestation *)self hasRequestExecutionLogFinalized])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPrivateCloudComputeRequestLogAttestation requestExecutionLogFinalized](self, "requestExecutionLogFinalized")}];
  }

  else
  {
    v7 = 0;
  }

  v18[0] = @"node";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v8;
  v22[0] = v8;
  v18[1] = @"nodeState";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = v9;
  v18[2] = @"attestationBundle";
  if (v5)
  {
    v23 = v5;
    v19 = @"attestationString";
    v10 = v5;
  }

  else
  {
    v16 = [MEMORY[0x1E695DFB0] null];
    v23 = v16;
    v19 = @"attestationString";
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v10;
  v20 = @"proxiedBy";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v11;
  v21 = @"requestExecutionLogFinalized";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v18 count:6];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (v6)
    {
LABEL_17:
      if (v5)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }
  }

  if (v5)
  {
LABEL_18:
    if (v4)
    {
      goto LABEL_19;
    }

LABEL_26:

    if (v3)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

LABEL_25:

  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_19:
  if (v3)
  {
    goto LABEL_20;
  }

LABEL_27:

LABEL_20:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMPrivateCloudComputeRequestLogAttestation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v51[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"node"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"nodeState"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v41 = 0;
          v17 = 0;
          goto LABEL_27;
        }

        v38 = a4;
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v48 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"nodeState"];
        v49 = v18;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v41 = 0;
        v17 = 0;
        *v38 = [v28 initWithDomain:v29 code:2 userInfo:v11];
        goto LABEL_26;
      }

      v41 = v9;
    }

    else
    {
      v41 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"attestationBundle"];
    v39 = v8;
    v40 = self;
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = [v6 objectForKeyedSubscript:@"attestationString"];
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v18 = 0;
          v17 = 0;
          goto LABEL_26;
        }

        v24 = a4;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v46 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"attestationBundle"];
        v47 = v14;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v27 = [v25 initWithDomain:v26 code:2 userInfo:v12];
        v18 = 0;
        v17 = 0;
        *v24 = v27;
LABEL_25:

        v8 = v39;
        self = v40;
LABEL_26:

        goto LABEL_27;
      }

      v11 = v11;
      v37 = v11;
LABEL_16:
      v12 = [v6 objectForKeyedSubscript:@"proxiedBy"];
      v13 = a4;
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v14 = 0;
            v17 = 0;
            goto LABEL_24;
          }

          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = *MEMORY[0x1E698F240];
          v44 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"proxiedBy"];
          v45 = v16;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
          v31 = [v35 initWithDomain:v30 code:2 userInfo:v15];
          v14 = 0;
          v17 = 0;
          *v13 = v31;
          goto LABEL_23;
        }

        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      v15 = [v6 objectForKeyedSubscript:@"requestExecutionLogFinalized"];
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v13)
          {
            v36 = objc_alloc(MEMORY[0x1E696ABC0]);
            v34 = *MEMORY[0x1E698F240];
            v42 = *MEMORY[0x1E696A578];
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"requestExecutionLogFinalized"];
            v43 = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
            *v13 = [v36 initWithDomain:v34 code:2 userInfo:v33];
          }

          v16 = 0;
          v17 = 0;
          goto LABEL_23;
        }

        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = [(BMPrivateCloudComputeRequestLogAttestation *)v40 initWithNode:v39 nodeState:v41 attestationBundle:v37 proxiedBy:v14 requestExecutionLogFinalized:v16];
      v40 = v17;
LABEL_23:

LABEL_24:
      v18 = v37;
      goto LABEL_25;
    }

LABEL_13:
    v37 = 0;
    goto LABEL_16;
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
    v17 = 0;
    goto LABEL_28;
  }

  v21 = a4;
  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  v23 = *MEMORY[0x1E698F240];
  v50 = *MEMORY[0x1E696A578];
  v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"node"];
  v51[0] = v41;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  v8 = 0;
  v17 = 0;
  *v21 = [v22 initWithDomain:v23 code:2 userInfo:v9];
LABEL_27:

LABEL_28:
  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPrivateCloudComputeRequestLogAttestation *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_node)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_nodeState)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_attestationBundle)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_proxiedBy)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_hasRequestExecutionLogFinalized)
  {
    requestExecutionLogFinalized = self->_requestExecutionLogFinalized;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = BMPrivateCloudComputeRequestLogAttestation;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_46;
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
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v23 = PBReaderReadString();
          v24 = 24;
          goto LABEL_37;
        }

        if (v15 == 2)
        {
          v23 = PBReaderReadString();
          v24 = 32;
LABEL_37:
          v25 = *(&v5->super.super.isa + v24);
          *(&v5->super.super.isa + v24) = v23;

          goto LABEL_38;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            v23 = PBReaderReadString();
            v24 = 40;
            goto LABEL_37;
          case 4:
            v23 = PBReaderReadString();
            v24 = 48;
            goto LABEL_37;
          case 5:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v5->_hasRequestExecutionLogFinalized = 1;
            while (1)
            {
              v30 = 0;
              v19 = [v4 position] + 1;
              if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
              {
                v21 = [v4 data];
                [v21 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (v30 & 0x7F) << v16;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v13 = v17++ >= 9;
              if (v13)
              {
                LOBYTE(v22) = 0;
                goto LABEL_43;
              }
            }

            v22 = (v18 != 0) & ~[v4 hasError];
LABEL_43:
            v5->_requestExecutionLogFinalized = v22;
            goto LABEL_38;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_45;
      }

LABEL_38:
      v26 = [v4 position];
    }

    while (v26 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_45:
    v27 = 0;
  }

  else
  {
LABEL_46:
    v27 = v5;
  }

  return v27;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMPrivateCloudComputeRequestLogAttestation *)self node];
  v5 = [(BMPrivateCloudComputeRequestLogAttestation *)self nodeState];
  v6 = [(BMPrivateCloudComputeRequestLogAttestation *)self attestationBundle];
  v7 = [(BMPrivateCloudComputeRequestLogAttestation *)self proxiedBy];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPrivateCloudComputeRequestLogAttestation requestExecutionLogFinalized](self, "requestExecutionLogFinalized")}];
  v9 = [v3 initWithFormat:@"BMPrivateCloudComputeRequestLogAttestation with node: %@, nodeState: %@, attestationBundle: %@, proxiedBy: %@, requestExecutionLogFinalized: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMPrivateCloudComputeRequestLogAttestation)initWithNode:(id)a3 nodeState:(id)a4 attestationBundle:(id)a5 proxiedBy:(id)a6 requestExecutionLogFinalized:(id)a7
{
  v19 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMPrivateCloudComputeRequestLogAttestation;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_node, a3);
    objc_storeStrong(&v17->_nodeState, a4);
    objc_storeStrong(&v17->_attestationBundle, a5);
    objc_storeStrong(&v17->_proxiedBy, a6);
    if (v16)
    {
      v17->_hasRequestExecutionLogFinalized = 1;
      v17->_requestExecutionLogFinalized = [v16 BOOLValue];
    }

    else
    {
      v17->_hasRequestExecutionLogFinalized = 0;
      v17->_requestExecutionLogFinalized = 0;
    }
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"node" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nodeState" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attestationBundle" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"proxiedBy" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestExecutionLogFinalized" number:5 type:12 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"node" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nodeState" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"attestationBundle" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"attestationString" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"proxiedBy" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestExecutionLogFinalized" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
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

    v8 = [[BMPrivateCloudComputeRequestLogAttestation alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end