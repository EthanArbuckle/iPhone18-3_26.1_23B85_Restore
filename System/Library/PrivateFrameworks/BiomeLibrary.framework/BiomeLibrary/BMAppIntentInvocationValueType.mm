@interface BMAppIntentInvocationValueType
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppIntentInvocationValueType)initWithContainerType:(int)type array:(id)array entity:(id)entity legacyIntent:(int)intent linkEnumeration:(id)enumeration measurement:(int)measurement primitive:(int)primitive;
- (BMAppIntentInvocationValueType)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppIntentInvocationValueType

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containerType" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"array" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entity" number:3 type:14 subMessageClass:objc_opt_class()];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"legacyIntent" number:4 type:4 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"linkEnumeration" number:5 type:14 subMessageClass:objc_opt_class()];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"measurement" number:6 type:4 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"primitive" number:7 type:4 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    containerType = [(BMAppIntentInvocationValueType *)self containerType];
    if (containerType == [v5 containerType])
    {
      array = [(BMAppIntentInvocationValueType *)self array];
      array2 = [v5 array];
      v9 = array2;
      if (array == array2)
      {
      }

      else
      {
        array3 = [(BMAppIntentInvocationValueType *)self array];
        array4 = [v5 array];
        v12 = [array3 isEqual:array4];

        if (!v12)
        {
          goto LABEL_19;
        }
      }

      entity = [(BMAppIntentInvocationValueType *)self entity];
      entity2 = [v5 entity];
      v16 = entity2;
      if (entity == entity2)
      {
      }

      else
      {
        entity3 = [(BMAppIntentInvocationValueType *)self entity];
        entity4 = [v5 entity];
        v19 = [entity3 isEqual:entity4];

        if (!v19)
        {
          goto LABEL_19;
        }
      }

      legacyIntent = [(BMAppIntentInvocationValueType *)self legacyIntent];
      if (legacyIntent == [v5 legacyIntent])
      {
        linkEnumeration = [(BMAppIntentInvocationValueType *)self linkEnumeration];
        linkEnumeration2 = [v5 linkEnumeration];
        v23 = linkEnumeration2;
        if (linkEnumeration == linkEnumeration2)
        {
        }

        else
        {
          linkEnumeration3 = [(BMAppIntentInvocationValueType *)self linkEnumeration];
          linkEnumeration4 = [v5 linkEnumeration];
          v26 = [linkEnumeration3 isEqual:linkEnumeration4];

          if (!v26)
          {
            goto LABEL_19;
          }
        }

        measurement = [(BMAppIntentInvocationValueType *)self measurement];
        if (measurement == [v5 measurement])
        {
          primitive = [(BMAppIntentInvocationValueType *)self primitive];
          v13 = primitive == [v5 primitive];
LABEL_20:

          goto LABEL_21;
        }
      }
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v13 = 0;
LABEL_21:

  return v13;
}

- (id)jsonDictionary
{
  v29[7] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntentInvocationValueType containerType](self, "containerType")}];
  array = [(BMAppIntentInvocationValueType *)self array];
  jsonDictionary = [array jsonDictionary];

  entity = [(BMAppIntentInvocationValueType *)self entity];
  jsonDictionary2 = [entity jsonDictionary];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntentInvocationValueType legacyIntent](self, "legacyIntent")}];
  linkEnumeration = [(BMAppIntentInvocationValueType *)self linkEnumeration];
  jsonDictionary3 = [linkEnumeration jsonDictionary];

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntentInvocationValueType measurement](self, "measurement")}];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntentInvocationValueType primitive](self, "primitive")}];
  v28[0] = @"containerType";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v29[0] = null;
  v28[1] = @"array";
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null2;
  v29[1] = null2;
  v28[2] = @"entity";
  null3 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v3;
  v23 = null3;
  v29[2] = null3;
  v28[3] = @"legacyIntent";
  null4 = v8;
  if (!v8)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = jsonDictionary;
  v29[3] = null4;
  v28[4] = @"linkEnumeration";
  null5 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = null5;
  v28[5] = @"measurement";
  null6 = v11;
  if (!v11)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = null6;
  v28[6] = @"primitive";
  null7 = v12;
  if (!v12)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = null7;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:7];
  if (v12)
  {
    if (v11)
    {
      goto LABEL_17;
    }

LABEL_27:

    if (jsonDictionary3)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if (!v11)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (jsonDictionary3)
  {
    goto LABEL_18;
  }

LABEL_28:

LABEL_18:
  if (!v8)
  {
  }

  if (jsonDictionary2)
  {
    if (v26)
    {
      goto LABEL_22;
    }

LABEL_30:

    if (v27)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  if (!v26)
  {
    goto LABEL_30;
  }

LABEL_22:
  if (v27)
  {
    goto LABEL_23;
  }

LABEL_31:

LABEL_23:
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BMAppIntentInvocationValueType)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v113[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"containerType"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v7 = 0;
          error = 0;
          goto LABEL_77;
        }

        errorCopy = error;
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v112 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"containerType"];
        v113[0] = v18;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:&v112 count:1];
        v40 = [v38 initWithDomain:v39 code:2 userInfo:v10];
        v7 = 0;
        error = 0;
        *errorCopy = v40;
        goto LABEL_75;
      }

      v8 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentInvocationValueTypeContainerTypeFromString(v6)];
    }

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"array"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v9;
    v99 = 0;
    v10 = [[BMAppIntentInvocationValueTypeArray alloc] initWithJSONDictionary:v18 error:&v99];
    v19 = v99;
    if (v19)
    {
      if (error)
      {
        v19 = v19;
        *error = v19;
      }

      error = 0;
      goto LABEL_75;
    }

LABEL_12:
    v11 = [dictionaryCopy objectForKeyedSubscript:@"entity"];
    v94 = v11;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
LABEL_73:

          goto LABEL_74;
        }

        errorCopy2 = error;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v90 = v7;
        v31 = *MEMORY[0x1E698F240];
        v108 = *MEMORY[0x1E696A578];
        v32 = v10;
        v33 = objc_alloc(MEMORY[0x1E696AEC0]);
        v77 = objc_opt_class();
        v34 = v33;
        v10 = v32;
        v95 = [v34 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v77, @"entity"];
        v109 = v95;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
        v35 = v31;
        v7 = v90;
        v36 = [v30 initWithDomain:v35 code:2 userInfo:v14];
        error = 0;
        *errorCopy2 = v36;
LABEL_72:

        goto LABEL_73;
      }

      v14 = v12;
      v98 = 0;
      v95 = [[BMAppIntentInvocationValueTypeEntity alloc] initWithJSONDictionary:v14 error:&v98];
      v20 = v98;
      if (v20)
      {
        if (error)
        {
          v20 = v20;
          *error = v20;
        }

        error = 0;
        goto LABEL_72;
      }
    }

    else
    {
      v95 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"legacyIntent"];
    v86 = v6;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v87 = v10;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v14 = 0;
            goto LABEL_71;
          }

          errorCopy3 = error;
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = v7;
          v66 = *MEMORY[0x1E698F240];
          v106 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"legacyIntent"];
          v107 = v21;
          v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
          v68 = v66;
          v7 = v65;
          v92 = v67;
          v69 = [v64 initWithDomain:v68 code:2 userInfo:?];
          v14 = 0;
          error = 0;
          *errorCopy3 = v69;
          goto LABEL_68;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentInvocationValueTypeLegacyIntentFromString(v13)];
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"linkEnumeration"];
    v83 = v13;
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          goto LABEL_70;
        }

        v88 = v9;
        v41 = dictionaryCopy;
        v42 = v14;
        errorCopy4 = error;
        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v91 = v7;
        v45 = *MEMORY[0x1E698F240];
        v104 = *MEMORY[0x1E696A578];
        v46 = v10;
        v47 = objc_alloc(MEMORY[0x1E696AEC0]);
        v78 = objc_opt_class();
        v48 = v47;
        v10 = v46;
        v92 = [v48 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v78, @"linkEnumeration"];
        v105 = v92;
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
        v50 = v45;
        v7 = v91;
        *errorCopy4 = [v44 initWithDomain:v50 code:2 userInfo:v49];
        v14 = v42;
        dictionaryCopy = v41;
        v9 = v88;

        error = 0;
        v21 = v15;
LABEL_69:

        v15 = v21;
LABEL_70:

        v6 = v86;
LABEL_71:

        goto LABEL_72;
      }

      v21 = v15;
      v97 = 0;
      v92 = [[BMAppIntentInvocationValueTypeLinkEnumeration alloc] initWithJSONDictionary:v21 error:&v97];
      v22 = v97;
      if (v22)
      {
        if (error)
        {
          v22 = v22;
          *error = v22;
        }

        error = 0;
        goto LABEL_69;
      }

      v87 = v10;
    }

    else
    {
      v87 = v10;
      v92 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"measurement"];
    v89 = v7;
    errorCopy5 = error;
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v16;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v84 = 0;
            error = 0;
            goto LABEL_67;
          }

          errorCopy6 = self;
          v85 = objc_alloc(MEMORY[0x1E696ABC0]);
          v70 = *MEMORY[0x1E698F240];
          v102 = *MEMORY[0x1E696A578];
          v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"measurement"];
          v103 = v55;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v71 = [v85 initWithDomain:v70 code:2 userInfo:v51];
          v84 = 0;
          error = 0;
          *errorCopy5 = v71;
          goto LABEL_66;
        }

        v29 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentInvocationValueTypeMeasurementUnitFromString(v16)];
      }

      v84 = v29;
    }

    else
    {
      v84 = 0;
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"primitive"];
    v81 = v15;
    v82 = v16;
    if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = dictionaryCopy;
        v54 = v95;
        selfCopy5 = self;
        v56 = v51;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          errorCopy6 = self;
          if (error)
          {
            v80 = objc_alloc(MEMORY[0x1E696ABC0]);
            v79 = *MEMORY[0x1E698F240];
            v100 = *MEMORY[0x1E696A578];
            v72 = dictionaryCopy;
            v73 = v14;
            v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"primitive"];
            v101 = v74;
            v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
            *errorCopy5 = [v80 initWithDomain:v79 code:2 userInfo:v75];

            v14 = v73;
            dictionaryCopy = v72;
          }

          v55 = 0;
          error = 0;
          goto LABEL_66;
        }

        v52 = dictionaryCopy;
        v54 = v95;
        selfCopy5 = self;
        v56 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentInvocationValueTypePrimitiveFromString(v51)];
      }

      v55 = v56;
    }

    else
    {
      v52 = dictionaryCopy;
      v54 = v95;
      selfCopy5 = self;
      v55 = 0;
    }

    intValue = [v89 intValue];
    intValue2 = [v14 intValue];
    intValue3 = [v84 intValue];
    LODWORD(v76) = [v55 intValue];
    v95 = v54;
    error = [(BMAppIntentInvocationValueType *)selfCopy5 initWithContainerType:intValue array:v87 entity:v54 legacyIntent:intValue2 linkEnumeration:v92 measurement:intValue3 primitive:v76];
    errorCopy6 = error;
    dictionaryCopy = v52;
    v15 = v81;
    v16 = v82;
LABEL_66:
    self = errorCopy6;

LABEL_67:
    v13 = v83;

    v21 = v15;
    v7 = v89;
LABEL_68:
    v10 = v87;
    goto LABEL_69;
  }

  if (error)
  {
    errorCopy7 = error;
    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v25 = v7;
    v26 = *MEMORY[0x1E698F240];
    v110 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"array"];
    v111 = v10;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    v28 = v26;
    v7 = v25;
    *errorCopy7 = [v24 initWithDomain:v28 code:2 userInfo:v27];

    error = 0;
LABEL_74:
    v18 = v9;
LABEL_75:

    v9 = v18;
  }

LABEL_77:
  v61 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntentInvocationValueType *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  containerType = self->_containerType;
  PBDataWriterWriteUint32Field();
  if (self->_array)
  {
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationValueTypeArray *)self->_array writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_entity)
  {
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationValueTypeEntity *)self->_entity writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  legacyIntent = self->_legacyIntent;
  PBDataWriterWriteUint32Field();
  if (self->_linkEnumeration)
  {
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationValueTypeLinkEnumeration *)self->_linkEnumeration writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  measurement = self->_measurement;
  PBDataWriterWriteUint32Field();
  primitive = self->_primitive;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v45.receiver = self;
  v45.super_class = BMAppIntentInvocationValueType;
  v5 = [(BMEventBase *)&v45 init];
  if (!v5)
  {
    goto LABEL_95;
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
        LOBYTE(v46) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v46 & 0x7F) << v7;
        if ((v46 & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        switch(v15)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v46) = 0;
              v27 = [fromCopy position] + 1;
              if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (v46 & 0x7F) << v25;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v24 = v26++ > 8;
              if (v24)
              {
                goto LABEL_77;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v20 > 8)
            {
LABEL_77:
              LODWORD(v20) = 0;
            }

            v41 = 20;
            goto LABEL_91;
          case 2:
            v46 = 0;
            v47 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_94;
            }

            v16 = [[BMAppIntentInvocationValueTypeArray alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_94;
            }

            v17 = 40;
            break;
          case 3:
            v46 = 0;
            v47 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_94;
            }

            v16 = [[BMAppIntentInvocationValueTypeEntity alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_94;
            }

            v17 = 48;
            break;
          default:
            goto LABEL_51;
        }
      }

      else
      {
        if (v15 > 5)
        {
          if (v15 == 6)
          {
            v35 = 0;
            v36 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v46) = 0;
              v37 = [fromCopy position] + 1;
              if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (v46 & 0x7F) << v35;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v24 = v36++ > 8;
              if (v24)
              {
                goto LABEL_85;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v20 > 0x17)
            {
LABEL_85:
              LODWORD(v20) = 0;
            }

            v41 = 28;
          }

          else
          {
            if (v15 != 7)
            {
LABEL_51:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_94;
              }

              goto LABEL_92;
            }

            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v46) = 0;
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (v46 & 0x7F) << v18;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v24 = v19++ > 8;
              if (v24)
              {
                goto LABEL_89;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v20 > 0xD)
            {
LABEL_89:
              LODWORD(v20) = 0;
            }

            v41 = 32;
          }

          goto LABEL_91;
        }

        if (v15 == 4)
        {
          v30 = 0;
          v31 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v46) = 0;
            v32 = [fromCopy position] + 1;
            if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v46 & 0x7F) << v30;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v24 = v31++ > 8;
            if (v24)
            {
              goto LABEL_81;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v20 > 0xF)
          {
LABEL_81:
            LODWORD(v20) = 0;
          }

          v41 = 24;
LABEL_91:
          *(&v5->super.super.isa + v41) = v20;
          goto LABEL_92;
        }

        if (v15 != 5)
        {
          goto LABEL_51;
        }

        v46 = 0;
        v47 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_94;
        }

        v16 = [[BMAppIntentInvocationValueTypeLinkEnumeration alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_94;
        }

        v17 = 56;
      }

      v40 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

      PBReaderRecallMark();
LABEL_92:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_94:
    v43 = 0;
  }

  else
  {
LABEL_95:
    v43 = v5;
  }

  return v43;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMAppIntentInvocationValueTypeContainerTypeAsString([(BMAppIntentInvocationValueType *)self containerType]);
  array = [(BMAppIntentInvocationValueType *)self array];
  entity = [(BMAppIntentInvocationValueType *)self entity];
  v7 = BMAppIntentInvocationValueTypeLegacyIntentAsString([(BMAppIntentInvocationValueType *)self legacyIntent]);
  linkEnumeration = [(BMAppIntentInvocationValueType *)self linkEnumeration];
  v9 = BMAppIntentInvocationValueTypeMeasurementUnitAsString([(BMAppIntentInvocationValueType *)self measurement]);
  v10 = BMAppIntentInvocationValueTypePrimitiveAsString([(BMAppIntentInvocationValueType *)self primitive]);
  v11 = [v3 initWithFormat:@"BMAppIntentInvocationValueType with containerType: %@, array: %@, entity: %@, legacyIntent: %@, linkEnumeration: %@, measurement: %@, primitive: %@", v4, array, entity, v7, linkEnumeration, v9, v10];

  return v11;
}

- (BMAppIntentInvocationValueType)initWithContainerType:(int)type array:(id)array entity:(id)entity legacyIntent:(int)intent linkEnumeration:(id)enumeration measurement:(int)measurement primitive:(int)primitive
{
  arrayCopy = array;
  entityCopy = entity;
  enumerationCopy = enumeration;
  v21.receiver = self;
  v21.super_class = BMAppIntentInvocationValueType;
  v19 = [(BMEventBase *)&v21 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    v19->_containerType = type;
    objc_storeStrong(&v19->_array, array);
    objc_storeStrong(&v19->_entity, entity);
    v19->_legacyIntent = intent;
    objc_storeStrong(&v19->_linkEnumeration, enumeration);
    v19->_measurement = measurement;
    v19->_primitive = primitive;
  }

  return v19;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containerType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"array_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_717_42016];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"entity_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_719];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"legacyIntent" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"linkEnumeration_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_721];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"measurement" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"primitive" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __41__BMAppIntentInvocationValueType_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 linkEnumeration];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __41__BMAppIntentInvocationValueType_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 entity];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __41__BMAppIntentInvocationValueType_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 array];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMAppIntentInvocationValueType alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end