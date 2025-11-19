@interface BMHumanUnderstandingPersonalInferenceFact
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMHumanUnderstandingPersonalInferenceFact)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMHumanUnderstandingPersonalInferenceFact)initWithSubjectID:(id)a3 subjectAlias:(id)a4 subjectIsa:(id)a5 predicateID:(id)a6 objectID:(id)a7 objectAlias:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_subjectIsaJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMHumanUnderstandingPersonalInferenceFact

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMHumanUnderstandingPersonalInferenceFact *)self subjectID];
    v7 = [v5 subjectID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMHumanUnderstandingPersonalInferenceFact *)self subjectID];
      v10 = [v5 subjectID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMHumanUnderstandingPersonalInferenceFact *)self subjectAlias];
    v14 = [v5 subjectAlias];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMHumanUnderstandingPersonalInferenceFact *)self subjectAlias];
      v17 = [v5 subjectAlias];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = [(BMHumanUnderstandingPersonalInferenceFact *)self subjectIsa];
    v20 = [v5 subjectIsa];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMHumanUnderstandingPersonalInferenceFact *)self subjectIsa];
      v23 = [v5 subjectIsa];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    v25 = [(BMHumanUnderstandingPersonalInferenceFact *)self predicateID];
    v26 = [v5 predicateID];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMHumanUnderstandingPersonalInferenceFact *)self predicateID];
      v29 = [v5 predicateID];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    v31 = [(BMHumanUnderstandingPersonalInferenceFact *)self objectID];
    v32 = [v5 objectID];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMHumanUnderstandingPersonalInferenceFact *)self objectID];
      v35 = [v5 objectID];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
LABEL_21:
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    v38 = [(BMHumanUnderstandingPersonalInferenceFact *)self objectAlias];
    v39 = [v5 objectAlias];
    if (v38 == v39)
    {
      v12 = 1;
    }

    else
    {
      v40 = [(BMHumanUnderstandingPersonalInferenceFact *)self objectAlias];
      v41 = [v5 objectAlias];
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
  v3 = [(BMHumanUnderstandingPersonalInferenceFact *)self subjectID];
  v4 = [(BMHumanUnderstandingPersonalInferenceFact *)self subjectAlias];
  v5 = [(BMHumanUnderstandingPersonalInferenceFact *)self _subjectIsaJSONArray];
  v6 = [(BMHumanUnderstandingPersonalInferenceFact *)self predicateID];
  v7 = [(BMHumanUnderstandingPersonalInferenceFact *)self objectID];
  v8 = [(BMHumanUnderstandingPersonalInferenceFact *)self objectAlias];
  v22[0] = @"subjectID";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v23[0] = v9;
  v22[1] = @"subjectAlias";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v10;
  v23[1] = v10;
  v22[2] = @"subjectIsa";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v23[2] = v11;
  v22[3] = @"predicateID";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v12;
  v22[4] = @"objectID";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v13;
  v22[5] = @"objectAlias";
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

- (id)_subjectIsaJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMHumanUnderstandingPersonalInferenceFact *)self subjectIsa];
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

- (BMHumanUnderstandingPersonalInferenceFact)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v87[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"subjectID"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v35 = a4;
        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subjectID"];
        v87[0] = v11;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
        v39 = [v36 initWithDomain:v37 code:2 userInfo:v38];
        v8 = 0;
        v29 = 0;
        *v35 = v39;
        v10 = v38;
        goto LABEL_71;
      }

      v8 = 0;
      v29 = 0;
      goto LABEL_72;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"subjectAlias"];
  v64 = v7;
  v65 = v9;
  v66 = v8;
  if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subjectAlias"];
        v85 = v12;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v11 = 0;
        v29 = 0;
        *a4 = [v40 initWithDomain:v41 code:2 userInfo:v15];
        goto LABEL_69;
      }

      v11 = 0;
      v29 = 0;
      goto LABEL_71;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 objectForKeyedSubscript:@"subjectIsa"];
  v13 = [MEMORY[0x1E695DFB0] null];
  v14 = [v12 isEqual:v13];

  if (v14)
  {
    v63 = self;

    v12 = 0;
  }

  else
  {
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v42 = objc_alloc(MEMORY[0x1E696ABC0]);
          v43 = self;
          v44 = *MEMORY[0x1E698F240];
          v82 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"subjectIsa"];
          v83 = v15;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          v45 = v44;
          self = v43;
          v29 = 0;
          *a4 = [v42 initWithDomain:v45 code:2 userInfo:v23];
          goto LABEL_68;
        }

        v29 = 0;
        goto LABEL_70;
      }
    }

    v63 = self;
  }

  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v12 = v12;
  v16 = [v12 countByEnumeratingWithState:&v67 objects:v81 count:16];
  v62 = v11;
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v16;
  v18 = *v68;
  while (2)
  {
    v19 = 0;
    do
    {
      if (*v68 != v18)
      {
        objc_enumerationMutation(v12);
      }

      v20 = *(*(&v67 + 1) + 8 * v19);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (a4)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v79 = *MEMORY[0x1E696A578];
          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"subjectIsa"];
          v80 = v61;
          v32 = MEMORY[0x1E695DF20];
          v33 = &v80;
          v34 = &v79;
LABEL_39:
          v26 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:1];
          v11 = v62;
          v29 = 0;
          *a4 = [v30 initWithDomain:v31 code:2 userInfo:v26];
          v23 = v12;
          goto LABEL_66;
        }

LABEL_42:
        v29 = 0;
        v23 = v12;
        v11 = v62;
        self = v63;
        goto LABEL_68;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v77 = *MEMORY[0x1E696A578];
          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subjectIsa"];
          v78 = v61;
          v32 = MEMORY[0x1E695DF20];
          v33 = &v78;
          v34 = &v77;
          goto LABEL_39;
        }

        goto LABEL_42;
      }

      [v15 addObject:v20];
      ++v19;
    }

    while (v17 != v19);
    v17 = [v12 countByEnumeratingWithState:&v67 objects:v81 count:16];
    v11 = v62;
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v21 = [v6 objectForKeyedSubscript:@"predicateID"];
  v61 = v21;
  if (v21)
  {
    v22 = v21;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
        v11 = v62;
        goto LABEL_24;
      }

      if (!a4)
      {
        v23 = 0;
        v29 = 0;
        v11 = v62;
        self = v63;
        goto LABEL_67;
      }

      v46 = objc_alloc(MEMORY[0x1E696ABC0]);
      v47 = *MEMORY[0x1E698F240];
      v75 = *MEMORY[0x1E696A578];
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"predicateID"];
      v76 = v26;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v49 = v47;
      v25 = v48;
      v50 = [v46 initWithDomain:v49 code:2 userInfo:v48];
      v23 = 0;
      v29 = 0;
      *a4 = v50;
      goto LABEL_75;
    }
  }

  v23 = 0;
LABEL_24:
  v24 = [v6 objectForKeyedSubscript:@"objectID"];
  v60 = v24;
  if (v24)
  {
    v25 = v24;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
        v11 = v62;
        goto LABEL_27;
      }

      if (a4)
      {
        v58 = objc_alloc(MEMORY[0x1E696ABC0]);
        v51 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"objectID"];
        v74 = v28;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v52 = [v58 initWithDomain:v51 code:2 userInfo:v27];
        v26 = 0;
        v29 = 0;
        *a4 = v52;
LABEL_63:
        v11 = v62;
        goto LABEL_64;
      }

      v26 = 0;
      v29 = 0;
LABEL_75:
      v11 = v62;
      goto LABEL_65;
    }
  }

  v26 = 0;
LABEL_27:
  v27 = [v6 objectForKeyedSubscript:@"objectAlias"];
  if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v28 = 0;
    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v59 = objc_alloc(MEMORY[0x1E696ABC0]);
      v57 = *MEMORY[0x1E698F240];
      v71 = *MEMORY[0x1E696A578];
      v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"objectAlias"];
      v72 = v53;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      *a4 = [v59 initWithDomain:v57 code:2 userInfo:v54];
    }

    v28 = 0;
    v29 = 0;
    goto LABEL_63;
  }

  v28 = v27;
  v11 = v62;
LABEL_30:
  v29 = [(BMHumanUnderstandingPersonalInferenceFact *)v63 initWithSubjectID:v66 subjectAlias:v11 subjectIsa:v15 predicateID:v23 objectID:v26 objectAlias:v28];
  v63 = v29;
LABEL_64:

  v25 = v60;
LABEL_65:

LABEL_66:
  self = v63;

  v22 = v61;
LABEL_67:

LABEL_68:
LABEL_69:

  v7 = v64;
LABEL_70:
  v8 = v66;

  v10 = v65;
LABEL_71:

LABEL_72:
  v55 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMHumanUnderstandingPersonalInferenceFact *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_subjectID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subjectAlias)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_subjectIsa;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_predicateID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_objectID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_objectAlias)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = BMHumanUnderstandingPersonalInferenceFact;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_39;
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
        v28 = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v28 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v28 & 0x7F) << v8;
        if ((v28 & 0x80) == 0)
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
      if ((v15 >> 3) > 3)
      {
        switch(v16)
        {
          case 4:
            v19 = PBReaderReadString();
            v20 = 48;
            goto LABEL_34;
          case 5:
            v19 = PBReaderReadString();
            v20 = 56;
LABEL_34:
            v18 = *(&v5->super.super.isa + v20);
            *(&v5->super.super.isa + v20) = v19;
LABEL_35:

            goto LABEL_36;
          case 6:
            v19 = PBReaderReadString();
            v20 = 64;
            goto LABEL_34;
        }
      }

      else
      {
        switch(v16)
        {
          case 1:
            v19 = PBReaderReadString();
            v20 = 24;
            goto LABEL_34;
          case 2:
            v19 = PBReaderReadString();
            v20 = 32;
            goto LABEL_34;
          case 3:
            v17 = PBReaderReadString();
            if (!v17)
            {
              goto LABEL_41;
            }

            v18 = v17;
            [v6 addObject:v17];
            goto LABEL_35;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_41:

        goto LABEL_38;
      }

LABEL_36:
      v21 = [v4 position];
    }

    while (v21 < [v4 length]);
  }

  v22 = [v6 copy];
  subjectIsa = v5->_subjectIsa;
  v5->_subjectIsa = v22;

  v24 = [v4 hasError];
  if (v24)
  {
LABEL_38:
    v25 = 0;
  }

  else
  {
LABEL_39:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMHumanUnderstandingPersonalInferenceFact *)self subjectID];
  v5 = [(BMHumanUnderstandingPersonalInferenceFact *)self subjectAlias];
  v6 = [(BMHumanUnderstandingPersonalInferenceFact *)self subjectIsa];
  v7 = [(BMHumanUnderstandingPersonalInferenceFact *)self predicateID];
  v8 = [(BMHumanUnderstandingPersonalInferenceFact *)self objectID];
  v9 = [(BMHumanUnderstandingPersonalInferenceFact *)self objectAlias];
  v10 = [v3 initWithFormat:@"BMHumanUnderstandingPersonalInferenceFact with subjectID: %@, subjectAlias: %@, subjectIsa: %@, predicateID: %@, objectID: %@, objectAlias: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMHumanUnderstandingPersonalInferenceFact)initWithSubjectID:(id)a3 subjectAlias:(id)a4 subjectIsa:(id)a5 predicateID:(id)a6 objectID:(id)a7 objectAlias:(id)a8
{
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = BMHumanUnderstandingPersonalInferenceFact;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_subjectID, a3);
    objc_storeStrong(&v18->_subjectAlias, a4);
    objc_storeStrong(&v18->_subjectIsa, a5);
    objc_storeStrong(&v18->_predicateID, a6);
    objc_storeStrong(&v18->_objectID, a7);
    objc_storeStrong(&v18->_objectAlias, a8);
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subjectID" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subjectAlias" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subjectIsa" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predicateID" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"objectID" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"objectAlias" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subjectID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subjectAlias" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"subjectIsa_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_84645];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predicateID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"objectID" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"objectAlias" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
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

id __52__BMHumanUnderstandingPersonalInferenceFact_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _subjectIsaJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMHumanUnderstandingPersonalInferenceFact alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[4] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end