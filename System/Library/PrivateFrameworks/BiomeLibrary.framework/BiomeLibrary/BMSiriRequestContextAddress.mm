@interface BMSiriRequestContextAddress
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriRequestContextAddress)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriRequestContextAddress)initWithLabel:(id)label street:(id)street city:(id)city state:(id)state postalCode:(id)code countryCode:(id)countryCode;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriRequestContextAddress

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    label = [(BMSiriRequestContextAddress *)self label];
    label2 = [v5 label];
    v8 = label2;
    if (label == label2)
    {
    }

    else
    {
      label3 = [(BMSiriRequestContextAddress *)self label];
      label4 = [v5 label];
      v11 = [label3 isEqual:label4];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    street = [(BMSiriRequestContextAddress *)self street];
    street2 = [v5 street];
    v15 = street2;
    if (street == street2)
    {
    }

    else
    {
      street3 = [(BMSiriRequestContextAddress *)self street];
      street4 = [v5 street];
      v18 = [street3 isEqual:street4];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    city = [(BMSiriRequestContextAddress *)self city];
    city2 = [v5 city];
    v21 = city2;
    if (city == city2)
    {
    }

    else
    {
      city3 = [(BMSiriRequestContextAddress *)self city];
      city4 = [v5 city];
      v24 = [city3 isEqual:city4];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    state = [(BMSiriRequestContextAddress *)self state];
    state2 = [v5 state];
    v27 = state2;
    if (state == state2)
    {
    }

    else
    {
      state3 = [(BMSiriRequestContextAddress *)self state];
      state4 = [v5 state];
      v30 = [state3 isEqual:state4];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    postalCode = [(BMSiriRequestContextAddress *)self postalCode];
    postalCode2 = [v5 postalCode];
    v33 = postalCode2;
    if (postalCode == postalCode2)
    {
    }

    else
    {
      postalCode3 = [(BMSiriRequestContextAddress *)self postalCode];
      postalCode4 = [v5 postalCode];
      v36 = [postalCode3 isEqual:postalCode4];

      if (!v36)
      {
LABEL_21:
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    countryCode = [(BMSiriRequestContextAddress *)self countryCode];
    countryCode2 = [v5 countryCode];
    if (countryCode == countryCode2)
    {
      v12 = 1;
    }

    else
    {
      countryCode3 = [(BMSiriRequestContextAddress *)self countryCode];
      countryCode4 = [v5 countryCode];
      v12 = [countryCode3 isEqual:countryCode4];
    }

    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  label = [(BMSiriRequestContextAddress *)self label];
  street = [(BMSiriRequestContextAddress *)self street];
  city = [(BMSiriRequestContextAddress *)self city];
  state = [(BMSiriRequestContextAddress *)self state];
  postalCode = [(BMSiriRequestContextAddress *)self postalCode];
  countryCode = [(BMSiriRequestContextAddress *)self countryCode];
  v22[0] = @"label";
  null = label;
  if (!label)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v23[0] = null;
  v22[1] = @"street";
  null2 = street;
  if (!street)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null2;
  v23[1] = null2;
  v22[2] = @"city";
  null3 = city;
  if (!city)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = label;
  v23[2] = null3;
  v22[3] = @"state";
  null4 = state;
  if (!state)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22[4] = @"postalCode";
  null5 = postalCode;
  if (!postalCode)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v22[5] = @"countryCode";
  null6 = countryCode;
  if (!countryCode)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (countryCode)
  {
    if (postalCode)
    {
      goto LABEL_15;
    }

LABEL_23:

    if (state)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (!postalCode)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (state)
  {
    goto LABEL_16;
  }

LABEL_24:

LABEL_16:
  if (city)
  {
    if (street)
    {
      goto LABEL_18;
    }

LABEL_26:

    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (!street)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (v21)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMSiriRequestContextAddress)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v65[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"label"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"street"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v17 = 0;
          v16 = 0;
          goto LABEL_25;
        }

        v24 = v8;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v26 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"street"];
        v63 = v27;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v28 = v25;
        v8 = v24;
        v29 = v26;
        error = v27;
        v17 = 0;
        v16 = 0;
        *errorCopy = [v28 initWithDomain:v29 code:2 userInfo:v10];
        goto LABEL_24;
      }

      v52 = v9;
    }

    else
    {
      v52 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"city"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v16 = 0;
          v17 = v52;
          goto LABEL_24;
        }

        v30 = v8;
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v32 = *MEMORY[0x1E698F240];
        v60 = *MEMORY[0x1E696A578];
        v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"city"];
        v61 = v51;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v33 = v31;
        v8 = v30;
        v34 = [v33 initWithDomain:v32 code:2 userInfo:v11];
        error = 0;
        v16 = 0;
        *errorCopy2 = v34;
        goto LABEL_22;
      }

      v48 = v10;
    }

    else
    {
      v48 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"state"];
    v49 = v7;
    v50 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v51 = 0;
          v16 = 0;
          v17 = v52;
          error = v48;
          goto LABEL_23;
        }

        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"state"];
        v59 = v13;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v37 = [v35 initWithDomain:v36 code:2 userInfo:v12];
        v51 = 0;
        v16 = 0;
        *error = v37;
        goto LABEL_57;
      }

      v51 = v11;
    }

    else
    {
      v51 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"postalCode"];
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
      v14 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];
      if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v47 = objc_alloc(MEMORY[0x1E696ABC0]);
            v43 = *MEMORY[0x1E698F240];
            v54 = *MEMORY[0x1E696A578];
            v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"countryCode"];
            v55 = v41;
            v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
            *error = [v47 initWithDomain:v43 code:2 userInfo:v42];
          }

          v15 = 0;
          v16 = 0;
          error = v48;
          goto LABEL_20;
        }

        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      error = v48;
      v16 = [(BMSiriRequestContextAddress *)selfCopy initWithLabel:v50 street:v52 city:v48 state:v51 postalCode:v13 countryCode:v15];
      selfCopy = v16;
LABEL_20:

LABEL_21:
      v7 = v49;
      v8 = v50;
LABEL_22:
      v17 = v52;
LABEL_23:

      self = selfCopy;
LABEL_24:

      goto LABEL_25;
    }

    if (error)
    {
      errorCopy3 = error;
      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v39 = *MEMORY[0x1E698F240];
      v56 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"postalCode"];
      v57 = v15;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v40 = [v38 initWithDomain:v39 code:2 userInfo:v14];
      v13 = 0;
      v16 = 0;
      error = v48;
      *errorCopy3 = v40;
      goto LABEL_20;
    }

    v13 = 0;
    v16 = 0;
LABEL_57:
    error = v48;
    goto LABEL_21;
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
    v16 = 0;
    goto LABEL_26;
  }

  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy4 = error;
  v22 = *MEMORY[0x1E698F240];
  v64 = *MEMORY[0x1E696A578];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"label"];
  v65[0] = v17;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
  v23 = [v20 initWithDomain:v22 code:2 userInfo:v9];
  v8 = 0;
  v16 = 0;
  *errorCopy4 = v23;
LABEL_25:

LABEL_26:
  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriRequestContextAddress *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_label)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_street)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_city)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_state)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_postalCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMSiriRequestContextAddress;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v24 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = (v14 >> 3) - 1;
      if (v15 >= 6)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6E95C68[v15];
        v17 = PBReaderReadString();
        v18 = *v16;
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  label = [(BMSiriRequestContextAddress *)self label];
  street = [(BMSiriRequestContextAddress *)self street];
  city = [(BMSiriRequestContextAddress *)self city];
  state = [(BMSiriRequestContextAddress *)self state];
  postalCode = [(BMSiriRequestContextAddress *)self postalCode];
  countryCode = [(BMSiriRequestContextAddress *)self countryCode];
  v10 = [v3 initWithFormat:@"BMSiriRequestContextAddress with label: %@, street: %@, city: %@, state: %@, postalCode: %@, countryCode: %@", label, street, city, state, postalCode, countryCode];

  return v10;
}

- (BMSiriRequestContextAddress)initWithLabel:(id)label street:(id)street city:(id)city state:(id)state postalCode:(id)code countryCode:(id)countryCode
{
  labelCopy = label;
  streetCopy = street;
  cityCopy = city;
  stateCopy = state;
  codeCopy = code;
  countryCodeCopy = countryCode;
  v23.receiver = self;
  v23.super_class = BMSiriRequestContextAddress;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_label, label);
    objc_storeStrong(&v18->_street, street);
    objc_storeStrong(&v18->_city, city);
    objc_storeStrong(&v18->_state, state);
    objc_storeStrong(&v18->_postalCode, code);
    objc_storeStrong(&v18->_countryCode, countryCode);
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"label" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"street" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"city" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"state" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"postalCode" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countryCode" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"label" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"street" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"city" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"state" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"postalCode" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countryCode" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
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

    v8 = [[BMSiriRequestContextAddress alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end