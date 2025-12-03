@interface BMSiriRemembersFieldFieldValue
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriRemembersFieldFieldValue)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriRemembersFieldFieldValue)initWithValueSequence:(id)sequence valueDictionary:(id)dictionary value:(id)value;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_valueDictionaryJSONArray;
- (id)_valueSequenceJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriRemembersFieldFieldValue

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    valueSequence = [(BMSiriRemembersFieldFieldValue *)self valueSequence];
    valueSequence2 = [v5 valueSequence];
    v8 = valueSequence2;
    if (valueSequence == valueSequence2)
    {
    }

    else
    {
      valueSequence3 = [(BMSiriRemembersFieldFieldValue *)self valueSequence];
      valueSequence4 = [v5 valueSequence];
      v11 = [valueSequence3 isEqual:valueSequence4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    valueDictionary = [(BMSiriRemembersFieldFieldValue *)self valueDictionary];
    valueDictionary2 = [v5 valueDictionary];
    v15 = valueDictionary2;
    if (valueDictionary == valueDictionary2)
    {
    }

    else
    {
      valueDictionary3 = [(BMSiriRemembersFieldFieldValue *)self valueDictionary];
      valueDictionary4 = [v5 valueDictionary];
      v18 = [valueDictionary3 isEqual:valueDictionary4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    value = [(BMSiriRemembersFieldFieldValue *)self value];
    value2 = [v5 value];
    if (value == value2)
    {
      v12 = 1;
    }

    else
    {
      value3 = [(BMSiriRemembersFieldFieldValue *)self value];
      value4 = [v5 value];
      v12 = [value3 isEqual:value4];
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
  _valueSequenceJSONArray = [(BMSiriRemembersFieldFieldValue *)self _valueSequenceJSONArray];
  _valueDictionaryJSONArray = [(BMSiriRemembersFieldFieldValue *)self _valueDictionaryJSONArray];
  value = [(BMSiriRemembersFieldFieldValue *)self value];
  jsonDictionary = [value jsonDictionary];

  v13[0] = @"valueSequence";
  null = _valueSequenceJSONArray;
  if (!_valueSequenceJSONArray)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"valueDictionary";
  null2 = _valueDictionaryJSONArray;
  if (!_valueDictionaryJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"value";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (jsonDictionary)
  {
    if (_valueDictionaryJSONArray)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (_valueSequenceJSONArray)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!_valueDictionaryJSONArray)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (_valueSequenceJSONArray)
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
  valueDictionary = [(BMSiriRemembersFieldFieldValue *)self valueDictionary];
  v5 = [valueDictionary countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(valueDictionary);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [valueDictionary countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  valueSequence = [(BMSiriRemembersFieldFieldValue *)self valueSequence];
  v5 = [valueSequence countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(valueSequence);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [valueSequence countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriRemembersFieldFieldValue)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v92[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"valueSequence"];
  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:null];

  v64 = dictionaryCopy;
  if (v8)
  {
    selfCopy2 = self;

    v6 = 0;
  }

  else
  {
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          selfCopy3 = 0;
          goto LABEL_61;
        }

        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v91 = *MEMORY[0x1E696A578];
        v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"valueSequence"];
        v92[0] = v65;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:&v91 count:1];
        selfCopy3 = 0;
        *error = [v40 initWithDomain:v41 code:2 userInfo:v42];
LABEL_46:
        v29 = v42;
        goto LABEL_60;
      }
    }

    selfCopy2 = self;
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
        errorCopy2 = error;
        if (error)
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
        selfCopy3 = 0;
        v29 = v6;
        dictionaryCopy = v64;
        self = selfCopy2;
        goto LABEL_60;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy2 = error;
        if (!error)
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
        selfCopy3 = 0;
        *errorCopy2 = [v22 initWithDomain:v23 code:2 userInfo:v27];
        v29 = v6;
LABEL_23:
        dictionaryCopy = v64;
LABEL_27:
        self = selfCopy2;
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
        dictionaryCopy = v64;
        if (error)
        {
          v30 = v17;
          *error = v27;
        }

        selfCopy3 = 0;
        v29 = v6;
        goto LABEL_27;
      }

      [v65 addObject:v16];
    }

    v10 = [v6 countByEnumeratingWithState:&v73 objects:v90 count:16];
  }

  while (v10);
LABEL_16:

  dictionaryCopy = v64;
  v18 = [v64 objectForKeyedSubscript:@"valueDictionary"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v20 = [v18 isEqual:null2];

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
      self = selfCopy2;
      if (error)
      {
        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"valueDictionary"];
        v85 = v14;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        selfCopy3 = 0;
        *error = [v54 initWithDomain:v55 code:2 userInfo:v27];
        v29 = v42;
        goto LABEL_59;
      }

      selfCopy3 = 0;
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
        errorCopy4 = error;
        if (error)
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
          *errorCopy4 = [v44 initWithDomain:v45 code:2 userInfo:v49];

LABEL_57:
          selfCopy3 = 0;
          v29 = obj;
          self = selfCopy2;
          v27 = obj;
          dictionaryCopy = v64;
          goto LABEL_58;
        }

LABEL_64:
        selfCopy3 = 0;
        v29 = obj;
        v27 = obj;
        goto LABEL_23;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy4 = error;
        if (error)
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
        if (error)
        {
          v51 = v39;
          *error = v50;
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
    dictionaryCopy = v64;
    if (v32)
    {
      continue;
    }

    break;
  }

LABEL_40:
  v29 = obj;

  v27 = [dictionaryCopy objectForKeyedSubscript:@"value"];
  if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v36 = 0;
    self = selfCopy2;
    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v56 = v27;
    v66 = 0;
    v36 = [[BMSiriRemembersFieldFieldValueBasicValue alloc] initWithJSONDictionary:v56 error:&v66];
    v57 = v66;
    self = selfCopy2;
    if (v57)
    {
      if (error)
      {
        v57 = v57;
        *error = v57;
      }

      selfCopy3 = 0;
      v27 = v56;
    }

    else
    {

LABEL_43:
      self = [(BMSiriRemembersFieldFieldValue *)self initWithValueSequence:v65 valueDictionary:v14 value:v36];
      selfCopy3 = self;
    }

LABEL_58:
  }

  else
  {
    if (error)
    {
      v58 = objc_alloc(MEMORY[0x1E696ABC0]);
      v59 = *MEMORY[0x1E698F240];
      v77 = *MEMORY[0x1E696A578];
      v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"value"];
      v78 = v36;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      *error = [v58 initWithDomain:v59 code:2 userInfo:v60];

      selfCopy3 = 0;
      v29 = obj;
      self = selfCopy2;
      goto LABEL_58;
    }

    selfCopy3 = 0;
    v29 = obj;
    self = selfCopy2;
  }

LABEL_59:

LABEL_60:
LABEL_61:

  v52 = *MEMORY[0x1E69E9840];
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriRemembersFieldFieldValue *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
        [v10 writeTo:toCopy];
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
        [v16 writeTo:{toCopy, v18}];
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
    [(BMSiriRemembersFieldFieldValueBasicValue *)self->_value writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMSiriRemembersFieldFieldValue;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) == 3)
      {
        v33 = 0;
        v34 = 0;
        if (!PBReaderPlaceMark() || (v22 = [[BMSiriRemembersFieldFieldValueBasicValue alloc] initByReadFrom:fromCopy]) == 0)
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

          v21 = [[BMSiriRemembersFieldFieldValueNamedValue alloc] initByReadFrom:fromCopy];
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

          v18 = [[BMSiriRemembersFieldFieldValueBasicValue alloc] initByReadFrom:fromCopy];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v25 = [v6 copy];
  valueSequence = v5->_valueSequence;
  v5->_valueSequence = v25;

  v27 = [v7 copy];
  valueDictionary = v5->_valueDictionary;
  v5->_valueDictionary = v27;

  hasError = [fromCopy hasError];
  if (hasError)
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
  valueSequence = [(BMSiriRemembersFieldFieldValue *)self valueSequence];
  valueDictionary = [(BMSiriRemembersFieldFieldValue *)self valueDictionary];
  value = [(BMSiriRemembersFieldFieldValue *)self value];
  v7 = [v3 initWithFormat:@"BMSiriRemembersFieldFieldValue with valueSequence: %@, valueDictionary: %@, value: %@", valueSequence, valueDictionary, value];

  return v7;
}

- (BMSiriRemembersFieldFieldValue)initWithValueSequence:(id)sequence valueDictionary:(id)dictionary value:(id)value
{
  sequenceCopy = sequence;
  dictionaryCopy = dictionary;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = BMSiriRemembersFieldFieldValue;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_valueSequence, sequence);
    objc_storeStrong(&v12->_valueDictionary, dictionary);
    objc_storeStrong(&v12->_value, value);
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