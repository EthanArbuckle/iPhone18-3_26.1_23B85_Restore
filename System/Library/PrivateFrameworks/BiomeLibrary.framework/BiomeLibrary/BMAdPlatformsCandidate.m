@interface BMAdPlatformsCandidate
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAdPlatformsCandidate)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMAdPlatformsCandidate)initWithSourceID:(id)a3 displayOrder:(id)a4 filterID:(int)a5 filterReason:(id)a6 secondaryFilterReason:(id)a7 placed:(id)a8 wouldBeFiltered:(id)a9 impression:(int)a10;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAdPlatformsCandidate

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAdPlatformsCandidate *)self sourceID];
    v7 = [v5 sourceID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAdPlatformsCandidate *)self sourceID];
      v10 = [v5 sourceID];
      v11 = [v9 isEqual:v10];

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

      v13 = [(BMAdPlatformsCandidate *)self displayOrder];
      if (v13 != [v5 displayOrder])
      {
        goto LABEL_32;
      }
    }

    v14 = [(BMAdPlatformsCandidate *)self filterID];
    if (v14 != [v5 filterID])
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

      v15 = [(BMAdPlatformsCandidate *)self filterReason];
      if (v15 != [v5 filterReason])
      {
        goto LABEL_32;
      }
    }

    v16 = [(BMAdPlatformsCandidate *)self secondaryFilterReason];
    v17 = [v5 secondaryFilterReason];
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      v19 = [(BMAdPlatformsCandidate *)self secondaryFilterReason];
      v20 = [v5 secondaryFilterReason];
      v21 = [v19 isEqual:v20];

      if (!v21)
      {
        goto LABEL_32;
      }
    }

    if (!-[BMAdPlatformsCandidate hasPlaced](self, "hasPlaced") && ![v5 hasPlaced] || -[BMAdPlatformsCandidate hasPlaced](self, "hasPlaced") && objc_msgSend(v5, "hasPlaced") && (v22 = -[BMAdPlatformsCandidate placed](self, "placed"), v22 == objc_msgSend(v5, "placed")))
    {
      if (!-[BMAdPlatformsCandidate hasWouldBeFiltered](self, "hasWouldBeFiltered") && ![v5 hasWouldBeFiltered] || -[BMAdPlatformsCandidate hasWouldBeFiltered](self, "hasWouldBeFiltered") && objc_msgSend(v5, "hasWouldBeFiltered") && (v23 = -[BMAdPlatformsCandidate wouldBeFiltered](self, "wouldBeFiltered"), v23 == objc_msgSend(v5, "wouldBeFiltered")))
      {
        v25 = [(BMAdPlatformsCandidate *)self impression];
        v12 = v25 == [v5 impression];
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
  v3 = [(BMAdPlatformsCandidate *)self sourceID];
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

  v26 = [(BMAdPlatformsCandidate *)self secondaryFilterReason];
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
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v9;
  v28[0] = v9;
  v27[1] = @"displayOrder";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v10;
  v28[1] = v10;
  v27[2] = @"filterID";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v20 = v11;
  v28[2] = v11;
  v27[3] = @"filterReason";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v4;
  v28[3] = v12;
  v27[4] = @"secondaryFilterReason";
  v13 = v26;
  if (!v26)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v28[4] = v13;
  v27[5] = @"placed";
  v14 = v25;
  if (!v25)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = v14;
  v27[6] = @"wouldBeFiltered";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v28[6] = v15;
  v27[7] = @"impression";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v28[7] = v16;
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

  if (!v26)
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

- (BMAdPlatformsCandidate)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v90[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"sourceID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"displayOrder"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v16 = 0;
          goto LABEL_69;
        }

        v18 = a4;
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
        a4 = 0;
        *v18 = v25;
        v11 = v22;
        goto LABEL_68;
      }

      v74 = v9;
    }

    else
    {
      v74 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"filterID"];
    v71 = v8;
    v69 = v9;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v11 = a4;
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
          if (!a4)
          {
            a4 = 0;
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
          a4 = 0;
          *v11 = v55;
          v11 = 0;
          goto LABEL_73;
        }

        v12 = [MEMORY[0x1E696AD98] numberWithInt:BMAdPlatformsCandidateFilterFromString(v10)];
      }

      v11 = v12;
    }

    else
    {
      v11 = 0;
    }

    v26 = [v6 objectForKeyedSubscript:@"filterReason"];
    v66 = v11;
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
      v27 = [v6 objectForKeyedSubscript:@"secondaryFilterReason"];
      v65 = v7;
      v72 = self;
      if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v70 = 0;
LABEL_29:
        v28 = [v6 objectForKeyedSubscript:@"placed"];
        if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v68 = 0;
              goto LABEL_65;
            }

            v44 = a4;
            v45 = objc_alloc(MEMORY[0x1E696ABC0]);
            v46 = *MEMORY[0x1E698F240];
            v79 = *MEMORY[0x1E696A578];
            v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"placed"];
            v80 = v30;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
            v47 = [v45 initWithDomain:v46 code:2 userInfo:v29];
            v68 = 0;
            a4 = 0;
            *v44 = v47;
            v11 = v66;
            goto LABEL_64;
          }

          v68 = v28;
        }

        else
        {
          v68 = 0;
        }

        v29 = [v6 objectForKeyedSubscript:@"wouldBeFiltered"];
        if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v30 = 0;
              goto LABEL_64;
            }

            v48 = a4;
            v49 = objc_alloc(MEMORY[0x1E696ABC0]);
            v50 = *MEMORY[0x1E698F240];
            v77 = *MEMORY[0x1E696A578];
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"wouldBeFiltered"];
            v78 = v32;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            v51 = [v49 initWithDomain:v50 code:2 userInfo:v31];
            v30 = 0;
            a4 = 0;
            *v48 = v51;
            goto LABEL_82;
          }

          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        v31 = [v6 objectForKeyedSubscript:@"impression"];
        if (!v31 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v32 = 0;
LABEL_62:
          v56 = [v11 intValue];
          LODWORD(v62) = [v32 intValue];
          a4 = [(BMAdPlatformsCandidate *)v72 initWithSourceID:v71 displayOrder:v74 filterID:v56 filterReason:v73 secondaryFilterReason:v70 placed:v68 wouldBeFiltered:v30 impression:v62];
          v72 = a4;
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

        if (a4)
        {
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v63 = *MEMORY[0x1E698F240];
          v75 = *MEMORY[0x1E696A578];
          v59 = a4;
          v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"impression"];
          v76 = v60;
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          *v59 = [v64 initWithDomain:v63 code:2 userInfo:v61];

          v32 = 0;
          a4 = 0;
        }

        else
        {
          v32 = 0;
        }

LABEL_82:
        v11 = v66;
        goto LABEL_63;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v70 = v27;
        goto LABEL_29;
      }

      if (a4)
      {
        v39 = a4;
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
        a4 = 0;
        *v39 = v43;
        v11 = v66;
LABEL_65:
        v16 = v74;

        self = v72;
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

    if (a4)
    {
      v34 = a4;
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
      a4 = 0;
      *v34 = v38;
      v11 = v66;
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

  if (a4)
  {
    v13 = a4;
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E698F240];
    v89 = *MEMORY[0x1E696A578];
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceID"];
    v90[0] = v16;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];
    v17 = [v14 initWithDomain:v15 code:2 userInfo:v9];
    v8 = 0;
    a4 = 0;
    *v13 = v17;
LABEL_69:

    goto LABEL_70;
  }

  v8 = 0;
LABEL_70:

  v57 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAdPlatformsCandidate *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v62.receiver = self;
  v62.super_class = BMAdPlatformsCandidate;
  v5 = [(BMEventBase *)&v62 init];
  if (!v5)
  {
    goto LABEL_115;
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
        v63 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v63 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v53 = [v4 position] + 1;
              if (v53 >= [v4 position] && (v54 = objc_msgSend(v4, "position") + 1, v54 <= objc_msgSend(v4, "length")))
              {
                v55 = [v4 data];
                [v55 getBytes:&v63 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            v56 = (v52 != 0) & ~[v4 hasError];
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
            v38 = [v4 position] + 1;
            if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 1, v39 <= objc_msgSend(v4, "length")))
            {
              v40 = [v4 data];
              [v40 getBytes:&v63 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if (([v4 hasError] & 1) != 0 || v37 > 5)
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
            v26 = [v4 position] + 1;
            if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
            {
              v28 = [v4 data];
              [v28 getBytes:&v63 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
              v47 = [v4 position] + 1;
              if (v47 >= [v4 position] && (v48 = objc_msgSend(v4, "position") + 1, v48 <= objc_msgSend(v4, "length")))
              {
                v49 = [v4 data];
                [v49 getBytes:&v63 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if (([v4 hasError] & 1) != 0 || v37 > 5)
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
            v32 = [v4 position] + 1;
            if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
            {
              v34 = [v4 data];
              [v34 getBytes:&v63 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
            v19 = [v4 position] + 1;
            if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
            {
              v21 = [v4 data];
              [v21 getBytes:&v63 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
      v59 = [v4 position];
    }

    while (v59 < [v4 length]);
  }

  if ([v4 hasError])
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
  v4 = [(BMAdPlatformsCandidate *)self sourceID];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsCandidate displayOrder](self, "displayOrder")}];
  v6 = BMAdPlatformsCandidateFilterAsString([(BMAdPlatformsCandidate *)self filterID]);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsCandidate filterReason](self, "filterReason")}];
  v8 = [(BMAdPlatformsCandidate *)self secondaryFilterReason];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsCandidate placed](self, "placed")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsCandidate wouldBeFiltered](self, "wouldBeFiltered")}];
  v11 = BMAdPlatformsCandidateImpressionAsString([(BMAdPlatformsCandidate *)self impression]);
  v12 = [v3 initWithFormat:@"BMAdPlatformsCandidate with sourceID: %@, displayOrder: %@, filterID: %@, filterReason: %@, secondaryFilterReason: %@, placed: %@, wouldBeFiltered: %@, impression: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMAdPlatformsCandidate)initWithSourceID:(id)a3 displayOrder:(id)a4 filterID:(int)a5 filterReason:(id)a6 secondaryFilterReason:(id)a7 placed:(id)a8 wouldBeFiltered:(id)a9 impression:(int)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v28.receiver = self;
  v28.super_class = BMAdPlatformsCandidate;
  v23 = [(BMEventBase *)&v28 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_sourceID, a3);
    if (v18)
    {
      v23->_hasDisplayOrder = 1;
      v24 = [v18 intValue];
    }

    else
    {
      v23->_hasDisplayOrder = 0;
      v24 = -1;
    }

    v23->_displayOrder = v24;
    v23->_filterID = a5;
    if (v19)
    {
      v23->_hasFilterReason = 1;
      v25 = [v19 intValue];
    }

    else
    {
      v23->_hasFilterReason = 0;
      v25 = -1;
    }

    v23->_filterReason = v25;
    objc_storeStrong(&v23->_secondaryFilterReason, a7);
    if (v21)
    {
      v23->_hasPlaced = 1;
      v26 = [v21 intValue];
    }

    else
    {
      v23->_hasPlaced = 0;
      v26 = -1;
    }

    v23->_placed = v26;
    if (v22)
    {
      v23->_hasWouldBeFiltered = 1;
      v23->_wouldBeFiltered = [v22 BOOLValue];
    }

    else
    {
      v23->_hasWouldBeFiltered = 0;
      v23->_wouldBeFiltered = 0;
    }

    v23->_impression = a10;
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