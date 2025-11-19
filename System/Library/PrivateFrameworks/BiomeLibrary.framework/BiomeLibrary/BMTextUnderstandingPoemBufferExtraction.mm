@interface BMTextUnderstandingPoemBufferExtraction
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMTextUnderstandingPoemBufferExtraction)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMTextUnderstandingPoemBufferExtraction)initWithType:(int)a3 text:(id)a4 identifier:(id)a5 confidenceScore:(id)a6 contactIdentifier:(id)a7 role:(int)a8 isCoref:(id)a9;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMTextUnderstandingPoemBufferExtraction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMTextUnderstandingPoemBufferExtraction *)self type];
    if (v6 == [v5 type])
    {
      v7 = [(BMTextUnderstandingPoemBufferExtraction *)self text];
      v8 = [v5 text];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMTextUnderstandingPoemBufferExtraction *)self text];
        v11 = [v5 text];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_27;
        }
      }

      v14 = [(BMTextUnderstandingPoemBufferExtraction *)self identifier];
      v15 = [v5 identifier];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMTextUnderstandingPoemBufferExtraction *)self identifier];
        v18 = [v5 identifier];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_27;
        }
      }

      if (-[BMTextUnderstandingPoemBufferExtraction hasConfidenceScore](self, "hasConfidenceScore") || [v5 hasConfidenceScore])
      {
        if (![(BMTextUnderstandingPoemBufferExtraction *)self hasConfidenceScore])
        {
          goto LABEL_27;
        }

        if (![v5 hasConfidenceScore])
        {
          goto LABEL_27;
        }

        [(BMTextUnderstandingPoemBufferExtraction *)self confidenceScore];
        v21 = v20;
        [v5 confidenceScore];
        if (v21 != v22)
        {
          goto LABEL_27;
        }
      }

      v23 = [(BMTextUnderstandingPoemBufferExtraction *)self contactIdentifier];
      v24 = [v5 contactIdentifier];
      v25 = v24;
      if (v23 == v24)
      {
      }

      else
      {
        v26 = [(BMTextUnderstandingPoemBufferExtraction *)self contactIdentifier];
        v27 = [v5 contactIdentifier];
        v28 = [v26 isEqual:v27];

        if (!v28)
        {
          goto LABEL_27;
        }
      }

      v29 = [(BMTextUnderstandingPoemBufferExtraction *)self role];
      if (v29 == [v5 role])
      {
        if (!-[BMTextUnderstandingPoemBufferExtraction hasIsCoref](self, "hasIsCoref") && ![v5 hasIsCoref])
        {
          LOBYTE(v13) = 1;
          goto LABEL_28;
        }

        if (-[BMTextUnderstandingPoemBufferExtraction hasIsCoref](self, "hasIsCoref") && [v5 hasIsCoref])
        {
          v30 = [(BMTextUnderstandingPoemBufferExtraction *)self isCoref];
          v13 = v30 ^ [v5 isCoref] ^ 1;
LABEL_28:

          goto LABEL_29;
        }
      }
    }

LABEL_27:
    LOBYTE(v13) = 0;
    goto LABEL_28;
  }

  LOBYTE(v13) = 0;
LABEL_29:

  return v13;
}

- (id)jsonDictionary
{
  v26[7] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMTextUnderstandingPoemBufferExtraction type](self, "type")}];
  v4 = [(BMTextUnderstandingPoemBufferExtraction *)self text];
  v24 = [(BMTextUnderstandingPoemBufferExtraction *)self identifier];
  if (![(BMTextUnderstandingPoemBufferExtraction *)self hasConfidenceScore]|| ([(BMTextUnderstandingPoemBufferExtraction *)self confidenceScore], fabs(v5) == INFINITY))
  {
    v23 = 0;
  }

  else
  {
    [(BMTextUnderstandingPoemBufferExtraction *)self confidenceScore];
    v6 = MEMORY[0x1E696AD98];
    [(BMTextUnderstandingPoemBufferExtraction *)self confidenceScore];
    v23 = [v6 numberWithDouble:?];
  }

  v7 = [(BMTextUnderstandingPoemBufferExtraction *)self contactIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMTextUnderstandingPoemBufferExtraction role](self, "role")}];
  if ([(BMTextUnderstandingPoemBufferExtraction *)self hasIsCoref])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemBufferExtraction isCoref](self, "isCoref")}];
  }

  else
  {
    v9 = 0;
  }

  v25[0] = @"type";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v10;
  v26[0] = v10;
  v25[1] = @"text";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v11;
  v26[1] = v11;
  v25[2] = @"identifier";
  v12 = v24;
  if (!v24)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v12;
  v25[3] = @"confidenceScore";
  v13 = v23;
  if (!v23)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v3;
  v26[3] = v13;
  v25[4] = @"contactIdentifier";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v14;
  v25[5] = @"role";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = v15;
  v25[6] = @"isCoref";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_24;
    }

LABEL_34:

    if (v7)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  if (!v8)
  {
    goto LABEL_34;
  }

LABEL_24:
  if (v7)
  {
    goto LABEL_25;
  }

LABEL_35:

LABEL_25:
  if (!v23)
  {
  }

  if (v24)
  {
    if (v4)
    {
      goto LABEL_29;
    }

LABEL_37:

    if (v22)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  if (!v4)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v22)
  {
    goto LABEL_30;
  }

LABEL_38:

LABEL_30:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMTextUnderstandingPoemBufferExtraction)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v73[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"type"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [v6 objectForKeyedSubscript:@"text"];
    v54 = a4;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v11 = 0;
          v22 = 0;
          goto LABEL_56;
        }

        v58 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v70 = *MEMORY[0x1E696A578];
        v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"text"];
        v71 = v59;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        v12 = v20 = a4;
        v21 = [v58 initWithDomain:v19 code:2 userInfo:v12];
        v11 = 0;
        v22 = 0;
        *v20 = v21;
        goto LABEL_55;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"identifier"];
    v52 = v10;
    v53 = v7;
    v57 = v11;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v54)
        {
          v59 = 0;
          v22 = 0;
          goto LABEL_55;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v68 = *MEMORY[0x1E696A578];
        v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
        v69 = v56;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v25 = v23;
        v10 = v52;
        v26 = v24;
        v11 = v57;
        v59 = 0;
        v22 = 0;
        *v54 = [v25 initWithDomain:v26 code:2 userInfo:v13];
LABEL_54:

        v7 = v53;
LABEL_55:

        goto LABEL_56;
      }

      v59 = v12;
    }

    else
    {
      v59 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"confidenceScore"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v54)
        {
          v56 = 0;
          v22 = 0;
          goto LABEL_54;
        }

        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v66 = *MEMORY[0x1E696A578];
        v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidenceScore"];
        v67 = v55;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v29 = v27;
        v10 = v52;
        v30 = [v29 initWithDomain:v28 code:2 userInfo:v14];
        v56 = 0;
        v22 = 0;
        *v54 = v30;
        goto LABEL_53;
      }

      v56 = v13;
    }

    else
    {
      v56 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"contactIdentifier"];
    v51 = v8;
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v54)
        {
          v55 = 0;
          v22 = 0;
          goto LABEL_53;
        }

        v16 = self;
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v64 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contactIdentifier"];
        v65 = v17;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v33 = [v31 initWithDomain:v32 code:2 userInfo:v15];
        v55 = 0;
        v22 = 0;
        *v54 = v33;
LABEL_52:

        self = v16;
        v8 = v51;
        v10 = v52;
LABEL_53:

        v11 = v57;
        goto LABEL_54;
      }

      v55 = v14;
    }

    else
    {
      v55 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"role"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v16 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v15;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v54)
          {
            v17 = 0;
            v22 = 0;
            goto LABEL_52;
          }

          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v46 = *MEMORY[0x1E698F240];
          v62 = *MEMORY[0x1E696A578];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"role"];
          v63 = v41;
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
          v47 = [v50 initWithDomain:v46 code:2 userInfo:v40];
          v17 = 0;
          v22 = 0;
          *v54 = v47;
          goto LABEL_51;
        }

        v18 = [MEMORY[0x1E696AD98] numberWithInt:BMTextUnderstandingPoemBufferExtractionRoleTypeFromString(v15)];
      }

      v17 = v18;
    }

    else
    {
      v16 = self;
      v17 = 0;
    }

    v40 = [v6 objectForKeyedSubscript:@"isCoref"];
    if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v54)
        {
          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v60 = *MEMORY[0x1E696A578];
          v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isCoref"];
          v61 = v44;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          *v54 = [v49 initWithDomain:v48 code:2 userInfo:v45];
        }

        v41 = 0;
        v22 = 0;
        goto LABEL_51;
      }

      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v22 = -[BMTextUnderstandingPoemBufferExtraction initWithType:text:identifier:confidenceScore:contactIdentifier:role:isCoref:](v16, "initWithType:text:identifier:confidenceScore:contactIdentifier:role:isCoref:", [v51 intValue], v57, v59, v56, v55, objc_msgSend(v17, "intValue"), v41);
    v16 = v22;
LABEL_51:

    goto LABEL_52;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMTextUnderstandingPoemBufferExtractionExtractionTypeFromString(v7)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v8 = 0;
    v22 = 0;
    goto LABEL_57;
  }

  v34 = objc_alloc(MEMORY[0x1E696ABC0]);
  v35 = *MEMORY[0x1E698F240];
  v72 = *MEMORY[0x1E696A578];
  v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
  v73[0] = v36;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
  v38 = v34;
  v10 = v37;
  v39 = v35;
  v11 = v36;
  v8 = 0;
  v22 = 0;
  *a4 = [v38 initWithDomain:v39 code:2 userInfo:v37];
LABEL_56:

LABEL_57:
  v42 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTextUnderstandingPoemBufferExtraction *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  type = self->_type;
  v9 = v4;
  PBDataWriterWriteUint32Field();
  if (self->_text)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasConfidenceScore)
  {
    confidenceScore = self->_confidenceScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_contactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  role = self->_role;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsCoref)
  {
    isCoref = self->_isCoref;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = BMTextUnderstandingPoemBufferExtraction;
  v5 = [(BMEventBase *)&v45 init];
  if (!v5)
  {
    goto LABEL_79;
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
        LOBYTE(v46) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v46) & 0x7F) << v7;
        if ((LOBYTE(v46) & 0x80) == 0)
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
      if ((v14 >> 3) <= 3)
      {
        switch(v15)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v46) = 0;
              v27 = [v4 position] + 1;
              if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
              {
                v29 = [v4 data];
                [v29 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (LOBYTE(v46) & 0x7F) << v25;
              if ((LOBYTE(v46) & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v24 = v26++ > 8;
              if (v24)
              {
                goto LABEL_65;
              }
            }

            if (([v4 hasError] & 1) != 0 || v20 > 4)
            {
LABEL_65:
              LODWORD(v20) = 0;
            }

            v40 = 24;
LABEL_73:
            *(&v5->super.super.isa + v40) = v20;
            goto LABEL_76;
          case 2:
            v16 = PBReaderReadString();
            v17 = 32;
            break;
          case 3:
            v16 = PBReaderReadString();
            v17 = 40;
            break;
          default:
            goto LABEL_47;
        }
      }

      else
      {
        if (v15 > 5)
        {
          if (v15 == 7)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v5->_hasIsCoref = 1;
            while (1)
            {
              LOBYTE(v46) = 0;
              v35 = [v4 position] + 1;
              if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
              {
                v37 = [v4 data];
                [v37 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v34 |= (LOBYTE(v46) & 0x7F) << v32;
              if ((LOBYTE(v46) & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v13 = v33++ >= 9;
              if (v13)
              {
                LOBYTE(v38) = 0;
                goto LABEL_68;
              }
            }

            v38 = (v34 != 0) & ~[v4 hasError];
LABEL_68:
            v5->_isCoref = v38;
            goto LABEL_76;
          }

          if (v15 != 6)
          {
LABEL_47:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_78;
            }

            goto LABEL_76;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v46) = 0;
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (LOBYTE(v46) & 0x7F) << v18;
            if ((LOBYTE(v46) & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v24 = v19++ > 8;
            if (v24)
            {
              goto LABEL_71;
            }
          }

          if (([v4 hasError] & 1) != 0 || v20 > 3)
          {
LABEL_71:
            LODWORD(v20) = 0;
          }

          v40 = 28;
          goto LABEL_73;
        }

        if (v15 == 4)
        {
          v5->_hasConfidenceScore = 1;
          v46 = 0.0;
          v30 = [v4 position] + 8;
          if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 8, v31 <= objc_msgSend(v4, "length")))
          {
            v41 = [v4 data];
            [v41 getBytes:&v46 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_confidenceScore = v46;
          goto LABEL_76;
        }

        if (v15 != 5)
        {
          goto LABEL_47;
        }

        v16 = PBReaderReadString();
        v17 = 56;
      }

      v39 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_76:
      v42 = [v4 position];
    }

    while (v42 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_78:
    v43 = 0;
  }

  else
  {
LABEL_79:
    v43 = v5;
  }

  return v43;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMTextUnderstandingPoemBufferExtractionExtractionTypeAsString([(BMTextUnderstandingPoemBufferExtraction *)self type]);
  v5 = [(BMTextUnderstandingPoemBufferExtraction *)self text];
  v6 = [(BMTextUnderstandingPoemBufferExtraction *)self identifier];
  v7 = MEMORY[0x1E696AD98];
  [(BMTextUnderstandingPoemBufferExtraction *)self confidenceScore];
  v8 = [v7 numberWithDouble:?];
  v9 = [(BMTextUnderstandingPoemBufferExtraction *)self contactIdentifier];
  v10 = BMTextUnderstandingPoemBufferExtractionRoleTypeAsString([(BMTextUnderstandingPoemBufferExtraction *)self role]);
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemBufferExtraction isCoref](self, "isCoref")}];
  v12 = [v3 initWithFormat:@"BMTextUnderstandingPoemBufferExtraction with type: %@, text: %@, identifier: %@, confidenceScore: %@, contactIdentifier: %@, role: %@, isCoref: %@", v4, v5, v6, v8, v9, v10, v11];

  return v12;
}

- (BMTextUnderstandingPoemBufferExtraction)initWithType:(int)a3 text:(id)a4 identifier:(id)a5 confidenceScore:(id)a6 contactIdentifier:(id)a7 role:(int)a8 isCoref:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v24.receiver = self;
  v24.super_class = BMTextUnderstandingPoemBufferExtraction;
  v20 = [(BMEventBase *)&v24 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    v20->_type = a3;
    objc_storeStrong(&v20->_text, a4);
    objc_storeStrong(&v20->_identifier, a5);
    if (v17)
    {
      v20->_hasConfidenceScore = 1;
      [v17 doubleValue];
    }

    else
    {
      v20->_hasConfidenceScore = 0;
      v21 = -1.0;
    }

    v20->_confidenceScore = v21;
    objc_storeStrong(&v20->_contactIdentifier, a7);
    v20->_role = a8;
    if (v19)
    {
      v20->_hasIsCoref = 1;
      v20->_isCoref = [v19 BOOLValue];
    }

    else
    {
      v20->_hasIsCoref = 0;
      v20->_isCoref = 0;
    }
  }

  return v20;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"text" number:2 type:13 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidenceScore" number:4 type:0 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactIdentifier" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"role" number:6 type:4 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCoref" number:7 type:12 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"text" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidenceScore" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contactIdentifier" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"role" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCoref" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
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

    v8 = [[BMTextUnderstandingPoemBufferExtraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end