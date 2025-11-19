@interface BMSiriUserAggregationId
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriUserAggregationId)initWithAggregationId:(id)a3 effectiveFrom:(id)a4 validityDays:(id)a5 createdOn:(id)a6 adoptedOn:(id)a7 switchedCount:(id)a8;
- (BMSiriUserAggregationId)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)adoptedOn;
- (NSDate)createdOn;
- (NSDate)effectiveFrom;
- (NSString)description;
- (NSUUID)aggregationId;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriUserAggregationId

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriUserAggregationId *)self aggregationId];
    v7 = [v5 aggregationId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriUserAggregationId *)self aggregationId];
      v10 = [v5 aggregationId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    v13 = [(BMSiriUserAggregationId *)self effectiveFrom];
    v14 = [v5 effectiveFrom];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriUserAggregationId *)self effectiveFrom];
      v17 = [v5 effectiveFrom];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    if (-[BMSiriUserAggregationId hasValidityDays](self, "hasValidityDays") || [v5 hasValidityDays])
    {
      if (![(BMSiriUserAggregationId *)self hasValidityDays])
      {
        goto LABEL_29;
      }

      if (![v5 hasValidityDays])
      {
        goto LABEL_29;
      }

      v19 = [(BMSiriUserAggregationId *)self validityDays];
      if (v19 != [v5 validityDays])
      {
        goto LABEL_29;
      }
    }

    v20 = [(BMSiriUserAggregationId *)self createdOn];
    v21 = [v5 createdOn];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMSiriUserAggregationId *)self createdOn];
      v24 = [v5 createdOn];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_29;
      }
    }

    v26 = [(BMSiriUserAggregationId *)self adoptedOn];
    v27 = [v5 adoptedOn];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(BMSiriUserAggregationId *)self adoptedOn];
      v30 = [v5 adoptedOn];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
        goto LABEL_29;
      }
    }

    if (!-[BMSiriUserAggregationId hasSwitchedCount](self, "hasSwitchedCount") && ![v5 hasSwitchedCount])
    {
      v12 = 1;
      goto LABEL_30;
    }

    if (-[BMSiriUserAggregationId hasSwitchedCount](self, "hasSwitchedCount") && [v5 hasSwitchedCount])
    {
      v32 = [(BMSiriUserAggregationId *)self switchedCount];
      v12 = v32 == [v5 switchedCount];
LABEL_30:

      goto LABEL_31;
    }

LABEL_29:
    v12 = 0;
    goto LABEL_30;
  }

  v12 = 0;
LABEL_31:

  return v12;
}

- (NSDate)adoptedOn
{
  if (self->_hasRaw_adoptedOn)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_adoptedOn];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)createdOn
{
  if (self->_hasRaw_createdOn)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_createdOn];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)effectiveFrom
{
  if (self->_hasRaw_effectiveFrom)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_effectiveFrom];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSUUID)aggregationId
{
  raw_aggregationId = self->_raw_aggregationId;
  if (raw_aggregationId)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_aggregationId toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v33[6] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriUserAggregationId *)self aggregationId];
  v4 = [v3 UUIDString];

  v5 = [(BMSiriUserAggregationId *)self effectiveFrom];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMSiriUserAggregationId *)self effectiveFrom];
    [v7 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMSiriUserAggregationId *)self hasValidityDays])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriUserAggregationId validityDays](self, "validityDays")}];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(BMSiriUserAggregationId *)self createdOn];
  if (v10)
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = [(BMSiriUserAggregationId *)self createdOn];
    [v12 timeIntervalSince1970];
    v13 = [v11 numberWithDouble:?];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(BMSiriUserAggregationId *)self adoptedOn];
  if (v14)
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [(BMSiriUserAggregationId *)self adoptedOn];
    [v16 timeIntervalSince1970];
    v17 = [v15 numberWithDouble:?];
  }

  else
  {
    v17 = 0;
  }

  if ([(BMSiriUserAggregationId *)self hasSwitchedCount])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriUserAggregationId switchedCount](self, "switchedCount")}];
  }

  else
  {
    v18 = 0;
  }

  v31 = v4;
  v32[0] = @"aggregationId";
  v19 = v4;
  if (!v4)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v19;
  v30 = v8;
  v33[0] = v19;
  v32[1] = @"effectiveFrom";
  v20 = v8;
  if (!v8)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v33[1] = v20;
  v32[2] = @"validityDays";
  v21 = v9;
  if (!v9)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v33[2] = v21;
  v32[3] = @"createdOn";
  v22 = v13;
  if (!v13)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v33[3] = v22;
  v32[4] = @"adoptedOn";
  v23 = v17;
  if (!v17)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v33[4] = v23;
  v32[5] = @"switchedCount";
  v24 = v18;
  if (!v18)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v33[5] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:{6, v28}];
  if (v18)
  {
    if (v17)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (v17)
    {
LABEL_30:
      if (v13)
      {
        goto LABEL_31;
      }

LABEL_41:

      if (v9)
      {
        goto LABEL_32;
      }

      goto LABEL_42;
    }
  }

  if (!v13)
  {
    goto LABEL_41;
  }

LABEL_31:
  if (v9)
  {
    goto LABEL_32;
  }

LABEL_42:

LABEL_32:
  if (!v30)
  {
  }

  if (!v31)
  {
  }

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (BMSiriUserAggregationId)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v87[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"aggregationId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    if (!v11)
    {
      if (a4)
      {
        v52 = objc_alloc(MEMORY[0x1E696ABC0]);
        v53 = a4;
        v54 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"aggregationId"];
        v87[0] = v73;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
        *v53 = [v52 initWithDomain:v54 code:2 userInfo:v55];

        v22 = 0;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_50;
    }

    v12 = v11;

    v8 = v12;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"effectiveFrom"];
    v66 = a4;
    v68 = v9;
    if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = MEMORY[0x1E695DF00];
        v14 = v10;
        v15 = [v13 alloc];
        [v14 doubleValue];
        v17 = v16;

        v18 = [v15 initWithTimeIntervalSince1970:v17];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v71 = [v23 dateFromString:v10];

          goto LABEL_17;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v71 = 0;
            v22 = 0;
LABEL_48:

            goto LABEL_50;
          }

          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = *MEMORY[0x1E698F240];
          v82 = *MEMORY[0x1E696A578];
          v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"effectiveFrom"];
          v83 = v70;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          v71 = 0;
          v22 = 0;
          *v66 = [v56 initWithDomain:v57 code:2 userInfo:v24];
LABEL_47:

          v10 = v68;
          goto LABEL_48;
        }

        v18 = v10;
      }

      v71 = v18;
    }

    else
    {
      v71 = 0;
    }

LABEL_17:
    v24 = [v6 objectForKeyedSubscript:@"validityDays"];
    v69 = v8;
    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v70 = 0;
          v22 = 0;
          goto LABEL_47;
        }

        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v80 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"validityDays"];
        v81 = v26;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v70 = 0;
        v22 = 0;
        *v66 = [v33 initWithDomain:v34 code:2 userInfo:v25];
        goto LABEL_46;
      }

      v70 = v24;
    }

    else
    {
      v70 = 0;
    }

    v25 = [v6 objectForKeyedSubscript:@"createdOn"];
    v67 = v7;
    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = MEMORY[0x1E695DF00];
        v28 = v25;
        v29 = [v27 alloc];
        [v28 doubleValue];
        v31 = v30;

        v32 = [v29 initWithTimeIntervalSince1970:v31];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v26 = [v35 dateFromString:v25];

          goto LABEL_32;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v26 = 0;
            v22 = 0;
            goto LABEL_46;
          }

          v37 = self;
          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v59 = *MEMORY[0x1E698F240];
          v78 = *MEMORY[0x1E696A578];
          v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"createdOn"];
          v79 = v38;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
          v60 = [v58 initWithDomain:v59 code:2 userInfo:v36];
          v26 = 0;
          v22 = 0;
          *v66 = v60;
LABEL_45:

          self = v37;
          v7 = v67;
LABEL_46:

          v8 = v69;
          goto LABEL_47;
        }

        v32 = v25;
      }

      v26 = v32;
    }

    else
    {
      v26 = 0;
    }

LABEL_32:
    v36 = [v6 objectForKeyedSubscript:@"adoptedOn"];
    if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = self;
        v39 = MEMORY[0x1E695DF00];
        v40 = v36;
        v41 = [v39 alloc];
        [v40 doubleValue];
        v43 = v42;

        v44 = [v41 initWithTimeIntervalSince1970:v43];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = self;
          v45 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v38 = [v45 dateFromString:v36];

          goto LABEL_40;
        }

        objc_opt_class();
        v37 = self;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v66)
          {
            v38 = 0;
            v22 = 0;
            goto LABEL_45;
          }

          v61 = objc_alloc(MEMORY[0x1E696ABC0]);
          v62 = *MEMORY[0x1E698F240];
          v76 = *MEMORY[0x1E696A578];
          v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"adoptedOn"];
          v77 = v47;
          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v63 = [v61 initWithDomain:v62 code:2 userInfo:v46];
          v38 = 0;
          v22 = 0;
          *v66 = v63;
          goto LABEL_44;
        }

        v44 = v36;
      }

      v38 = v44;
    }

    else
    {
      v37 = self;
      v38 = 0;
    }

LABEL_40:
    v46 = [v6 objectForKeyedSubscript:@"switchedCount"];
    if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v66)
        {
          v65 = objc_alloc(MEMORY[0x1E696ABC0]);
          v64 = *MEMORY[0x1E698F240];
          v74 = *MEMORY[0x1E696A578];
          v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"switchedCount"];
          v75 = v50;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          *v66 = [v65 initWithDomain:v64 code:2 userInfo:v51];
        }

        v47 = 0;
        v22 = 0;
        goto LABEL_44;
      }

      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    v22 = [(BMSiriUserAggregationId *)v37 initWithAggregationId:v69 effectiveFrom:v71 validityDays:v70 createdOn:v26 adoptedOn:v38 switchedCount:v47];
    v37 = v22;
LABEL_44:

    goto LABEL_45;
  }

  if (!a4)
  {
    v22 = 0;
    goto LABEL_51;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = a4;
  v21 = *MEMORY[0x1E698F240];
  v84 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"aggregationId"];
  v85 = v8;
  v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
  v22 = 0;
  *v20 = [v19 initWithDomain:v21 code:2 userInfo:?];

LABEL_50:
LABEL_51:

  v48 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriUserAggregationId *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_raw_aggregationId)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if (self->_hasRaw_effectiveFrom)
  {
    raw_effectiveFrom = self->_raw_effectiveFrom;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

  if (self->_hasValidityDays)
  {
    validityDays = self->_validityDays;
    PBDataWriterWriteUint32Field();
    v4 = v10;
  }

  if (self->_hasRaw_createdOn)
  {
    raw_createdOn = self->_raw_createdOn;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

  if (self->_hasRaw_adoptedOn)
  {
    raw_adoptedOn = self->_raw_adoptedOn;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

  if (self->_hasSwitchedCount)
  {
    switchedCount = self->_switchedCount;
    PBDataWriterWriteUint32Field();
    v4 = v10;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = BMSiriUserAggregationId;
  v5 = [(BMEventBase *)&v46 init];
  if (!v5)
  {
    goto LABEL_75;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_73;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v47) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v47 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v47 & 0x7F) << v7;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_73;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        break;
      }

      if (v15 != 1)
      {
        if (v15 == 2)
        {
          v5->_hasRaw_effectiveFrom = 1;
          v47 = 0;
          v33 = [v4 position] + 8;
          if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 8, v34 <= objc_msgSend(v4, "length")))
          {
            v41 = [v4 data];
            [v41 getBytes:&v47 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v39 = v47;
          v40 = 32;
LABEL_71:
          *(&v5->super.super.isa + v40) = v39;
          goto LABEL_72;
        }

        if (v15 != 3)
        {
          goto LABEL_48;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasValidityDays = 1;
        while (1)
        {
          LOBYTE(v47) = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v47 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v47 & 0x7F) << v16;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_59;
          }
        }

        if ([v4 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_59:
        v37 = 80;
LABEL_64:
        *(&v5->super.super.isa + v37) = v22;
        goto LABEL_72;
      }

      v29 = PBReaderReadData();
      if ([(NSData *)v29 length]!= 16)
      {

        goto LABEL_74;
      }

      raw_aggregationId = v5->_raw_aggregationId;
      v5->_raw_aggregationId = v29;

LABEL_72:
      v43 = [v4 position];
      if (v43 >= [v4 length])
      {
        goto LABEL_73;
      }
    }

    if (v15 == 4)
    {
      v5->_hasRaw_createdOn = 1;
      v47 = 0;
      v31 = [v4 position] + 8;
      if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 8, v32 <= objc_msgSend(v4, "length")))
      {
        v38 = [v4 data];
        [v38 getBytes:&v47 range:{objc_msgSend(v4, "position"), 8}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
      }

      else
      {
        [v4 _setError];
      }

      v39 = v47;
      v40 = 48;
      goto LABEL_71;
    }

    if (v15 == 5)
    {
      v5->_hasRaw_adoptedOn = 1;
      v47 = 0;
      v35 = [v4 position] + 8;
      if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 8, v36 <= objc_msgSend(v4, "length")))
      {
        v42 = [v4 data];
        [v42 getBytes:&v47 range:{objc_msgSend(v4, "position"), 8}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
      }

      else
      {
        [v4 _setError];
      }

      v39 = v47;
      v40 = 64;
      goto LABEL_71;
    }

    if (v15 != 6)
    {
LABEL_48:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_72;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    v5->_hasSwitchedCount = 1;
    while (1)
    {
      LOBYTE(v47) = 0;
      v26 = [v4 position] + 1;
      if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
      {
        v28 = [v4 data];
        [v28 getBytes:&v47 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v25 |= (v47 & 0x7F) << v23;
      if ((v47 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v13 = v24++ >= 9;
      if (v13)
      {
        v22 = 0;
        goto LABEL_63;
      }
    }

    if ([v4 hasError])
    {
      v22 = 0;
    }

    else
    {
      v22 = v25;
    }

LABEL_63:
    v37 = 84;
    goto LABEL_64;
  }

LABEL_73:
  if ([v4 hasError])
  {
LABEL_74:
    v44 = 0;
  }

  else
  {
LABEL_75:
    v44 = v5;
  }

  return v44;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriUserAggregationId *)self aggregationId];
  v5 = [(BMSiriUserAggregationId *)self effectiveFrom];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriUserAggregationId validityDays](self, "validityDays")}];
  v7 = [(BMSiriUserAggregationId *)self createdOn];
  v8 = [(BMSiriUserAggregationId *)self adoptedOn];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriUserAggregationId switchedCount](self, "switchedCount")}];
  v10 = [v3 initWithFormat:@"BMSiriUserAggregationId with aggregationId: %@, effectiveFrom: %@, validityDays: %@, createdOn: %@, adoptedOn: %@, switchedCount: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMSiriUserAggregationId)initWithAggregationId:(id)a3 effectiveFrom:(id)a4 validityDays:(id)a5 createdOn:(id)a6 adoptedOn:(id)a7 switchedCount:(id)a8
{
  v31[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v30.receiver = self;
  v30.super_class = BMSiriUserAggregationId;
  v20 = [(BMEventBase *)&v30 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v31[0] = 0;
      v31[1] = 0;
      [v14 getUUIDBytes:v31];
      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v31 length:16];
      raw_aggregationId = v20->_raw_aggregationId;
      v20->_raw_aggregationId = v21;
    }

    else
    {
      raw_aggregationId = v20->_raw_aggregationId;
      v20->_raw_aggregationId = 0;
    }

    if (v15)
    {
      v20->_hasRaw_effectiveFrom = 1;
      [v15 timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_effectiveFrom = 0;
      v23 = -1.0;
    }

    v20->_raw_effectiveFrom = v23;
    if (v16)
    {
      v20->_hasValidityDays = 1;
      v24 = [v16 unsignedIntValue];
    }

    else
    {
      v24 = 0;
      v20->_hasValidityDays = 0;
    }

    v20->_validityDays = v24;
    if (v17)
    {
      v20->_hasRaw_createdOn = 1;
      [v17 timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_createdOn = 0;
      v25 = -1.0;
    }

    v20->_raw_createdOn = v25;
    if (v18)
    {
      v20->_hasRaw_adoptedOn = 1;
      [v18 timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_adoptedOn = 0;
      v26 = -1.0;
    }

    v20->_raw_adoptedOn = v26;
    if (v19)
    {
      v20->_hasSwitchedCount = 1;
      v27 = [v19 unsignedIntValue];
    }

    else
    {
      v27 = 0;
      v20->_hasSwitchedCount = 0;
    }

    v20->_switchedCount = v27;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aggregationId" number:1 type:14 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"effectiveFrom" number:2 type:0 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"validityDays" number:3 type:4 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"createdOn" number:4 type:0 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"adoptedOn" number:5 type:0 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"switchedCount" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aggregationId" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"effectiveFrom" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"validityDays" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"createdOn" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:2];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"adoptedOn" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"switchedCount" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
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

    v8 = [[BMSiriUserAggregationId alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[19] = 0;
    }
  }

  return v4;
}

@end