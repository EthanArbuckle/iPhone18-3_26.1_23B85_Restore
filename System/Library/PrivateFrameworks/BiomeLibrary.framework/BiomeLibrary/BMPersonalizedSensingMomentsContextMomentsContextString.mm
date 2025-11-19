@interface BMPersonalizedSensingMomentsContextMomentsContextString
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMPersonalizedSensingMomentsContextMomentsContextString)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMPersonalizedSensingMomentsContextMomentsContextString)initWithTextString:(id)a3 stringIdentifier:(id)a4 dimensions:(id)a5 contentType:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSUUID)stringIdentifier;
- (id)_dimensionsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPersonalizedSensingMomentsContextMomentsContextString

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)self textString];
    v7 = [v5 textString];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)self textString];
      v10 = [v5 textString];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_20;
      }
    }

    v13 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)self stringIdentifier];
    v14 = [v5 stringIdentifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)self stringIdentifier];
      v17 = [v5 stringIdentifier];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_20;
      }
    }

    v19 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)self dimensions];
    v20 = [v5 dimensions];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)self dimensions];
      v23 = [v5 dimensions];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_20;
      }
    }

    if (!-[BMPersonalizedSensingMomentsContextMomentsContextString hasContentType](self, "hasContentType") && ![v5 hasContentType])
    {
      v12 = 1;
      goto LABEL_21;
    }

    if (-[BMPersonalizedSensingMomentsContextMomentsContextString hasContentType](self, "hasContentType") && [v5 hasContentType])
    {
      v25 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)self contentType];
      v12 = v25 == [v5 contentType];
LABEL_21:

      goto LABEL_22;
    }

LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  v12 = 0;
LABEL_22:

  return v12;
}

- (NSUUID)stringIdentifier
{
  raw_stringIdentifier = self->_raw_stringIdentifier;
  if (raw_stringIdentifier)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_stringIdentifier toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)self textString];
  v4 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)self stringIdentifier];
  v5 = [v4 UUIDString];

  v6 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)self _dimensionsJSONArray];
  if ([(BMPersonalizedSensingMomentsContextMomentsContextString *)self hasContentType])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContextString contentType](self, "contentType")}];
  }

  else
  {
    v7 = 0;
  }

  v15[0] = @"textString";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v8;
  v15[1] = @"stringIdentifier";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v9;
  v15[2] = @"dimensions";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v10;
  v15[3] = @"contentType";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v6)
    {
LABEL_14:
      if (v5)
      {
        goto LABEL_15;
      }

LABEL_21:

      if (v3)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  if (!v5)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_22:

LABEL_16:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_dimensionsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)self dimensions];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMPersonalizedSensingMomentsContextMomentsContextString)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v83[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"textString"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v82 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"textString"];
        v83[0] = v8;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:&v82 count:1];
        v28 = [v26 initWithDomain:v27 code:2 userInfo:v9];
        v7 = 0;
        v29 = 0;
        *a4 = v28;
        goto LABEL_53;
      }

      v7 = 0;
      v29 = 0;
      goto LABEL_55;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"stringIdentifier"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v78 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"stringIdentifier"];
        v79 = v9;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        *a4 = [v30 initWithDomain:v31 code:2 userInfo:v32];

        v29 = 0;
        goto LABEL_53;
      }

      v29 = 0;
      goto LABEL_54;
    }

    v23 = v8;
    v24 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v23];
    if (!v24)
    {
      v8 = v23;
      if (a4)
      {
        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = v7;
        v48 = *MEMORY[0x1E698F240];
        v80 = *MEMORY[0x1E696A578];
        v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"stringIdentifier"];
        v81 = v49;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v51 = v48;
        v7 = v47;
        *a4 = [v46 initWithDomain:v51 code:2 userInfo:v50];
      }

      v29 = 0;
      v9 = v8;
      goto LABEL_53;
    }

    v25 = v24;
    v61 = v8;

    v9 = v25;
  }

  else
  {
    v61 = v8;
    v9 = 0;
  }

  v10 = [v5 objectForKeyedSubscript:@"dimensions"];
  v11 = [MEMORY[0x1E695DFB0] null];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    v57 = v9;
    v58 = v7;
    v59 = v6;
    v60 = self;

    v10 = 0;
  }

  else
  {
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = *MEMORY[0x1E698F240];
          v76 = *MEMORY[0x1E696A578];
          v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"dimensions"];
          v77 = v63;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v43 = [v41 initWithDomain:v42 code:2 userInfo:v22];
          v29 = 0;
          *a4 = v43;
          goto LABEL_51;
        }

        v29 = 0;
        goto LABEL_52;
      }
    }

    v57 = v9;
    v58 = v7;
    v59 = v6;
    v60 = self;
  }

  v63 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v10 = v10;
  v13 = [v10 countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = v13;
  v15 = *v66;
  v56 = v5;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v66 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v65 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = a4;
        if (a4)
        {
          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v73 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"dimensions"];
          v74 = v18;
          v36 = MEMORY[0x1E695DF20];
          v37 = &v74;
          v38 = &v73;
LABEL_38:
          v39 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:1];
          *v33 = [v34 initWithDomain:v35 code:2 userInfo:v39];
LABEL_42:

          v29 = 0;
          v22 = v10;
          v5 = v56;
          v9 = v57;
          self = v60;
          v7 = v58;
          goto LABEL_50;
        }

LABEL_45:
        v29 = 0;
        v22 = v10;
        v5 = v56;
        v9 = v57;
        v6 = v59;
        self = v60;
        v7 = v58;
        goto LABEL_51;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v33 = a4;
        if (a4)
        {
          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v71 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"dimensions"];
          v72 = v18;
          v36 = MEMORY[0x1E695DF20];
          v37 = &v72;
          v38 = &v71;
          goto LABEL_38;
        }

        goto LABEL_45;
      }

      v18 = v17;
      v19 = [BMPersonalizedSensingMomentsContextDimension alloc];
      v64 = 0;
      v20 = [(BMPersonalizedSensingMomentsContextDimension *)v19 initWithJSONDictionary:v18 error:&v64];
      v21 = v64;
      if (v21)
      {
        v39 = v21;
        if (a4)
        {
          v40 = v21;
          *a4 = v39;
        }

        goto LABEL_42;
      }

      [v63 addObject:v20];
    }

    v14 = [v10 countByEnumeratingWithState:&v65 objects:v75 count:16];
    v5 = v56;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v18 = [v5 objectForKeyedSubscript:@"contentType"];
  if (!v18)
  {
    v22 = 0;
    self = v60;
    v9 = v57;
    v7 = v58;
    goto LABEL_49;
  }

  objc_opt_class();
  self = v60;
  v9 = v57;
  v7 = v58;
  if (objc_opt_isKindOfClass())
  {
    v22 = 0;
    goto LABEL_49;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v18;
LABEL_49:
    self = [(BMPersonalizedSensingMomentsContextMomentsContextString *)self initWithTextString:v7 stringIdentifier:v9 dimensions:v63 contentType:v22];
    v29 = self;
  }

  else
  {
    if (a4)
    {
      v55 = objc_alloc(MEMORY[0x1E696ABC0]);
      v52 = *MEMORY[0x1E698F240];
      v69 = *MEMORY[0x1E696A578];
      v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"contentType"];
      v70 = v53;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      *a4 = [v55 initWithDomain:v52 code:2 userInfo:v54];
    }

    v22 = 0;
    v29 = 0;
  }

LABEL_50:

  v6 = v59;
LABEL_51:

LABEL_52:
  v8 = v61;
LABEL_53:

LABEL_54:
LABEL_55:

  v44 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPersonalizedSensingMomentsContextMomentsContextString *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_textString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_raw_stringIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_dimensions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_hasContentType)
  {
    contentType = self->_contentType;
    PBDataWriterWriteUint32Field();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMPersonalizedSensingMomentsContextMomentsContextString;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_47;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_45;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v36[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v36 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v36[0] & 0x7F) << v8;
        if ((v36[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_45;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      if (v16 != 3)
      {
        if (v16 == 4)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v5->_hasContentType = 1;
          while (1)
          {
            LOBYTE(v36[0]) = 0;
            v22 = [v4 position] + 1;
            if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
            {
              v24 = [v4 data];
              [v24 getBytes:v36 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v21 |= (v36[0] & 0x7F) << v19;
            if ((v36[0] & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v14 = v20++ >= 9;
            if (v14)
            {
              v25 = 0;
              goto LABEL_43;
            }
          }

          if ([v4 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v21;
          }

LABEL_43:
          v5->_contentType = v25;
          goto LABEL_44;
        }

LABEL_33:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_44;
      }

      v36[0] = 0;
      v36[1] = 0;
      if (!PBReaderPlaceMark() || (v27 = [[BMPersonalizedSensingMomentsContextDimension alloc] initByReadFrom:v4]) == 0)
      {
LABEL_49:

        goto LABEL_46;
      }

      v28 = v27;
      [v6 addObject:v27];
      PBReaderRecallMark();

LABEL_44:
      v29 = [v4 position];
      if (v29 >= [v4 length])
      {
        goto LABEL_45;
      }
    }

    if (v16 == 1)
    {
      v17 = PBReaderReadString();
      v18 = 40;
      goto LABEL_36;
    }

    if (v16 == 2)
    {
      v17 = PBReaderReadString();
      v18 = 16;
LABEL_36:
      v26 = *(&v5->super.super.isa + v18);
      *(&v5->super.super.isa + v18) = v17;

      goto LABEL_44;
    }

    goto LABEL_33;
  }

LABEL_45:
  v30 = [v6 copy];
  dimensions = v5->_dimensions;
  v5->_dimensions = v30;

  v32 = [v4 hasError];
  if (v32)
  {
LABEL_46:
    v33 = 0;
  }

  else
  {
LABEL_47:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)self textString];
  v5 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)self stringIdentifier];
  v6 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)self dimensions];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContextString contentType](self, "contentType")}];
  v8 = [v3 initWithFormat:@"BMPersonalizedSensingMomentsContextMomentsContextString with textString: %@, stringIdentifier: %@, dimensions: %@, contentType: %@", v4, v5, v6, v7];

  return v8;
}

- (BMPersonalizedSensingMomentsContextMomentsContextString)initWithTextString:(id)a3 stringIdentifier:(id)a4 dimensions:(id)a5 contentType:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = BMPersonalizedSensingMomentsContextMomentsContextString;
  v15 = [(BMEventBase *)&v20 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_textString, a3);
    if (v12)
    {
      v16 = [v12 UUIDString];
    }

    else
    {
      v16 = 0;
    }

    raw_stringIdentifier = v15->_raw_stringIdentifier;
    v15->_raw_stringIdentifier = v16;

    objc_storeStrong(&v15->_dimensions, a5);
    if (v14)
    {
      v15->_hasContentType = 1;
      v18 = [v14 unsignedIntValue];
    }

    else
    {
      v18 = 0;
      v15->_hasContentType = 0;
    }

    v15->_contentType = v18;
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"textString" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stringIdentifier" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dimensions" number:3 type:14 subMessageClass:objc_opt_class()];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentType" number:4 type:4 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"textString" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stringIdentifier" dataType:6 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:3];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"dimensions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_522];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __66__BMPersonalizedSensingMomentsContextMomentsContextString_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _dimensionsJSONArray];
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

    v8 = [[BMPersonalizedSensingMomentsContextMomentsContextString alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end