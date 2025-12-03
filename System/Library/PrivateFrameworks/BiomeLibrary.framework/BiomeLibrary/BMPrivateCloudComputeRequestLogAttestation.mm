@interface BMPrivateCloudComputeRequestLogAttestation
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPrivateCloudComputeRequestLogAttestation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMPrivateCloudComputeRequestLogAttestation)initWithNode:(id)node nodeState:(id)state attestationBundle:(id)bundle proxiedBy:(id)by requestExecutionLogFinalized:(id)finalized;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPrivateCloudComputeRequestLogAttestation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    node = [(BMPrivateCloudComputeRequestLogAttestation *)self node];
    node2 = [v5 node];
    v8 = node2;
    if (node == node2)
    {
    }

    else
    {
      node3 = [(BMPrivateCloudComputeRequestLogAttestation *)self node];
      node4 = [v5 node];
      v11 = [node3 isEqual:node4];

      if (!v11)
      {
        goto LABEL_24;
      }
    }

    nodeState = [(BMPrivateCloudComputeRequestLogAttestation *)self nodeState];
    nodeState2 = [v5 nodeState];
    v15 = nodeState2;
    if (nodeState == nodeState2)
    {
    }

    else
    {
      nodeState3 = [(BMPrivateCloudComputeRequestLogAttestation *)self nodeState];
      nodeState4 = [v5 nodeState];
      v18 = [nodeState3 isEqual:nodeState4];

      if (!v18)
      {
        goto LABEL_24;
      }
    }

    attestationBundle = [(BMPrivateCloudComputeRequestLogAttestation *)self attestationBundle];
    attestationBundle2 = [v5 attestationBundle];
    v21 = attestationBundle2;
    if (attestationBundle == attestationBundle2)
    {
    }

    else
    {
      attestationBundle3 = [(BMPrivateCloudComputeRequestLogAttestation *)self attestationBundle];
      attestationBundle4 = [v5 attestationBundle];
      v24 = [attestationBundle3 isEqual:attestationBundle4];

      if (!v24)
      {
        goto LABEL_24;
      }
    }

    proxiedBy = [(BMPrivateCloudComputeRequestLogAttestation *)self proxiedBy];
    proxiedBy2 = [v5 proxiedBy];
    v27 = proxiedBy2;
    if (proxiedBy == proxiedBy2)
    {
    }

    else
    {
      proxiedBy3 = [(BMPrivateCloudComputeRequestLogAttestation *)self proxiedBy];
      proxiedBy4 = [v5 proxiedBy];
      v30 = [proxiedBy3 isEqual:proxiedBy4];

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
      requestExecutionLogFinalized = [(BMPrivateCloudComputeRequestLogAttestation *)self requestExecutionLogFinalized];
      v12 = requestExecutionLogFinalized ^ [v5 requestExecutionLogFinalized] ^ 1;
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
  node = [(BMPrivateCloudComputeRequestLogAttestation *)self node];
  nodeState = [(BMPrivateCloudComputeRequestLogAttestation *)self nodeState];
  attestationBundle = [(BMPrivateCloudComputeRequestLogAttestation *)self attestationBundle];
  proxiedBy = [(BMPrivateCloudComputeRequestLogAttestation *)self proxiedBy];
  if ([(BMPrivateCloudComputeRequestLogAttestation *)self hasRequestExecutionLogFinalized])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPrivateCloudComputeRequestLogAttestation requestExecutionLogFinalized](self, "requestExecutionLogFinalized")}];
  }

  else
  {
    v7 = 0;
  }

  v18[0] = @"node";
  null = node;
  if (!node)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17 = null;
  v22[0] = null;
  v18[1] = @"nodeState";
  null2 = nodeState;
  if (!nodeState)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = null2;
  v18[2] = @"attestationBundle";
  if (attestationBundle)
  {
    v23 = attestationBundle;
    v19 = @"attestationString";
    null4 = attestationBundle;
  }

  else
  {
    null3 = [MEMORY[0x1E695DFB0] null];
    v23 = null3;
    v19 = @"attestationString";
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null4;
  v20 = @"proxiedBy";
  null5 = proxiedBy;
  if (!proxiedBy)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null5;
  v21 = @"requestExecutionLogFinalized";
  null6 = v7;
  if (!v7)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null6;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v18 count:6];
  if (v7)
  {
    if (proxiedBy)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (proxiedBy)
    {
LABEL_17:
      if (attestationBundle)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }
  }

  if (attestationBundle)
  {
LABEL_18:
    if (nodeState)
    {
      goto LABEL_19;
    }

LABEL_26:

    if (node)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

LABEL_25:

  if (!nodeState)
  {
    goto LABEL_26;
  }

LABEL_19:
  if (node)
  {
    goto LABEL_20;
  }

LABEL_27:

LABEL_20:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMPrivateCloudComputeRequestLogAttestation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v51[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"node"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"nodeState"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v41 = 0;
          v17 = 0;
          goto LABEL_27;
        }

        errorCopy = error;
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v48 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"nodeState"];
        v49 = v18;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v41 = 0;
        v17 = 0;
        *errorCopy = [v28 initWithDomain:v29 code:2 userInfo:v11];
        goto LABEL_26;
      }

      v41 = v9;
    }

    else
    {
      v41 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"attestationBundle"];
    v39 = v8;
    selfCopy = self;
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = [dictionaryCopy objectForKeyedSubscript:@"attestationString"];
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
        if (!error)
        {
          v18 = 0;
          v17 = 0;
          goto LABEL_26;
        }

        errorCopy2 = error;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v46 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"attestationBundle"];
        v47 = v14;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v27 = [v25 initWithDomain:v26 code:2 userInfo:v12];
        v18 = 0;
        v17 = 0;
        *errorCopy2 = v27;
LABEL_25:

        v8 = v39;
        self = selfCopy;
LABEL_26:

        goto LABEL_27;
      }

      v11 = v11;
      v37 = v11;
LABEL_16:
      v12 = [dictionaryCopy objectForKeyedSubscript:@"proxiedBy"];
      errorCopy3 = error;
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
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
          *errorCopy3 = v31;
          goto LABEL_23;
        }

        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      v15 = [dictionaryCopy objectForKeyedSubscript:@"requestExecutionLogFinalized"];
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy3)
          {
            v36 = objc_alloc(MEMORY[0x1E696ABC0]);
            v34 = *MEMORY[0x1E698F240];
            v42 = *MEMORY[0x1E696A578];
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"requestExecutionLogFinalized"];
            v43 = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
            *errorCopy3 = [v36 initWithDomain:v34 code:2 userInfo:v33];
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

      v17 = [(BMPrivateCloudComputeRequestLogAttestation *)selfCopy initWithNode:v39 nodeState:v41 attestationBundle:v37 proxiedBy:v14 requestExecutionLogFinalized:v16];
      selfCopy = v17;
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

  if (!error)
  {
    v8 = 0;
    v17 = 0;
    goto LABEL_28;
  }

  errorCopy4 = error;
  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  v23 = *MEMORY[0x1E698F240];
  v50 = *MEMORY[0x1E696A578];
  v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"node"];
  v51[0] = v41;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  v8 = 0;
  v17 = 0;
  *errorCopy4 = [v22 initWithDomain:v23 code:2 userInfo:v9];
LABEL_27:

LABEL_28:
  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPrivateCloudComputeRequestLogAttestation *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_node)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_nodeState)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_attestationBundle)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_proxiedBy)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hasRequestExecutionLogFinalized)
  {
    requestExecutionLogFinalized = self->_requestExecutionLogFinalized;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v29.receiver = self;
  v29.super_class = BMPrivateCloudComputeRequestLogAttestation;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_46;
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
        v30 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            v22 = (v18 != 0) & ~[fromCopy hasError];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  node = [(BMPrivateCloudComputeRequestLogAttestation *)self node];
  nodeState = [(BMPrivateCloudComputeRequestLogAttestation *)self nodeState];
  attestationBundle = [(BMPrivateCloudComputeRequestLogAttestation *)self attestationBundle];
  proxiedBy = [(BMPrivateCloudComputeRequestLogAttestation *)self proxiedBy];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPrivateCloudComputeRequestLogAttestation requestExecutionLogFinalized](self, "requestExecutionLogFinalized")}];
  v9 = [v3 initWithFormat:@"BMPrivateCloudComputeRequestLogAttestation with node: %@, nodeState: %@, attestationBundle: %@, proxiedBy: %@, requestExecutionLogFinalized: %@", node, nodeState, attestationBundle, proxiedBy, v8];

  return v9;
}

- (BMPrivateCloudComputeRequestLogAttestation)initWithNode:(id)node nodeState:(id)state attestationBundle:(id)bundle proxiedBy:(id)by requestExecutionLogFinalized:(id)finalized
{
  nodeCopy = node;
  stateCopy = state;
  bundleCopy = bundle;
  byCopy = by;
  finalizedCopy = finalized;
  v20.receiver = self;
  v20.super_class = BMPrivateCloudComputeRequestLogAttestation;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_node, node);
    objc_storeStrong(&v17->_nodeState, state);
    objc_storeStrong(&v17->_attestationBundle, bundle);
    objc_storeStrong(&v17->_proxiedBy, by);
    if (finalizedCopy)
    {
      v17->_hasRequestExecutionLogFinalized = 1;
      v17->_requestExecutionLogFinalized = [finalizedCopy BOOLValue];
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