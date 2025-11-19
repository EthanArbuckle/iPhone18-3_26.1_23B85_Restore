@interface BMSiriRemembersFieldFieldValue
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriRemembersFieldFieldValue)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriRemembersFieldFieldValue)initWithValueSequence:(id)a3 valueDictionary:(id)a4 value:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_valueDictionaryJSONArray;
- (id)_valueSequenceJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriRemembersFieldFieldValue

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriRemembersFieldFieldValue *)self valueSequence];
    v7 = [v5 valueSequence];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriRemembersFieldFieldValue *)self valueSequence];
      v10 = [v5 valueSequence];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(BMSiriRemembersFieldFieldValue *)self valueDictionary];
    v14 = [v5 valueDictionary];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriRemembersFieldFieldValue *)self valueDictionary];
      v17 = [v5 valueDictionary];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v19 = [(BMSiriRemembersFieldFieldValue *)self value];
    v20 = [v5 value];
    if (v19 == v20)
    {
      v12 = 1;
    }

    else
    {
      v21 = [(BMSiriRemembersFieldFieldValue *)self value];
      v22 = [v5 value];
      v12 = [v21 isEqual:v22];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriRemembersFieldFieldValue *)self _valueSequenceJSONArray];
  v4 = [(BMSiriRemembersFieldFieldValue *)self _valueDictionaryJSONArray];
  v5 = [(BMSiriRemembersFieldFieldValue *)self value];
  v6 = [v5 jsonDictionary];

  v13[0] = @"valueSequence";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v7;
  v13[1] = @"valueDictionary";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v8;
  v13[2] = @"value";
  v9 = v6;
  if (!v6)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (v6)
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
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_valueDictionaryJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMSiriRemembersFieldFieldValue *)self valueDictionary];
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

- (id)_valueSequenceJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMSiriRemembersFieldFieldValue *)self valueSequence];
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

- (BMSiriRemembersFieldFieldValue)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v92[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"valueSequence"];
  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:v7];

  v64 = v5;
  if (v8)
  {
    v62 = self;

    v6 = 0;
  }

  else
  {
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v28 = 0;
          goto LABEL_61;
        }

        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v91 = *MEMORY[0x1E696A578];
        v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"valueSequence"];
        v92[0] = v65;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:&v91 count:1];
        v28 = 0;
        *a4 = [v40 initWithDomain:v41 code:2 userInfo:v42];
LABEL_46:
        v29 = v42;
        goto LABEL_60;
      }
    }

    v62 = self;
  }

  v65 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v6 = v6;
  v9 = [v6 countByEnumeratingWithState:&v73 objects:v90 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = *v74;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v74 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v73 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = a4;
        if (a4)
        {
          v22 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v88 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"valueSequence"];
          v89 = v14;
          v24 = MEMORY[0x1E695DF20];
          v25 = &v89;
          v26 = &v88;
          goto LABEL_22;
        }

LABEL_47:
        v28 = 0;
        v29 = v6;
        v5 = v64;
        self = v62;
        goto LABEL_60;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = a4;
        if (!a4)
        {
          goto LABEL_47;
        }

        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"valueSequence"];
        v87 = v14;
        v24 = MEMORY[0x1E695DF20];
        v25 = &v87;
        v26 = &v86;
LABEL_22:
        v27 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
        v28 = 0;
        *v21 = [v22 initWithDomain:v23 code:2 userInfo:v27];
        v29 = v6;
LABEL_23:
        v5 = v64;
LABEL_27:
        self = v62;
        goto LABEL_59;
      }

      v14 = v13;
      v15 = [BMSiriRemembersFieldFieldValueBasicValue alloc];
      v72 = 0;
      v16 = [(BMSiriRemembersFieldFieldValueBasicValue *)v15 initWithJSONDictionary:v14 error:&v72];
      v17 = v72;
      if (v17)
      {
        v27 = v17;
        v5 = v64;
        if (a4)
        {
          v30 = v17;
          *a4 = v27;
        }

        v28 = 0;
        v29 = v6;
        goto LABEL_27;
      }

      [v65 addObject:v16];
    }

    v10 = [v6 countByEnumeratingWithState:&v73 objects:v90 count:16];
  }

  while (v10);
LABEL_16:

  v5 = v64;
  v18 = [v64 objectForKeyedSubscript:@"valueDictionary"];
  v19 = [MEMORY[0x1E695DFB0] null];
  v20 = [v18 isEqual:v19];

  if (v20)
  {

    v18 = 0;
    goto LABEL_30;
  }

  if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v42 = v18;
      self = v62;
      if (a4)
      {
        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"valueDictionary"];
        v85 = v14;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v28 = 0;
        *a4 = [v54 initWithDomain:v55 code:2 userInfo:v27];
        v29 = v42;
        goto LABEL_59;
      }

      v28 = 0;
      goto LABEL_46;
    }
  }

LABEL_30:
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v18;
  v31 = [obj countByEnumeratingWithState:&v68 objects:v83 count:16];
  if (!v31)
  {
    goto LABEL_40;
  }

  v32 = v31;
  v33 = *v69;
  while (2)
  {
    v34 = 0;
    while (2)
    {
      if (*v69 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v68 + 1) + 8 * v34);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = a4;
        if (a4)
        {
          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v81 = *MEMORY[0x1E696A578];
          v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"valueDictionary"];
          v82 = v36;
          v46 = MEMORY[0x1E695DF20];
          v47 = &v82;
          v48 = &v81;
LABEL_53:
          v49 = [v46 dictionaryWithObjects:v47 forKeys:v48 count:1];
          *v43 = [v44 initWithDomain:v45 code:2 userInfo:v49];

LABEL_57:
          v28 = 0;
          v29 = obj;
          self = v62;
          v27 = obj;
          v5 = v64;
          goto LABEL_58;
        }

LABEL_64:
        v28 = 0;
        v29 = obj;
        v27 = obj;
        goto LABEL_23;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v43 = a4;
        if (a4)
        {
          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v79 = *MEMORY[0x1E696A578];
          v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"valueDictionary"];
          v80 = v36;
          v46 = MEMORY[0x1E695DF20];
          v47 = &v80;
          v48 = &v79;
          goto LABEL_53;
        }

        goto LABEL_64;
      }

      v36 = v35;
      v37 = [BMSiriRemembersFieldFieldValueNamedValue alloc];
      v67 = 0;
      v38 = [(BMSiriRemembersFieldFieldValueNamedValue *)v37 initWithJSONDictionary:v36 error:&v67];
      v39 = v67;
      if (v39)
      {
        v50 = v39;
        if (a4)
        {
          v51 = v39;
          *a4 = v50;
        }

        goto LABEL_57;
      }

      [v14 addObject:v38];

      if (v32 != ++v34)
      {
        continue;
      }

      break;
    }

    v32 = [obj countByEnumeratingWithState:&v68 objects:v83 count:16];
    v5 = v64;
    if (v32)
    {
      continue;
    }

    break;
  }

LABEL_40:
  v29 = obj;

  v27 = [v5 objectForKeyedSubscript:@"value"];
  if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v36 = 0;
    self = v62;
    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v56 = v27;
    v66 = 0;
    v36 = [[BMSiriRemembersFieldFieldValueBasicValue alloc] initWithJSONDictionary:v56 error:&v66];
    v57 = v66;
    self = v62;
    if (v57)
    {
      if (a4)
      {
        v57 = v57;
        *a4 = v57;
      }

      v28 = 0;
      v27 = v56;
    }

    else
    {

LABEL_43:
      self = [(BMSiriRemembersFieldFieldValue *)self initWithValueSequence:v65 valueDictionary:v14 value:v36];
      v28 = self;
    }

LABEL_58:
  }

  else
  {
    if (a4)
    {
      v58 = objc_alloc(MEMORY[0x1E696ABC0]);
      v59 = *MEMORY[0x1E698F240];
      v77 = *MEMORY[0x1E696A578];
      v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"value"];
      v78 = v36;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      *a4 = [v58 initWithDomain:v59 code:2 userInfo:v60];

      v28 = 0;
      v29 = obj;
      self = v62;
      goto LABEL_58;
    }

    v28 = 0;
    v29 = obj;
    self = v62;
  }

LABEL_59:

LABEL_60:
LABEL_61:

  v52 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriRemembersFieldFieldValue *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_valueSequence;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v22 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:v4];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_valueDictionary;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        v22 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:{v4, v18}];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v13);
  }

  if (self->_value)
  {
    v22 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriRemembersFieldFieldValueBasicValue *)self->_value writeTo:v4];
    PBDataWriterRecallMark();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMSiriRemembersFieldFieldValue;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [v4 position];
  if (v8 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v12 = [v4 position] + 1;
        if (v12 >= [v4 position] && (v13 = objc_msgSend(v4, "position") + 1, v13 <= objc_msgSend(v4, "length")))
        {
          v14 = [v4 data];
          [v14 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v11 |= (v33 & 0x7F) << v9;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        if (v10++ >= 9)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [v4 hasError] ? 0 : v11;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) == 3)
      {
        v33 = 0;
        v34 = 0;
        if (!PBReaderPlaceMark() || (v22 = [[BMSiriRemembersFieldFieldValueBasicValue alloc] initByReadFrom:v4]) == 0)
        {
LABEL_35:

          goto LABEL_36;
        }

        value = v5->_value;
        v5->_value = v22;

        PBReaderRecallMark();
      }

      else
      {
        if (v17 == 2)
        {
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_35;
          }

          v21 = [[BMSiriRemembersFieldFieldValueNamedValue alloc] initByReadFrom:v4];
          if (!v21)
          {
            goto LABEL_35;
          }

          v19 = v21;
          v20 = v7;
          goto LABEL_27;
        }

        if (v17 == 1)
        {
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_35;
          }

          v18 = [[BMSiriRemembersFieldFieldValueBasicValue alloc] initByReadFrom:v4];
          if (!v18)
          {
            goto LABEL_35;
          }

          v19 = v18;
          v20 = v6;
LABEL_27:
          [v20 addObject:v19];
          PBReaderRecallMark();

          goto LABEL_32;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

LABEL_32:
      v24 = [v4 position];
    }

    while (v24 < [v4 length]);
  }

  v25 = [v6 copy];
  valueSequence = v5->_valueSequence;
  v5->_valueSequence = v25;

  v27 = [v7 copy];
  valueDictionary = v5->_valueDictionary;
  v5->_valueDictionary = v27;

  v29 = [v4 hasError];
  if (v29)
  {
LABEL_36:
    v30 = 0;
  }

  else
  {
LABEL_34:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriRemembersFieldFieldValue *)self valueSequence];
  v5 = [(BMSiriRemembersFieldFieldValue *)self valueDictionary];
  v6 = [(BMSiriRemembersFieldFieldValue *)self value];
  v7 = [v3 initWithFormat:@"BMSiriRemembersFieldFieldValue with valueSequence: %@, valueDictionary: %@, value: %@", v4, v5, v6];

  return v7;
}

- (BMSiriRemembersFieldFieldValue)initWithValueSequence:(id)a3 valueDictionary:(id)a4 value:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14.receiver = self;
  v14.super_class = BMSiriRemembersFieldFieldValue;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_valueSequence, a3);
    objc_storeStrong(&v12->_valueDictionary, a4);
    objc_storeStrong(&v12->_value, a5);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"valueSequence" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"valueDictionary" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"valueSequence_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_205];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"valueDictionary_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_207];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"value_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_209];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __41__BMSiriRemembersFieldFieldValue_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 value];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __41__BMSiriRemembersFieldFieldValue_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _valueDictionaryJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __41__BMSiriRemembersFieldFieldValue_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _valueSequenceJSONArray];
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

    v8 = [[BMSiriRemembersFieldFieldValue alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end