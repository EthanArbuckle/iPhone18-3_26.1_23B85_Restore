@interface BMSiriUserSamplingId
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriUserSamplingId)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriUserSamplingId)initWithSamplingId:(id)id effectiveFrom:(id)from validityDays:(id)days createdOn:(id)on adoptedOn:(id)adoptedOn switchedCount:(id)count;
- (BOOL)isEqual:(id)equal;
- (NSDate)adoptedOn;
- (NSDate)createdOn;
- (NSDate)effectiveFrom;
- (NSString)description;
- (NSUUID)samplingId;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriUserSamplingId

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    samplingId = [(BMSiriUserSamplingId *)self samplingId];
    samplingId2 = [v5 samplingId];
    v8 = samplingId2;
    if (samplingId == samplingId2)
    {
    }

    else
    {
      samplingId3 = [(BMSiriUserSamplingId *)self samplingId];
      samplingId4 = [v5 samplingId];
      v11 = [samplingId3 isEqual:samplingId4];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    effectiveFrom = [(BMSiriUserSamplingId *)self effectiveFrom];
    effectiveFrom2 = [v5 effectiveFrom];
    v15 = effectiveFrom2;
    if (effectiveFrom == effectiveFrom2)
    {
    }

    else
    {
      effectiveFrom3 = [(BMSiriUserSamplingId *)self effectiveFrom];
      effectiveFrom4 = [v5 effectiveFrom];
      v18 = [effectiveFrom3 isEqual:effectiveFrom4];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    if (-[BMSiriUserSamplingId hasValidityDays](self, "hasValidityDays") || [v5 hasValidityDays])
    {
      if (![(BMSiriUserSamplingId *)self hasValidityDays])
      {
        goto LABEL_29;
      }

      if (![v5 hasValidityDays])
      {
        goto LABEL_29;
      }

      validityDays = [(BMSiriUserSamplingId *)self validityDays];
      if (validityDays != [v5 validityDays])
      {
        goto LABEL_29;
      }
    }

    createdOn = [(BMSiriUserSamplingId *)self createdOn];
    createdOn2 = [v5 createdOn];
    v22 = createdOn2;
    if (createdOn == createdOn2)
    {
    }

    else
    {
      createdOn3 = [(BMSiriUserSamplingId *)self createdOn];
      createdOn4 = [v5 createdOn];
      v25 = [createdOn3 isEqual:createdOn4];

      if (!v25)
      {
        goto LABEL_29;
      }
    }

    adoptedOn = [(BMSiriUserSamplingId *)self adoptedOn];
    adoptedOn2 = [v5 adoptedOn];
    v28 = adoptedOn2;
    if (adoptedOn == adoptedOn2)
    {
    }

    else
    {
      adoptedOn3 = [(BMSiriUserSamplingId *)self adoptedOn];
      adoptedOn4 = [v5 adoptedOn];
      v31 = [adoptedOn3 isEqual:adoptedOn4];

      if (!v31)
      {
        goto LABEL_29;
      }
    }

    if (!-[BMSiriUserSamplingId hasSwitchedCount](self, "hasSwitchedCount") && ![v5 hasSwitchedCount])
    {
      v12 = 1;
      goto LABEL_30;
    }

    if (-[BMSiriUserSamplingId hasSwitchedCount](self, "hasSwitchedCount") && [v5 hasSwitchedCount])
    {
      switchedCount = [(BMSiriUserSamplingId *)self switchedCount];
      v12 = switchedCount == [v5 switchedCount];
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

- (NSUUID)samplingId
{
  raw_samplingId = self->_raw_samplingId;
  if (raw_samplingId)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_samplingId toType:3];
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
  samplingId = [(BMSiriUserSamplingId *)self samplingId];
  uUIDString = [samplingId UUIDString];

  effectiveFrom = [(BMSiriUserSamplingId *)self effectiveFrom];
  if (effectiveFrom)
  {
    v6 = MEMORY[0x1E696AD98];
    effectiveFrom2 = [(BMSiriUserSamplingId *)self effectiveFrom];
    [effectiveFrom2 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMSiriUserSamplingId *)self hasValidityDays])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriUserSamplingId validityDays](self, "validityDays")}];
  }

  else
  {
    v9 = 0;
  }

  createdOn = [(BMSiriUserSamplingId *)self createdOn];
  if (createdOn)
  {
    v11 = MEMORY[0x1E696AD98];
    createdOn2 = [(BMSiriUserSamplingId *)self createdOn];
    [createdOn2 timeIntervalSince1970];
    v13 = [v11 numberWithDouble:?];
  }

  else
  {
    v13 = 0;
  }

  adoptedOn = [(BMSiriUserSamplingId *)self adoptedOn];
  if (adoptedOn)
  {
    v15 = MEMORY[0x1E696AD98];
    adoptedOn2 = [(BMSiriUserSamplingId *)self adoptedOn];
    [adoptedOn2 timeIntervalSince1970];
    v17 = [v15 numberWithDouble:?];
  }

  else
  {
    v17 = 0;
  }

  if ([(BMSiriUserSamplingId *)self hasSwitchedCount])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriUserSamplingId switchedCount](self, "switchedCount")}];
  }

  else
  {
    v18 = 0;
  }

  v31 = uUIDString;
  v32[0] = @"samplingId";
  null = uUIDString;
  if (!uUIDString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null;
  v30 = v8;
  v33[0] = null;
  v32[1] = @"effectiveFrom";
  null2 = v8;
  if (!v8)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v33[1] = null2;
  v32[2] = @"validityDays";
  null3 = v9;
  if (!v9)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v33[2] = null3;
  v32[3] = @"createdOn";
  null4 = v13;
  if (!v13)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v33[3] = null4;
  v32[4] = @"adoptedOn";
  null5 = v17;
  if (!v17)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v33[4] = null5;
  v32[5] = @"switchedCount";
  null6 = v18;
  if (!v18)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v33[5] = null6;
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

- (BMSiriUserSamplingId)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v87[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"samplingId"];
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
      if (error)
      {
        v52 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v54 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"samplingId"];
        v87[0] = v73;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
        *errorCopy = [v52 initWithDomain:v54 code:2 userInfo:v55];

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
    v9 = [dictionaryCopy objectForKeyedSubscript:@"effectiveFrom"];
    errorCopy2 = error;
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
          if (!error)
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
          *errorCopy2 = [v56 initWithDomain:v57 code:2 userInfo:v24];
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
    v24 = [dictionaryCopy objectForKeyedSubscript:@"validityDays"];
    v69 = v8;
    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
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
        *errorCopy2 = [v33 initWithDomain:v34 code:2 userInfo:v25];
        goto LABEL_46;
      }

      v70 = v24;
    }

    else
    {
      v70 = 0;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"createdOn"];
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
          if (!error)
          {
            v26 = 0;
            v22 = 0;
            goto LABEL_46;
          }

          selfCopy5 = self;
          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v59 = *MEMORY[0x1E698F240];
          v78 = *MEMORY[0x1E696A578];
          v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"createdOn"];
          v79 = v38;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
          v60 = [v58 initWithDomain:v59 code:2 userInfo:v36];
          v26 = 0;
          v22 = 0;
          *errorCopy2 = v60;
LABEL_45:

          self = selfCopy5;
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
    v36 = [dictionaryCopy objectForKeyedSubscript:@"adoptedOn"];
    if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        selfCopy5 = self;
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
          selfCopy5 = self;
          v45 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v38 = [v45 dateFromString:v36];

          goto LABEL_40;
        }

        objc_opt_class();
        selfCopy5 = self;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy2)
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
          *errorCopy2 = v63;
          goto LABEL_44;
        }

        v44 = v36;
      }

      v38 = v44;
    }

    else
    {
      selfCopy5 = self;
      v38 = 0;
    }

LABEL_40:
    v46 = [dictionaryCopy objectForKeyedSubscript:@"switchedCount"];
    if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy2)
        {
          v65 = objc_alloc(MEMORY[0x1E696ABC0]);
          v64 = *MEMORY[0x1E698F240];
          v74 = *MEMORY[0x1E696A578];
          v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"switchedCount"];
          v75 = v50;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          *errorCopy2 = [v65 initWithDomain:v64 code:2 userInfo:v51];
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

    v22 = [(BMSiriUserSamplingId *)selfCopy5 initWithSamplingId:v69 effectiveFrom:v71 validityDays:v70 createdOn:v26 adoptedOn:v38 switchedCount:v47];
    selfCopy5 = v22;
LABEL_44:

    goto LABEL_45;
  }

  if (!error)
  {
    v22 = 0;
    goto LABEL_51;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy3 = error;
  v21 = *MEMORY[0x1E698F240];
  v84 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"samplingId"];
  v85 = v8;
  v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
  v22 = 0;
  *errorCopy3 = [v19 initWithDomain:v21 code:2 userInfo:?];

LABEL_50:
LABEL_51:

  v48 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriUserSamplingId *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_raw_samplingId)
  {
    PBDataWriterWriteDataField();
    toCopy = v10;
  }

  if (self->_hasRaw_effectiveFrom)
  {
    raw_effectiveFrom = self->_raw_effectiveFrom;
    PBDataWriterWriteDoubleField();
    toCopy = v10;
  }

  if (self->_hasValidityDays)
  {
    validityDays = self->_validityDays;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
  }

  if (self->_hasRaw_createdOn)
  {
    raw_createdOn = self->_raw_createdOn;
    PBDataWriterWriteDoubleField();
    toCopy = v10;
  }

  if (self->_hasRaw_adoptedOn)
  {
    raw_adoptedOn = self->_raw_adoptedOn;
    PBDataWriterWriteDoubleField();
    toCopy = v10;
  }

  if (self->_hasSwitchedCount)
  {
    switchedCount = self->_switchedCount;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v46.receiver = self;
  v46.super_class = BMSiriUserSamplingId;
  v5 = [(BMEventBase *)&v46 init];
  if (!v5)
  {
    goto LABEL_75;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_73;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v47) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
          v33 = [fromCopy position] + 8;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 8, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
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
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if ([fromCopy hasError])
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

      raw_samplingId = v5->_raw_samplingId;
      v5->_raw_samplingId = v29;

LABEL_72:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_73;
      }
    }

    if (v15 == 4)
    {
      v5->_hasRaw_createdOn = 1;
      v47 = 0;
      v31 = [fromCopy position] + 8;
      if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 8, v32 <= objc_msgSend(fromCopy, "length")))
      {
        data4 = [fromCopy data];
        [data4 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 8}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
      }

      else
      {
        [fromCopy _setError];
      }

      v39 = v47;
      v40 = 48;
      goto LABEL_71;
    }

    if (v15 == 5)
    {
      v5->_hasRaw_adoptedOn = 1;
      v47 = 0;
      v35 = [fromCopy position] + 8;
      if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 8, v36 <= objc_msgSend(fromCopy, "length")))
      {
        data5 = [fromCopy data];
        [data5 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 8}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
      }

      else
      {
        [fromCopy _setError];
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
      v26 = [fromCopy position] + 1;
      if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
      {
        data6 = [fromCopy data];
        [data6 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
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

    if ([fromCopy hasError])
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
  if ([fromCopy hasError])
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
  samplingId = [(BMSiriUserSamplingId *)self samplingId];
  effectiveFrom = [(BMSiriUserSamplingId *)self effectiveFrom];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriUserSamplingId validityDays](self, "validityDays")}];
  createdOn = [(BMSiriUserSamplingId *)self createdOn];
  adoptedOn = [(BMSiriUserSamplingId *)self adoptedOn];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriUserSamplingId switchedCount](self, "switchedCount")}];
  v10 = [v3 initWithFormat:@"BMSiriUserSamplingId with samplingId: %@, effectiveFrom: %@, validityDays: %@, createdOn: %@, adoptedOn: %@, switchedCount: %@", samplingId, effectiveFrom, v6, createdOn, adoptedOn, v9];

  return v10;
}

- (BMSiriUserSamplingId)initWithSamplingId:(id)id effectiveFrom:(id)from validityDays:(id)days createdOn:(id)on adoptedOn:(id)adoptedOn switchedCount:(id)count
{
  v31[2] = *MEMORY[0x1E69E9840];
  idCopy = id;
  fromCopy = from;
  daysCopy = days;
  onCopy = on;
  adoptedOnCopy = adoptedOn;
  countCopy = count;
  v30.receiver = self;
  v30.super_class = BMSiriUserSamplingId;
  v20 = [(BMEventBase *)&v30 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (idCopy)
    {
      v31[0] = 0;
      v31[1] = 0;
      [idCopy getUUIDBytes:v31];
      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v31 length:16];
      raw_samplingId = v20->_raw_samplingId;
      v20->_raw_samplingId = v21;
    }

    else
    {
      raw_samplingId = v20->_raw_samplingId;
      v20->_raw_samplingId = 0;
    }

    if (fromCopy)
    {
      v20->_hasRaw_effectiveFrom = 1;
      [fromCopy timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_effectiveFrom = 0;
      v23 = -1.0;
    }

    v20->_raw_effectiveFrom = v23;
    if (daysCopy)
    {
      v20->_hasValidityDays = 1;
      unsignedIntValue = [daysCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v20->_hasValidityDays = 0;
    }

    v20->_validityDays = unsignedIntValue;
    if (onCopy)
    {
      v20->_hasRaw_createdOn = 1;
      [onCopy timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_createdOn = 0;
      v25 = -1.0;
    }

    v20->_raw_createdOn = v25;
    if (adoptedOnCopy)
    {
      v20->_hasRaw_adoptedOn = 1;
      [adoptedOnCopy timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_adoptedOn = 0;
      v26 = -1.0;
    }

    v20->_raw_adoptedOn = v26;
    if (countCopy)
    {
      v20->_hasSwitchedCount = 1;
      unsignedIntValue2 = [countCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v20->_hasSwitchedCount = 0;
    }

    v20->_switchedCount = unsignedIntValue2;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"samplingId" number:1 type:14 subMessageClass:0];
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
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"samplingId" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
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

    v8 = [[BMSiriUserSamplingId alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[19] = 0;
    }
  }

  return v4;
}

@end