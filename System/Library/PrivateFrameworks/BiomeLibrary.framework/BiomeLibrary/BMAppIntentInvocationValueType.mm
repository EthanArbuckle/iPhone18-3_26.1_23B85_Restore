@interface BMAppIntentInvocationValueType
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppIntentInvocationValueType)initWithContainerType:(int)a3 array:(id)a4 entity:(id)a5 legacyIntent:(int)a6 linkEnumeration:(id)a7 measurement:(int)a8 primitive:(int)a9;
- (BMAppIntentInvocationValueType)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppIntentInvocationValueType *)self containerType];
    if (v6 == [v5 containerType])
    {
      v7 = [(BMAppIntentInvocationValueType *)self array];
      v8 = [v5 array];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMAppIntentInvocationValueType *)self array];
        v11 = [v5 array];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_19;
        }
      }

      v14 = [(BMAppIntentInvocationValueType *)self entity];
      v15 = [v5 entity];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMAppIntentInvocationValueType *)self entity];
        v18 = [v5 entity];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_19;
        }
      }

      v20 = [(BMAppIntentInvocationValueType *)self legacyIntent];
      if (v20 == [v5 legacyIntent])
      {
        v21 = [(BMAppIntentInvocationValueType *)self linkEnumeration];
        v22 = [v5 linkEnumeration];
        v23 = v22;
        if (v21 == v22)
        {
        }

        else
        {
          v24 = [(BMAppIntentInvocationValueType *)self linkEnumeration];
          v25 = [v5 linkEnumeration];
          v26 = [v24 isEqual:v25];

          if (!v26)
          {
            goto LABEL_19;
          }
        }

        v27 = [(BMAppIntentInvocationValueType *)self measurement];
        if (v27 == [v5 measurement])
        {
          v28 = [(BMAppIntentInvocationValueType *)self primitive];
          v13 = v28 == [v5 primitive];
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
  v4 = [(BMAppIntentInvocationValueType *)self array];
  v5 = [v4 jsonDictionary];

  v6 = [(BMAppIntentInvocationValueType *)self entity];
  v7 = [v6 jsonDictionary];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntentInvocationValueType legacyIntent](self, "legacyIntent")}];
  v9 = [(BMAppIntentInvocationValueType *)self linkEnumeration];
  v10 = [v9 jsonDictionary];

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntentInvocationValueType measurement](self, "measurement")}];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntentInvocationValueType primitive](self, "primitive")}];
  v28[0] = @"containerType";
  v13 = v3;
  if (!v3)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v13;
  v29[0] = v13;
  v28[1] = @"array";
  v14 = v5;
  if (!v5)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v14;
  v29[1] = v14;
  v28[2] = @"entity";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v3;
  v23 = v15;
  v29[2] = v15;
  v28[3] = @"legacyIntent";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v5;
  v29[3] = v16;
  v28[4] = @"linkEnumeration";
  v17 = v10;
  if (!v10)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = v17;
  v28[5] = @"measurement";
  v18 = v11;
  if (!v11)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = v18;
  v28[6] = @"primitive";
  v19 = v12;
  if (!v12)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:7];
  if (v12)
  {
    if (v11)
    {
      goto LABEL_17;
    }

LABEL_27:

    if (v10)
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
  if (v10)
  {
    goto LABEL_18;
  }

LABEL_28:

LABEL_18:
  if (!v8)
  {
  }

  if (v7)
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

- (BMAppIntentInvocationValueType)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v113[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"containerType"];
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
        if (!a4)
        {
          v7 = 0;
          a4 = 0;
          goto LABEL_77;
        }

        v37 = a4;
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v112 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"containerType"];
        v113[0] = v18;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:&v112 count:1];
        v40 = [v38 initWithDomain:v39 code:2 userInfo:v10];
        v7 = 0;
        a4 = 0;
        *v37 = v40;
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

  v9 = [v5 objectForKeyedSubscript:@"array"];
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
      if (a4)
      {
        v19 = v19;
        *a4 = v19;
      }

      a4 = 0;
      goto LABEL_75;
    }

LABEL_12:
    v11 = [v5 objectForKeyedSubscript:@"entity"];
    v94 = v11;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
LABEL_73:

          goto LABEL_74;
        }

        v93 = a4;
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
        a4 = 0;
        *v93 = v36;
LABEL_72:

        goto LABEL_73;
      }

      v14 = v12;
      v98 = 0;
      v95 = [[BMAppIntentInvocationValueTypeEntity alloc] initWithJSONDictionary:v14 error:&v98];
      v20 = v98;
      if (v20)
      {
        if (a4)
        {
          v20 = v20;
          *a4 = v20;
        }

        a4 = 0;
        goto LABEL_72;
      }
    }

    else
    {
      v95 = 0;
    }

    v13 = [v5 objectForKeyedSubscript:@"legacyIntent"];
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
          if (!a4)
          {
            v14 = 0;
            goto LABEL_71;
          }

          v63 = a4;
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
          a4 = 0;
          *v63 = v69;
          goto LABEL_68;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentInvocationValueTypeLegacyIntentFromString(v13)];
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = [v5 objectForKeyedSubscript:@"linkEnumeration"];
    v83 = v13;
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          goto LABEL_70;
        }

        v88 = v9;
        v41 = v5;
        v42 = v14;
        v43 = a4;
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
        *v43 = [v44 initWithDomain:v50 code:2 userInfo:v49];
        v14 = v42;
        v5 = v41;
        v9 = v88;

        a4 = 0;
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
        if (a4)
        {
          v22 = v22;
          *a4 = v22;
        }

        a4 = 0;
        goto LABEL_69;
      }

      v87 = v10;
    }

    else
    {
      v87 = v10;
      v92 = 0;
    }

    v16 = [v5 objectForKeyedSubscript:@"measurement"];
    v89 = v7;
    v17 = a4;
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
          if (!a4)
          {
            v84 = 0;
            a4 = 0;
            goto LABEL_67;
          }

          v60 = self;
          v85 = objc_alloc(MEMORY[0x1E696ABC0]);
          v70 = *MEMORY[0x1E698F240];
          v102 = *MEMORY[0x1E696A578];
          v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"measurement"];
          v103 = v55;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v71 = [v85 initWithDomain:v70 code:2 userInfo:v51];
          v84 = 0;
          a4 = 0;
          *v17 = v71;
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

    v51 = [v5 objectForKeyedSubscript:@"primitive"];
    v81 = v15;
    v82 = v16;
    if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = v5;
        v54 = v95;
        v53 = self;
        v56 = v51;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v60 = self;
          if (a4)
          {
            v80 = objc_alloc(MEMORY[0x1E696ABC0]);
            v79 = *MEMORY[0x1E698F240];
            v100 = *MEMORY[0x1E696A578];
            v72 = v5;
            v73 = v14;
            v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"primitive"];
            v101 = v74;
            v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
            *v17 = [v80 initWithDomain:v79 code:2 userInfo:v75];

            v14 = v73;
            v5 = v72;
          }

          v55 = 0;
          a4 = 0;
          goto LABEL_66;
        }

        v52 = v5;
        v54 = v95;
        v53 = self;
        v56 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentInvocationValueTypePrimitiveFromString(v51)];
      }

      v55 = v56;
    }

    else
    {
      v52 = v5;
      v54 = v95;
      v53 = self;
      v55 = 0;
    }

    v57 = [v89 intValue];
    v58 = [v14 intValue];
    v59 = [v84 intValue];
    LODWORD(v76) = [v55 intValue];
    v95 = v54;
    a4 = [(BMAppIntentInvocationValueType *)v53 initWithContainerType:v57 array:v87 entity:v54 legacyIntent:v58 linkEnumeration:v92 measurement:v59 primitive:v76];
    v60 = a4;
    v5 = v52;
    v15 = v81;
    v16 = v82;
LABEL_66:
    self = v60;

LABEL_67:
    v13 = v83;

    v21 = v15;
    v7 = v89;
LABEL_68:
    v10 = v87;
    goto LABEL_69;
  }

  if (a4)
  {
    v23 = a4;
    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v25 = v7;
    v26 = *MEMORY[0x1E698F240];
    v110 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"array"];
    v111 = v10;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    v28 = v26;
    v7 = v25;
    *v23 = [v24 initWithDomain:v28 code:2 userInfo:v27];

    a4 = 0;
LABEL_74:
    v18 = v9;
LABEL_75:

    v9 = v18;
  }

LABEL_77:
  v61 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntentInvocationValueType *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  containerType = self->_containerType;
  PBDataWriterWriteUint32Field();
  if (self->_array)
  {
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationValueTypeArray *)self->_array writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_entity)
  {
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationValueTypeEntity *)self->_entity writeTo:v4];
    PBDataWriterRecallMark();
  }

  legacyIntent = self->_legacyIntent;
  PBDataWriterWriteUint32Field();
  if (self->_linkEnumeration)
  {
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationValueTypeLinkEnumeration *)self->_linkEnumeration writeTo:v4];
    PBDataWriterRecallMark();
  }

  measurement = self->_measurement;
  PBDataWriterWriteUint32Field();
  primitive = self->_primitive;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = BMAppIntentInvocationValueType;
  v5 = [(BMEventBase *)&v45 init];
  if (!v5)
  {
    goto LABEL_95;
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
        LOBYTE(v46) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v27 = [v4 position] + 1;
              if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
              {
                v29 = [v4 data];
                [v29 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if (([v4 hasError] & 1) != 0 || v20 > 8)
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

            v16 = [[BMAppIntentInvocationValueTypeArray alloc] initByReadFrom:v4];
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

            v16 = [[BMAppIntentInvocationValueTypeEntity alloc] initByReadFrom:v4];
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
              v37 = [v4 position] + 1;
              if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 1, v38 <= objc_msgSend(v4, "length")))
              {
                v39 = [v4 data];
                [v39 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if (([v4 hasError] & 1) != 0 || v20 > 0x17)
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
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if (([v4 hasError] & 1) != 0 || v20 > 0xD)
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
            v32 = [v4 position] + 1;
            if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
            {
              v34 = [v4 data];
              [v34 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if (([v4 hasError] & 1) != 0 || v20 > 0xF)
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

        v16 = [[BMAppIntentInvocationValueTypeLinkEnumeration alloc] initByReadFrom:v4];
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
      v42 = [v4 position];
    }

    while (v42 < [v4 length]);
  }

  if ([v4 hasError])
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
  v5 = [(BMAppIntentInvocationValueType *)self array];
  v6 = [(BMAppIntentInvocationValueType *)self entity];
  v7 = BMAppIntentInvocationValueTypeLegacyIntentAsString([(BMAppIntentInvocationValueType *)self legacyIntent]);
  v8 = [(BMAppIntentInvocationValueType *)self linkEnumeration];
  v9 = BMAppIntentInvocationValueTypeMeasurementUnitAsString([(BMAppIntentInvocationValueType *)self measurement]);
  v10 = BMAppIntentInvocationValueTypePrimitiveAsString([(BMAppIntentInvocationValueType *)self primitive]);
  v11 = [v3 initWithFormat:@"BMAppIntentInvocationValueType with containerType: %@, array: %@, entity: %@, legacyIntent: %@, linkEnumeration: %@, measurement: %@, primitive: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMAppIntentInvocationValueType)initWithContainerType:(int)a3 array:(id)a4 entity:(id)a5 legacyIntent:(int)a6 linkEnumeration:(id)a7 measurement:(int)a8 primitive:(int)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v21.receiver = self;
  v21.super_class = BMAppIntentInvocationValueType;
  v19 = [(BMEventBase *)&v21 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    v19->_containerType = a3;
    objc_storeStrong(&v19->_array, a4);
    objc_storeStrong(&v19->_entity, a5);
    v19->_legacyIntent = a6;
    objc_storeStrong(&v19->_linkEnumeration, a7);
    v19->_measurement = a8;
    v19->_primitive = a9;
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