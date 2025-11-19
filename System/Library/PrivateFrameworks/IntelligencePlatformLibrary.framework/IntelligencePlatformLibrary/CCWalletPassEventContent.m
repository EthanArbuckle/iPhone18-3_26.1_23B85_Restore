@interface CCWalletPassEventContent
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCWalletPassEventContent)initWithArtistIDs:(id)a3 awayTeamAbbreviation:(id)a4 awayTeamName:(id)a5 eventName:(id)a6 eventType:(id)a7 genre:(id)a8 homeTeamAbbreviation:(id)a9 homeTeamName:(id)a10 performerNames:(id)a11 error:(id *)a12;
- (CCWalletPassEventContent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (NSArray)artistIDs;
- (NSArray)performerNames;
- (NSString)awayTeamAbbreviation;
- (NSString)awayTeamName;
- (NSString)eventName;
- (NSString)eventType;
- (NSString)genre;
- (NSString)homeTeamAbbreviation;
- (NSString)homeTeamName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCWalletPassEventContent

- (CCWalletPassEventContent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v18 = [v6 objectForKeyedSubscript:@"artistIDs"];
    v9 = [v6 objectForKeyedSubscript:@"awayTeamAbbreviation"];
    v19 = [v6 objectForKeyedSubscript:@"awayTeamName"];
    v10 = [v6 objectForKeyedSubscript:@"eventName"];
    v11 = [v6 objectForKeyedSubscript:@"eventType"];
    v12 = [v6 objectForKeyedSubscript:@"genre"];
    [v6 objectForKeyedSubscript:@"homeTeamAbbreviation"];
    v17 = v20 = self;
    v13 = [v6 objectForKeyedSubscript:@"homeTeamName"];
    v14 = [v6 objectForKeyedSubscript:@"performerNames"];
    v15 = [[CCWalletPassEventContent alloc] initWithArtistIDs:v18 awayTeamAbbreviation:v9 awayTeamName:v19 eventName:v10 eventType:v11 genre:v12 homeTeamAbbreviation:v17 homeTeamName:v13 performerNames:v14 error:a4];

    self = v20;
  }

  else
  {
    CCSetError();
    v15 = 0;
  }

  return v15;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_artistIDs)
  {
    v4 = [(CCWalletPassEventContent *)self artistIDs];
    [v3 setObject:v4 forKeyedSubscript:@"artistIDs"];
  }

  if (self->_awayTeamAbbreviation)
  {
    v5 = [(CCWalletPassEventContent *)self awayTeamAbbreviation];
    [v3 setObject:v5 forKeyedSubscript:@"awayTeamAbbreviation"];
  }

  if (self->_awayTeamName)
  {
    v6 = [(CCWalletPassEventContent *)self awayTeamName];
    [v3 setObject:v6 forKeyedSubscript:@"awayTeamName"];
  }

  if (self->_eventName)
  {
    v7 = [(CCWalletPassEventContent *)self eventName];
    [v3 setObject:v7 forKeyedSubscript:@"eventName"];
  }

  if (self->_eventType)
  {
    v8 = [(CCWalletPassEventContent *)self eventType];
    [v3 setObject:v8 forKeyedSubscript:@"eventType"];
  }

  if (self->_genre)
  {
    v9 = [(CCWalletPassEventContent *)self genre];
    [v3 setObject:v9 forKeyedSubscript:@"genre"];
  }

  if (self->_homeTeamAbbreviation)
  {
    v10 = [(CCWalletPassEventContent *)self homeTeamAbbreviation];
    [v3 setObject:v10 forKeyedSubscript:@"homeTeamAbbreviation"];
  }

  if (self->_homeTeamName)
  {
    v11 = [(CCWalletPassEventContent *)self homeTeamName];
    [v3 setObject:v11 forKeyedSubscript:@"homeTeamName"];
  }

  if (self->_performerNames)
  {
    v12 = [(CCWalletPassEventContent *)self performerNames];
    [v3 setObject:v12 forKeyedSubscript:@"performerNames"];
  }

  v13 = [v3 copy];

  return v13;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v15 = a3;
  if (self->_artistIDs)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:46124 repeatedStringValue:self->_artistIDs];
    v15[2](v15, v5);
  }

  if (self->_awayTeamAbbreviation)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:46125 stringValue:self->_awayTeamAbbreviation];
    v15[2](v15, v6);
  }

  if (self->_awayTeamName)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:46126 stringValue:self->_awayTeamName];
    v15[2](v15, v7);
  }

  if (self->_eventName)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:46127 stringValue:self->_eventName];
    v15[2](v15, v8);
  }

  if (self->_eventType)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:46128 stringValue:self->_eventType];
    v15[2](v15, v9);
  }

  if (self->_genre)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:46129 stringValue:self->_genre];
    v15[2](v15, v10);
  }

  if (self->_homeTeamAbbreviation)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:46130 stringValue:self->_homeTeamAbbreviation];
    v15[2](v15, v11);
  }

  if (self->_homeTeamName)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:46131 stringValue:self->_homeTeamName];
    v15[2](v15, v12);
  }

  v13 = v15;
  if (self->_performerNames)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:46132 repeatedStringValue:self->_performerNames];
    v15[2](v15, v14);

    v13 = v15;
  }
}

- (NSArray)performerNames
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_performerNames copyItems:1];

  return v2;
}

- (NSString)homeTeamName
{
  v2 = [(NSString *)self->_homeTeamName copy];

  return v2;
}

- (NSString)homeTeamAbbreviation
{
  v2 = [(NSString *)self->_homeTeamAbbreviation copy];

  return v2;
}

- (NSString)genre
{
  v2 = [(NSString *)self->_genre copy];

  return v2;
}

- (NSString)eventType
{
  v2 = [(NSString *)self->_eventType copy];

  return v2;
}

- (NSString)eventName
{
  v2 = [(NSString *)self->_eventName copy];

  return v2;
}

- (NSString)awayTeamName
{
  v2 = [(NSString *)self->_awayTeamName copy];

  return v2;
}

- (NSString)awayTeamAbbreviation
{
  v2 = [(NSString *)self->_awayTeamAbbreviation copy];

  return v2;
}

- (NSArray)artistIDs
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_artistIDs copyItems:1];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v41 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v41];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v42 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E6993AA8];
    v11 = MEMORY[0x1E6993AA0];
    while (2)
    {
      if (*&v5[*v10])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == 0;
      }

      if (!v12)
      {
        goto LABEL_59;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        if (v17 == -1 || v17 >= *&v5[*v7])
        {
          break;
        }

        v18 = *(*&v5[*v11] + v17);
        *&v5[v16] = v17 + 1;
        v15 |= (v18 & 0x7F) << v13;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v20 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_58;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v21 = *&v5[*v10];
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15;
      }

      if (v21)
      {
        goto LABEL_58;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            v25 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v26 = 32;
          }

          else
          {
            if (v22 != 4)
            {
              goto LABEL_54;
            }

            v25 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v26 = 40;
          }
        }

        else
        {
          if (v22 == 1)
          {
            v23 = CCPBReaderReadStringNoCopy();
            if (!v42)
            {
              v42 = objc_opt_new();
            }

            if (!v23)
            {
              goto LABEL_45;
            }

            v24 = v42;
            goto LABEL_44;
          }

          if (v22 != 2)
          {
LABEL_54:
            if (CCPBReaderSkipValueWithTag())
            {
              v8 = 0;
LABEL_52:
              if (*&v5[*v6] < *&v5[*v7])
              {
                continue;
              }

              goto LABEL_59;
            }

            v27 = objc_opt_class();
            v23 = NSStringFromClass(v27);
            v28 = *&v5[*v10];
            v8 = CCSkipFieldErrorForMessage();
LABEL_51:

            goto LABEL_52;
          }

          v25 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v26 = 24;
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          v25 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v26 = 48;
        }

        else
        {
          if (v22 != 6)
          {
            goto LABEL_54;
          }

          v25 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v26 = 56;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            v25 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v26 = 64;
            break;
          case 8:
            v25 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v26 = 72;
            break;
          case 9:
            v23 = CCPBReaderReadStringNoCopy();
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            if (!v23)
            {
              goto LABEL_45;
            }

            v24 = v9;
LABEL_44:
            [v24 addObject:v23];
LABEL_45:
            v8 = 0;
            goto LABEL_51;
          default:
            goto LABEL_54;
        }
      }

      break;
    }

    v23 = *(&self->super.super.isa + v26);
    *(&self->super.super.isa + v26) = v25;
    goto LABEL_51;
  }

  v9 = 0;
  v42 = 0;
LABEL_58:
  v8 = 0;
LABEL_59:
  v29 = [v42 copy];
  artistIDs = self->_artistIDs;
  self->_artistIDs = v29;

  v31 = [v9 copy];
  performerNames = self->_performerNames;
  self->_performerNames = v31;

  if (v8)
  {
    CCSetError();
    v33 = 0;
    v34 = v41;
  }

  else
  {
    v35 = MEMORY[0x1E6993AA8];
    v34 = v41;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = *&v5[*v35];
      v39 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }
  }

  return v33;
}

- (CCWalletPassEventContent)initWithArtistIDs:(id)a3 awayTeamAbbreviation:(id)a4 awayTeamName:(id)a5 eventName:(id)a6 eventType:(id)a7 genre:(id)a8 homeTeamAbbreviation:(id)a9 homeTeamName:(id)a10 performerNames:(id)a11 error:(id *)a12
{
  v88 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v64 = a7;
  v68 = a8;
  v67 = a9;
  v66 = a10;
  v65 = a11;
  v21 = objc_opt_new();
  v22 = 0x1E696A000uLL;
  if (!v17)
  {
    v62 = a12;
    v24 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  v85 = 0;
  v23 = CCValidateArrayValues();
  v24 = 0;
  if (v23)
  {
    v62 = a12;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v25 = v17;
    v26 = [v25 countByEnumeratingWithState:&v81 objects:v87 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v82;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v82 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v81 + 1) + 8 * i);
          CCPBDataWriterWriteStringField();
        }

        v27 = [v25 countByEnumeratingWithState:&v81 objects:v87 count:16];
      }

      while (v27);
    }

    v22 = 0x1E696A000;
LABEL_12:
    v31 = v64;
    if (v18)
    {
      v32 = *(v22 + 3776);
      objc_opt_class();
      v80 = v24;
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v34 = v24;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_39;
      }

      CCPBDataWriterWriteStringField();
      if (!v19)
      {
LABEL_15:
        v24 = v34;
        if (v20)
        {
          goto LABEL_16;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v34 = v24;
      if (!v19)
      {
        goto LABEL_15;
      }
    }

    v42 = *(v22 + 3776);
    objc_opt_class();
    v79 = v34;
    v43 = CCValidateIsInstanceOfExpectedClass();
    v24 = v34;

    if (!v43)
    {
      goto LABEL_51;
    }

    CCPBDataWriterWriteStringField();
    if (v20)
    {
LABEL_16:
      v35 = *(v22 + 3776);
      objc_opt_class();
      v78 = v24;
      v36 = CCValidateIsInstanceOfExpectedClass();
      v34 = v24;

      if (!v36)
      {
        goto LABEL_39;
      }

      CCPBDataWriterWriteStringField();
      if (!v64)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }

LABEL_24:
    v34 = v24;
    if (!v64)
    {
LABEL_18:
      v24 = v34;
LABEL_27:
      if (v68)
      {
        v37 = v19;
        v38 = v20;
        objc_opt_class();
        v76 = v24;
        v46 = CCValidateIsInstanceOfExpectedClass();
        v41 = v68;
        v47 = v24;

        if (!v46)
        {
          CCSetError();
          v39 = 0;
          v24 = v47;
LABEL_53:
          v40 = self;
          goto LABEL_54;
        }

        CCPBDataWriterWriteStringField();
        v20 = v38;
        v19 = v37;
      }

      else
      {
        v47 = v24;
      }

      if (!v67)
      {
        v24 = v47;
        goto LABEL_36;
      }

      objc_opt_class();
      v75 = v47;
      v48 = CCValidateIsInstanceOfExpectedClass();
      v24 = v47;

      if (v48)
      {
        CCPBDataWriterWriteStringField();
LABEL_36:
        if (!v66)
        {
          v34 = v24;
          goto LABEL_41;
        }

        objc_opt_class();
        v74 = v24;
        v49 = CCValidateIsInstanceOfExpectedClass();
        v34 = v24;

        if (v49)
        {
          CCPBDataWriterWriteStringField();
LABEL_41:
          if (!v65)
          {
            v37 = v19;
            v38 = v20;
            v24 = v34;
            v57 = self;
LABEL_56:
            v60 = [v21 immutableData];
            v61 = [(CCItemMessage *)v57 initWithData:v60 error:v62];

            v40 = v61;
            v39 = v61;
            goto LABEL_20;
          }

          objc_opt_class();
          v73 = v34;
          v50 = CCValidateArrayValues();
          v24 = v34;

          if (v50)
          {
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v51 = v65;
            v52 = [v51 countByEnumeratingWithState:&v69 objects:v86 count:16];
            if (v52)
            {
              v53 = v52;
              v54 = *v70;
              do
              {
                for (j = 0; j != v53; ++j)
                {
                  if (*v70 != v54)
                  {
                    objc_enumerationMutation(v51);
                  }

                  v56 = *(*(&v69 + 1) + 8 * j);
                  CCPBDataWriterWriteStringField();
                }

                v53 = [v51 countByEnumeratingWithState:&v69 objects:v86 count:16];
              }

              while (v53);
            }

            v37 = v19;
            v38 = v20;

            v57 = self;
            v31 = v64;
            goto LABEL_56;
          }

          goto LABEL_51;
        }

LABEL_39:
        v37 = v19;
        v38 = v20;
        CCSetError();
        v39 = 0;
        v24 = v34;
LABEL_52:
        v41 = v68;
        goto LABEL_53;
      }

LABEL_51:
      v37 = v19;
      v38 = v20;
      CCSetError();
      v39 = 0;
      goto LABEL_52;
    }

LABEL_25:
    v44 = *(v22 + 3776);
    objc_opt_class();
    v77 = v34;
    v45 = CCValidateIsInstanceOfExpectedClass();
    v24 = v34;

    if (!v45)
    {
      goto LABEL_51;
    }

    CCPBDataWriterWriteStringField();
    goto LABEL_27;
  }

  v37 = v19;
  v38 = v20;
  CCSetError();
  v39 = 0;
  v40 = self;
  v31 = v64;
LABEL_20:
  v41 = v68;
LABEL_54:

  v58 = *MEMORY[0x1E69E9840];
  return v39;
}

@end