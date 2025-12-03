@interface BMDisplayAlwaysOn
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDisplayAlwaysOn)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMDisplayAlwaysOn)initWithUserSetState:(int)state resolvedState:(int)resolvedState blockingPolicies:(id)policies;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDisplayAlwaysOn

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userSetState" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"resolvedState" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"blockingPolicies_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_155_31972];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDisplayAlwaysOn *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    userSetState = [(BMDisplayAlwaysOn *)self userSetState];
    if (userSetState == [v5 userSetState] && (v7 = -[BMDisplayAlwaysOn resolvedState](self, "resolvedState"), v7 == objc_msgSend(v5, "resolvedState")))
    {
      blockingPolicies = [(BMDisplayAlwaysOn *)self blockingPolicies];
      blockingPolicies2 = [v5 blockingPolicies];
      if (blockingPolicies == blockingPolicies2)
      {
        v12 = 1;
      }

      else
      {
        blockingPolicies3 = [(BMDisplayAlwaysOn *)self blockingPolicies];
        blockingPolicies4 = [v5 blockingPolicies];
        v12 = [blockingPolicies3 isEqual:blockingPolicies4];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDisplayAlwaysOn userSetState](self, "userSetState")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDisplayAlwaysOn resolvedState](self, "resolvedState")}];
  _blockingPoliciesJSONArray = [(BMDisplayAlwaysOn *)self _blockingPoliciesJSONArray];
  v12[0] = @"userSetState";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"resolvedState";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"blockingPolicies";
  null3 = _blockingPoliciesJSONArray;
  if (!_blockingPoliciesJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (_blockingPoliciesJSONArray)
  {
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMDisplayAlwaysOn)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v77[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"userSetState"];
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
        if (error)
        {
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = *MEMORY[0x1E698F240];
          v76 = *MEMORY[0x1E696A578];
          selfCopy = self;
          v43 = objc_alloc(MEMORY[0x1E696AEC0]);
          v53 = objc_opt_class();
          v44 = v43;
          self = selfCopy;
          v12 = [v44 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v53, @"userSetState"];
          v77[0] = v12;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
          v46 = v40;
          v11 = v45;
          v8 = 0;
          selfCopy4 = 0;
          *error = [v46 initWithDomain:v41 code:2 userInfo:v45];
          goto LABEL_44;
        }

        v8 = 0;
        selfCopy4 = 0;
        goto LABEL_45;
      }

      v9 = [MEMORY[0x1E696AD98] numberWithInt:BMDisplayAlwaysOnStateFromString(v7)];
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"resolvedState"];
  errorCopy = error;
  v60 = v7;
  v61 = v10;
  if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v74 = *MEMORY[0x1E696A578];
          v49 = dictionaryCopy;
          v50 = objc_alloc(MEMORY[0x1E696AEC0]);
          v54 = objc_opt_class();
          v51 = v50;
          dictionaryCopy = v49;
          errorCopy2 = error;
          v13 = [v51 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v54, @"resolvedState"];
          v75 = v13;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          selfCopy4 = 0;
          *errorCopy2 = [v47 initWithDomain:v48 code:2 userInfo:v16];
          v12 = 0;
          goto LABEL_42;
        }

        v12 = 0;
        selfCopy4 = 0;
        goto LABEL_44;
      }

      v12 = [MEMORY[0x1E696AD98] numberWithInt:BMDisplayAlwaysOnStateFromString(v11)];
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"blockingPolicies"];
  null = [MEMORY[0x1E695DFB0] null];
  v15 = [v13 isEqual:null];

  if (v15)
  {
    v55 = v12;
    v56 = v8;
    selfCopy3 = self;
    v58 = dictionaryCopy;

    v13 = 0;
  }

  else
  {
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v72 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"blockingPolicies"];
          v73 = v16;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
          *errorCopy = [v37 initWithDomain:v38 code:2 userInfo:v39];

          selfCopy4 = 0;
          goto LABEL_42;
        }

        selfCopy4 = 0;
        v11 = v61;
        goto LABEL_43;
      }
    }

    v55 = v12;
    v56 = v8;
    selfCopy3 = self;
    v58 = dictionaryCopy;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v13 = v13;
  v17 = [v13 countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v19 = *v64;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v64 != v19)
      {
        objc_enumerationMutation(v13);
      }

      v21 = *(*(&v63 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self = selfCopy3;
        dictionaryCopy = v58;
        v27 = errorCopy;
        if (errorCopy)
        {
          v28 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v69 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"blockingPolicies"];
          v70 = v22;
          v30 = MEMORY[0x1E695DF20];
          v31 = &v70;
          v32 = &v69;
LABEL_34:
          v33 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:1];
          *v27 = [v28 initWithDomain:v29 code:2 userInfo:v33];
LABEL_40:
        }

LABEL_41:

        selfCopy4 = 0;
        v12 = v55;
        v8 = v56;
        goto LABEL_42;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        self = selfCopy3;
        dictionaryCopy = v58;
        v27 = errorCopy;
        if (errorCopy)
        {
          v28 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v67 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"blockingPolicies"];
          v68 = v22;
          v30 = MEMORY[0x1E695DF20];
          v31 = &v68;
          v32 = &v67;
          goto LABEL_34;
        }

        goto LABEL_41;
      }

      v22 = v21;
      v23 = [BMDisplayAlwaysOnBlockingPolicy alloc];
      v62 = 0;
      v24 = [(BMDisplayAlwaysOnBlockingPolicy *)v23 initWithJSONDictionary:v22 error:&v62];
      v25 = v62;
      if (v25)
      {
        v33 = v25;
        if (errorCopy)
        {
          v34 = v25;
          *errorCopy = v33;
        }

        self = selfCopy3;
        dictionaryCopy = v58;
        goto LABEL_40;
      }

      [v16 addObject:v24];
    }

    v18 = [v13 countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v8 = v56;
  v12 = v55;
  self = -[BMDisplayAlwaysOn initWithUserSetState:resolvedState:blockingPolicies:](selfCopy3, "initWithUserSetState:resolvedState:blockingPolicies:", [v56 intValue], objc_msgSend(v55, "intValue"), v16);
  selfCopy4 = self;
  dictionaryCopy = v58;
LABEL_42:

  v7 = v60;
  v11 = v61;
LABEL_43:

LABEL_44:
LABEL_45:

  v35 = *MEMORY[0x1E69E9840];
  return selfCopy4;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  userSetState = self->_userSetState;
  PBDataWriterWriteUint32Field();
  resolvedState = self->_resolvedState;
  PBDataWriterWriteUint32Field();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_blockingPolicies;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v12 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v38.receiver = self;
  v38.super_class = BMDisplayAlwaysOn;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_56;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_54;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v39[0] & 0x7F) << v8;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_54;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 1)
      {
        break;
      }

      if (v16 == 3)
      {
        v39[0] = 0;
        v39[1] = 0;
        if (!PBReaderPlaceMark() || (v24 = [[BMDisplayAlwaysOnBlockingPolicy alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_58:

          goto LABEL_55;
        }

        v25 = v24;
        [v6 addObject:v24];
        PBReaderRecallMark();
      }

      else
      {
        if (v16 == 2)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v39[0]) = 0;
            v20 = [fromCopy position] + 1;
            if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v19 |= (v39[0] & 0x7F) << v17;
            if ((v39[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v23 = v18++ > 8;
            if (v23)
            {
              goto LABEL_50;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v19 > 2)
          {
LABEL_50:
            LODWORD(v19) = 0;
          }

          v31 = 24;
LABEL_52:
          *(&v5->super.super.isa + v31) = v19;
          goto LABEL_53;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_58;
        }
      }

LABEL_53:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_54;
      }
    }

    v26 = 0;
    v27 = 0;
    v19 = 0;
    while (1)
    {
      LOBYTE(v39[0]) = 0;
      v28 = [fromCopy position] + 1;
      if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
      {
        data3 = [fromCopy data];
        [data3 getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v19 |= (v39[0] & 0x7F) << v26;
      if ((v39[0] & 0x80) == 0)
      {
        break;
      }

      v26 += 7;
      v23 = v27++ > 8;
      if (v23)
      {
        goto LABEL_46;
      }
    }

    if (([fromCopy hasError] & 1) != 0 || v19 > 2)
    {
LABEL_46:
      LODWORD(v19) = 0;
    }

    v31 = 20;
    goto LABEL_52;
  }

LABEL_54:
  v33 = [v6 copy];
  blockingPolicies = v5->_blockingPolicies;
  v5->_blockingPolicies = v33;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_55:
    v36 = 0;
  }

  else
  {
LABEL_56:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMDisplayAlwaysOnStateAsString([(BMDisplayAlwaysOn *)self userSetState]);
  v5 = BMDisplayAlwaysOnStateAsString([(BMDisplayAlwaysOn *)self resolvedState]);
  blockingPolicies = [(BMDisplayAlwaysOn *)self blockingPolicies];
  v7 = [v3 initWithFormat:@"BMDisplayAlwaysOn with userSetState: %@, resolvedState: %@, blockingPolicies: %@", v4, v5, blockingPolicies];

  return v7;
}

- (BMDisplayAlwaysOn)initWithUserSetState:(int)state resolvedState:(int)resolvedState blockingPolicies:(id)policies
{
  policiesCopy = policies;
  v12.receiver = self;
  v12.super_class = BMDisplayAlwaysOn;
  v10 = [(BMEventBase *)&v12 init];
  if (v10)
  {
    v10->_dataVersion = [objc_opt_class() latestDataVersion];
    v10->_userSetState = state;
    v10->_resolvedState = resolvedState;
    objc_storeStrong(&v10->_blockingPolicies, policies);
  }

  return v10;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userSetState" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resolvedState" number:2 type:4 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"blockingPolicies" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __28__BMDisplayAlwaysOn_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _blockingPoliciesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMDisplayAlwaysOn alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end