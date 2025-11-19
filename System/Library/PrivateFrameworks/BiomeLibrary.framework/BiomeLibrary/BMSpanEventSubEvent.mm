@interface BMSpanEventSubEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSpanEventSubEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSpanEventSubEvent)initWithName:(id)a3 privatizedTimeStamp:(id)a4 details:(id)a5 attributes:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_attributesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSpanEventSubEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSpanEventSubEvent *)self name];
    v7 = [v5 name];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSpanEventSubEvent *)self name];
      v10 = [v5 name];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_14;
      }
    }

    if (-[BMSpanEventSubEvent hasPrivatizedTimeStamp](self, "hasPrivatizedTimeStamp") || [v5 hasPrivatizedTimeStamp])
    {
      if (![(BMSpanEventSubEvent *)self hasPrivatizedTimeStamp])
      {
        goto LABEL_14;
      }

      if (![v5 hasPrivatizedTimeStamp])
      {
        goto LABEL_14;
      }

      v13 = [(BMSpanEventSubEvent *)self privatizedTimeStamp];
      if (v13 != [v5 privatizedTimeStamp])
      {
        goto LABEL_14;
      }
    }

    v14 = [(BMSpanEventSubEvent *)self details];
    v15 = [v5 details];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMSpanEventSubEvent *)self details];
      v18 = [v5 details];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
LABEL_14:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v21 = [(BMSpanEventSubEvent *)self attributes];
    v22 = [v5 attributes];
    if (v21 == v22)
    {
      v12 = 1;
    }

    else
    {
      v23 = [(BMSpanEventSubEvent *)self attributes];
      v24 = [v5 attributes];
      v12 = [v23 isEqual:v24];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMSpanEventSubEvent *)self name];
  if ([(BMSpanEventSubEvent *)self hasPrivatizedTimeStamp])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEventSubEvent privatizedTimeStamp](self, "privatizedTimeStamp")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(BMSpanEventSubEvent *)self details];
  v6 = [(BMSpanEventSubEvent *)self _attributesJSONArray];
  v14[0] = @"name";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v7;
  v14[1] = @"privatizedTimeStamp";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"details";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v9;
  v14[3] = @"attributes";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v5)
    {
LABEL_14:
      if (v4)
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

  if (!v4)
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
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_attributesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMSpanEventSubEvent *)self attributes];
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

- (BMSpanEventSubEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v79[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"name"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v78 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
        v79[0] = v10;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:&v78 count:1];
        v8 = 0;
        v26 = 0;
        *a4 = [v27 initWithDomain:v28 code:2 userInfo:v9];
        goto LABEL_52;
      }

      v8 = 0;
      v26 = 0;
      goto LABEL_53;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"privatizedTimeStamp"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v76 = *MEMORY[0x1E696A578];
        v31 = a4;
        a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"privatizedTimeStamp"];
        v77 = a4;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        v33 = v29;
        v12 = v32;
        v26 = 0;
        *v31 = [v33 initWithDomain:v30 code:2 userInfo:v32];
        v10 = 0;
        goto LABEL_51;
      }

      v10 = 0;
      v26 = 0;
      goto LABEL_52;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 objectForKeyedSubscript:@"details"];
  v60 = v7;
  v61 = v10;
  v58 = v11;
  v59 = v9;
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = a4;
        v36 = *MEMORY[0x1E698F240];
        v74 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"details"];
        v75 = v13;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v37 = [v34 initWithDomain:v36 code:2 userInfo:v16];
        a4 = 0;
        v26 = 0;
        *v35 = v37;
LABEL_48:
        v10 = v61;
        goto LABEL_49;
      }

      v26 = 0;
      goto LABEL_51;
    }

    v57 = v12;
  }

  else
  {
    v57 = 0;
  }

  v13 = [v6 objectForKeyedSubscript:@"attributes"];
  v14 = [MEMORY[0x1E695DFB0] null];
  v15 = [v13 isEqual:v14];

  if (v15)
  {
    v54 = a4;
    v55 = v8;
    v56 = self;

    v13 = 0;
  }

  else
  {
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v50 = *MEMORY[0x1E698F240];
          v72 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"attributes"];
          v73 = v16;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
          v52 = v51 = a4;
          *v51 = [v49 initWithDomain:v50 code:2 userInfo:v52];
          v10 = v61;

          v26 = 0;
          a4 = v57;
          goto LABEL_49;
        }

        v26 = 0;
        a4 = v57;
        goto LABEL_50;
      }
    }

    v54 = a4;
    v55 = v8;
    v56 = self;
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
  v53 = v6;
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
        v6 = v53;
        v38 = v54;
        self = v56;
        a4 = v57;
        if (v54)
        {
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v69 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"attributes"];
          v70 = v22;
          v41 = MEMORY[0x1E695DF20];
          v42 = &v70;
          v43 = &v69;
LABEL_42:
          v44 = [v41 dictionaryWithObjects:v42 forKeys:v43 count:1];
          v45 = v39;
          a4 = v57;
          *v38 = [v45 initWithDomain:v40 code:2 userInfo:v44];
LABEL_46:
        }

LABEL_47:

        v26 = 0;
        v8 = v55;
        goto LABEL_48;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = v53;
        v38 = v54;
        self = v56;
        a4 = v57;
        if (v54)
        {
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v67 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"attributes"];
          v68 = v22;
          v41 = MEMORY[0x1E695DF20];
          v42 = &v68;
          v43 = &v67;
          goto LABEL_42;
        }

        goto LABEL_47;
      }

      v22 = v21;
      v23 = [BMSpanEventAttribute alloc];
      v62 = 0;
      v24 = [(BMSpanEventAttribute *)v23 initWithJSONDictionary:v22 error:&v62];
      v25 = v62;
      if (v25)
      {
        v44 = v25;
        if (v54)
        {
          v46 = v25;
          *v54 = v44;
        }

        v6 = v53;
        self = v56;
        a4 = v57;
        goto LABEL_46;
      }

      [v16 addObject:v24];
    }

    v18 = [v13 countByEnumeratingWithState:&v63 objects:v71 count:16];
    v6 = v53;
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v8 = v55;
  a4 = v57;
  self = [(BMSpanEventSubEvent *)v56 initWithName:v55 privatizedTimeStamp:v10 details:v57 attributes:v16];
  v26 = self;
LABEL_49:

LABEL_50:
  v9 = v59;
  v7 = v60;
  v12 = v58;
LABEL_51:

LABEL_52:
LABEL_53:

  v47 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSpanEventSubEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPrivatizedTimeStamp)
  {
    privatizedTimeStamp = self->_privatizedTimeStamp;
    PBDataWriterWriteUint32Field();
  }

  if (self->_details)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_attributes;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v11 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMSpanEventSubEvent;
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

      if (v16 == 3)
      {
        v26 = PBReaderReadString();
        v27 = 40;
        goto LABEL_39;
      }

      if (v16 != 4)
      {
        goto LABEL_35;
      }

      v36[0] = 0;
      v36[1] = 0;
      if (!PBReaderPlaceMark() || (v24 = [[BMSpanEventAttribute alloc] initByReadFrom:v4]) == 0)
      {
LABEL_49:

        goto LABEL_46;
      }

      v25 = v24;
      [v6 addObject:v24];
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
      v26 = PBReaderReadString();
      v27 = 32;
LABEL_39:
      v28 = *(&v5->super.super.isa + v27);
      *(&v5->super.super.isa + v27) = v26;

      goto LABEL_44;
    }

    if (v16 == 2)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v5->_hasPrivatizedTimeStamp = 1;
      while (1)
      {
        LOBYTE(v36[0]) = 0;
        v20 = [v4 position] + 1;
        if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
        {
          v22 = [v4 data];
          [v22 getBytes:v36 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v19 |= (v36[0] & 0x7F) << v17;
        if ((v36[0] & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v14 = v18++ >= 9;
        if (v14)
        {
          v23 = 0;
          goto LABEL_43;
        }
      }

      if ([v4 hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v19;
      }

LABEL_43:
      v5->_privatizedTimeStamp = v23;
      goto LABEL_44;
    }

LABEL_35:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

LABEL_45:
  v30 = [v6 copy];
  attributes = v5->_attributes;
  v5->_attributes = v30;

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
  v4 = [(BMSpanEventSubEvent *)self name];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEventSubEvent privatizedTimeStamp](self, "privatizedTimeStamp")}];
  v6 = [(BMSpanEventSubEvent *)self details];
  v7 = [(BMSpanEventSubEvent *)self attributes];
  v8 = [v3 initWithFormat:@"BMSpanEventSubEvent with name: %@, privatizedTimeStamp: %@, details: %@, attributes: %@", v4, v5, v6, v7];

  return v8;
}

- (BMSpanEventSubEvent)initWithName:(id)a3 privatizedTimeStamp:(id)a4 details:(id)a5 attributes:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = BMSpanEventSubEvent;
  v15 = [(BMEventBase *)&v18 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_name, a3);
    if (v12)
    {
      v15->_hasPrivatizedTimeStamp = 1;
      v16 = [v12 unsignedIntValue];
    }

    else
    {
      v16 = 0;
      v15->_hasPrivatizedTimeStamp = 0;
    }

    v15->_privatizedTimeStamp = v16;
    objc_storeStrong(&v15->_details, a5);
    objc_storeStrong(&v15->_attributes, a6);
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"privatizedTimeStamp" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"details" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attributes" number:4 type:14 subMessageClass:objc_opt_class()];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"privatizedTimeStamp" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"details" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"attributes_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_241];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __30__BMSpanEventSubEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _attributesJSONArray];
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

    v8 = [[BMSpanEventSubEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end