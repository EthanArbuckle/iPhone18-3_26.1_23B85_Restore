@interface BMSafariBrowsingAssistantVisualComponentAttribute
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSafariBrowsingAssistantVisualComponentAttribute)initWithComponentType:(int)a3 cardType:(int)a4 entityType:(int)a5 readerViewSectionType:(int)a6 sparkleTrigger:(id)a7;
- (BMSafariBrowsingAssistantVisualComponentAttribute)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_sparkleTriggerJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSafariBrowsingAssistantVisualComponentAttribute

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSafariBrowsingAssistantVisualComponentAttribute *)self componentType];
    if (v6 == [v5 componentType] && (v7 = -[BMSafariBrowsingAssistantVisualComponentAttribute cardType](self, "cardType"), v7 == objc_msgSend(v5, "cardType")) && (v8 = -[BMSafariBrowsingAssistantVisualComponentAttribute entityType](self, "entityType"), v8 == objc_msgSend(v5, "entityType")) && (v9 = -[BMSafariBrowsingAssistantVisualComponentAttribute readerViewSectionType](self, "readerViewSectionType"), v9 == objc_msgSend(v5, "readerViewSectionType")))
    {
      v10 = [(BMSafariBrowsingAssistantVisualComponentAttribute *)self sparkleTrigger];
      v11 = [v5 sparkleTrigger];
      if (v10 == v11)
      {
        v14 = 1;
      }

      else
      {
        v12 = [(BMSafariBrowsingAssistantVisualComponentAttribute *)self sparkleTrigger];
        v13 = [v5 sparkleTrigger];
        v14 = [v12 isEqual:v13];
      }
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
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariBrowsingAssistantVisualComponentAttribute componentType](self, "componentType")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariBrowsingAssistantVisualComponentAttribute cardType](self, "cardType")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariBrowsingAssistantVisualComponentAttribute entityType](self, "entityType")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariBrowsingAssistantVisualComponentAttribute readerViewSectionType](self, "readerViewSectionType")}];
  v7 = [(BMSafariBrowsingAssistantVisualComponentAttribute *)self _sparkleTriggerJSONArray];
  v18 = @"componentType";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v8;
  v23[0] = v8;
  v19 = @"cardType";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v9;
  v20 = @"entityType";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v10;
  v21 = @"readerViewSectionType";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v11;
  v22 = @"sparkleTrigger";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v6)
    {
LABEL_13:
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v5)
  {
LABEL_14:
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_sparkleTriggerJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMSafariBrowsingAssistantVisualComponentAttribute *)self sparkleTrigger];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSafariBrowsingAssistantVisualComponentAttribute)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v97[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"componentType"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [v6 objectForKeyedSubscript:@"cardType"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!p_isa)
          {
            v38 = 0;
            goto LABEL_63;
          }

          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = v10;
          v54 = *MEMORY[0x1E698F240];
          v94 = *MEMORY[0x1E696A578];
          v55 = p_isa;
          v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"cardType"];
          v95 = v78;
          v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          v57 = v54;
          v10 = v53;
          v76 = v56;
          v38 = 0;
          p_isa = 0;
          *v55 = [v52 initWithDomain:v57 code:2 userInfo:?];
          goto LABEL_62;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariBrowsingAssistantCardTypeFromString(v10)];
      }

      v77 = v11;
    }

    else
    {
      v77 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"entityType"];
    v75 = p_isa;
    v76 = v12;
    if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!p_isa)
          {
            v78 = 0;
            goto LABEL_61;
          }

          v58 = v10;
          v59 = objc_alloc(MEMORY[0x1E696ABC0]);
          v60 = *MEMORY[0x1E698F240];
          v92 = *MEMORY[0x1E696A578];
          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"entityType"];
          v93 = v61;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
          v62 = v59;
          v10 = v58;
          v29 = v61;
          v63 = [v62 initWithDomain:v60 code:2 userInfo:v16];
          v78 = 0;
          p_isa = 0;
          *v75 = v63;
LABEL_60:

LABEL_61:
          v38 = v77;
LABEL_62:

          goto LABEL_63;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariBrowsingAssistantEntityTypeFromString(v13)];
      }

      v78 = v14;
    }

    else
    {
      v78 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"readerViewSectionType"];
    v73 = v15;
    v74 = v10;
    if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!p_isa)
          {
            v29 = 0;
            goto LABEL_60;
          }

          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = p_isa;
          v66 = *MEMORY[0x1E698F240];
          v90 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"readerViewSectionType"];
          v91 = v18;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
          v67 = [v64 initWithDomain:v66 code:2 userInfo:v21];
          p_isa = 0;
          *v65 = v67;
          v29 = 0;
          goto LABEL_58;
        }

        v17 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariBrowsingAssistantReaderViewSectionTypeFromString(v16)];
      }

      v72 = v17;
    }

    else
    {
      v72 = 0;
    }

    v18 = [v6 objectForKeyedSubscript:@"sparkleTrigger"];
    v19 = [MEMORY[0x1E695DFB0] null];
    v20 = [v18 isEqual:v19];

    if (v20)
    {
      v68 = v8;
      v69 = v7;
      v70 = self;
      v71 = v6;

      v18 = 0;
    }

    else
    {
      if (v18)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v75)
          {
            p_isa = 0;
            v29 = v72;
            v16 = v73;
            goto LABEL_59;
          }

          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = v7;
          v43 = *MEMORY[0x1E698F240];
          v88 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"sparkleTrigger"];
          v89 = v21;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
          v45 = v43;
          v7 = v42;
          *v75 = [v41 initWithDomain:v45 code:2 userInfo:v44];

          p_isa = 0;
          v29 = v72;
          v16 = v73;
LABEL_58:

LABEL_59:
          v10 = v74;
          goto LABEL_60;
        }
      }

      v68 = v8;
      v69 = v7;
      v70 = self;
      v71 = v6;
    }

    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v18 = v18;
    v22 = [v18 countByEnumeratingWithState:&v79 objects:v87 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v80;
LABEL_40:
      v25 = 0;
      while (1)
      {
        if (*v80 != v24)
        {
          objc_enumerationMutation(v18);
        }

        v26 = *(*(&v79 + 1) + 8 * v25);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v26;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            self = v70;
            v6 = v71;
            v29 = v72;
            if (v75)
            {
              v36 = objc_alloc(MEMORY[0x1E696ABC0]);
              v37 = *MEMORY[0x1E698F240];
              v83 = *MEMORY[0x1E696A578];
              v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"sparkleTrigger"];
              v84 = v32;
              v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
              v34 = v36;
              v35 = v37;
LABEL_55:
              *v75 = [v34 initWithDomain:v35 code:2 userInfo:v33];
            }

            goto LABEL_56;
          }

          v27 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariBrowsingAssistantSparkleTriggerFromString(v26)];
        }

        v28 = v27;
        [v21 addObject:v27];

        if (v23 == ++v25)
        {
          v23 = [v18 countByEnumeratingWithState:&v79 objects:v87 count:16];
          if (v23)
          {
            goto LABEL_40;
          }

          goto LABEL_50;
        }
      }

      self = v70;
      v6 = v71;
      v29 = v72;
      if (v75)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v85 = *MEMORY[0x1E696A578];
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"sparkleTrigger"];
        v86 = v32;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v34 = v30;
        v35 = v31;
        goto LABEL_55;
      }

LABEL_56:

      p_isa = 0;
      v8 = v68;
      v7 = v69;
      goto LABEL_57;
    }

LABEL_50:

    v8 = v68;
    v29 = v72;
    self = -[BMSafariBrowsingAssistantVisualComponentAttribute initWithComponentType:cardType:entityType:readerViewSectionType:sparkleTrigger:](v70, "initWithComponentType:cardType:entityType:readerViewSectionType:sparkleTrigger:", [v68 intValue], objc_msgSend(v77, "intValue"), objc_msgSend(v78, "intValue"), objc_msgSend(v72, "intValue"), v21);
    p_isa = &self->super.super.isa;
    v6 = v71;
    v7 = v69;
LABEL_57:
    v16 = v73;
    goto LABEL_58;
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
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariBrowsingAssistantComponentTypeFromString(v7)];
    goto LABEL_8;
  }

  if (!p_isa)
  {
    v8 = 0;
    goto LABEL_64;
  }

  v46 = objc_alloc(MEMORY[0x1E696ABC0]);
  v47 = *MEMORY[0x1E698F240];
  v96 = *MEMORY[0x1E696A578];
  v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"componentType"];
  v97[0] = v38;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:&v96 count:1];
  v49 = v47;
  v10 = v48;
  v50 = [v46 initWithDomain:v49 code:2 userInfo:v48];
  v8 = 0;
  v51 = p_isa;
  p_isa = 0;
  *v51 = v50;
LABEL_63:

LABEL_64:
  v39 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantVisualComponentAttribute *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  componentType = self->_componentType;
  PBDataWriterWriteUint32Field();
  cardType = self->_cardType;
  PBDataWriterWriteUint32Field();
  entityType = self->_entityType;
  PBDataWriterWriteUint32Field();
  readerViewSectionType = self->_readerViewSectionType;
  PBDataWriterWriteUint32Field();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_sparkleTrigger;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * v13) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v55.receiver = self;
  v55.super_class = BMSafariBrowsingAssistantVisualComponentAttribute;
  v5 = [(BMEventBase *)&v55 init];
  if (!v5)
  {
    goto LABEL_96;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_94;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v56 = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v56 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v56 & 0x7F) << v8;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_94;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      if (v16 == 3)
      {
        v29 = 0;
        v30 = 0;
        v19 = 0;
        while (1)
        {
          v56 = 0;
          v31 = [v4 position] + 1;
          if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
          {
            v33 = [v4 data];
            [v33 getBytes:&v56 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v19 |= (v56 & 0x7F) << v29;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v23 = v30++ > 8;
          if (v23)
          {
            goto LABEL_73;
          }
        }

        if (([v4 hasError] & 1) != 0 || v19 > 4)
        {
LABEL_73:
          LODWORD(v19) = 0;
        }

        v46 = 28;
        goto LABEL_92;
      }

      if (v16 != 5)
      {
        if (v16 == 4)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            v56 = 0;
            v20 = [v4 position] + 1;
            if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
            {
              v22 = [v4 data];
              [v22 getBytes:&v56 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v19 |= (v56 & 0x7F) << v17;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v23 = v18++ > 8;
            if (v23)
            {
              goto LABEL_86;
            }
          }

          if (([v4 hasError] & 1) != 0 || v19 > 2)
          {
LABEL_86:
            LODWORD(v19) = 0;
          }

          v46 = 32;
LABEL_92:
          *(&v5->super.super.isa + v46) = v19;
          goto LABEL_93;
        }

        goto LABEL_69;
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = MEMORY[0x1E696AD98];
      while (1)
      {
        v56 = 0;
        v38 = [v4 position] + 1;
        if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 1, v39 <= objc_msgSend(v4, "length")))
        {
          v40 = [v4 data];
          [v40 getBytes:&v56 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v36 |= (v56 & 0x7F) << v34;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v23 = v35++ > 8;
        if (v23)
        {
          goto LABEL_77;
        }
      }

      if (([v4 hasError] & 1) != 0 || v36 > 5)
      {
LABEL_77:
        v36 = 0;
      }

      v47 = [v37 numberWithUnsignedInt:v36];
      if (!v47)
      {
LABEL_98:

        goto LABEL_95;
      }

      v48 = v47;
      [v6 addObject:v47];

LABEL_93:
      v49 = [v4 position];
      if (v49 >= [v4 length])
      {
        goto LABEL_94;
      }
    }

    if (v16 == 1)
    {
      v41 = 0;
      v42 = 0;
      v19 = 0;
      while (1)
      {
        v56 = 0;
        v43 = [v4 position] + 1;
        if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 1, v44 <= objc_msgSend(v4, "length")))
        {
          v45 = [v4 data];
          [v45 getBytes:&v56 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v19 |= (v56 & 0x7F) << v41;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v41 += 7;
        v23 = v42++ > 8;
        if (v23)
        {
          goto LABEL_82;
        }
      }

      if (([v4 hasError] & 1) != 0 || v19 > 3)
      {
LABEL_82:
        LODWORD(v19) = 0;
      }

      v46 = 20;
      goto LABEL_92;
    }

    if (v16 == 2)
    {
      v24 = 0;
      v25 = 0;
      v19 = 0;
      while (1)
      {
        v56 = 0;
        v26 = [v4 position] + 1;
        if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
        {
          v28 = [v4 data];
          [v28 getBytes:&v56 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v19 |= (v56 & 0x7F) << v24;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v23 = v25++ > 8;
        if (v23)
        {
          goto LABEL_90;
        }
      }

      if (([v4 hasError] & 1) != 0 || v19 > 2)
      {
LABEL_90:
        LODWORD(v19) = 0;
      }

      v46 = 24;
      goto LABEL_92;
    }

LABEL_69:
    if (!PBReaderSkipValueWithTag())
    {
      goto LABEL_98;
    }

    goto LABEL_93;
  }

LABEL_94:
  v50 = [v6 copy];
  sparkleTrigger = v5->_sparkleTrigger;
  v5->_sparkleTrigger = v50;

  v52 = [v4 hasError];
  if (v52)
  {
LABEL_95:
    v53 = 0;
  }

  else
  {
LABEL_96:
    v53 = v5;
  }

  return v53;
}

- (NSString)description
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"["];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(BMSafariBrowsingAssistantVisualComponentAttribute *)self sparkleTrigger];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v3 length] != 1)
        {
          [v3 appendString:{@", "}];
        }

        v10 = BMSafariBrowsingAssistantSparkleTriggerAsString([v9 unsignedIntValue]);
        [v3 appendString:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"]"];
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = BMSafariBrowsingAssistantComponentTypeAsString([(BMSafariBrowsingAssistantVisualComponentAttribute *)self componentType]);
  v13 = BMSafariBrowsingAssistantCardTypeAsString([(BMSafariBrowsingAssistantVisualComponentAttribute *)self cardType]);
  v14 = BMSafariBrowsingAssistantEntityTypeAsString([(BMSafariBrowsingAssistantVisualComponentAttribute *)self entityType]);
  v15 = BMSafariBrowsingAssistantReaderViewSectionTypeAsString([(BMSafariBrowsingAssistantVisualComponentAttribute *)self readerViewSectionType]);
  v16 = [v11 initWithFormat:@"BMSafariBrowsingAssistantVisualComponentAttribute with componentType: %@, cardType: %@, entityType: %@, readerViewSectionType: %@, sparkleTrigger: %@", v12, v13, v14, v15, v3];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMSafariBrowsingAssistantVisualComponentAttribute)initWithComponentType:(int)a3 cardType:(int)a4 entityType:(int)a5 readerViewSectionType:(int)a6 sparkleTrigger:(id)a7
{
  v13 = a7;
  v16.receiver = self;
  v16.super_class = BMSafariBrowsingAssistantVisualComponentAttribute;
  v14 = [(BMEventBase *)&v16 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    v14->_componentType = a3;
    v14->_cardType = a4;
    v14->_entityType = a5;
    v14->_readerViewSectionType = a6;
    objc_storeStrong(&v14->_sparkleTrigger, a7);
  }

  return v14;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"componentType" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cardType" number:2 type:4 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entityType" number:3 type:4 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"readerViewSectionType" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sparkleTrigger" number:5 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"componentType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cardType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"entityType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"readerViewSectionType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"sparkleTrigger_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_582];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __60__BMSafariBrowsingAssistantVisualComponentAttribute_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _sparkleTriggerJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMSafariBrowsingAssistantVisualComponentAttribute alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end