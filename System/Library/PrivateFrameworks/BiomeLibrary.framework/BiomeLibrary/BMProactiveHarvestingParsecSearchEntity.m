@interface BMProactiveHarvestingParsecSearchEntity
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMProactiveHarvestingParsecSearchEntity)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMProactiveHarvestingParsecSearchEntity)initWithName:(id)a3 category:(id)a4 probabilityScore:(id)a5 topics:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_topicsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMProactiveHarvestingParsecSearchEntity

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMProactiveHarvestingParsecSearchEntity *)self name];
    v7 = [v5 name];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMProactiveHarvestingParsecSearchEntity *)self name];
      v10 = [v5 name];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_19;
      }
    }

    if (!-[BMProactiveHarvestingParsecSearchEntity hasCategory](self, "hasCategory") && ![v5 hasCategory] || -[BMProactiveHarvestingParsecSearchEntity hasCategory](self, "hasCategory") && objc_msgSend(v5, "hasCategory") && (v13 = -[BMProactiveHarvestingParsecSearchEntity category](self, "category"), v13 == objc_msgSend(v5, "category")))
    {
      if (!-[BMProactiveHarvestingParsecSearchEntity hasProbabilityScore](self, "hasProbabilityScore") && ![v5 hasProbabilityScore] || -[BMProactiveHarvestingParsecSearchEntity hasProbabilityScore](self, "hasProbabilityScore") && objc_msgSend(v5, "hasProbabilityScore") && (-[BMProactiveHarvestingParsecSearchEntity probabilityScore](self, "probabilityScore"), v15 = v14, objc_msgSend(v5, "probabilityScore"), v15 == v16))
      {
        v17 = [(BMProactiveHarvestingParsecSearchEntity *)self topics];
        v18 = [v5 topics];
        if (v17 == v18)
        {
          v12 = 1;
        }

        else
        {
          v19 = [(BMProactiveHarvestingParsecSearchEntity *)self topics];
          v20 = [v5 topics];
          v12 = [v19 isEqual:v20];
        }

        goto LABEL_20;
      }
    }

LABEL_19:
    v12 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (id)jsonDictionary
{
  v17[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMProactiveHarvestingParsecSearchEntity *)self name];
  if ([(BMProactiveHarvestingParsecSearchEntity *)self hasCategory])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMProactiveHarvestingParsecSearchEntity category](self, "category")}];
  }

  else
  {
    v4 = 0;
  }

  if (![(BMProactiveHarvestingParsecSearchEntity *)self hasProbabilityScore]|| ([(BMProactiveHarvestingParsecSearchEntity *)self probabilityScore], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMProactiveHarvestingParsecSearchEntity *)self probabilityScore];
    v6 = MEMORY[0x1E696AD98];
    [(BMProactiveHarvestingParsecSearchEntity *)self probabilityScore];
    v7 = [v6 numberWithDouble:?];
  }

  v8 = [(BMProactiveHarvestingParsecSearchEntity *)self _topicsJSONArray];
  v16[0] = @"name";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = v9;
  v16[1] = @"category";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = v10;
  v16[2] = @"probabilityScore";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = v11;
  v16[3] = @"topics";
  v12 = v8;
  if (!v8)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v7)
    {
LABEL_18:
      if (v4)
      {
        goto LABEL_19;
      }

LABEL_25:

      if (v3)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v3)
  {
    goto LABEL_20;
  }

LABEL_26:

LABEL_20:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_topicsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMProactiveHarvestingParsecSearchEntity *)self topics];
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

- (BMProactiveHarvestingParsecSearchEntity)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v77[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"name"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v76 = *MEMORY[0x1E696A578];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
        v77[0] = v27;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
        v8 = 0;
        v24 = 0;
        *a4 = [v25 initWithDomain:v26 code:2 userInfo:v9];
        a4 = v27;
        goto LABEL_54;
      }

      v8 = 0;
      v24 = 0;
      goto LABEL_55;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"category"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v74 = *MEMORY[0x1E696A578];
        v30 = a4;
        v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"category"];
        v75 = v59;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v32 = v29;
        v10 = v31;
        a4 = 0;
        v24 = 0;
        *v30 = [v28 initWithDomain:v32 code:2 userInfo:v31];
        goto LABEL_53;
      }

      v24 = 0;
      goto LABEL_54;
    }

    v58 = v9;
  }

  else
  {
    v58 = 0;
  }

  v10 = [v6 objectForKeyedSubscript:@"probabilityScore"];
  v56 = a4;
  v57 = v7;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v59 = 0;
        v24 = 0;
        a4 = v58;
        goto LABEL_53;
      }

      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      v34 = *MEMORY[0x1E698F240];
      v72 = *MEMORY[0x1E696A578];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"probabilityScore"];
      v73 = v11;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      v59 = 0;
      v24 = 0;
      *v56 = [v33 initWithDomain:v34 code:2 userInfo:v14];
      goto LABEL_50;
    }

    v59 = v10;
  }

  else
  {
    v59 = 0;
  }

  v11 = [v6 objectForKeyedSubscript:@"topics"];
  v12 = [MEMORY[0x1E695DFB0] null];
  v13 = [v11 isEqual:v12];

  if (!v13)
  {
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v53 = v9;
      v54 = v8;
      v55 = self;
      goto LABEL_17;
    }

    if (!a4)
    {
      v24 = 0;
      a4 = v58;
      goto LABEL_52;
    }

    v43 = objc_alloc(MEMORY[0x1E696ABC0]);
    v52 = v10;
    v44 = *MEMORY[0x1E698F240];
    v70 = *MEMORY[0x1E696A578];
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"topics"];
    v71 = v14;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v46 = v45 = a4;
    v47 = v44;
    v10 = v52;
    *v45 = [v43 initWithDomain:v47 code:2 userInfo:v46];

    v24 = 0;
LABEL_50:
    a4 = v58;
    goto LABEL_51;
  }

  v53 = v9;
  v54 = v8;
  v55 = self;

  v11 = 0;
LABEL_17:
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v11 = v11;
  v15 = [v11 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = v15;
  v17 = *v62;
  v50 = v6;
  v51 = v10;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v62 != v17)
      {
        objc_enumerationMutation(v11);
      }

      v19 = *(*(&v61 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v50;
        v8 = v54;
        self = v55;
        a4 = v58;
        if (v56)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v67 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"topics"];
          v68 = v20;
          v37 = MEMORY[0x1E695DF20];
          v38 = &v68;
          v39 = &v67;
LABEL_42:
          v40 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:1];
          v41 = v35;
          a4 = v58;
          *v56 = [v41 initWithDomain:v36 code:2 userInfo:v40];
LABEL_46:
        }

LABEL_47:

        v24 = 0;
        v10 = v51;
        v9 = v53;
        goto LABEL_51;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = v50;
        v8 = v54;
        self = v55;
        a4 = v58;
        if (v56)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v65 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"topics"];
          v66 = v20;
          v37 = MEMORY[0x1E695DF20];
          v38 = &v66;
          v39 = &v65;
          goto LABEL_42;
        }

        goto LABEL_47;
      }

      v20 = v19;
      v21 = [BMProactiveHarvestingParsecSearchEntityTopic alloc];
      v60 = 0;
      v22 = [(BMProactiveHarvestingParsecSearchEntityTopic *)v21 initWithJSONDictionary:v20 error:&v60];
      v23 = v60;
      if (v23)
      {
        v40 = v23;
        if (v56)
        {
          v42 = v23;
          *v56 = v40;
        }

        v6 = v50;
        v8 = v54;
        self = v55;
        a4 = v58;
        goto LABEL_46;
      }

      [v14 addObject:v22];
    }

    v16 = [v11 countByEnumeratingWithState:&v61 objects:v69 count:16];
    v6 = v50;
    v10 = v51;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v8 = v54;
  a4 = v58;
  self = [(BMProactiveHarvestingParsecSearchEntity *)v55 initWithName:v54 category:v58 probabilityScore:v59 topics:v14];
  v24 = self;
  v9 = v53;
LABEL_51:

LABEL_52:
  v7 = v57;
LABEL_53:

LABEL_54:
LABEL_55:

  v48 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingParsecSearchEntity *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasCategory)
  {
    category = self->_category;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasProbabilityScore)
  {
    probabilityScore = self->_probabilityScore;
    PBDataWriterWriteFloatField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_topics;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v12 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = BMProactiveHarvestingParsecSearchEntity;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_50;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_48;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v38 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v38[0] & 0x7F) << v8;
        if ((v38[0] & 0x80) == 0)
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
        goto LABEL_48;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      if (v16 == 3)
      {
        v5->_hasProbabilityScore = 1;
        LODWORD(v38[0]) = 0;
        v28 = [v4 position] + 4;
        if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 4, v29 <= objc_msgSend(v4, "length")))
        {
          v30 = [v4 data];
          [v30 getBytes:v38 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_probabilityScore = *v38;
        goto LABEL_47;
      }

      if (v16 != 4)
      {
        goto LABEL_35;
      }

      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || (v24 = [[BMProactiveHarvestingParsecSearchEntityTopic alloc] initByReadFrom:v4]) == 0)
      {
LABEL_52:

        goto LABEL_49;
      }

      v25 = v24;
      [v6 addObject:v24];
      PBReaderRecallMark();

LABEL_47:
      v31 = [v4 position];
      if (v31 >= [v4 length])
      {
        goto LABEL_48;
      }
    }

    if (v16 == 1)
    {
      v26 = PBReaderReadString();
      name = v5->_name;
      v5->_name = v26;

      goto LABEL_47;
    }

    if (v16 == 2)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v5->_hasCategory = 1;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v20 = [v4 position] + 1;
        if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
        {
          v22 = [v4 data];
          [v22 getBytes:v38 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v19 |= (v38[0] & 0x7F) << v17;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v14 = v18++ >= 9;
        if (v14)
        {
          v23 = 0;
          goto LABEL_44;
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

LABEL_44:
      v5->_category = v23;
      goto LABEL_47;
    }

LABEL_35:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_47;
  }

LABEL_48:
  v32 = [v6 copy];
  topics = v5->_topics;
  v5->_topics = v32;

  v34 = [v4 hasError];
  if (v34)
  {
LABEL_49:
    v35 = 0;
  }

  else
  {
LABEL_50:
    v35 = v5;
  }

  return v35;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMProactiveHarvestingParsecSearchEntity *)self name];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMProactiveHarvestingParsecSearchEntity category](self, "category")}];
  v6 = MEMORY[0x1E696AD98];
  [(BMProactiveHarvestingParsecSearchEntity *)self probabilityScore];
  v7 = [v6 numberWithDouble:?];
  v8 = [(BMProactiveHarvestingParsecSearchEntity *)self topics];
  v9 = [v3 initWithFormat:@"BMProactiveHarvestingParsecSearchEntity with name: %@, category: %@, probabilityScore: %@, topics: %@", v4, v5, v7, v8];

  return v9;
}

- (BMProactiveHarvestingParsecSearchEntity)initWithName:(id)a3 category:(id)a4 probabilityScore:(id)a5 topics:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = BMProactiveHarvestingParsecSearchEntity;
  v15 = [(BMEventBase *)&v20 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_name, a3);
    if (v12)
    {
      v15->_hasCategory = 1;
      v16 = [v12 unsignedIntValue];
    }

    else
    {
      v16 = 0;
      v15->_hasCategory = 0;
    }

    v15->_category = v16;
    if (v13)
    {
      v15->_hasProbabilityScore = 1;
      [v13 floatValue];
      v18 = v17;
    }

    else
    {
      v15->_hasProbabilityScore = 0;
      v18 = -1.0;
    }

    v15->_probabilityScore = v18;
    objc_storeStrong(&v15->_topics, a6);
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"category" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"probabilityScore" number:3 type:1 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topics" number:4 type:14 subMessageClass:objc_opt_class()];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"category" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"probabilityScore" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:1 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"topics_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_22388];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __50__BMProactiveHarvestingParsecSearchEntity_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _topicsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMProactiveHarvestingParsecSearchEntity alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[5] = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end