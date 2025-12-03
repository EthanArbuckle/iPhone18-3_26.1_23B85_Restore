@interface BMProactiveHarvestingNotes
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingNotes)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMProactiveHarvestingNotes)initWithUniqueID:(id)d domainID:(id)iD absoluteTimestamp:(id)timestamp title:(id)title content:(id)content contentProtection:(id)protection personaId:(id)id;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingNotes

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueID = [(BMProactiveHarvestingNotes *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v8 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMProactiveHarvestingNotes *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v11 = [uniqueID3 isEqual:uniqueID4];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    domainID = [(BMProactiveHarvestingNotes *)self domainID];
    domainID2 = [v5 domainID];
    v15 = domainID2;
    if (domainID == domainID2)
    {
    }

    else
    {
      domainID3 = [(BMProactiveHarvestingNotes *)self domainID];
      domainID4 = [v5 domainID];
      v18 = [domainID3 isEqual:domainID4];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    absoluteTimestamp = [(BMProactiveHarvestingNotes *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v21 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMProactiveHarvestingNotes *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v24 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    title = [(BMProactiveHarvestingNotes *)self title];
    title2 = [v5 title];
    v27 = title2;
    if (title == title2)
    {
    }

    else
    {
      title3 = [(BMProactiveHarvestingNotes *)self title];
      title4 = [v5 title];
      v30 = [title3 isEqual:title4];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    content = [(BMProactiveHarvestingNotes *)self content];
    content2 = [v5 content];
    v33 = content2;
    if (content == content2)
    {
    }

    else
    {
      content3 = [(BMProactiveHarvestingNotes *)self content];
      content4 = [v5 content];
      v36 = [content3 isEqual:content4];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    contentProtection = [(BMProactiveHarvestingNotes *)self contentProtection];
    contentProtection2 = [v5 contentProtection];
    v39 = contentProtection2;
    if (contentProtection == contentProtection2)
    {
    }

    else
    {
      contentProtection3 = [(BMProactiveHarvestingNotes *)self contentProtection];
      contentProtection4 = [v5 contentProtection];
      v42 = [contentProtection3 isEqual:contentProtection4];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    personaId = [(BMProactiveHarvestingNotes *)self personaId];
    personaId2 = [v5 personaId];
    if (personaId == personaId2)
    {
      v12 = 1;
    }

    else
    {
      personaId3 = [(BMProactiveHarvestingNotes *)self personaId];
      personaId4 = [v5 personaId];
      v12 = [personaId3 isEqual:personaId4];
    }

    goto LABEL_26;
  }

  v12 = 0;
LABEL_27:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v29[7] = *MEMORY[0x1E69E9840];
  uniqueID = [(BMProactiveHarvestingNotes *)self uniqueID];
  domainID = [(BMProactiveHarvestingNotes *)self domainID];
  absoluteTimestamp = [(BMProactiveHarvestingNotes *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v6 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMProactiveHarvestingNotes *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v27 = [v6 numberWithDouble:?];
  }

  else
  {
    v27 = 0;
  }

  title = [(BMProactiveHarvestingNotes *)self title];
  content = [(BMProactiveHarvestingNotes *)self content];
  contentProtection = [(BMProactiveHarvestingNotes *)self contentProtection];
  personaId = [(BMProactiveHarvestingNotes *)self personaId];
  v28[0] = @"uniqueID";
  null = uniqueID;
  if (!uniqueID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v29[0] = null;
  v28[1] = @"domainID";
  null2 = domainID;
  if (!domainID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null2;
  v29[1] = null2;
  v28[2] = @"absoluteTimestamp";
  null3 = v27;
  if (!v27)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v29[2] = null3;
  v28[3] = @"title";
  null4 = title;
  if (!title)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null3;
  v26 = uniqueID;
  v29[3] = null4;
  v28[4] = @"content";
  null5 = content;
  if (!content)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = domainID;
  v29[4] = null5;
  v28[5] = @"contentProtection";
  null6 = contentProtection;
  if (!contentProtection)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = null6;
  v28[6] = @"personaId";
  null7 = personaId;
  if (!personaId)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = null7;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:7];
  if (personaId)
  {
    if (contentProtection)
    {
      goto LABEL_20;
    }

LABEL_30:

    if (content)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (!contentProtection)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (content)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!title)
  {
  }

  if (v27)
  {
    if (v17)
    {
      goto LABEL_25;
    }

LABEL_33:

    if (v26)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (!v17)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (v26)
  {
    goto LABEL_26;
  }

LABEL_34:

LABEL_26:
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BMProactiveHarvestingNotes)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v83[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"domainID"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v69 = 0;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
      v64 = v9;
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = MEMORY[0x1E695DF00];
          v13 = v10;
          v14 = v10;
          v15 = [v12 alloc];
          [v14 doubleValue];
          v17 = v16;

          v10 = v13;
          v18 = [v15 initWithTimeIntervalSinceReferenceDate:v17];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = objc_alloc_init(MEMORY[0x1E696AC80]);
            v11 = [v28 dateFromString:v10];

            goto LABEL_23;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v11 = 0;
              v21 = v69;
              goto LABEL_68;
            }

            v66 = objc_alloc(MEMORY[0x1E696ABC0]);
            errorCopy = error;
            v49 = *MEMORY[0x1E698F240];
            v78 = *MEMORY[0x1E696A578];
            v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
            v79 = v68;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
            v50 = [v66 initWithDomain:v49 code:2 userInfo:v29];
            v11 = 0;
            error = 0;
            *errorCopy = v50;
            goto LABEL_66;
          }

          v18 = v10;
        }

        v11 = v18;
      }

      else
      {
        v11 = 0;
      }

LABEL_23:
      v29 = [dictionaryCopy objectForKeyedSubscript:@"title"];
      v67 = v8;
      v62 = v10;
      v63 = v11;
      if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v68 = 0;
            v21 = v69;
LABEL_67:

            v9 = v64;
            goto LABEL_68;
          }

          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy2 = error;
          v37 = *MEMORY[0x1E698F240];
          v76 = *MEMORY[0x1E696A578];
          v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"title"];
          v77 = v65;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v38 = v36;
          v10 = v62;
          v39 = [v38 initWithDomain:v37 code:2 userInfo:v30];
          v68 = 0;
          error = 0;
          *errorCopy2 = v39;
          goto LABEL_65;
        }

        v68 = v29;
      }

      else
      {
        v68 = 0;
      }

      v30 = [dictionaryCopy objectForKeyedSubscript:@"content"];
      v61 = v7;
      if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v65 = 0;
LABEL_65:

            v8 = v67;
LABEL_66:
            v21 = v69;
            goto LABEL_67;
          }

          errorCopy4 = self;
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy3 = error;
          v41 = *MEMORY[0x1E698F240];
          v74 = *MEMORY[0x1E696A578];
          v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"content"];
          v75 = v33;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          v42 = [v40 initWithDomain:v41 code:2 userInfo:v31];
          v65 = 0;
          error = 0;
          *errorCopy3 = v42;
          goto LABEL_64;
        }

        v65 = v30;
      }

      else
      {
        v65 = 0;
      }

      v31 = [dictionaryCopy objectForKeyedSubscript:@"contentProtection"];
      if (!v31 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        errorCopy4 = self;
        v33 = 0;
        goto LABEL_32;
      }

      objc_opt_class();
      errorCopy4 = self;
      if (objc_opt_isKindOfClass())
      {
        v33 = v31;
LABEL_32:
        v34 = [dictionaryCopy objectForKeyedSubscript:@"personaId"];
        if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v35 = 0;
LABEL_35:
          error = [(BMProactiveHarvestingNotes *)errorCopy4 initWithUniqueID:v67 domainID:v69 absoluteTimestamp:v11 title:v68 content:v65 contentProtection:v33 personaId:v35];
          errorCopy4 = error;
LABEL_63:

          goto LABEL_64;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = v34;
          goto LABEL_35;
        }

        if (error)
        {
          v59 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = *MEMORY[0x1E698F240];
          v70 = *MEMORY[0x1E696A578];
          errorCopy5 = error;
          v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
          v71 = v47;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
          *errorCopy5 = [v59 initWithDomain:v53 code:2 userInfo:v48];

          v35 = 0;
          error = 0;
        }

        else
        {
          v35 = 0;
        }

LABEL_62:
        v11 = v63;
        goto LABEL_63;
      }

      if (error)
      {
        v58 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v72 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
        v73 = v35;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
        v44 = [v58 initWithDomain:v43 code:2 userInfo:v34];
        v33 = 0;
        errorCopy6 = error;
        error = 0;
        *errorCopy6 = v44;
        goto LABEL_62;
      }

      v33 = 0;
LABEL_64:

      self = errorCopy4;
      v7 = v61;
      v10 = v62;
      goto LABEL_65;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v69 = v9;
      goto LABEL_7;
    }

    if (error)
    {
      v23 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy7 = error;
      v24 = *MEMORY[0x1E698F240];
      v80 = *MEMORY[0x1E696A578];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainID"];
      v81 = v11;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      v26 = v23;
      v10 = v25;
      v27 = [v26 initWithDomain:v24 code:2 userInfo:v25];
      v21 = 0;
      error = 0;
      *errorCopy7 = v27;
LABEL_68:

      goto LABEL_69;
    }

    v21 = 0;
LABEL_69:

    goto LABEL_70;
  }

  if (error)
  {
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy8 = error;
    v20 = *MEMORY[0x1E698F240];
    v82 = *MEMORY[0x1E696A578];
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
    v83[0] = v21;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:&v82 count:1];
    v22 = [v19 initWithDomain:v20 code:2 userInfo:v9];
    v8 = 0;
    error = 0;
    *errorCopy8 = v22;
    goto LABEL_69;
  }

  v8 = 0;
LABEL_70:

  v51 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingNotes *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_domainID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_content)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMProactiveHarvestingNotes;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_45;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_43;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
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
        goto LABEL_43;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        if (v15 > 5)
        {
          if (v15 == 6)
          {
            v16 = PBReaderReadString();
            v17 = 72;
          }

          else
          {
            if (v15 != 7)
            {
LABEL_33:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_44;
              }

              goto LABEL_39;
            }

            v16 = PBReaderReadString();
            v17 = 80;
          }
        }

        else if (v15 == 4)
        {
          v16 = PBReaderReadString();
          v17 = 56;
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_33;
          }

          v16 = PBReaderReadString();
          v17 = 64;
        }

        goto LABEL_38;
      }

      if (v15 == 1)
      {
        break;
      }

      if (v15 == 2)
      {
        v16 = PBReaderReadString();
        v17 = 48;
        goto LABEL_38;
      }

      if (v15 != 3)
      {
        goto LABEL_33;
      }

      v5->_hasRaw_absoluteTimestamp = 1;
      v26 = 0.0;
      v18 = [fromCopy position] + 8;
      if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
      {
        data2 = [fromCopy data];
        [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 8}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
      }

      else
      {
        [fromCopy _setError];
      }

      v5->_raw_absoluteTimestamp = v26;
LABEL_39:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_43;
      }
    }

    v16 = PBReaderReadString();
    v17 = 40;
LABEL_38:
    v20 = *(&v5->super.super.isa + v17);
    *(&v5->super.super.isa + v17) = v16;

    goto LABEL_39;
  }

LABEL_43:
  if ([fromCopy hasError])
  {
LABEL_44:
    v23 = 0;
  }

  else
  {
LABEL_45:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueID = [(BMProactiveHarvestingNotes *)self uniqueID];
  domainID = [(BMProactiveHarvestingNotes *)self domainID];
  absoluteTimestamp = [(BMProactiveHarvestingNotes *)self absoluteTimestamp];
  title = [(BMProactiveHarvestingNotes *)self title];
  content = [(BMProactiveHarvestingNotes *)self content];
  contentProtection = [(BMProactiveHarvestingNotes *)self contentProtection];
  personaId = [(BMProactiveHarvestingNotes *)self personaId];
  v11 = [v3 initWithFormat:@"BMProactiveHarvestingNotes with uniqueID: %@, domainID: %@, absoluteTimestamp: %@, title: %@, content: %@, contentProtection: %@, personaId: %@", uniqueID, domainID, absoluteTimestamp, title, content, contentProtection, personaId];

  return v11;
}

- (BMProactiveHarvestingNotes)initWithUniqueID:(id)d domainID:(id)iD absoluteTimestamp:(id)timestamp title:(id)title content:(id)content contentProtection:(id)protection personaId:(id)id
{
  dCopy = d;
  iDCopy = iD;
  timestampCopy = timestamp;
  titleCopy = title;
  contentCopy = content;
  protectionCopy = protection;
  idCopy = id;
  v26.receiver = self;
  v26.super_class = BMProactiveHarvestingNotes;
  v19 = [(BMEventBase *)&v26 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_uniqueID, d);
    objc_storeStrong(&v19->_domainID, iD);
    if (timestampCopy)
    {
      v19->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v19->_hasRaw_absoluteTimestamp = 0;
      v20 = -1.0;
    }

    v19->_raw_absoluteTimestamp = v20;
    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v19->_content, content);
    objc_storeStrong(&v19->_contentProtection, protection);
    objc_storeStrong(&v19->_personaId, id);
  }

  return v19;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainID" number:2 type:13 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:3 type:0 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"content" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:1];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"content" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMProactiveHarvestingNotes alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[8] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end