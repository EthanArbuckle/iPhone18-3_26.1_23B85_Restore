@interface BMAdPlatformsCandidate
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAdPlatformsCandidate)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAdPlatformsCandidate)initWithSourceID:(id)d displayOrder:(id)order filterID:(int)iD filterReason:(id)reason secondaryFilterReason:(id)filterReason placed:(id)placed wouldBeFiltered:(id)filtered impression:(int)self0;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAdPlatformsCandidate

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    sourceID = [(BMAdPlatformsCandidate *)self sourceID];
    sourceID2 = [v5 sourceID];
    v8 = sourceID2;
    if (sourceID == sourceID2)
    {
    }

    else
    {
      sourceID3 = [(BMAdPlatformsCandidate *)self sourceID];
      sourceID4 = [v5 sourceID];
      v11 = [sourceID3 isEqual:sourceID4];

      if (!v11)
      {
        goto LABEL_32;
      }
    }

    if (-[BMAdPlatformsCandidate hasDisplayOrder](self, "hasDisplayOrder") || [v5 hasDisplayOrder])
    {
      if (![(BMAdPlatformsCandidate *)self hasDisplayOrder])
      {
        goto LABEL_32;
      }

      if (![v5 hasDisplayOrder])
      {
        goto LABEL_32;
      }

      displayOrder = [(BMAdPlatformsCandidate *)self displayOrder];
      if (displayOrder != [v5 displayOrder])
      {
        goto LABEL_32;
      }
    }

    filterID = [(BMAdPlatformsCandidate *)self filterID];
    if (filterID != [v5 filterID])
    {
      goto LABEL_32;
    }

    if (-[BMAdPlatformsCandidate hasFilterReason](self, "hasFilterReason") || [v5 hasFilterReason])
    {
      if (![(BMAdPlatformsCandidate *)self hasFilterReason])
      {
        goto LABEL_32;
      }

      if (![v5 hasFilterReason])
      {
        goto LABEL_32;
      }

      filterReason = [(BMAdPlatformsCandidate *)self filterReason];
      if (filterReason != [v5 filterReason])
      {
        goto LABEL_32;
      }
    }

    secondaryFilterReason = [(BMAdPlatformsCandidate *)self secondaryFilterReason];
    secondaryFilterReason2 = [v5 secondaryFilterReason];
    v18 = secondaryFilterReason2;
    if (secondaryFilterReason == secondaryFilterReason2)
    {
    }

    else
    {
      secondaryFilterReason3 = [(BMAdPlatformsCandidate *)self secondaryFilterReason];
      secondaryFilterReason4 = [v5 secondaryFilterReason];
      v21 = [secondaryFilterReason3 isEqual:secondaryFilterReason4];

      if (!v21)
      {
        goto LABEL_32;
      }
    }

    if (!-[BMAdPlatformsCandidate hasPlaced](self, "hasPlaced") && ![v5 hasPlaced] || -[BMAdPlatformsCandidate hasPlaced](self, "hasPlaced") && objc_msgSend(v5, "hasPlaced") && (v22 = -[BMAdPlatformsCandidate placed](self, "placed"), v22 == objc_msgSend(v5, "placed")))
    {
      if (!-[BMAdPlatformsCandidate hasWouldBeFiltered](self, "hasWouldBeFiltered") && ![v5 hasWouldBeFiltered] || -[BMAdPlatformsCandidate hasWouldBeFiltered](self, "hasWouldBeFiltered") && objc_msgSend(v5, "hasWouldBeFiltered") && (v23 = -[BMAdPlatformsCandidate wouldBeFiltered](self, "wouldBeFiltered"), v23 == objc_msgSend(v5, "wouldBeFiltered")))
      {
        impression = [(BMAdPlatformsCandidate *)self impression];
        v12 = impression == [v5 impression];
        goto LABEL_33;
      }
    }

LABEL_32:
    v12 = 0;
LABEL_33:

    goto LABEL_34;
  }

  v12 = 0;
LABEL_34:

  return v12;
}

- (id)jsonDictionary
{
  v28[8] = *MEMORY[0x1E69E9840];
  sourceID = [(BMAdPlatformsCandidate *)self sourceID];
  if ([(BMAdPlatformsCandidate *)self hasDisplayOrder])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsCandidate displayOrder](self, "displayOrder")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsCandidate filterID](self, "filterID")}];
  if ([(BMAdPlatformsCandidate *)self hasFilterReason])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsCandidate filterReason](self, "filterReason")}];
  }

  else
  {
    v6 = 0;
  }

  secondaryFilterReason = [(BMAdPlatformsCandidate *)self secondaryFilterReason];
  if ([(BMAdPlatformsCandidate *)self hasPlaced])
  {
    v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsCandidate placed](self, "placed")}];
  }

  else
  {
    v25 = 0;
  }

  if ([(BMAdPlatformsCandidate *)self hasWouldBeFiltered])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsCandidate wouldBeFiltered](self, "wouldBeFiltered")}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsCandidate impression](self, "impression")}];
  v27[0] = @"sourceID";
  null = sourceID;
  if (!sourceID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v28[0] = null;
  v27[1] = @"displayOrder";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null2;
  v28[1] = null2;
  v27[2] = @"filterID";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = sourceID;
  v20 = null3;
  v28[2] = null3;
  v27[3] = @"filterReason";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v4;
  v28[3] = null4;
  v27[4] = @"secondaryFilterReason";
  null5 = secondaryFilterReason;
  if (!secondaryFilterReason)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v28[4] = null5;
  v27[5] = @"placed";
  null6 = v25;
  if (!v25)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = null6;
  v27[6] = @"wouldBeFiltered";
  null7 = v7;
  if (!v7)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v28[6] = null7;
  v27[7] = @"impression";
  null8 = v8;
  if (!v8)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v28[7] = null8;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:8];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if (v7)
    {
      goto LABEL_31;
    }
  }

LABEL_31:
  if (!v25)
  {
  }

  if (!secondaryFilterReason)
  {
  }

  if (!v6)
  {
  }

  if (v5)
  {
    if (v23)
    {
      goto LABEL_39;
    }

LABEL_46:

    if (v24)
    {
      goto LABEL_40;
    }

    goto LABEL_47;
  }

  if (!v23)
  {
    goto LABEL_46;
  }

LABEL_39:
  if (v24)
  {
    goto LABEL_40;
  }

LABEL_47:

LABEL_40:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMAdPlatformsCandidate)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v90[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"sourceID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"displayOrder"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v16 = 0;
          goto LABEL_69;
        }

        errorCopy = error;
        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = v8;
        v21 = *MEMORY[0x1E698F240];
        v87 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"displayOrder"];
        v88 = v22;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        v24 = v21;
        v8 = v20;
        v10 = v23;
        v25 = [v19 initWithDomain:v24 code:2 userInfo:v23];
        v16 = 0;
        error = 0;
        *errorCopy = v25;
        errorCopy2 = v22;
        goto LABEL_68;
      }

      v74 = v9;
    }

    else
    {
      v74 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"filterID"];
    v71 = v8;
    v69 = v9;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      errorCopy2 = error;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            error = 0;
            v16 = v74;
            goto LABEL_68;
          }

          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = *MEMORY[0x1E698F240];
          v85 = *MEMORY[0x1E696A578];
          v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"filterID"];
          v86 = v73;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
          v54 = v53;
          v8 = v71;
          v55 = [v52 initWithDomain:v54 code:2 userInfo:v26];
          error = 0;
          *errorCopy2 = v55;
          errorCopy2 = 0;
          goto LABEL_73;
        }

        v12 = [MEMORY[0x1E696AD98] numberWithInt:BMAdPlatformsCandidateFilterFromString(v10)];
      }

      errorCopy2 = v12;
    }

    else
    {
      errorCopy2 = 0;
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"filterReason"];
    v66 = errorCopy2;
    v67 = v10;
    if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v73 = 0;
      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v73 = v26;
LABEL_26:
      v27 = [dictionaryCopy objectForKeyedSubscript:@"secondaryFilterReason"];
      v65 = v7;
      errorCopy5 = self;
      if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v70 = 0;
LABEL_29:
        v28 = [dictionaryCopy objectForKeyedSubscript:@"placed"];
        if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v68 = 0;
              goto LABEL_65;
            }

            errorCopy3 = error;
            v45 = objc_alloc(MEMORY[0x1E696ABC0]);
            v46 = *MEMORY[0x1E698F240];
            v79 = *MEMORY[0x1E696A578];
            v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"placed"];
            v80 = v30;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
            v47 = [v45 initWithDomain:v46 code:2 userInfo:v29];
            v68 = 0;
            error = 0;
            *errorCopy3 = v47;
            errorCopy2 = v66;
            goto LABEL_64;
          }

          v68 = v28;
        }

        else
        {
          v68 = 0;
        }

        v29 = [dictionaryCopy objectForKeyedSubscript:@"wouldBeFiltered"];
        if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v30 = 0;
              goto LABEL_64;
            }

            errorCopy4 = error;
            v49 = objc_alloc(MEMORY[0x1E696ABC0]);
            v50 = *MEMORY[0x1E698F240];
            v77 = *MEMORY[0x1E696A578];
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"wouldBeFiltered"];
            v78 = v32;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            v51 = [v49 initWithDomain:v50 code:2 userInfo:v31];
            v30 = 0;
            error = 0;
            *errorCopy4 = v51;
            goto LABEL_82;
          }

          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        v31 = [dictionaryCopy objectForKeyedSubscript:@"impression"];
        if (!v31 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v32 = 0;
LABEL_62:
          intValue = [errorCopy2 intValue];
          LODWORD(v62) = [v32 intValue];
          error = [(BMAdPlatformsCandidate *)errorCopy5 initWithSourceID:v71 displayOrder:v74 filterID:intValue filterReason:v73 secondaryFilterReason:v70 placed:v68 wouldBeFiltered:v30 impression:v62];
          errorCopy5 = error;
LABEL_63:

LABEL_64:
          v7 = v65;
          v8 = v71;
          goto LABEL_65;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = v31;
LABEL_61:
          v32 = v33;
          goto LABEL_62;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = [MEMORY[0x1E696AD98] numberWithInt:BMAdPlatformsCandidateImpressionFromString(v31)];
          goto LABEL_61;
        }

        if (error)
        {
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v63 = *MEMORY[0x1E698F240];
          v75 = *MEMORY[0x1E696A578];
          errorCopy6 = error;
          v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"impression"];
          v76 = v60;
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          *errorCopy6 = [v64 initWithDomain:v63 code:2 userInfo:v61];

          v32 = 0;
          error = 0;
        }

        else
        {
          v32 = 0;
        }

LABEL_82:
        errorCopy2 = v66;
        goto LABEL_63;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v70 = v27;
        goto LABEL_29;
      }

      if (error)
      {
        errorCopy7 = error;
        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v81 = *MEMORY[0x1E696A578];
        v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"secondaryFilterReason"];
        v82 = v68;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v42 = v41;
        v8 = v71;
        v43 = [v40 initWithDomain:v42 code:2 userInfo:v28];
        v70 = 0;
        error = 0;
        *errorCopy7 = v43;
        errorCopy2 = v66;
LABEL_65:
        v16 = v74;

        self = errorCopy5;
LABEL_66:

        v10 = v67;
LABEL_67:

        v9 = v69;
LABEL_68:

        goto LABEL_69;
      }

      v70 = 0;
LABEL_75:
      v16 = v74;
      goto LABEL_66;
    }

    if (error)
    {
      errorCopy8 = error;
      v35 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v83 = *MEMORY[0x1E696A578];
      v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"filterReason"];
      v84 = v70;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      v37 = v36;
      v8 = v71;
      v38 = [v35 initWithDomain:v37 code:2 userInfo:v27];
      v73 = 0;
      error = 0;
      *errorCopy8 = v38;
      errorCopy2 = v66;
      goto LABEL_75;
    }

    v73 = 0;
LABEL_73:
    v16 = v74;
    goto LABEL_67;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (error)
  {
    errorCopy9 = error;
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E698F240];
    v89 = *MEMORY[0x1E696A578];
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceID"];
    v90[0] = v16;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];
    v17 = [v14 initWithDomain:v15 code:2 userInfo:v9];
    v8 = 0;
    error = 0;
    *errorCopy9 = v17;
LABEL_69:

    goto LABEL_70;
  }

  v8 = 0;
LABEL_70:

  v57 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAdPlatformsCandidate *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_sourceID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasDisplayOrder)
  {
    displayOrder = self->_displayOrder;
    PBDataWriterWriteInt32Field();
  }

  filterID = self->_filterID;
  PBDataWriterWriteUint32Field();
  if (self->_hasFilterReason)
  {
    filterReason = self->_filterReason;
    PBDataWriterWriteInt32Field();
  }

  if (self->_secondaryFilterReason)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPlaced)
  {
    placed = self->_placed;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasWouldBeFiltered)
  {
    wouldBeFiltered = self->_wouldBeFiltered;
    PBDataWriterWriteBOOLField();
  }

  impression = self->_impression;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v62.receiver = self;
  v62.super_class = BMAdPlatformsCandidate;
  v5 = [(BMEventBase *)&v62 init];
  if (!v5)
  {
    goto LABEL_115;
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
        v63 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v63 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v63 & 0x7F) << v7;
        if ((v63 & 0x80) == 0)
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
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 4)
      {
        if (v15 > 6)
        {
          if (v15 == 7)
          {
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v5->_hasWouldBeFiltered = 1;
            while (1)
            {
              v63 = 0;
              v53 = [fromCopy position] + 1;
              if (v53 >= [fromCopy position] && (v54 = objc_msgSend(fromCopy, "position") + 1, v54 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v63 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v52 |= (v63 & 0x7F) << v50;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v13 = v51++ >= 9;
              if (v13)
              {
                LOBYTE(v56) = 0;
                goto LABEL_93;
              }
            }

            v56 = (v52 != 0) & ~[fromCopy hasError];
LABEL_93:
            v5->_wouldBeFiltered = v56;
            goto LABEL_112;
          }

          if (v15 != 8)
          {
LABEL_86:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_114;
            }

            goto LABEL_112;
          }

          v35 = 0;
          v36 = 0;
          v37 = 0;
          while (1)
          {
            v63 = 0;
            v38 = [fromCopy position] + 1;
            if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v63 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v37 |= (v63 & 0x7F) << v35;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v41 = v36++ > 8;
            if (v41)
            {
              goto LABEL_109;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v37 > 5)
          {
LABEL_109:
            LODWORD(v37) = 0;
          }

          v57 = 44;
          goto LABEL_111;
        }

        if (v15 != 5)
        {
          if (v15 != 6)
          {
            goto LABEL_86;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasPlaced = 1;
          while (1)
          {
            v63 = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v63 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (v63 & 0x7F) << v23;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_101;
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

LABEL_101:
          v58 = 40;
          goto LABEL_106;
        }

        v42 = PBReaderReadString();
        v43 = 56;
      }

      else
      {
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v45 = 0;
            v46 = 0;
            v37 = 0;
            while (1)
            {
              v63 = 0;
              v47 = [fromCopy position] + 1;
              if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
              {
                data5 = [fromCopy data];
                [data5 getBytes:&v63 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v37 |= (v63 & 0x7F) << v45;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v41 = v46++ > 8;
              if (v41)
              {
                goto LABEL_90;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v37 > 5)
            {
LABEL_90:
              LODWORD(v37) = 0;
            }

            v57 = 32;
LABEL_111:
            *(&v5->super.super.isa + v57) = v37;
            goto LABEL_112;
          }

          if (v15 != 4)
          {
            goto LABEL_86;
          }

          v29 = 0;
          v30 = 0;
          v31 = 0;
          v5->_hasFilterReason = 1;
          while (1)
          {
            v63 = 0;
            v32 = [fromCopy position] + 1;
            if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v63 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v31 |= (v63 & 0x7F) << v29;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v13 = v30++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_105;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v31;
          }

LABEL_105:
          v58 = 36;
          goto LABEL_106;
        }

        if (v15 != 1)
        {
          if (v15 != 2)
          {
            goto LABEL_86;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          v5->_hasDisplayOrder = 1;
          while (1)
          {
            v63 = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v63 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v63 & 0x7F) << v16;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v13 = v17++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_97;
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

LABEL_97:
          v58 = 28;
LABEL_106:
          *(&v5->super.super.isa + v58) = v22;
          goto LABEL_112;
        }

        v42 = PBReaderReadString();
        v43 = 48;
      }

      v44 = *(&v5->super.super.isa + v43);
      *(&v5->super.super.isa + v43) = v42;

LABEL_112:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_114:
    v60 = 0;
  }

  else
  {
LABEL_115:
    v60 = v5;
  }

  return v60;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  sourceID = [(BMAdPlatformsCandidate *)self sourceID];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsCandidate displayOrder](self, "displayOrder")}];
  v6 = BMAdPlatformsCandidateFilterAsString([(BMAdPlatformsCandidate *)self filterID]);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsCandidate filterReason](self, "filterReason")}];
  secondaryFilterReason = [(BMAdPlatformsCandidate *)self secondaryFilterReason];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsCandidate placed](self, "placed")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsCandidate wouldBeFiltered](self, "wouldBeFiltered")}];
  v11 = BMAdPlatformsCandidateImpressionAsString([(BMAdPlatformsCandidate *)self impression]);
  v12 = [v3 initWithFormat:@"BMAdPlatformsCandidate with sourceID: %@, displayOrder: %@, filterID: %@, filterReason: %@, secondaryFilterReason: %@, placed: %@, wouldBeFiltered: %@, impression: %@", sourceID, v5, v6, v7, secondaryFilterReason, v9, v10, v11];

  return v12;
}

- (BMAdPlatformsCandidate)initWithSourceID:(id)d displayOrder:(id)order filterID:(int)iD filterReason:(id)reason secondaryFilterReason:(id)filterReason placed:(id)placed wouldBeFiltered:(id)filtered impression:(int)self0
{
  dCopy = d;
  orderCopy = order;
  reasonCopy = reason;
  filterReasonCopy = filterReason;
  placedCopy = placed;
  filteredCopy = filtered;
  v28.receiver = self;
  v28.super_class = BMAdPlatformsCandidate;
  v23 = [(BMEventBase *)&v28 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_sourceID, d);
    if (orderCopy)
    {
      v23->_hasDisplayOrder = 1;
      intValue = [orderCopy intValue];
    }

    else
    {
      v23->_hasDisplayOrder = 0;
      intValue = -1;
    }

    v23->_displayOrder = intValue;
    v23->_filterID = iD;
    if (reasonCopy)
    {
      v23->_hasFilterReason = 1;
      intValue2 = [reasonCopy intValue];
    }

    else
    {
      v23->_hasFilterReason = 0;
      intValue2 = -1;
    }

    v23->_filterReason = intValue2;
    objc_storeStrong(&v23->_secondaryFilterReason, filterReason);
    if (placedCopy)
    {
      v23->_hasPlaced = 1;
      intValue3 = [placedCopy intValue];
    }

    else
    {
      v23->_hasPlaced = 0;
      intValue3 = -1;
    }

    v23->_placed = intValue3;
    if (filteredCopy)
    {
      v23->_hasWouldBeFiltered = 1;
      v23->_wouldBeFiltered = [filteredCopy BOOLValue];
    }

    else
    {
      v23->_hasWouldBeFiltered = 0;
      v23->_wouldBeFiltered = 0;
    }

    v23->_impression = impression;
  }

  return v23;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceID" number:1 type:13 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayOrder" number:2 type:2 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"filterID" number:3 type:4 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"filterReason" number:4 type:2 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"secondaryFilterReason" number:5 type:13 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placed" number:6 type:2 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"wouldBeFiltered" number:7 type:12 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"impression" number:8 type:4 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"displayOrder" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"filterID" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"filterReason" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"secondaryFilterReason" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"placed" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wouldBeFiltered" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"impression" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
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

    v8 = [[BMAdPlatformsCandidate alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end