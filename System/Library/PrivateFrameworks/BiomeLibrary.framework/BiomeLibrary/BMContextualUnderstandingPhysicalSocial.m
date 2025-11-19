@interface BMContextualUnderstandingPhysicalSocial
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMContextualUnderstandingPhysicalSocial)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMContextualUnderstandingPhysicalSocial)initWithLocalIdentifier:(id)a3 discoveredPeople:(id)a4 startTimeInSecondsSinceReferenceDate:(id)a5 endTimeInSecondsSinceReferenceDate:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_discoveredPeopleJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMContextualUnderstandingPhysicalSocial

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"localIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"discoveredPeople_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_64088];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startTimeInSecondsSinceReferenceDate" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endTimeInSecondsSinceReferenceDate" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
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
    v6 = [(BMContextualUnderstandingPhysicalSocial *)self localIdentifier];
    v7 = [v5 localIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMContextualUnderstandingPhysicalSocial *)self localIdentifier];
      v10 = [v5 localIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMContextualUnderstandingPhysicalSocial *)self discoveredPeople];
    v14 = [v5 discoveredPeople];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMContextualUnderstandingPhysicalSocial *)self discoveredPeople];
      v17 = [v5 discoveredPeople];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    if (!-[BMContextualUnderstandingPhysicalSocial hasStartTimeInSecondsSinceReferenceDate](self, "hasStartTimeInSecondsSinceReferenceDate") && ![v5 hasStartTimeInSecondsSinceReferenceDate] || -[BMContextualUnderstandingPhysicalSocial hasStartTimeInSecondsSinceReferenceDate](self, "hasStartTimeInSecondsSinceReferenceDate") && objc_msgSend(v5, "hasStartTimeInSecondsSinceReferenceDate") && (-[BMContextualUnderstandingPhysicalSocial startTimeInSecondsSinceReferenceDate](self, "startTimeInSecondsSinceReferenceDate"), v20 = v19, objc_msgSend(v5, "startTimeInSecondsSinceReferenceDate"), v20 == v21))
    {
      if (!-[BMContextualUnderstandingPhysicalSocial hasEndTimeInSecondsSinceReferenceDate](self, "hasEndTimeInSecondsSinceReferenceDate") && ![v5 hasEndTimeInSecondsSinceReferenceDate])
      {
        v12 = 1;
        goto LABEL_22;
      }

      if (-[BMContextualUnderstandingPhysicalSocial hasEndTimeInSecondsSinceReferenceDate](self, "hasEndTimeInSecondsSinceReferenceDate") && [v5 hasEndTimeInSecondsSinceReferenceDate])
      {
        [(BMContextualUnderstandingPhysicalSocial *)self endTimeInSecondsSinceReferenceDate];
        v23 = v22;
        [v5 endTimeInSecondsSinceReferenceDate];
        v12 = v23 == v24;
LABEL_22:

        goto LABEL_23;
      }
    }

LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (id)jsonDictionary
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMContextualUnderstandingPhysicalSocial *)self localIdentifier];
  v4 = [(BMContextualUnderstandingPhysicalSocial *)self _discoveredPeopleJSONArray];
  if (![(BMContextualUnderstandingPhysicalSocial *)self hasStartTimeInSecondsSinceReferenceDate]|| ([(BMContextualUnderstandingPhysicalSocial *)self startTimeInSecondsSinceReferenceDate], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMContextualUnderstandingPhysicalSocial *)self startTimeInSecondsSinceReferenceDate];
    v6 = MEMORY[0x1E696AD98];
    [(BMContextualUnderstandingPhysicalSocial *)self startTimeInSecondsSinceReferenceDate];
    v7 = [v6 numberWithDouble:?];
  }

  if (![(BMContextualUnderstandingPhysicalSocial *)self hasEndTimeInSecondsSinceReferenceDate]|| ([(BMContextualUnderstandingPhysicalSocial *)self endTimeInSecondsSinceReferenceDate], fabs(v8) == INFINITY))
  {
    v10 = 0;
  }

  else
  {
    [(BMContextualUnderstandingPhysicalSocial *)self endTimeInSecondsSinceReferenceDate];
    v9 = MEMORY[0x1E696AD98];
    [(BMContextualUnderstandingPhysicalSocial *)self endTimeInSecondsSinceReferenceDate];
    v10 = [v9 numberWithDouble:?];
  }

  v18[0] = @"localIdentifier";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = v11;
  v18[1] = @"discoveredPeople";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v12;
  v18[2] = @"startTimeInSecondsSinceReferenceDate";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = v13;
  v18[3] = @"endTimeInSecondsSinceReferenceDate";
  v14 = v10;
  if (!v10)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  if (v10)
  {
    if (v7)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v7)
    {
LABEL_19:
      if (v4)
      {
        goto LABEL_20;
      }

LABEL_26:

      if (v3)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }
  }

  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_20:
  if (v3)
  {
    goto LABEL_21;
  }

LABEL_27:

LABEL_21:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_discoveredPeopleJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMContextualUnderstandingPhysicalSocial *)self discoveredPeople];
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

- (BMContextualUnderstandingPhysicalSocial)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v70[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"localIdentifier"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v69 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"localIdentifier"];
        v70[0] = v8;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
        v7 = 0;
        v23 = 0;
        *a4 = [v21 initWithDomain:v22 code:2 userInfo:?];

        goto LABEL_50;
      }

      v7 = 0;
      v23 = 0;
      goto LABEL_51;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"discoveredPeople"];
  v9 = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 isEqual:v9];

  v49 = v6;
  if (v10)
  {
    v45 = v7;
    v47 = self;

    v8 = 0;
LABEL_9:
    v51 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v8 = v8;
    v11 = [v8 countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (!v11)
    {
      goto LABEL_19;
    }

    v12 = v11;
    v13 = *v55;
    v44 = v5;
LABEL_11:
    v14 = 0;
    while (1)
    {
      if (*v55 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v54 + 1) + 8 * v14);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = a4;
        if (a4)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v26 = *MEMORY[0x1E698F240];
          v62 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"discoveredPeople"];
          v63 = v16;
          v27 = MEMORY[0x1E695DF20];
          v28 = &v63;
          v29 = &v62;
          goto LABEL_30;
        }

        goto LABEL_37;
      }

      v16 = v15;
      v17 = [BMContextualUnderstandingPhysicalSocialPerson alloc];
      v53 = 0;
      v18 = [(BMContextualUnderstandingPhysicalSocialPerson *)v17 initWithJSONDictionary:v16 error:&v53];
      v19 = v53;
      if (v19)
      {
        v30 = v19;
        if (a4)
        {
          v32 = v19;
          *a4 = v30;
        }

        v23 = 0;
        goto LABEL_34;
      }

      [v51 addObject:v18];

      if (v12 == ++v14)
      {
        v12 = [v8 countByEnumeratingWithState:&v54 objects:v66 count:16];
        v5 = v44;
        if (v12)
        {
          goto LABEL_11;
        }

LABEL_19:

        v16 = [v5 objectForKeyedSubscript:@"startTimeInSecondsSinceReferenceDate"];
        if (!v16)
        {
          v20 = 0;
          v7 = v45;
          self = v47;
          goto LABEL_41;
        }

        objc_opt_class();
        v7 = v45;
        self = v47;
        if (objc_opt_isKindOfClass())
        {
          v20 = 0;
LABEL_41:
          v36 = [v5 objectForKeyedSubscript:@"endTimeInSecondsSinceReferenceDate"];
          if (!v36 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v30 = 0;
            goto LABEL_44;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = v36;
LABEL_44:
            self = [(BMContextualUnderstandingPhysicalSocial *)self initWithLocalIdentifier:v7 discoveredPeople:v51 startTimeInSecondsSinceReferenceDate:v20 endTimeInSecondsSinceReferenceDate:v30];
            v23 = self;
          }

          else
          {
            if (a4)
            {
              v48 = objc_alloc(MEMORY[0x1E696ABC0]);
              v46 = *MEMORY[0x1E698F240];
              v58 = *MEMORY[0x1E696A578];
              v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"endTimeInSecondsSinceReferenceDate"];
              v59 = v41;
              v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
              *a4 = [v48 initWithDomain:v46 code:2 userInfo:v42];
            }

            v30 = 0;
            v23 = 0;
          }

LABEL_45:

LABEL_46:
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v16;
            goto LABEL_41;
          }

          if (a4)
          {
            v43 = objc_alloc(MEMORY[0x1E696ABC0]);
            v39 = *MEMORY[0x1E698F240];
            v60 = *MEMORY[0x1E696A578];
            v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"startTimeInSecondsSinceReferenceDate"];
            v61 = v30;
            v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
            v40 = [v43 initWithDomain:v39 code:2 userInfo:v36];
            v20 = 0;
            v23 = 0;
            *a4 = v40;
            goto LABEL_45;
          }

          v20 = 0;
          v23 = 0;
        }

LABEL_48:
        v6 = v49;

        goto LABEL_50;
      }
    }

    v24 = a4;
    if (a4)
    {
      v25 = objc_alloc(MEMORY[0x1E696ABC0]);
      v26 = *MEMORY[0x1E698F240];
      v64 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"discoveredPeople"];
      v65 = v16;
      v27 = MEMORY[0x1E695DF20];
      v28 = &v65;
      v29 = &v64;
LABEL_30:
      v30 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
      v31 = [v25 initWithDomain:v26 code:2 userInfo:v30];
      v23 = 0;
      *v24 = v31;
LABEL_34:
      v20 = v8;
      v5 = v44;
      v7 = v45;
      self = v47;
      goto LABEL_46;
    }

LABEL_37:
    v23 = 0;
    v20 = v8;
    v5 = v44;
    v7 = v45;
    self = v47;
    goto LABEL_48;
  }

  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v45 = v7;
    v47 = self;
    goto LABEL_9;
  }

  if (a4)
  {
    v33 = objc_alloc(MEMORY[0x1E696ABC0]);
    v34 = *MEMORY[0x1E698F240];
    v67 = *MEMORY[0x1E696A578];
    v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"discoveredPeople"];
    v68 = v51;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v35 = [v33 initWithDomain:v34 code:2 userInfo:v20];
    v23 = 0;
    *a4 = v35;
    goto LABEL_48;
  }

  v23 = 0;
LABEL_50:

LABEL_51:
  v37 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMContextualUnderstandingPhysicalSocial *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_localIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_discoveredPeople;
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

  if (self->_hasStartTimeInSecondsSinceReferenceDate)
  {
    startTimeInSecondsSinceReferenceDate = self->_startTimeInSecondsSinceReferenceDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasEndTimeInSecondsSinceReferenceDate)
  {
    endTimeInSecondsSinceReferenceDate = self->_endTimeInSecondsSinceReferenceDate;
    PBDataWriterWriteDoubleField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMContextualUnderstandingPhysicalSocial;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_43;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_41;
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
        goto LABEL_41;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 2)
      {
        break;
      }

      if (v16 == 1)
      {
        v21 = PBReaderReadString();
        localIdentifier = v5->_localIdentifier;
        v5->_localIdentifier = v21;

        goto LABEL_40;
      }

      if (v16 != 2)
      {
        goto LABEL_29;
      }

      v36[0] = 0;
      v36[1] = 0;
      if (!PBReaderPlaceMark() || (v17 = [[BMContextualUnderstandingPhysicalSocialPerson alloc] initByReadFrom:v4]) == 0)
      {
LABEL_45:

        goto LABEL_42;
      }

      v18 = v17;
      [v6 addObject:v17];
      PBReaderRecallMark();

LABEL_40:
      v29 = [v4 position];
      if (v29 >= [v4 length])
      {
        goto LABEL_41;
      }
    }

    if (v16 == 3)
    {
      v5->_hasStartTimeInSecondsSinceReferenceDate = 1;
      v36[0] = 0;
      v23 = [v4 position] + 8;
      if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 8, v24 <= objc_msgSend(v4, "length")))
      {
        v28 = [v4 data];
        [v28 getBytes:v36 range:{objc_msgSend(v4, "position"), 8}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
      }

      else
      {
        [v4 _setError];
      }

      v26 = v36[0];
      v27 = 40;
      goto LABEL_39;
    }

    if (v16 == 4)
    {
      v5->_hasEndTimeInSecondsSinceReferenceDate = 1;
      v36[0] = 0;
      v19 = [v4 position] + 8;
      if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 8, v20 <= objc_msgSend(v4, "length")))
      {
        v25 = [v4 data];
        [v25 getBytes:v36 range:{objc_msgSend(v4, "position"), 8}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
      }

      else
      {
        [v4 _setError];
      }

      v26 = v36[0];
      v27 = 48;
LABEL_39:
      *(&v5->super.super.isa + v27) = v26;
      goto LABEL_40;
    }

LABEL_29:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

LABEL_41:
  v30 = [v6 copy];
  discoveredPeople = v5->_discoveredPeople;
  v5->_discoveredPeople = v30;

  v32 = [v4 hasError];
  if (v32)
  {
LABEL_42:
    v33 = 0;
  }

  else
  {
LABEL_43:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMContextualUnderstandingPhysicalSocial *)self localIdentifier];
  v5 = [(BMContextualUnderstandingPhysicalSocial *)self discoveredPeople];
  v6 = MEMORY[0x1E696AD98];
  [(BMContextualUnderstandingPhysicalSocial *)self startTimeInSecondsSinceReferenceDate];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMContextualUnderstandingPhysicalSocial *)self endTimeInSecondsSinceReferenceDate];
  v9 = [v8 numberWithDouble:?];
  v10 = [v3 initWithFormat:@"BMContextualUnderstandingPhysicalSocial with localIdentifier: %@, discoveredPeople: %@, startTimeInSecondsSinceReferenceDate: %@, endTimeInSecondsSinceReferenceDate: %@", v4, v5, v7, v9];

  return v10;
}

- (BMContextualUnderstandingPhysicalSocial)initWithLocalIdentifier:(id)a3 discoveredPeople:(id)a4 startTimeInSecondsSinceReferenceDate:(id)a5 endTimeInSecondsSinceReferenceDate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = BMContextualUnderstandingPhysicalSocial;
  v15 = [(BMEventBase *)&v19 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_localIdentifier, a3);
    objc_storeStrong(&v15->_discoveredPeople, a4);
    if (v13)
    {
      v15->_hasStartTimeInSecondsSinceReferenceDate = 1;
      [v13 doubleValue];
    }

    else
    {
      v15->_hasStartTimeInSecondsSinceReferenceDate = 0;
      v16 = -1.0;
    }

    v15->_startTimeInSecondsSinceReferenceDate = v16;
    if (v14)
    {
      v15->_hasEndTimeInSecondsSinceReferenceDate = 1;
      [v14 doubleValue];
    }

    else
    {
      v15->_hasEndTimeInSecondsSinceReferenceDate = 0;
      v17 = -1.0;
    }

    v15->_endTimeInSecondsSinceReferenceDate = v17;
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"localIdentifier" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"discoveredPeople" number:2 type:14 subMessageClass:objc_opt_class()];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startTimeInSecondsSinceReferenceDate" number:3 type:0 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endTimeInSecondsSinceReferenceDate" number:4 type:0 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __50__BMContextualUnderstandingPhysicalSocial_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _discoveredPeopleJSONArray];
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

    v8 = [[BMContextualUnderstandingPhysicalSocial alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end