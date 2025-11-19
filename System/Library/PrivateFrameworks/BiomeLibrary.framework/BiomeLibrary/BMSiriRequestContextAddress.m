@interface BMSiriRequestContextAddress
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriRequestContextAddress)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriRequestContextAddress)initWithLabel:(id)a3 street:(id)a4 city:(id)a5 state:(id)a6 postalCode:(id)a7 countryCode:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriRequestContextAddress

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriRequestContextAddress *)self label];
    v7 = [v5 label];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriRequestContextAddress *)self label];
      v10 = [v5 label];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMSiriRequestContextAddress *)self street];
    v14 = [v5 street];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriRequestContextAddress *)self street];
      v17 = [v5 street];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = [(BMSiriRequestContextAddress *)self city];
    v20 = [v5 city];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSiriRequestContextAddress *)self city];
      v23 = [v5 city];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    v25 = [(BMSiriRequestContextAddress *)self state];
    v26 = [v5 state];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMSiriRequestContextAddress *)self state];
      v29 = [v5 state];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    v31 = [(BMSiriRequestContextAddress *)self postalCode];
    v32 = [v5 postalCode];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMSiriRequestContextAddress *)self postalCode];
      v35 = [v5 postalCode];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
LABEL_21:
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    v38 = [(BMSiriRequestContextAddress *)self countryCode];
    v39 = [v5 countryCode];
    if (v38 == v39)
    {
      v12 = 1;
    }

    else
    {
      v40 = [(BMSiriRequestContextAddress *)self countryCode];
      v41 = [v5 countryCode];
      v12 = [v40 isEqual:v41];
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
  v3 = [(BMSiriRequestContextAddress *)self label];
  v4 = [(BMSiriRequestContextAddress *)self street];
  v5 = [(BMSiriRequestContextAddress *)self city];
  v6 = [(BMSiriRequestContextAddress *)self state];
  v7 = [(BMSiriRequestContextAddress *)self postalCode];
  v8 = [(BMSiriRequestContextAddress *)self countryCode];
  v22[0] = @"label";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v23[0] = v9;
  v22[1] = @"street";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v10;
  v23[1] = v10;
  v22[2] = @"city";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v23[2] = v11;
  v22[3] = @"state";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v12;
  v22[4] = @"postalCode";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v13;
  v22[5] = @"countryCode";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_15;
    }

LABEL_23:

    if (v6)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_24:

LABEL_16:
  if (v5)
  {
    if (v4)
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

  if (!v4)
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

- (BMSiriRequestContextAddress)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v65[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"label"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"street"];
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
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"street"];
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

    v10 = [v6 objectForKeyedSubscript:@"city"];
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
        v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"city"];
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

    v11 = [v6 objectForKeyedSubscript:@"state"];
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
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"state"];
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

    v12 = [v6 objectForKeyedSubscript:@"postalCode"];
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
      v14 = [v6 objectForKeyedSubscript:@"countryCode"];
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
            v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"countryCode"];
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
      v16 = [(BMSiriRequestContextAddress *)v53 initWithLabel:v50 street:v52 city:v48 state:v51 postalCode:v13 countryCode:v15];
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
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"postalCode"];
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
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"label"];
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
  [(BMSiriRequestContextAddress *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_label)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_street)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_city)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_state)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_postalCode)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = BMSiriRequestContextAddress;
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
  v4 = [(BMSiriRequestContextAddress *)self label];
  v5 = [(BMSiriRequestContextAddress *)self street];
  v6 = [(BMSiriRequestContextAddress *)self city];
  v7 = [(BMSiriRequestContextAddress *)self state];
  v8 = [(BMSiriRequestContextAddress *)self postalCode];
  v9 = [(BMSiriRequestContextAddress *)self countryCode];
  v10 = [v3 initWithFormat:@"BMSiriRequestContextAddress with label: %@, street: %@, city: %@, state: %@, postalCode: %@, countryCode: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMSiriRequestContextAddress)initWithLabel:(id)a3 street:(id)a4 city:(id)a5 state:(id)a6 postalCode:(id)a7 countryCode:(id)a8
{
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = BMSiriRequestContextAddress;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_label, a3);
    objc_storeStrong(&v18->_street, a4);
    objc_storeStrong(&v18->_city, a5);
    objc_storeStrong(&v18->_state, a6);
    objc_storeStrong(&v18->_postalCode, a7);
    objc_storeStrong(&v18->_countryCode, a8);
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