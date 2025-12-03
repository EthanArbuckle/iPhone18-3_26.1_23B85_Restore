@interface BMWalletPaymentsCommerceRecurringSendSuggestions
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceRecurringSendSuggestions)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMWalletPaymentsCommerceRecurringSendSuggestions)initWithUserSelection:(int)selection passType:(int)type tagClickDate:(id)date frequency:(int)frequency suggestionsRange:(int)range dayRange:(int)dayRange;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceRecurringSendSuggestions

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    userSelection = [(BMWalletPaymentsCommerceRecurringSendSuggestions *)self userSelection];
    if (userSelection == [v5 userSelection] && (v7 = -[BMWalletPaymentsCommerceRecurringSendSuggestions passType](self, "passType"), v7 == objc_msgSend(v5, "passType")) && (!-[BMWalletPaymentsCommerceRecurringSendSuggestions hasTagClickDate](self, "hasTagClickDate") && !objc_msgSend(v5, "hasTagClickDate") || -[BMWalletPaymentsCommerceRecurringSendSuggestions hasTagClickDate](self, "hasTagClickDate") && objc_msgSend(v5, "hasTagClickDate") && (-[BMWalletPaymentsCommerceRecurringSendSuggestions tagClickDate](self, "tagClickDate"), v9 = v8, objc_msgSend(v5, "tagClickDate"), v9 == v10)) && (v11 = -[BMWalletPaymentsCommerceRecurringSendSuggestions frequency](self, "frequency"), v11 == objc_msgSend(v5, "frequency")) && (v12 = -[BMWalletPaymentsCommerceRecurringSendSuggestions suggestionsRange](self, "suggestionsRange"), v12 == objc_msgSend(v5, "suggestionsRange")))
    {
      dayRange = [(BMWalletPaymentsCommerceRecurringSendSuggestions *)self dayRange];
      v14 = dayRange == [v5 dayRange];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)jsonDictionary
{
  v25[6] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceRecurringSendSuggestions userSelection](self, "userSelection")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceRecurringSendSuggestions passType](self, "passType")}];
  if (![(BMWalletPaymentsCommerceRecurringSendSuggestions *)self hasTagClickDate]|| ([(BMWalletPaymentsCommerceRecurringSendSuggestions *)self tagClickDate], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMWalletPaymentsCommerceRecurringSendSuggestions *)self tagClickDate];
    v6 = MEMORY[0x1E696AD98];
    [(BMWalletPaymentsCommerceRecurringSendSuggestions *)self tagClickDate];
    v7 = [v6 numberWithDouble:?];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceRecurringSendSuggestions frequency](self, "frequency")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceRecurringSendSuggestions suggestionsRange](self, "suggestionsRange")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceRecurringSendSuggestions dayRange](self, "dayRange")}];
  v24[0] = @"userSelection";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v22 = v4;
  v25[0] = null;
  v24[1] = @"passType";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v25[1] = null2;
  v24[2] = @"tagClickDate";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v3;
  v25[2] = null3;
  v24[3] = @"frequency";
  null4 = v8;
  if (!v8)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = null4;
  v24[4] = @"suggestionsRange";
  null5 = v9;
  if (!v9)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = null5;
  v24[5] = @"dayRange";
  null6 = v10;
  if (!v10)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = null6;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:{6, v20}];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_28:

    if (v8)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  if (!v9)
  {
    goto LABEL_28;
  }

LABEL_19:
  if (v8)
  {
    goto LABEL_20;
  }

LABEL_29:

LABEL_20:
  if (!v7)
  {
  }

  if (v22)
  {
    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {

    if (v23)
    {
      goto LABEL_24;
    }
  }

LABEL_24:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMWalletPaymentsCommerceRecurringSendSuggestions)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v80[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"userSelection"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_9:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"passType"];
    v66 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v10 = 0;
            v30 = 0;
            goto LABEL_36;
          }

          v43 = objc_alloc(MEMORY[0x1E696ABC0]);
          v44 = *MEMORY[0x1E698F240];
          v77 = *MEMORY[0x1E696A578];
          v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"passType"];
          v78 = v45;
          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
          v47 = v43;
          v13 = v46;
          v10 = 0;
          v30 = 0;
          *error = [v47 initWithDomain:v44 code:2 userInfo:v46];
          v29 = v45;
          goto LABEL_35;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceRecurringSendSuggestionsPassTypeFromString(v9)];
      }

      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"tagClickDate"];
    v64 = v12;
    if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v29 = 0;
          v30 = 0;
          goto LABEL_35;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v75 = *MEMORY[0x1E696A578];
        v36 = v10;
        v37 = objc_alloc(MEMORY[0x1E696AEC0]);
        v59 = objc_opt_class();
        v38 = v37;
        v10 = v36;
        v67 = [v38 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v59, @"tagClickDate"];
        v76 = v67;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        v40 = v34;
        v13 = v64;
        v63 = v39;
        v30 = 0;
        *error = [v40 initWithDomain:v35 code:2 userInfo:?];
        v29 = 0;
LABEL_34:

LABEL_35:
        goto LABEL_36;
      }

      v61 = v13;
    }

    else
    {
      v61 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"frequency"];
    v62 = v10;
    v63 = v14;
    if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v67 = v15;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v67 = 0;
            v30 = 0;
            v29 = v61;
            goto LABEL_33;
          }

          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = *MEMORY[0x1E698F240];
          v73 = *MEMORY[0x1E696A578];
          v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"frequency"];
          v74 = v65;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
          v67 = 0;
          v30 = 0;
          *error = [v48 initWithDomain:v49 code:2 userInfo:v31];
          v29 = v61;
          v10 = v62;
LABEL_32:

LABEL_33:
          v13 = v64;
          goto LABEL_34;
        }

        v67 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceRecurringSendSuggestionsFrequencyFromString(v15)];
      }
    }

    else
    {
      v67 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"suggestionsRange"];
    v60 = v16;
    if (v16 && (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v65 = v17;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v65 = 0;
            v30 = 0;
            v29 = v61;
            goto LABEL_31;
          }

          v50 = v9;
          v51 = objc_alloc(MEMORY[0x1E696ABC0]);
          v52 = *MEMORY[0x1E698F240];
          v71 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"suggestionsRange"];
          v72 = v22;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
          v53 = v51;
          v9 = v50;
          v54 = [v53 initWithDomain:v52 code:2 userInfo:v18];
          v65 = 0;
          v30 = 0;
          *error = v54;
          goto LABEL_66;
        }

        v65 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceRecurringSendSuggestionsSuggestionsRangeFromString(v17)];
      }
    }

    else
    {
      v65 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"dayRange"];
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = v9;
      v20 = v6;
      selfCopy3 = self;
      v22 = 0;
LABEL_29:
      intValue = [v7 intValue];
      intValue2 = [v10 intValue];
      intValue3 = [v67 intValue];
      intValue4 = [v65 intValue];
      intValue5 = [v22 intValue];
      v28 = intValue2;
      v29 = v61;
      v30 = [(BMWalletPaymentsCommerceRecurringSendSuggestions *)selfCopy3 initWithUserSelection:intValue passType:v28 tagClickDate:v61 frequency:intValue3 suggestionsRange:intValue4 dayRange:intValue5];
      self = v30;
      v6 = v20;
      v9 = v19;
LABEL_30:

      v10 = v62;
LABEL_31:
      v31 = v60;
      goto LABEL_32;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v9;
      v20 = v6;
      selfCopy3 = self;
      v22 = v18;
      goto LABEL_29;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v9;
      v20 = v6;
      selfCopy3 = self;
      v22 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceRecurringSendSuggestionsDayRangeFromString(v18)];
      goto LABEL_29;
    }

    if (error)
    {
      v55 = objc_alloc(MEMORY[0x1E696ABC0]);
      v56 = *MEMORY[0x1E698F240];
      v69 = *MEMORY[0x1E696A578];
      v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"dayRange"];
      v70 = v57;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      *error = [v55 initWithDomain:v56 code:2 userInfo:v58];
    }

    v22 = 0;
    v30 = 0;
LABEL_66:
    v29 = v61;
    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
LABEL_8:
    v7 = v8;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceRecurringSendSuggestionsUserSelectionFromString(v6)];
    goto LABEL_8;
  }

  if (!error)
  {
    v66 = 0;
    v30 = 0;
    goto LABEL_37;
  }

  v41 = objc_alloc(MEMORY[0x1E696ABC0]);
  v42 = *MEMORY[0x1E698F240];
  v79 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userSelection"];
  v80[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
  v66 = 0;
  v30 = 0;
  *error = [v41 initWithDomain:v42 code:2 userInfo:v9];
LABEL_36:

LABEL_37:
  v32 = *MEMORY[0x1E69E9840];
  return v30;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceRecurringSendSuggestions *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  userSelection = self->_userSelection;
  PBDataWriterWriteUint32Field();
  passType = self->_passType;
  PBDataWriterWriteUint32Field();
  if (self->_hasTagClickDate)
  {
    tagClickDate = self->_tagClickDate;
    PBDataWriterWriteDoubleField();
  }

  frequency = self->_frequency;
  PBDataWriterWriteUint32Field();
  suggestionsRange = self->_suggestionsRange;
  PBDataWriterWriteUint32Field();
  dayRange = self->_dayRange;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v50.receiver = self;
  v50.super_class = BMWalletPaymentsCommerceRecurringSendSuggestions;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_102;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_100;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v51) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v51) & 0x7F) << v7;
        if ((LOBYTE(v51) & 0x80) == 0)
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
        goto LABEL_100;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        switch(v15)
        {
          case 4:
            v30 = 0;
            v31 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v51) = 0;
              v32 = [fromCopy position] + 1;
              if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (LOBYTE(v51) & 0x7F) << v30;
              if ((LOBYTE(v51) & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v24 = v31++ > 8;
              if (v24)
              {
                goto LABEL_81;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v20 > 5)
            {
LABEL_81:
              LODWORD(v20) = 0;
            }

            v45 = 32;
            break;
          case 5:
            v40 = 0;
            v41 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v51) = 0;
              v42 = [fromCopy position] + 1;
              if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (LOBYTE(v51) & 0x7F) << v40;
              if ((LOBYTE(v51) & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v24 = v41++ > 8;
              if (v24)
              {
                goto LABEL_93;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v20 > 2)
            {
LABEL_93:
              LODWORD(v20) = 0;
            }

            v45 = 36;
            break;
          case 6:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v51) = 0;
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (LOBYTE(v51) & 0x7F) << v18;
              if ((LOBYTE(v51) & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v24 = v19++ > 8;
              if (v24)
              {
                goto LABEL_85;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v20 > 3)
            {
LABEL_85:
              LODWORD(v20) = 0;
            }

            v45 = 40;
            break;
          default:
LABEL_55:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_101;
            }

            goto LABEL_96;
        }

        goto LABEL_95;
      }

      if (v15 == 1)
      {
        break;
      }

      if (v15 == 2)
      {
        v35 = 0;
        v36 = 0;
        v20 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v37 = [fromCopy position] + 1;
          if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v20 |= (LOBYTE(v51) & 0x7F) << v35;
          if ((LOBYTE(v51) & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v24 = v36++ > 8;
          if (v24)
          {
            goto LABEL_89;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v20 > 2)
        {
LABEL_89:
          LODWORD(v20) = 0;
        }

        v45 = 28;
LABEL_95:
        *(&v5->super.super.isa + v45) = v20;
        goto LABEL_96;
      }

      if (v15 != 3)
      {
        goto LABEL_55;
      }

      v5->_hasTagClickDate = 1;
      v51 = 0.0;
      v16 = [fromCopy position] + 8;
      if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
      {
        data6 = [fromCopy data];
        [data6 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 8}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
      }

      else
      {
        [fromCopy _setError];
      }

      v5->_tagClickDate = v51;
LABEL_96:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_100;
      }
    }

    v25 = 0;
    v26 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v51) = 0;
      v27 = [fromCopy position] + 1;
      if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
      {
        data7 = [fromCopy data];
        [data7 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v20 |= (LOBYTE(v51) & 0x7F) << v25;
      if ((LOBYTE(v51) & 0x80) == 0)
      {
        break;
      }

      v25 += 7;
      v24 = v26++ > 8;
      if (v24)
      {
        goto LABEL_77;
      }
    }

    if (([fromCopy hasError] & 1) != 0 || v20 > 3)
    {
LABEL_77:
      LODWORD(v20) = 0;
    }

    v45 = 24;
    goto LABEL_95;
  }

LABEL_100:
  if ([fromCopy hasError])
  {
LABEL_101:
    v48 = 0;
  }

  else
  {
LABEL_102:
    v48 = v5;
  }

  return v48;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMWalletPaymentsCommerceRecurringSendSuggestionsUserSelectionAsString([(BMWalletPaymentsCommerceRecurringSendSuggestions *)self userSelection]);
  v5 = BMWalletPaymentsCommerceRecurringSendSuggestionsPassTypeAsString([(BMWalletPaymentsCommerceRecurringSendSuggestions *)self passType]);
  v6 = MEMORY[0x1E696AD98];
  [(BMWalletPaymentsCommerceRecurringSendSuggestions *)self tagClickDate];
  v7 = [v6 numberWithDouble:?];
  v8 = BMWalletPaymentsCommerceRecurringSendSuggestionsFrequencyAsString([(BMWalletPaymentsCommerceRecurringSendSuggestions *)self frequency]);
  v9 = BMWalletPaymentsCommerceRecurringSendSuggestionsSuggestionsRangeAsString([(BMWalletPaymentsCommerceRecurringSendSuggestions *)self suggestionsRange]);
  v10 = BMWalletPaymentsCommerceRecurringSendSuggestionsDayRangeAsString([(BMWalletPaymentsCommerceRecurringSendSuggestions *)self dayRange]);
  v11 = [v3 initWithFormat:@"BMWalletPaymentsCommerceRecurringSendSuggestions with userSelection: %@, passType: %@, tagClickDate: %@, frequency: %@, suggestionsRange: %@, dayRange: %@", v4, v5, v7, v8, v9, v10];

  return v11;
}

- (BMWalletPaymentsCommerceRecurringSendSuggestions)initWithUserSelection:(int)selection passType:(int)type tagClickDate:(id)date frequency:(int)frequency suggestionsRange:(int)range dayRange:(int)dayRange
{
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = BMWalletPaymentsCommerceRecurringSendSuggestions;
  v15 = [(BMEventBase *)&v18 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    v15->_userSelection = selection;
    v15->_passType = type;
    if (dateCopy)
    {
      v15->_hasTagClickDate = 1;
      [dateCopy doubleValue];
    }

    else
    {
      v15->_hasTagClickDate = 0;
      v16 = -1.0;
    }

    v15->_tagClickDate = v16;
    v15->_frequency = frequency;
    v15->_suggestionsRange = range;
    v15->_dayRange = dayRange;
  }

  return v15;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userSelection" number:1 type:4 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"passType" number:2 type:4 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tagClickDate" number:3 type:0 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"frequency" number:4 type:4 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionsRange" number:5 type:4 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dayRange" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userSelection" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tagClickDate" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"frequency" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionsRange" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dayRange" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
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

    v8 = [[BMWalletPaymentsCommerceRecurringSendSuggestions alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end