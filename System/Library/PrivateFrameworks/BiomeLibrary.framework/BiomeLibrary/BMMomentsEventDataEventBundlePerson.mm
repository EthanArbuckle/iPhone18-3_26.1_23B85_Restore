@interface BMMomentsEventDataEventBundlePerson
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMomentsEventDataEventBundlePerson)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMomentsEventDataEventBundlePerson)initWithPersonRelationships:(id)a3 isMEPerson:(id)a4 significanceScore:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_personRelationshipsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMomentsEventDataEventBundlePerson

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMomentsEventDataEventBundlePerson *)self personRelationships];
    v7 = [v5 personRelationships];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMomentsEventDataEventBundlePerson *)self personRelationships];
      v10 = [v5 personRelationships];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    if (!-[BMMomentsEventDataEventBundlePerson hasIsMEPerson](self, "hasIsMEPerson") && ![v5 hasIsMEPerson] || -[BMMomentsEventDataEventBundlePerson hasIsMEPerson](self, "hasIsMEPerson") && objc_msgSend(v5, "hasIsMEPerson") && (v13 = -[BMMomentsEventDataEventBundlePerson isMEPerson](self, "isMEPerson"), v13 == objc_msgSend(v5, "isMEPerson")))
    {
      if (!-[BMMomentsEventDataEventBundlePerson hasSignificanceScore](self, "hasSignificanceScore") && ![v5 hasSignificanceScore])
      {
        v12 = 1;
        goto LABEL_18;
      }

      if (-[BMMomentsEventDataEventBundlePerson hasSignificanceScore](self, "hasSignificanceScore") && [v5 hasSignificanceScore])
      {
        [(BMMomentsEventDataEventBundlePerson *)self significanceScore];
        v15 = v14;
        [v5 significanceScore];
        v12 = v15 == v16;
LABEL_18:

        goto LABEL_19;
      }
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (id)jsonDictionary
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMMomentsEventDataEventBundlePerson *)self _personRelationshipsJSONArray];
  if ([(BMMomentsEventDataEventBundlePerson *)self hasIsMEPerson])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundlePerson isMEPerson](self, "isMEPerson")}];
  }

  else
  {
    v4 = 0;
  }

  if (![(BMMomentsEventDataEventBundlePerson *)self hasSignificanceScore]|| ([(BMMomentsEventDataEventBundlePerson *)self significanceScore], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundlePerson *)self significanceScore];
    v6 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundlePerson *)self significanceScore];
    v7 = [v6 numberWithDouble:?];
  }

  v14[0] = @"personRelationships";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v8;
  v14[1] = @"isMEPerson";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v9;
  v14[2] = @"significanceScore";
  v10 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (v7)
  {
    if (v4)
    {
      goto LABEL_16;
    }

LABEL_21:

    if (v3)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (v3)
  {
    goto LABEL_17;
  }

LABEL_22:

LABEL_17:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_personRelationshipsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMomentsEventDataEventBundlePerson *)self personRelationships];
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

- (BMMomentsEventDataEventBundlePerson)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v60[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"personRelationships"];
  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v40 = v5;
    v41 = self;

    v6 = 0;
  }

  else
  {
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v32 = objc_alloc(MEMORY[0x1E696ABC0]);
          v33 = *MEMORY[0x1E698F240];
          v59 = *MEMORY[0x1E696A578];
          v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"personRelationships"];
          v60[0] = v44;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
          v21 = 0;
          *a4 = [v32 initWithDomain:v33 code:2 userInfo:v18];
          goto LABEL_35;
        }

        v21 = 0;
        goto LABEL_36;
      }
    }

    v40 = v5;
    v41 = self;
  }

  v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = v6;
  v9 = [v6 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = *v47;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v47 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v46 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = a4;
        if (a4)
        {
          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          v24 = *MEMORY[0x1E698F240];
          v56 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"personRelationships"];
          v57 = v14;
          v25 = MEMORY[0x1E695DF20];
          v26 = &v57;
          v27 = &v56;
LABEL_28:
          v20 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
          v28 = [v23 initWithDomain:v24 code:2 userInfo:v20];
          v21 = 0;
          *v22 = v28;
LABEL_32:
          v18 = v6;
          v5 = v40;
          self = v41;
          goto LABEL_33;
        }

LABEL_39:
        v21 = 0;
        v18 = v6;
        v5 = v40;
        self = v41;
        goto LABEL_35;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = a4;
        if (a4)
        {
          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          v24 = *MEMORY[0x1E698F240];
          v54 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"personRelationships"];
          v55 = v14;
          v25 = MEMORY[0x1E695DF20];
          v26 = &v55;
          v27 = &v54;
          goto LABEL_28;
        }

        goto LABEL_39;
      }

      v14 = v13;
      v15 = [BMMomentsEventDataEventBundlePersonPersonRelationship alloc];
      v45 = 0;
      v16 = [(BMMomentsEventDataEventBundlePersonPersonRelationship *)v15 initWithJSONDictionary:v14 error:&v45];
      v17 = v45;
      if (v17)
      {
        v20 = v17;
        if (a4)
        {
          v29 = v17;
          *a4 = v20;
        }

        v21 = 0;
        goto LABEL_32;
      }

      [v44 addObject:v16];
    }

    v10 = [v6 countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v5 = v40;
  v14 = [v40 objectForKeyedSubscript:@"isMEPerson"];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    self = v41;
    if (objc_opt_isKindOfClass())
    {
      v18 = v14;
      goto LABEL_19;
    }

    if (a4)
    {
      v34 = objc_alloc(MEMORY[0x1E696ABC0]);
      v35 = *MEMORY[0x1E698F240];
      v52 = *MEMORY[0x1E696A578];
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isMEPerson"];
      v53 = v20;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v36 = [v34 initWithDomain:v35 code:2 userInfo:v19];
      v18 = 0;
      v21 = 0;
      *a4 = v36;
      goto LABEL_23;
    }

    v18 = 0;
    v21 = 0;
  }

  else
  {
    v18 = 0;
    self = v41;
LABEL_19:
    v19 = [v40 objectForKeyedSubscript:@"significanceScore"];
    if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v20 = 0;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
LABEL_22:
      self = [(BMMomentsEventDataEventBundlePerson *)self initWithPersonRelationships:v44 isMEPerson:v18 significanceScore:v20];
      v21 = self;
    }

    else
    {
      if (a4)
      {
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v50 = *MEMORY[0x1E696A578];
        v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"significanceScore"];
        v51 = v38;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        *a4 = [v37 initWithDomain:v42 code:2 userInfo:v39];
      }

      v20 = 0;
      v21 = 0;
    }

LABEL_23:

LABEL_33:
  }

LABEL_35:
LABEL_36:

  v30 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEventDataEventBundlePerson *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_personRelationships;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if (self->_hasIsMEPerson)
  {
    isMEPerson = self->_isMEPerson;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasSignificanceScore)
  {
    significanceScore = self->_significanceScore;
    PBDataWriterWriteDoubleField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMMomentsEventDataEventBundlePerson;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_45;
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
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        v5->_hasSignificanceScore = 1;
        v36[0] = 0;
        v26 = [v4 position] + 8;
        if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 8, v27 <= objc_msgSend(v4, "length")))
        {
          v28 = [v4 data];
          [v28 getBytes:v36 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        *&v5->_significanceScore = v36[0];
      }

      else if (v16 == 2)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v5->_hasIsMEPerson = 1;
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
            LOBYTE(v25) = 0;
            goto LABEL_39;
          }
        }

        v25 = (v21 != 0) & ~[v4 hasError];
LABEL_39:
        v5->_isMEPerson = v25;
      }

      else if (v16 == 1)
      {
        v36[0] = 0;
        v36[1] = 0;
        if (!PBReaderPlaceMark() || (v17 = [[BMMomentsEventDataEventBundlePersonPersonRelationship alloc] initByReadFrom:v4]) == 0)
        {
LABEL_47:

          goto LABEL_44;
        }

        v18 = v17;
        [v6 addObject:v17];
        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_47;
      }

      v29 = [v4 position];
    }

    while (v29 < [v4 length]);
  }

  v30 = [v6 copy];
  personRelationships = v5->_personRelationships;
  v5->_personRelationships = v30;

  v32 = [v4 hasError];
  if (v32)
  {
LABEL_44:
    v33 = 0;
  }

  else
  {
LABEL_45:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMomentsEventDataEventBundlePerson *)self personRelationships];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundlePerson isMEPerson](self, "isMEPerson")}];
  v6 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundlePerson *)self significanceScore];
  v7 = [v6 numberWithDouble:?];
  v8 = [v3 initWithFormat:@"BMMomentsEventDataEventBundlePerson with personRelationships: %@, isMEPerson: %@, significanceScore: %@", v4, v5, v7];

  return v8;
}

- (BMMomentsEventDataEventBundlePerson)initWithPersonRelationships:(id)a3 isMEPerson:(id)a4 significanceScore:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BMMomentsEventDataEventBundlePerson;
  v12 = [(BMEventBase *)&v15 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_personRelationships, a3);
    if (v10)
    {
      v12->_hasIsMEPerson = 1;
      v12->_isMEPerson = [v10 BOOLValue];
    }

    else
    {
      v12->_hasIsMEPerson = 0;
      v12->_isMEPerson = 0;
    }

    if (v11)
    {
      v12->_hasSignificanceScore = 1;
      [v11 doubleValue];
    }

    else
    {
      v12->_hasSignificanceScore = 0;
      v13 = -1.0;
    }

    v12->_significanceScore = v13;
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personRelationships" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMEPerson" number:2 type:12 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"significanceScore" number:3 type:0 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"personRelationships_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_2806];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMEPerson" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"significanceScore" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __46__BMMomentsEventDataEventBundlePerson_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _personRelationshipsJSONArray];
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

    v8 = [[BMMomentsEventDataEventBundlePerson alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end