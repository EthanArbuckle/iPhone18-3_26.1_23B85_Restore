@interface BMAdPlatformsDiscardReasons
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAdPlatformsDiscardReasons)initWithDiscardReason:(int)reason placement:(int)placement bundleID:(id)d brandIdentifier:(id)identifier displayOrder:(id)order searchTerms:(id)terms;
- (BMAdPlatformsDiscardReasons)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAdPlatformsDiscardReasons

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"discardReason" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"placement" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brandIdentifier" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:5 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"displayOrder" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:2 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"searchTerms" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    discardReason = [(BMAdPlatformsDiscardReasons *)self discardReason];
    if (discardReason != [v5 discardReason])
    {
      goto LABEL_21;
    }

    placement = [(BMAdPlatformsDiscardReasons *)self placement];
    if (placement != [v5 placement])
    {
      goto LABEL_21;
    }

    bundleID = [(BMAdPlatformsDiscardReasons *)self bundleID];
    bundleID2 = [v5 bundleID];
    v10 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMAdPlatformsDiscardReasons *)self bundleID];
      bundleID4 = [v5 bundleID];
      v13 = [bundleID3 isEqual:bundleID4];

      if (!v13)
      {
        goto LABEL_21;
      }
    }

    if (!-[BMAdPlatformsDiscardReasons hasBrandIdentifier](self, "hasBrandIdentifier") && ![v5 hasBrandIdentifier] || -[BMAdPlatformsDiscardReasons hasBrandIdentifier](self, "hasBrandIdentifier") && objc_msgSend(v5, "hasBrandIdentifier") && (v15 = -[BMAdPlatformsDiscardReasons brandIdentifier](self, "brandIdentifier"), v15 == objc_msgSend(v5, "brandIdentifier")))
    {
      if (!-[BMAdPlatformsDiscardReasons hasDisplayOrder](self, "hasDisplayOrder") && ![v5 hasDisplayOrder] || -[BMAdPlatformsDiscardReasons hasDisplayOrder](self, "hasDisplayOrder") && objc_msgSend(v5, "hasDisplayOrder") && (v16 = -[BMAdPlatformsDiscardReasons displayOrder](self, "displayOrder"), v16 == objc_msgSend(v5, "displayOrder")))
      {
        searchTerms = [(BMAdPlatformsDiscardReasons *)self searchTerms];
        searchTerms2 = [v5 searchTerms];
        if (searchTerms == searchTerms2)
        {
          v14 = 1;
        }

        else
        {
          searchTerms3 = [(BMAdPlatformsDiscardReasons *)self searchTerms];
          searchTerms4 = [v5 searchTerms];
          v14 = [searchTerms3 isEqual:searchTerms4];
        }

        goto LABEL_22;
      }
    }

LABEL_21:
    v14 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v14 = 0;
LABEL_23:

  return v14;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsDiscardReasons discardReason](self, "discardReason")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsDiscardReasons placement](self, "placement")}];
  bundleID = [(BMAdPlatformsDiscardReasons *)self bundleID];
  if ([(BMAdPlatformsDiscardReasons *)self hasBrandIdentifier])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMAdPlatformsDiscardReasons brandIdentifier](self, "brandIdentifier")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMAdPlatformsDiscardReasons *)self hasDisplayOrder])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsDiscardReasons displayOrder](self, "displayOrder")}];
  }

  else
  {
    v7 = 0;
  }

  searchTerms = [(BMAdPlatformsDiscardReasons *)self searchTerms];
  v22[0] = @"discardReason";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v21 = v3;
  v23[0] = null;
  v22[1] = @"placement";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null2;
  v23[1] = null2;
  v22[2] = @"bundleID";
  null3 = bundleID;
  if (!bundleID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v22[3] = @"brandIdentifier";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22[4] = @"displayOrder";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v22[5] = @"searchTerms";
  null6 = searchTerms;
  if (!searchTerms)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (searchTerms)
  {
    if (v7)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (v7)
    {
LABEL_21:
      if (v6)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }
  }

  if (v6)
  {
LABEL_22:
    if (bundleID)
    {
      goto LABEL_23;
    }

LABEL_32:

    if (v4)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

LABEL_31:

  if (!bundleID)
  {
    goto LABEL_32;
  }

LABEL_23:
  if (v4)
  {
    goto LABEL_24;
  }

LABEL_33:

LABEL_24:
  if (!v21)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMAdPlatformsDiscardReasons)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v61[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"discardReason"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v49 = 0;
LABEL_9:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"placement"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v48 = 0;
            v20 = 0;
            goto LABEL_34;
          }

          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy = error;
          v39 = *MEMORY[0x1E698F240];
          v58 = *MEMORY[0x1E696A578];
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"placement"];
          v59 = v12;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          v48 = 0;
          v20 = 0;
          *errorCopy = [v38 initWithDomain:v39 code:2 userInfo:v11];
          goto LABEL_33;
        }

        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMAdPlatformsDiscardReasonsPlacementFromString(v9)];
      }

      v48 = v10;
    }

    else
    {
      v48 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
    v44 = v9;
    v45 = v7;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v20 = 0;
          goto LABEL_33;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v25 = *MEMORY[0x1E698F240];
        v56 = *MEMORY[0x1E696A578];
        v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
        v57 = v46;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        v12 = 0;
        v20 = 0;
        *errorCopy2 = [v23 initWithDomain:v25 code:2 userInfo:v13];
        v9 = v44;
LABEL_32:

        v7 = v45;
LABEL_33:

        goto LABEL_34;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"brandIdentifier"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v46 = 0;
          v20 = 0;
          goto LABEL_32;
        }

        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = v12;
        v28 = *MEMORY[0x1E698F240];
        v54 = *MEMORY[0x1E696A578];
        errorCopy3 = error;
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brandIdentifier"];
        v55 = v17;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v30 = v28;
        v12 = v27;
        v46 = 0;
        v20 = 0;
        *errorCopy3 = [v26 initWithDomain:v30 code:2 userInfo:v15];
        goto LABEL_60;
      }

      errorCopy5 = error;
      v46 = v13;
    }

    else
    {
      errorCopy5 = error;
      v46 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"displayOrder"];
    v43 = v12;
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      selfCopy3 = self;
      v17 = 0;
      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy3 = self;
      v17 = v15;
LABEL_26:
      v18 = [dictionaryCopy objectForKeyedSubscript:@"searchTerms"];
      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy5)
          {
            v42 = objc_alloc(MEMORY[0x1E696ABC0]);
            v40 = *MEMORY[0x1E698F240];
            v50 = *MEMORY[0x1E696A578];
            v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"searchTerms"];
            v51 = v33;
            v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
            *errorCopy5 = [v42 initWithDomain:v40 code:2 userInfo:v34];
          }

          v19 = 0;
          v20 = 0;
          goto LABEL_30;
        }

        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = -[BMAdPlatformsDiscardReasons initWithDiscardReason:placement:bundleID:brandIdentifier:displayOrder:searchTerms:](selfCopy3, "initWithDiscardReason:placement:bundleID:brandIdentifier:displayOrder:searchTerms:", [v49 intValue], objc_msgSend(v48, "intValue"), v43, v46, v17, v19);
      selfCopy3 = v20;
LABEL_30:
      v9 = v44;

      self = selfCopy3;
      v12 = v43;
LABEL_31:

      goto LABEL_32;
    }

    if (errorCopy5)
    {
      selfCopy3 = self;
      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      v31 = *MEMORY[0x1E698F240];
      v52 = *MEMORY[0x1E696A578];
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"displayOrder"];
      v53 = v19;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v32 = [v41 initWithDomain:v31 code:2 userInfo:v18];
      v17 = 0;
      v20 = 0;
      *errorCopy5 = v32;
      goto LABEL_30;
    }

    v17 = 0;
    v20 = 0;
LABEL_60:
    v9 = v44;
    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_8:
    v49 = v8;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:BMAdPlatformsDiscardReasonsDiscardReasonFromString(v7)];
    goto LABEL_8;
  }

  if (!error)
  {
    v49 = 0;
    v20 = 0;
    goto LABEL_35;
  }

  v35 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy6 = error;
  v37 = *MEMORY[0x1E698F240];
  v60 = *MEMORY[0x1E696A578];
  v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"discardReason"];
  v61[0] = v48;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
  v49 = 0;
  v20 = 0;
  *errorCopy6 = [v35 initWithDomain:v37 code:2 userInfo:v9];
LABEL_34:

LABEL_35:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAdPlatformsDiscardReasons *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  discardReason = self->_discardReason;
  PBDataWriterWriteUint32Field();
  placement = self->_placement;
  PBDataWriterWriteUint32Field();
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasBrandIdentifier)
  {
    brandIdentifier = self->_brandIdentifier;
    PBDataWriterWriteUint64Field();
  }

  v7 = toCopy;
  if (self->_hasDisplayOrder)
  {
    displayOrder = self->_displayOrder;
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }

  if (self->_searchTerms)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v52.receiver = self;
  v52.super_class = BMAdPlatformsDiscardReasons;
  v5 = [(BMEventBase *)&v52 init];
  if (!v5)
  {
    goto LABEL_91;
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
        v53 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v53 & 0x7F) << v7;
        if ((v53 & 0x80) == 0)
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
      if ((v14 >> 3) > 3)
      {
        if (v15 == 4)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v5->_hasBrandIdentifier = 1;
          while (1)
          {
            v53 = 0;
            v30 = [fromCopy position] + 1;
            if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v29 |= (v53 & 0x7F) << v27;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v13 = v28++ >= 9;
            if (v13)
            {
              v33 = 0;
              goto LABEL_78;
            }
          }

          if ([fromCopy hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v29;
          }

LABEL_78:
          v5->_brandIdentifier = v33;
          goto LABEL_88;
        }

        if (v15 == 5)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v5->_hasDisplayOrder = 1;
          while (1)
          {
            v53 = 0;
            v44 = [fromCopy position] + 1;
            if (v44 >= [fromCopy position] && (v45 = objc_msgSend(fromCopy, "position") + 1, v45 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v43 |= (v53 & 0x7F) << v41;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v13 = v42++ >= 9;
            if (v13)
            {
              v26 = 0;
              goto LABEL_86;
            }
          }

          if ([fromCopy hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v43;
          }

LABEL_86:
          v48 = 32;
          goto LABEL_87;
        }

        if (v15 != 6)
        {
LABEL_46:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_90;
          }

          goto LABEL_88;
        }

        v16 = PBReaderReadString();
        v17 = 56;
      }

      else
      {
        if (v15 == 1)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          while (1)
          {
            v53 = 0;
            v22 = [fromCopy position] + 1;
            if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v21 |= (v53 & 0x7F) << v19;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            if (v20++ > 8)
            {
              v26 = 0;
              goto LABEL_74;
            }
          }

          if ([fromCopy hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v21;
          }

          if ((v26 - 2700) >= 2 && v26 != 0)
          {
            v26 = 0;
          }

LABEL_74:
          v48 = 24;
LABEL_87:
          *(&v5->super.super.isa + v48) = v26;
          goto LABEL_88;
        }

        if (v15 == 2)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          while (1)
          {
            v53 = 0;
            v37 = [fromCopy position] + 1;
            if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v36 |= (v53 & 0x7F) << v34;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v13 = v35++ >= 9;
            if (v13)
            {
              v40 = 0;
              goto LABEL_82;
            }
          }

          if ([fromCopy hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v36;
          }

LABEL_82:
          v5->_placement = BMAdPlatformsDiscardReasonsPlacementDecode(v40);
          goto LABEL_88;
        }

        if (v15 != 3)
        {
          goto LABEL_46;
        }

        v16 = PBReaderReadString();
        v17 = 40;
      }

      v18 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_88:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_90:
    v50 = 0;
  }

  else
  {
LABEL_91:
    v50 = v5;
  }

  return v50;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMAdPlatformsDiscardReasonsDiscardReasonAsString([(BMAdPlatformsDiscardReasons *)self discardReason]);
  v5 = BMAdPlatformsDiscardReasonsPlacementAsString([(BMAdPlatformsDiscardReasons *)self placement]);
  bundleID = [(BMAdPlatformsDiscardReasons *)self bundleID];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMAdPlatformsDiscardReasons brandIdentifier](self, "brandIdentifier")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsDiscardReasons displayOrder](self, "displayOrder")}];
  searchTerms = [(BMAdPlatformsDiscardReasons *)self searchTerms];
  v10 = [v3 initWithFormat:@"BMAdPlatformsDiscardReasons with discardReason: %@, placement: %@, bundleID: %@, brandIdentifier: %@, displayOrder: %@, searchTerms: %@", v4, v5, bundleID, v7, v8, searchTerms];

  return v10;
}

- (BMAdPlatformsDiscardReasons)initWithDiscardReason:(int)reason placement:(int)placement bundleID:(id)d brandIdentifier:(id)identifier displayOrder:(id)order searchTerms:(id)terms
{
  dCopy = d;
  identifierCopy = identifier;
  orderCopy = order;
  termsCopy = terms;
  v23.receiver = self;
  v23.super_class = BMAdPlatformsDiscardReasons;
  v19 = [(BMEventBase *)&v23 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    v19->_discardReason = reason;
    v19->_placement = placement;
    objc_storeStrong(&v19->_bundleID, d);
    if (identifierCopy)
    {
      v19->_hasBrandIdentifier = 1;
      unsignedLongLongValue = [identifierCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v19->_hasBrandIdentifier = 0;
    }

    v19->_brandIdentifier = unsignedLongLongValue;
    if (orderCopy)
    {
      v19->_hasDisplayOrder = 1;
      intValue = [orderCopy intValue];
    }

    else
    {
      v19->_hasDisplayOrder = 0;
      intValue = -1;
    }

    v19->_displayOrder = intValue;
    objc_storeStrong(&v19->_searchTerms, terms);
  }

  return v19;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"discardReason" number:1 type:4 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placement" number:2 type:4 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brandIdentifier" number:4 type:5 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayOrder" number:5 type:2 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"searchTerms" number:6 type:13 subMessageClass:0];
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

    v8 = [[BMAdPlatformsDiscardReasons alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end