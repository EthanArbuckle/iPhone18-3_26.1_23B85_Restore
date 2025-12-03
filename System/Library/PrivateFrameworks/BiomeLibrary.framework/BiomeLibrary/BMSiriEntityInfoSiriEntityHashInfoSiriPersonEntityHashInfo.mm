@interface BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo)initWithHandles:(id)handles firstName:(id)name lastName:(id)lastName source:(int)source;
- (BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_handlesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    handles = [(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self handles];
    handles2 = [v5 handles];
    v8 = handles2;
    if (handles == handles2)
    {
    }

    else
    {
      handles3 = [(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self handles];
      handles4 = [v5 handles];
      v11 = [handles3 isEqual:handles4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    firstName = [(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self firstName];
    firstName2 = [v5 firstName];
    v15 = firstName2;
    if (firstName == firstName2)
    {
    }

    else
    {
      firstName3 = [(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self firstName];
      firstName4 = [v5 firstName];
      v18 = [firstName3 isEqual:firstName4];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    lastName = [(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self lastName];
    lastName2 = [v5 lastName];
    v21 = lastName2;
    if (lastName == lastName2)
    {
    }

    else
    {
      lastName3 = [(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self lastName];
      lastName4 = [v5 lastName];
      v24 = [lastName3 isEqual:lastName4];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    source = [(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self source];
    v12 = source == [v5 source];
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  _handlesJSONArray = [(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self _handlesJSONArray];
  firstName = [(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self firstName];
  lastName = [(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self lastName];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo source](self, "source")}];
  v14[0] = @"handles";
  null = _handlesJSONArray;
  if (!_handlesJSONArray)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"firstName";
  null2 = firstName;
  if (!firstName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"lastName";
  null3 = lastName;
  if (!lastName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"source";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
  {
    if (lastName)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (lastName)
    {
LABEL_11:
      if (firstName)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (_handlesJSONArray)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!firstName)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (_handlesJSONArray)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_handlesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  handles = [(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self handles];
  v5 = [handles countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(handles);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [handles countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v69[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"handles"];
  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:null];

  if (v8)
  {

    v6 = 0;
LABEL_5:
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v6 = v6;
    v10 = [v6 countByEnumeratingWithState:&v53 objects:v67 count:16];
    errorCopy = error;
    if (!v10)
    {
      goto LABEL_14;
    }

    v12 = v10;
    v13 = *v54;
LABEL_7:
    v14 = dictionaryCopy;
    v15 = 0;
    while (1)
    {
      if (*v54 != v13)
      {
        objc_enumerationMutation(v6);
      }

      v16 = *(*(&v53 + 1) + 8 * v15);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v26 = *MEMORY[0x1E698F240];
          v63 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"handles"];
          v64 = v22;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          v23 = v25;
          v24 = v26;
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      [v9 addObject:v16];
      if (v12 == ++v15)
      {
        v12 = [v6 countByEnumeratingWithState:&v53 objects:v67 count:16];
        error = errorCopy;
        dictionaryCopy = v14;
        if (v12)
        {
          goto LABEL_7;
        }

LABEL_14:

        v17 = [dictionaryCopy objectForKeyedSubscript:@"firstName"];
        v51 = dictionaryCopy;
        if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v18 = 0;
          goto LABEL_17;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v37 = objc_alloc(MEMORY[0x1E696ABC0]);
            v38 = *MEMORY[0x1E698F240];
            v61 = *MEMORY[0x1E696A578];
            v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"firstName"];
            v62 = v19;
            v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
            v39 = [v37 initWithDomain:v38 code:2 userInfo:?];
            v18 = 0;
            v28 = 0;
            *error = v39;
            goto LABEL_58;
          }

          v18 = 0;
          v28 = 0;
          selfCopy7 = self;
          goto LABEL_49;
        }

        v18 = v17;
LABEL_17:
        v19 = [dictionaryCopy objectForKeyedSubscript:@"lastName"];
        v50 = v19;
        if (v19)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = 0;
            goto LABEL_32;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v19;
            goto LABEL_32;
          }

          if (error)
          {
            v40 = objc_alloc(MEMORY[0x1E696ABC0]);
            v41 = *MEMORY[0x1E698F240];
            v59 = *MEMORY[0x1E696A578];
            v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"lastName"];
            v60 = v35;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
            v34 = v42 = error;
            v43 = [v40 initWithDomain:v41 code:2 userInfo:v34];
            v19 = 0;
            v28 = 0;
            *v42 = v43;
            goto LABEL_56;
          }

          v19 = 0;
          v28 = 0;
LABEL_58:
          selfCopy7 = self;
LABEL_47:

          dictionaryCopy = v51;
LABEL_48:

LABEL_49:
LABEL_50:

          goto LABEL_51;
        }

LABEL_32:
        v34 = [dictionaryCopy objectForKeyedSubscript:@"source"];
        if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v35 = 0;
          goto LABEL_45;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = v34;
LABEL_44:
          v35 = v36;
LABEL_45:
          selfCopy7 = -[BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo initWithHandles:firstName:lastName:source:](self, "initWithHandles:firstName:lastName:source:", v9, v18, v19, [v35 intValue]);
          v28 = selfCopy7;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v36 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString(v34)];
            goto LABEL_44;
          }

          if (errorCopy)
          {
            v49 = objc_alloc(MEMORY[0x1E696ABC0]);
            v48 = *MEMORY[0x1E698F240];
            v57 = *MEMORY[0x1E696A578];
            v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"source"];
            v58 = v46;
            v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
            *errorCopy = [v49 initWithDomain:v48 code:2 userInfo:v47];
          }

          v35 = 0;
          v28 = 0;
LABEL_56:
          selfCopy7 = self;
        }

        goto LABEL_47;
      }
    }

    if (errorCopy)
    {
      v20 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E698F240];
      v65 = *MEMORY[0x1E696A578];
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"handles"];
      v66 = v22;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v23 = v20;
      v24 = v21;
LABEL_24:
      selfCopy7 = self;
      v28 = 0;
      *errorCopy = [v23 initWithDomain:v24 code:2 userInfo:v19];
      v18 = v6;
      dictionaryCopy = v14;
      v17 = v22;
      goto LABEL_48;
    }

LABEL_25:
    v28 = 0;
    v18 = v6;
    selfCopy7 = self;
    dictionaryCopy = v14;
    goto LABEL_50;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  if (error)
  {
    v29 = objc_alloc(MEMORY[0x1E696ABC0]);
    v30 = dictionaryCopy;
    v31 = *MEMORY[0x1E698F240];
    v68 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"handles"];
    v69[0] = v9;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
    v32 = v31;
    dictionaryCopy = v30;
    v33 = [v29 initWithDomain:v32 code:2 userInfo:v18];
    v28 = 0;
    *error = v33;
    selfCopy7 = self;
    goto LABEL_50;
  }

  v28 = 0;
  selfCopy7 = self;
LABEL_51:

  v44 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_handles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_firstName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_lastName)
  {
    PBDataWriterWriteStringField();
  }

  source = self->_source;
  PBDataWriterWriteUint32Field();

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v35.receiver = self;
  v35.super_class = BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_46;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_44;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v36 = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v36 & 0x7F) << v8;
        if ((v36 & 0x80) == 0)
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
        goto LABEL_44;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 2)
      {
        break;
      }

      if (v16 != 1)
      {
        if (v16 == 2)
        {
          v17 = PBReaderReadString();
          v18 = 32;
LABEL_38:
          v28 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_43;
        }

LABEL_33:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_48;
        }

        goto LABEL_43;
      }

      v26 = PBReaderReadString();
      if (!v26)
      {
LABEL_48:

        goto LABEL_45;
      }

      v27 = v26;
      [v6 addObject:v26];

LABEL_43:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_44;
      }
    }

    if (v16 == 3)
    {
      v17 = PBReaderReadString();
      v18 = 40;
      goto LABEL_38;
    }

    if (v16 == 4)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      while (1)
      {
        v36 = 0;
        v22 = [fromCopy position] + 1;
        if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v21 |= (v36 & 0x7F) << v19;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        if (v20++ > 8)
        {
          goto LABEL_41;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v21 > 2)
      {
LABEL_41:
        LODWORD(v21) = 0;
      }

      v5->_source = v21;
      goto LABEL_43;
    }

    goto LABEL_33;
  }

LABEL_44:
  v30 = [v6 copy];
  handles = v5->_handles;
  v5->_handles = v30;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_45:
    v33 = 0;
  }

  else
  {
LABEL_46:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  handles = [(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self handles];
  firstName = [(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self firstName];
  lastName = [(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self lastName];
  v7 = BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceAsString([(BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo *)self source]);
  v8 = [v3 initWithFormat:@"BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo with handles: %@, firstName: %@, lastName: %@, source: %@", handles, firstName, lastName, v7];

  return v8;
}

- (BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo)initWithHandles:(id)handles firstName:(id)name lastName:(id)lastName source:(int)source
{
  handlesCopy = handles;
  nameCopy = name;
  lastNameCopy = lastName;
  v16.receiver = self;
  v16.super_class = BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo;
  v14 = [(BMEventBase *)&v16 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v14->_handles, handles);
    objc_storeStrong(&v14->_firstName, name);
    objc_storeStrong(&v14->_lastName, lastName);
    v14->_source = source;
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"handles" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"firstName" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastName" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"source" number:4 type:4 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"handles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_53_114125];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"firstName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastName" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"source" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __69__BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _handlesJSONArray];
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

    v8 = [[BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntityHashInfo alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end