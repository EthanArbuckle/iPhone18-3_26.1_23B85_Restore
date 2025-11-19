@interface BMAppIntentInvocationDisplayRepresentation
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppIntentInvocationDisplayRepresentation)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMAppIntentInvocationDisplayRepresentation)initWithTitle:(id)a3 subtitle:(id)a4 synonyms:(id)a5 image:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_synonymsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppIntentInvocationDisplayRepresentation

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:1 type:14 subMessageClass:objc_opt_class()];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subtitle" number:2 type:14 subMessageClass:objc_opt_class()];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"synonyms" number:4 type:14 subMessageClass:objc_opt_class()];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"image" number:5 type:14 subMessageClass:objc_opt_class()];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppIntentInvocationDisplayRepresentation *)self title];
    v7 = [v5 title];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAppIntentInvocationDisplayRepresentation *)self title];
      v10 = [v5 title];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v13 = [(BMAppIntentInvocationDisplayRepresentation *)self subtitle];
    v14 = [v5 subtitle];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMAppIntentInvocationDisplayRepresentation *)self subtitle];
      v17 = [v5 subtitle];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    v19 = [(BMAppIntentInvocationDisplayRepresentation *)self synonyms];
    v20 = [v5 synonyms];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMAppIntentInvocationDisplayRepresentation *)self synonyms];
      v23 = [v5 synonyms];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v25 = [(BMAppIntentInvocationDisplayRepresentation *)self image];
    v26 = [v5 image];
    if (v25 == v26)
    {
      v12 = 1;
    }

    else
    {
      v27 = [(BMAppIntentInvocationDisplayRepresentation *)self image];
      v28 = [v5 image];
      v12 = [v27 isEqual:v28];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMAppIntentInvocationDisplayRepresentation *)self title];
  v4 = [v3 jsonDictionary];

  v5 = [(BMAppIntentInvocationDisplayRepresentation *)self subtitle];
  v6 = [v5 jsonDictionary];

  v7 = [(BMAppIntentInvocationDisplayRepresentation *)self _synonymsJSONArray];
  v8 = [(BMAppIntentInvocationDisplayRepresentation *)self image];
  v9 = [v8 jsonDictionary];

  v17[0] = @"title";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v10;
  v17[1] = @"subtitle";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v11;
  v17[2] = @"synonyms";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v12;
  v17[3] = @"image";
  v13 = v9;
  if (!v9)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  if (v9)
  {
    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v7)
    {
LABEL_11:
      if (v6)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (v4)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v4)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_synonymsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMAppIntentInvocationDisplayRepresentation *)self synonyms];
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

- (BMAppIntentInvocationDisplayRepresentation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v88[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"title"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v87 = *MEMORY[0x1E696A578];
        v28 = v7;
        v29 = objc_alloc(MEMORY[0x1E696AEC0]);
        v58 = objc_opt_class();
        v30 = v29;
        v7 = v28;
        v88[0] = [v30 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v58, @"title"];
        v8 = v88[0];
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
        v32 = v27;
        v9 = v31;
        v14 = 0;
        *a4 = [v26 initWithDomain:v32 code:2 userInfo:v31];
        goto LABEL_59;
      }

      v14 = 0;
      goto LABEL_60;
    }

    v9 = v7;
    v75 = 0;
    v8 = [[BMAppIntentInvocationStaticDeferredLocalizedString alloc] initWithJSONDictionary:v9 error:&v75];
    v13 = v75;
    if (v13)
    {
      if (a4)
      {
        v13 = v13;
        *a4 = v13;
      }

      v14 = 0;
      goto LABEL_59;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"subtitle"];
  v66 = a4;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = v9;
        v35 = *MEMORY[0x1E698F240];
        v85 = *MEMORY[0x1E696A578];
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"subtitle"];
        v86 = v36;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v37 = v33;
        v38 = v35;
        v9 = v34;
        v39 = v36;
        v14 = 0;
        *v66 = [v37 initWithDomain:v38 code:2 userInfo:v10];
        goto LABEL_58;
      }

      v14 = 0;
      goto LABEL_59;
    }

    v10 = v9;
    v74 = 0;
    v65 = [[BMAppIntentInvocationStaticDeferredLocalizedString alloc] initWithJSONDictionary:v10 error:&v74];
    v25 = v74;
    if (v25)
    {
      if (v66)
      {
        v25 = v25;
        *v66 = v25;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v65 = 0;
  }

  v10 = [v6 objectForKeyedSubscript:@"synonyms"];
  v11 = [MEMORY[0x1E695DFB0] null];
  v12 = [v10 isEqual:v11];

  if (!v12)
  {
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v61 = v8;
      v62 = v7;
      v63 = self;
      goto LABEL_17;
    }

    if (v66)
    {
      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v50 = *MEMORY[0x1E698F240];
      v83 = *MEMORY[0x1E696A578];
      v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"synonyms"];
      v84 = v67;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      v51 = [v49 initWithDomain:v50 code:2 userInfo:v24];
      v14 = 0;
      *v66 = v51;
      goto LABEL_50;
    }

LABEL_51:
    v14 = 0;
    v39 = v65;
    goto LABEL_58;
  }

  v61 = v8;
  v62 = v7;
  v63 = self;

  v10 = 0;
LABEL_17:
  v67 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v10 = v10;
  v15 = [v10 countByEnumeratingWithState:&v70 objects:v82 count:16];
  v64 = v9;
  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = v15;
  v17 = *v71;
  v60 = v6;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v71 != v17)
      {
        objc_enumerationMutation(v10);
      }

      v19 = *(*(&v70 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = v66;
        if (v66)
        {
          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = *MEMORY[0x1E698F240];
          v80 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"synonyms"];
          v81 = v20;
          v43 = MEMORY[0x1E695DF20];
          v44 = &v81;
          v45 = &v80;
LABEL_43:
          v46 = [v43 dictionaryWithObjects:v44 forKeys:v45 count:1];
          *v40 = [v41 initWithDomain:v42 code:2 userInfo:v46];

          v14 = 0;
          v24 = v10;
          v6 = v60;
          v7 = v62;
          self = v63;
          goto LABEL_47;
        }

LABEL_52:
        v14 = 0;
        v24 = v10;
        v6 = v60;
        v8 = v61;
        v7 = v62;
        self = v63;
        v9 = v64;
        v39 = v65;
        goto LABEL_57;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v40 = v66;
        if (v66)
        {
          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = *MEMORY[0x1E698F240];
          v78 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"synonyms"];
          v79 = v20;
          v43 = MEMORY[0x1E695DF20];
          v44 = &v79;
          v45 = &v78;
          goto LABEL_43;
        }

        goto LABEL_52;
      }

      v20 = v19;
      v21 = [BMAppIntentInvocationStaticDeferredLocalizedString alloc];
      v69 = 0;
      v22 = [(BMAppIntentInvocationStaticDeferredLocalizedString *)v21 initWithJSONDictionary:v20 error:&v69];
      v23 = v69;
      if (v23)
      {
        v47 = v23;
        v7 = v62;
        if (v66)
        {
          v48 = v23;
          *v66 = v47;
        }

        v14 = 0;
        v24 = v10;
        v6 = v60;
        self = v63;
        goto LABEL_47;
      }

      [v67 addObject:v22];
    }

    v16 = [v10 countByEnumeratingWithState:&v70 objects:v82 count:16];
    v6 = v60;
    v9 = v64;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v24 = [v6 objectForKeyedSubscript:@"image"];
  if (!v24)
  {
    v20 = 0;
    v7 = v62;
    self = v63;
LABEL_54:
    v8 = v61;
    v39 = v65;
    goto LABEL_55;
  }

  objc_opt_class();
  v7 = v62;
  self = v63;
  if (objc_opt_isKindOfClass())
  {
    v20 = 0;
    goto LABEL_54;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v66)
    {
      v59 = objc_alloc(MEMORY[0x1E696ABC0]);
      v56 = *MEMORY[0x1E698F240];
      v76 = *MEMORY[0x1E696A578];
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"image"];
      v77 = v20;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      *v66 = [v59 initWithDomain:v56 code:2 userInfo:v57];

      v14 = 0;
LABEL_47:
      v8 = v61;
      v39 = v65;
      goto LABEL_56;
    }

    v14 = 0;
    v8 = v61;
LABEL_50:
    v39 = v65;
    goto LABEL_57;
  }

  v54 = v24;
  v68 = 0;
  v20 = [[BMAppIntentInvocationImage alloc] initWithJSONDictionary:v54 error:&v68];
  v55 = v68;
  v8 = v61;
  v39 = v65;
  if (!v55)
  {

LABEL_55:
    self = [(BMAppIntentInvocationDisplayRepresentation *)self initWithTitle:v8 subtitle:v39 synonyms:v67 image:v20];
    v14 = self;
    goto LABEL_56;
  }

  if (v66)
  {
    v55 = v55;
    *v66 = v55;
  }

  v14 = 0;
  v24 = v54;
LABEL_56:

  v9 = v64;
LABEL_57:

LABEL_58:
LABEL_59:

LABEL_60:
  v52 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntentInvocationDisplayRepresentation *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_title)
  {
    v16 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationStaticDeferredLocalizedString *)self->_title writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_subtitle)
  {
    v16 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationStaticDeferredLocalizedString *)self->_subtitle writeTo:v4];
    PBDataWriterRecallMark();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_synonyms;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
        v16 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:{v4, v12}];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_image)
  {
    v16 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationImage *)self->_image writeTo:v4];
    PBDataWriterRecallMark();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = BMAppIntentInvocationDisplayRepresentation;
  v5 = [(BMEventBase *)&v28 init];
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_39;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v29) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v29 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v29 & 0x7F) << v8;
        if ((v29 & 0x80) == 0)
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
        goto LABEL_39;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        break;
      }

      if (v16 != 4)
      {
        if (v16 == 5)
        {
          v29 = 0;
          v30 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_41;
          }

          v17 = [[BMAppIntentInvocationImage alloc] initByReadFrom:v4];
          if (!v17)
          {
            goto LABEL_41;
          }

          v18 = 48;
          goto LABEL_34;
        }

LABEL_29:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v29 = 0;
      v30 = 0;
      if (!PBReaderPlaceMark() || (v20 = [[BMAppIntentInvocationStaticDeferredLocalizedString alloc] initByReadFrom:v4]) == 0)
      {
LABEL_41:

        goto LABEL_42;
      }

      v21 = v20;
      [v6 addObject:v20];
      PBReaderRecallMark();

LABEL_38:
      v22 = [v4 position];
      if (v22 >= [v4 length])
      {
        goto LABEL_39;
      }
    }

    if (v16 == 1)
    {
      v29 = 0;
      v30 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_41;
      }

      v17 = [[BMAppIntentInvocationStaticDeferredLocalizedString alloc] initByReadFrom:v4];
      if (!v17)
      {
        goto LABEL_41;
      }

      v18 = 24;
      goto LABEL_34;
    }

    if (v16 == 2)
    {
      v29 = 0;
      v30 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_41;
      }

      v17 = [[BMAppIntentInvocationStaticDeferredLocalizedString alloc] initByReadFrom:v4];
      if (!v17)
      {
        goto LABEL_41;
      }

      v18 = 32;
LABEL_34:
      v19 = *(&v5->super.super.isa + v18);
      *(&v5->super.super.isa + v18) = v17;

      PBReaderRecallMark();
      goto LABEL_38;
    }

    goto LABEL_29;
  }

LABEL_39:
  v23 = [v6 copy];
  synonyms = v5->_synonyms;
  v5->_synonyms = v23;

  v25 = [v4 hasError];
  if (v25)
  {
LABEL_42:
    v26 = 0;
  }

  else
  {
LABEL_40:
    v26 = v5;
  }

  return v26;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMAppIntentInvocationDisplayRepresentation *)self title];
  v5 = [(BMAppIntentInvocationDisplayRepresentation *)self subtitle];
  v6 = [(BMAppIntentInvocationDisplayRepresentation *)self synonyms];
  v7 = [(BMAppIntentInvocationDisplayRepresentation *)self image];
  v8 = [v3 initWithFormat:@"BMAppIntentInvocationDisplayRepresentation with title: %@, subtitle: %@, synonyms: %@, image: %@", v4, v5, v6, v7];

  return v8;
}

- (BMAppIntentInvocationDisplayRepresentation)initWithTitle:(id)a3 subtitle:(id)a4 synonyms:(id)a5 image:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v17.receiver = self;
  v17.super_class = BMAppIntentInvocationDisplayRepresentation;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_title, a3);
    objc_storeStrong(&v15->_subtitle, a4);
    objc_storeStrong(&v15->_synonyms, a5);
    objc_storeStrong(&v15->_image, a6);
  }

  return v15;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"title_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_549];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"subtitle_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_551];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"synonyms_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_553];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"image_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_555];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __53__BMAppIntentInvocationDisplayRepresentation_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 image];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __53__BMAppIntentInvocationDisplayRepresentation_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _synonymsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __53__BMAppIntentInvocationDisplayRepresentation_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 subtitle];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __53__BMAppIntentInvocationDisplayRepresentation_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 title];
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

    v8 = [[BMAppIntentInvocationDisplayRepresentation alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end