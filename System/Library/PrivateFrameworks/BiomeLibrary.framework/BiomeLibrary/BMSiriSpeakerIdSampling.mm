@interface BMSiriSpeakerIdSampling
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriSpeakerIdSampling)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriSpeakerIdSampling)initWithTimestamp:(id)a3 onDeviceSampleIdentifiers:(id)a4 enrollmentIdentifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (id)_onDeviceSampleIdentifiersJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriSpeakerIdSampling

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"onDeviceSampleIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_91178];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"enrollmentIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriSpeakerIdSampling *)self timestamp];
    v7 = [v5 timestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriSpeakerIdSampling *)self timestamp];
      v10 = [v5 timestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(BMSiriSpeakerIdSampling *)self onDeviceSampleIdentifiers];
    v14 = [v5 onDeviceSampleIdentifiers];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriSpeakerIdSampling *)self onDeviceSampleIdentifiers];
      v17 = [v5 onDeviceSampleIdentifiers];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v19 = [(BMSiriSpeakerIdSampling *)self enrollmentIdentifier];
    v20 = [v5 enrollmentIdentifier];
    if (v19 == v20)
    {
      v12 = 1;
    }

    else
    {
      v21 = [(BMSiriSpeakerIdSampling *)self enrollmentIdentifier];
      v22 = [v5 enrollmentIdentifier];
      v12 = [v21 isEqual:v22];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v16[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriSpeakerIdSampling *)self timestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMSiriSpeakerIdSampling *)self timestamp];
    [v5 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMSiriSpeakerIdSampling *)self _onDeviceSampleIdentifiersJSONArray];
  v8 = [(BMSiriSpeakerIdSampling *)self enrollmentIdentifier];
  v15[0] = @"timestamp";
  v9 = v6;
  if (!v6)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v9;
  v15[1] = @"onDeviceSampleIdentifiers";
  v10 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v10;
  v15[2] = @"enrollmentIdentifier";
  v11 = v8;
  if (!v8)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (v6)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_onDeviceSampleIdentifiersJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMSiriSpeakerIdSampling *)self onDeviceSampleIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriSpeakerIdSampling)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v65[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"timestamp"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = MEMORY[0x1E695DF00];
      v20 = v6;
      v21 = [v19 alloc];
      [v20 doubleValue];
      v23 = v22;

      v7 = [v21 initWithTimeIntervalSince1970:v23];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v7 = [v33 dateFromString:v6];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v43 = objc_alloc(MEMORY[0x1E696ABC0]);
            v44 = *MEMORY[0x1E698F240];
            v64 = *MEMORY[0x1E696A578];
            v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
            v65[0] = v8;
            v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
            v45 = [v43 initWithDomain:v44 code:2 userInfo:v11];
            v7 = 0;
            v32 = 0;
            *a4 = v45;
            goto LABEL_39;
          }

          v7 = 0;
          v32 = 0;
          goto LABEL_41;
        }

        v7 = v6;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"onDeviceSampleIdentifiers"];
  v9 = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v46 = v5;
    v47 = v7;
    v48 = self;

    v8 = 0;
  }

  else
  {
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v62 = *MEMORY[0x1E696A578];
          v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"onDeviceSampleIdentifiers"];
          v63 = v11;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
          v35 = [v49 initWithDomain:v34 code:2 userInfo:v18];
          v32 = 0;
          *a4 = v35;
          goto LABEL_38;
        }

        v32 = 0;
        goto LABEL_40;
      }
    }

    v46 = v5;
    v47 = v7;
    v48 = self;
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = v8;
  v12 = [v8 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = v12;
  v14 = *v52;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v52 != v14)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v51 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = a4;
        if (a4)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v26 = *MEMORY[0x1E698F240];
          v59 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"onDeviceSampleIdentifiers"];
          v60 = v17;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v28 = v25;
          v29 = v26;
LABEL_27:
          *v24 = [v28 initWithDomain:v29 code:2 userInfo:v27];

          v32 = 0;
          v18 = v8;
          v7 = v47;
          self = v48;
          v5 = v46;
          goto LABEL_37;
        }

LABEL_28:
        v32 = 0;
        v18 = v8;
        v7 = v47;
        self = v48;
        v5 = v46;
        goto LABEL_38;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v57 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"onDeviceSampleIdentifiers"];
          v58 = v17;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          v28 = v30;
          v29 = v31;
          v24 = a4;
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      [v11 addObject:v16];
    }

    v13 = [v8 countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_18:

  v5 = v46;
  v17 = [v46 objectForKeyedSubscript:@"enrollmentIdentifier"];
  if (!v17)
  {
    v18 = 0;
    self = v48;
    goto LABEL_36;
  }

  objc_opt_class();
  self = v48;
  if (objc_opt_isKindOfClass())
  {
    v18 = 0;
    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
LABEL_36:
    v7 = v47;
    self = [(BMSiriSpeakerIdSampling *)self initWithTimestamp:v47 onDeviceSampleIdentifiers:v11 enrollmentIdentifier:v18];
    v32 = self;
  }

  else
  {
    if (a4)
    {
      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v39 = *MEMORY[0x1E698F240];
      v55 = *MEMORY[0x1E696A578];
      v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"enrollmentIdentifier"];
      v56 = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v42 = v39;
      self = v48;
      *a4 = [v38 initWithDomain:v42 code:2 userInfo:v41];
    }

    v18 = 0;
    v32 = 0;
    v7 = v47;
  }

LABEL_37:

LABEL_38:
LABEL_39:

LABEL_40:
LABEL_41:

  v36 = *MEMORY[0x1E69E9840];
  return v32;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriSpeakerIdSampling *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_onDeviceSampleIdentifiers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_enrollmentIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = BMSiriSpeakerIdSampling;
  v5 = [(BMEventBase *)&v30 init];
  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v31 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (LOBYTE(v31) & 0x7F) << v8;
        if ((LOBYTE(v31) & 0x80) == 0)
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

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        v21 = PBReaderReadString();
        enrollmentIdentifier = v5->_enrollmentIdentifier;
        v5->_enrollmentIdentifier = v21;
      }

      else if (v16 == 2)
      {
        v19 = PBReaderReadString();
        if (!v19)
        {
          goto LABEL_36;
        }

        v20 = v19;
        [v6 addObject:v19];
      }

      else if (v16 == 1)
      {
        v5->_hasRaw_timestamp = 1;
        v31 = 0.0;
        v17 = [v4 position] + 8;
        if (v17 >= [v4 position] && (v18 = objc_msgSend(v4, "position") + 8, v18 <= objc_msgSend(v4, "length")))
        {
          v23 = [v4 data];
          [v23 getBytes:&v31 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_timestamp = v31;
      }

      else if (!PBReaderSkipValueWithTag())
      {
LABEL_36:

        goto LABEL_33;
      }

      v24 = [v4 position];
    }

    while (v24 < [v4 length]);
  }

  v25 = [v6 copy];
  onDeviceSampleIdentifiers = v5->_onDeviceSampleIdentifiers;
  v5->_onDeviceSampleIdentifiers = v25;

  v27 = [v4 hasError];
  if (v27)
  {
LABEL_33:
    v28 = 0;
  }

  else
  {
LABEL_34:
    v28 = v5;
  }

  return v28;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriSpeakerIdSampling *)self timestamp];
  v5 = [(BMSiriSpeakerIdSampling *)self onDeviceSampleIdentifiers];
  v6 = [(BMSiriSpeakerIdSampling *)self enrollmentIdentifier];
  v7 = [v3 initWithFormat:@"BMSiriSpeakerIdSampling with timestamp: %@, onDeviceSampleIdentifiers: %@, enrollmentIdentifier: %@", v4, v5, v6];

  return v7;
}

- (BMSiriSpeakerIdSampling)initWithTimestamp:(id)a3 onDeviceSampleIdentifiers:(id)a4 enrollmentIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BMSiriSpeakerIdSampling;
  v11 = [(BMEventBase *)&v14 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v8)
    {
      v11->_hasRaw_timestamp = 1;
      [v8 timeIntervalSince1970];
    }

    else
    {
      v11->_hasRaw_timestamp = 0;
      v12 = -1.0;
    }

    v11->_raw_timestamp = v12;
    objc_storeStrong(&v11->_onDeviceSampleIdentifiers, a4);
    objc_storeStrong(&v11->_enrollmentIdentifier, a5);
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"onDeviceSampleIdentifiers" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"enrollmentIdentifier" number:3 type:13 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __34__BMSiriSpeakerIdSampling_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _onDeviceSampleIdentifiersJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMSiriSpeakerIdSampling alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end