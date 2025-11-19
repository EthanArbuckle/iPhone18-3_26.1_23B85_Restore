@interface BMSiriAssistantSuggestionFeaturesEngagementLabels
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriAssistantSuggestionFeaturesEngagementLabels)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriAssistantSuggestionFeaturesEngagementLabels)initWithWasSpoken:(id)a3 wasTapped:(id)a4 dwellTime:(id)a5 otherSuggestionTapped:(id)a6 otherSuggestionSpoken:(id)a7 position:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriAssistantSuggestionFeaturesEngagementLabels

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMSiriAssistantSuggestionFeaturesEngagementLabels hasWasSpoken](self, "hasWasSpoken") || [v5 hasWasSpoken])
    {
      if (![(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self hasWasSpoken])
      {
        goto LABEL_33;
      }

      if (![v5 hasWasSpoken])
      {
        goto LABEL_33;
      }

      v6 = [(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self wasSpoken];
      if (v6 != [v5 wasSpoken])
      {
        goto LABEL_33;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesEngagementLabels hasWasTapped](self, "hasWasTapped") || [v5 hasWasTapped])
    {
      if (![(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self hasWasTapped])
      {
        goto LABEL_33;
      }

      if (![v5 hasWasTapped])
      {
        goto LABEL_33;
      }

      v7 = [(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self wasTapped];
      if (v7 != [v5 wasTapped])
      {
        goto LABEL_33;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesEngagementLabels hasDwellTime](self, "hasDwellTime") || [v5 hasDwellTime])
    {
      if (![(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self hasDwellTime])
      {
        goto LABEL_33;
      }

      if (![v5 hasDwellTime])
      {
        goto LABEL_33;
      }

      v8 = [(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self dwellTime];
      if (v8 != [v5 dwellTime])
      {
        goto LABEL_33;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesEngagementLabels hasOtherSuggestionTapped](self, "hasOtherSuggestionTapped") || [v5 hasOtherSuggestionTapped])
    {
      if (![(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self hasOtherSuggestionTapped])
      {
        goto LABEL_33;
      }

      if (![v5 hasOtherSuggestionTapped])
      {
        goto LABEL_33;
      }

      v9 = [(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self otherSuggestionTapped];
      if (v9 != [v5 otherSuggestionTapped])
      {
        goto LABEL_33;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesEngagementLabels hasOtherSuggestionSpoken](self, "hasOtherSuggestionSpoken") || [v5 hasOtherSuggestionSpoken])
    {
      if (![(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self hasOtherSuggestionSpoken])
      {
        goto LABEL_33;
      }

      if (![v5 hasOtherSuggestionSpoken])
      {
        goto LABEL_33;
      }

      v10 = [(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self otherSuggestionSpoken];
      if (v10 != [v5 otherSuggestionSpoken])
      {
        goto LABEL_33;
      }
    }

    if (!-[BMSiriAssistantSuggestionFeaturesEngagementLabels hasPosition](self, "hasPosition") && ![v5 hasPosition])
    {
      v12 = 1;
      goto LABEL_34;
    }

    if (-[BMSiriAssistantSuggestionFeaturesEngagementLabels hasPosition](self, "hasPosition") && [v5 hasPosition])
    {
      v11 = [(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self position];
      v12 = v11 == [v5 position];
    }

    else
    {
LABEL_33:
      v12 = 0;
    }

LABEL_34:

    goto LABEL_35;
  }

  v12 = 0;
LABEL_35:

  return v12;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  if ([(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self hasWasSpoken])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEngagementLabels wasSpoken](self, "wasSpoken")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self hasWasTapped])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEngagementLabels wasTapped](self, "wasTapped")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self hasDwellTime])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriAssistantSuggestionFeaturesEngagementLabels dwellTime](self, "dwellTime")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self hasOtherSuggestionTapped])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEngagementLabels otherSuggestionTapped](self, "otherSuggestionTapped")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self hasOtherSuggestionSpoken])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEngagementLabels otherSuggestionSpoken](self, "otherSuggestionSpoken")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self hasPosition])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesEngagementLabels position](self, "position")}];
  }

  else
  {
    v8 = 0;
  }

  v22[0] = @"wasSpoken";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v9;
  v20 = v4;
  v23[0] = v9;
  v22[1] = @"wasTapped";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v10;
  v22[2] = @"dwellTime";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v23[2] = v11;
  v22[3] = @"otherSuggestionTapped";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v12;
  v22[4] = @"otherSuggestionSpoken";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v13;
  v22[5] = @"position";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_33;
    }

LABEL_42:

    if (v6)
    {
      goto LABEL_34;
    }

    goto LABEL_43;
  }

  if (!v7)
  {
    goto LABEL_42;
  }

LABEL_33:
  if (v6)
  {
    goto LABEL_34;
  }

LABEL_43:

LABEL_34:
  if (!v5)
  {
  }

  if (v20)
  {
    if (v21)
    {
      goto LABEL_38;
    }
  }

  else
  {

    if (v21)
    {
      goto LABEL_38;
    }
  }

LABEL_38:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMSiriAssistantSuggestionFeaturesEngagementLabels)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v73[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"wasSpoken"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"wasTapped"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v21 = 0;
          v17 = 0;
          goto LABEL_50;
        }

        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = a4;
        v23 = *MEMORY[0x1E698F240];
        v70 = *MEMORY[0x1E696A578];
        v24 = v7;
        v25 = v8;
        v26 = objc_alloc(MEMORY[0x1E696AEC0]);
        v49 = objc_opt_class();
        v27 = v26;
        v8 = v25;
        v7 = v24;
        v28 = [v27 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v49, @"wasTapped"];
        v71 = v28;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        v29 = v23;
        a4 = v28;
        v21 = 0;
        v17 = 0;
        *v52 = [v22 initWithDomain:v29 code:2 userInfo:v10];
        goto LABEL_49;
      }

      v60 = v9;
    }

    else
    {
      v60 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"dwellTime"];
    v61 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v17 = 0;
          v21 = v60;
          goto LABEL_49;
        }

        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v53 = a4;
        v31 = *MEMORY[0x1E698F240];
        v68 = *MEMORY[0x1E696A578];
        v32 = v7;
        v33 = v8;
        v34 = objc_alloc(MEMORY[0x1E696AEC0]);
        v50 = objc_opt_class();
        v35 = v34;
        v8 = v33;
        v7 = v32;
        v59 = [v35 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v50, @"dwellTime"];
        v69 = v59;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v36 = [v30 initWithDomain:v31 code:2 userInfo:v11];
        a4 = 0;
        v17 = 0;
        *v53 = v36;
        v21 = v60;
LABEL_48:

        self = v61;
LABEL_49:

        goto LABEL_50;
      }

      v58 = v10;
    }

    else
    {
      v58 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"otherSuggestionTapped"];
    v56 = v7;
    v57 = v9;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v59 = 0;
          v17 = 0;
          v21 = v60;
          a4 = v58;
          goto LABEL_48;
        }

        v37 = v8;
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v66 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"otherSuggestionTapped"];
        v67 = v14;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v40 = v38;
        v8 = v37;
        v7 = v56;
        v41 = [v40 initWithDomain:v39 code:2 userInfo:v12];
        v59 = 0;
        v17 = 0;
        *a4 = v41;
        goto LABEL_57;
      }

      v59 = v11;
    }

    else
    {
      v59 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"otherSuggestionSpoken"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = v8;
      v14 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8;
      v14 = v12;
LABEL_16:
      v15 = [v6 objectForKeyedSubscript:@"position"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v16 = 0;
LABEL_19:
        a4 = v58;
        v17 = [(BMSiriAssistantSuggestionFeaturesEngagementLabels *)v61 initWithWasSpoken:v13 wasTapped:v60 dwellTime:v58 otherSuggestionTapped:v59 otherSuggestionSpoken:v14 position:v16];
        v61 = v17;
LABEL_46:

        v8 = v13;
        v7 = v56;
LABEL_47:

        v21 = v60;
        v9 = v57;
        goto LABEL_48;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
        goto LABEL_19;
      }

      if (a4)
      {
        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v51 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"position"];
        v63 = v45;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        *a4 = [v55 initWithDomain:v51 code:2 userInfo:v46];
      }

      v16 = 0;
      v17 = 0;
LABEL_45:
      a4 = v58;
      goto LABEL_46;
    }

    if (a4)
    {
      v13 = v8;
      v54 = a4;
      v42 = objc_alloc(MEMORY[0x1E696ABC0]);
      v43 = *MEMORY[0x1E698F240];
      v64 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"otherSuggestionSpoken"];
      v65 = v16;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v44 = [v42 initWithDomain:v43 code:2 userInfo:v15];
      v14 = 0;
      v17 = 0;
      *v54 = v44;
      goto LABEL_45;
    }

    v14 = 0;
    v17 = 0;
LABEL_57:
    a4 = v58;
    goto LABEL_47;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    v17 = 0;
    goto LABEL_51;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = a4;
  v20 = *MEMORY[0x1E698F240];
  v72 = *MEMORY[0x1E696A578];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"wasSpoken"];
  v73[0] = v21;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
  v8 = 0;
  v17 = 0;
  *v19 = [v18 initWithDomain:v20 code:2 userInfo:v9];
LABEL_50:

LABEL_51:
  v47 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if (self->_hasWasSpoken)
  {
    wasSpoken = self->_wasSpoken;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasWasTapped)
  {
    wasTapped = self->_wasTapped;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasDwellTime)
  {
    dwellTime = self->_dwellTime;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasOtherSuggestionTapped)
  {
    otherSuggestionTapped = self->_otherSuggestionTapped;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasOtherSuggestionSpoken)
  {
    otherSuggestionSpoken = self->_otherSuggestionSpoken;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasPosition)
  {
    position = self->_position;
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v59.receiver = self;
  v59.super_class = BMSiriAssistantSuggestionFeaturesEngagementLabels;
  v5 = [(BMEventBase *)&v59 init];
  if (!v5)
  {
    goto LABEL_101;
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
        v60 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v60 & 0x7F) << v7;
        if ((v60 & 0x80) == 0)
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
      if ((v14 >> 3) > 3)
      {
        if (v15 == 4)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v5->_hasOtherSuggestionTapped = 1;
          while (1)
          {
            v60 = 0;
            v40 = [v4 position] + 1;
            if (v40 >= [v4 position] && (v41 = objc_msgSend(v4, "position") + 1, v41 <= objc_msgSend(v4, "length")))
            {
              v42 = [v4 data];
              [v42 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v39 |= (v60 & 0x7F) << v37;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v13 = v38++ >= 9;
            if (v13)
            {
              LOBYTE(v36) = 0;
              goto LABEL_84;
            }
          }

          v36 = (v39 != 0) & ~[v4 hasError];
LABEL_84:
          v55 = 21;
          goto LABEL_97;
        }

        if (v15 == 5)
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v5->_hasOtherSuggestionSpoken = 1;
          while (1)
          {
            v60 = 0;
            v52 = [v4 position] + 1;
            if (v52 >= [v4 position] && (v53 = objc_msgSend(v4, "position") + 1, v53 <= objc_msgSend(v4, "length")))
            {
              v54 = [v4 data];
              [v54 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v51 |= (v60 & 0x7F) << v49;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v13 = v50++ >= 9;
            if (v13)
            {
              LOBYTE(v36) = 0;
              goto LABEL_96;
            }
          }

          v36 = (v51 != 0) & ~[v4 hasError];
LABEL_96:
          v55 = 23;
          goto LABEL_97;
        }

        if (v15 != 6)
        {
LABEL_61:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_100;
          }

          goto LABEL_98;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasPosition = 1;
        while (1)
        {
          v60 = 0;
          v26 = [v4 position] + 1;
          if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
          {
            v28 = [v4 data];
            [v28 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v25 |= (v60 & 0x7F) << v23;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v13 = v24++ >= 9;
          if (v13)
          {
            v29 = 0;
            goto LABEL_92;
          }
        }

        if ([v4 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_92:
        v5->_position = v29;
      }

      else
      {
        if (v15 == 1)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v5->_hasWasSpoken = 1;
          while (1)
          {
            v60 = 0;
            v33 = [v4 position] + 1;
            if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
            {
              v35 = [v4 data];
              [v35 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v32 |= (v60 & 0x7F) << v30;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v13 = v31++ >= 9;
            if (v13)
            {
              LOBYTE(v36) = 0;
              goto LABEL_82;
            }
          }

          v36 = (v32 != 0) & ~[v4 hasError];
LABEL_82:
          v55 = 16;
          goto LABEL_97;
        }

        if (v15 == 2)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v5->_hasWasTapped = 1;
          while (1)
          {
            v60 = 0;
            v46 = [v4 position] + 1;
            if (v46 >= [v4 position] && (v47 = objc_msgSend(v4, "position") + 1, v47 <= objc_msgSend(v4, "length")))
            {
              v48 = [v4 data];
              [v48 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v45 |= (v60 & 0x7F) << v43;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v13 = v44++ >= 9;
            if (v13)
            {
              LOBYTE(v36) = 0;
              goto LABEL_94;
            }
          }

          v36 = (v45 != 0) & ~[v4 hasError];
LABEL_94:
          v55 = 18;
LABEL_97:
          *(&v5->super.super.isa + v55) = v36;
          goto LABEL_98;
        }

        if (v15 != 3)
        {
          goto LABEL_61;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasDwellTime = 1;
        while (1)
        {
          v60 = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v60 & 0x7F) << v16;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_88;
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

LABEL_88:
        v5->_dwellTime = v22;
      }

LABEL_98:
      v56 = [v4 position];
    }

    while (v56 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_100:
    v57 = 0;
  }

  else
  {
LABEL_101:
    v57 = v5;
  }

  return v57;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEngagementLabels wasSpoken](self, "wasSpoken")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEngagementLabels wasTapped](self, "wasTapped")}];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriAssistantSuggestionFeaturesEngagementLabels dwellTime](self, "dwellTime")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEngagementLabels otherSuggestionTapped](self, "otherSuggestionTapped")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEngagementLabels otherSuggestionSpoken](self, "otherSuggestionSpoken")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesEngagementLabels position](self, "position")}];
  v10 = [v3 initWithFormat:@"BMSiriAssistantSuggestionFeaturesEngagementLabels with wasSpoken: %@, wasTapped: %@, dwellTime: %@, otherSuggestionTapped: %@, otherSuggestionSpoken: %@, position: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMSiriAssistantSuggestionFeaturesEngagementLabels)initWithWasSpoken:(id)a3 wasTapped:(id)a4 dwellTime:(id)a5 otherSuggestionTapped:(id)a6 otherSuggestionSpoken:(id)a7 position:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v24.receiver = self;
  v24.super_class = BMSiriAssistantSuggestionFeaturesEngagementLabels;
  v20 = [(BMEventBase *)&v24 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v20->_hasWasSpoken = 1;
      v20->_wasSpoken = [v14 BOOLValue];
    }

    else
    {
      v20->_hasWasSpoken = 0;
      v20->_wasSpoken = 0;
    }

    if (v15)
    {
      v20->_hasWasTapped = 1;
      v20->_wasTapped = [v15 BOOLValue];
    }

    else
    {
      v20->_hasWasTapped = 0;
      v20->_wasTapped = 0;
    }

    if (v16)
    {
      v20->_hasDwellTime = 1;
      v21 = [v16 longLongValue];
    }

    else
    {
      v20->_hasDwellTime = 0;
      v21 = -1;
    }

    v20->_dwellTime = v21;
    if (v17)
    {
      v20->_hasOtherSuggestionTapped = 1;
      v20->_otherSuggestionTapped = [v17 BOOLValue];
    }

    else
    {
      v20->_hasOtherSuggestionTapped = 0;
      v20->_otherSuggestionTapped = 0;
    }

    if (v18)
    {
      v20->_hasOtherSuggestionSpoken = 1;
      v20->_otherSuggestionSpoken = [v18 BOOLValue];
    }

    else
    {
      v20->_hasOtherSuggestionSpoken = 0;
      v20->_otherSuggestionSpoken = 0;
    }

    if (v19)
    {
      v20->_hasPosition = 1;
      v22 = [v19 intValue];
    }

    else
    {
      v20->_hasPosition = 0;
      v22 = -1;
    }

    v20->_position = v22;
  }

  return v20;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"wasSpoken" number:1 type:12 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"wasTapped" number:2 type:12 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dwellTime" number:3 type:3 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"otherSuggestionTapped" number:4 type:12 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"otherSuggestionSpoken" number:5 type:12 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"position" number:6 type:2 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wasSpoken" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wasTapped" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dwellTime" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:3 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"otherSuggestionTapped" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"otherSuggestionSpoken" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"position" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
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

    v8 = [[BMSiriAssistantSuggestionFeaturesEngagementLabels alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end