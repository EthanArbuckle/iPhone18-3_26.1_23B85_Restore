@interface BMWalletPaymentsCommerceRecurringSendSuggestions
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceRecurringSendSuggestions)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMWalletPaymentsCommerceRecurringSendSuggestions)initWithUserSelection:(int)a3 passType:(int)a4 tagClickDate:(id)a5 frequency:(int)a6 suggestionsRange:(int)a7 dayRange:(int)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceRecurringSendSuggestions

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceRecurringSendSuggestions *)self userSelection];
    if (v6 == [v5 userSelection] && (v7 = -[BMWalletPaymentsCommerceRecurringSendSuggestions passType](self, "passType"), v7 == objc_msgSend(v5, "passType")) && (!-[BMWalletPaymentsCommerceRecurringSendSuggestions hasTagClickDate](self, "hasTagClickDate") && !objc_msgSend(v5, "hasTagClickDate") || -[BMWalletPaymentsCommerceRecurringSendSuggestions hasTagClickDate](self, "hasTagClickDate") && objc_msgSend(v5, "hasTagClickDate") && (-[BMWalletPaymentsCommerceRecurringSendSuggestions tagClickDate](self, "tagClickDate"), v9 = v8, objc_msgSend(v5, "tagClickDate"), v9 == v10)) && (v11 = -[BMWalletPaymentsCommerceRecurringSendSuggestions frequency](self, "frequency"), v11 == objc_msgSend(v5, "frequency")) && (v12 = -[BMWalletPaymentsCommerceRecurringSendSuggestions suggestionsRange](self, "suggestionsRange"), v12 == objc_msgSend(v5, "suggestionsRange")))
    {
      v13 = [(BMWalletPaymentsCommerceRecurringSendSuggestions *)self dayRange];
      v14 = v13 == [v5 dayRange];
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
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v11;
  v22 = v4;
  v25[0] = v11;
  v24[1] = @"passType";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v25[1] = v12;
  v24[2] = @"tagClickDate";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v3;
  v25[2] = v13;
  v24[3] = @"frequency";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = v14;
  v24[4] = @"suggestionsRange";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = v15;
  v24[5] = @"dayRange";
  v16 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = v16;
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

- (BMWalletPaymentsCommerceRecurringSendSuggestions)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v80[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"userSelection"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_9:
    v9 = [v5 objectForKeyedSubscript:@"passType"];
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
          if (!a4)
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
          *a4 = [v47 initWithDomain:v44 code:2 userInfo:v46];
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

    v12 = [v5 objectForKeyedSubscript:@"tagClickDate"];
    v64 = v12;
    if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        *a4 = [v40 initWithDomain:v35 code:2 userInfo:?];
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

    v14 = [v5 objectForKeyedSubscript:@"frequency"];
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
          if (!a4)
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
          *a4 = [v48 initWithDomain:v49 code:2 userInfo:v31];
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

    v16 = [v5 objectForKeyedSubscript:@"suggestionsRange"];
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
          if (!a4)
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
          *a4 = v54;
          goto LABEL_66;
        }

        v65 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceRecurringSendSuggestionsSuggestionsRangeFromString(v17)];
      }
    }

    else
    {
      v65 = 0;
    }

    v18 = [v5 objectForKeyedSubscript:@"dayRange"];
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = v9;
      v20 = v6;
      v21 = self;
      v22 = 0;
LABEL_29:
      v23 = [v7 intValue];
      v24 = [v10 intValue];
      v25 = [v67 intValue];
      v26 = [v65 intValue];
      v27 = [v22 intValue];
      v28 = v24;
      v29 = v61;
      v30 = [(BMWalletPaymentsCommerceRecurringSendSuggestions *)v21 initWithUserSelection:v23 passType:v28 tagClickDate:v61 frequency:v25 suggestionsRange:v26 dayRange:v27];
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
      v21 = self;
      v22 = v18;
      goto LABEL_29;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v9;
      v20 = v6;
      v21 = self;
      v22 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceRecurringSendSuggestionsDayRangeFromString(v18)];
      goto LABEL_29;
    }

    if (a4)
    {
      v55 = objc_alloc(MEMORY[0x1E696ABC0]);
      v56 = *MEMORY[0x1E698F240];
      v69 = *MEMORY[0x1E696A578];
      v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"dayRange"];
      v70 = v57;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      *a4 = [v55 initWithDomain:v56 code:2 userInfo:v58];
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

  if (!a4)
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
  *a4 = [v41 initWithDomain:v42 code:2 userInfo:v9];
LABEL_36:

LABEL_37:
  v32 = *MEMORY[0x1E69E9840];
  return v30;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceRecurringSendSuggestions *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = BMWalletPaymentsCommerceRecurringSendSuggestions;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_102;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_100;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v51) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v32 = [v4 position] + 1;
              if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
              {
                v34 = [v4 data];
                [v34 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if (([v4 hasError] & 1) != 0 || v20 > 5)
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
              v42 = [v4 position] + 1;
              if (v42 >= [v4 position] && (v43 = objc_msgSend(v4, "position") + 1, v43 <= objc_msgSend(v4, "length")))
              {
                v44 = [v4 data];
                [v44 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if (([v4 hasError] & 1) != 0 || v20 > 2)
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
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if (([v4 hasError] & 1) != 0 || v20 > 3)
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
          v37 = [v4 position] + 1;
          if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 1, v38 <= objc_msgSend(v4, "length")))
          {
            v39 = [v4 data];
            [v39 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v20 > 2)
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
      v16 = [v4 position] + 8;
      if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
      {
        v47 = [v4 data];
        [v47 getBytes:&v51 range:{objc_msgSend(v4, "position"), 8}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
      }

      else
      {
        [v4 _setError];
      }

      v5->_tagClickDate = v51;
LABEL_96:
      v46 = [v4 position];
      if (v46 >= [v4 length])
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
      v27 = [v4 position] + 1;
      if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
      {
        v29 = [v4 data];
        [v29 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
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

    if (([v4 hasError] & 1) != 0 || v20 > 3)
    {
LABEL_77:
      LODWORD(v20) = 0;
    }

    v45 = 24;
    goto LABEL_95;
  }

LABEL_100:
  if ([v4 hasError])
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

- (BMWalletPaymentsCommerceRecurringSendSuggestions)initWithUserSelection:(int)a3 passType:(int)a4 tagClickDate:(id)a5 frequency:(int)a6 suggestionsRange:(int)a7 dayRange:(int)a8
{
  v14 = a5;
  v18.receiver = self;
  v18.super_class = BMWalletPaymentsCommerceRecurringSendSuggestions;
  v15 = [(BMEventBase *)&v18 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    v15->_userSelection = a3;
    v15->_passType = a4;
    if (v14)
    {
      v15->_hasTagClickDate = 1;
      [v14 doubleValue];
    }

    else
    {
      v15->_hasTagClickDate = 0;
      v16 = -1.0;
    }

    v15->_tagClickDate = v16;
    v15->_frequency = a6;
    v15->_suggestionsRange = a7;
    v15->_dayRange = a8;
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