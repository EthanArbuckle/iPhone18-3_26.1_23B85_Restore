@interface CCPeopleSuggesterContactPriorContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3;
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCPeopleSuggesterContactPriorContent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCPeopleSuggesterContactPriorContent)initWithVersion:(id)a3 minVersion:(id)a4 sourceSharedIdentifier:(id)a5 priorScore:(id)a6 modelName:(id)a7 modelVersion:(id)a8 referenceDate:(id)a9 error:(id *)a10;
- (NSString)modelName;
- (NSString)modelVersion;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCPeopleSuggesterContactPriorContent

- (CCPeopleSuggesterContactPriorContent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v61 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"version"];
    v10 = [v6 objectForKeyedSubscript:@"minVersion"];
    v11 = [v6 objectForKeyedSubscript:@"sourceSharedIdentifier"];
    if (v11)
    {
      v12 = v11;
      objc_opt_class();
      v60 = v8;
      v13 = CCValidateIsInstanceOfExpectedClass();
      v14 = v8;

      if ((v13 & 1) == 0)
      {
        CCSetError();
        v24 = 0;
        v15 = v12;
LABEL_33:

        v8 = v14;
        goto LABEL_34;
      }

      v41 = v10;
      v42 = v9;
      v45 = self;
      v15 = objc_opt_new();
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v16 = v12;
      v17 = [v16 countByEnumeratingWithState:&v56 objects:v63 count:16];
      v48 = a4;
      if (v17)
      {
        v18 = v17;
        v19 = *v57;
        while (2)
        {
          v20 = 0;
          v21 = v14;
          do
          {
            if (*v57 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v56 + 1) + 8 * v20);
            objc_opt_class();
            v55 = v21;
            v23 = CCValidateIsInstanceOfExpectedClass();
            v14 = v21;

            if (!v23)
            {
              CCSetError();

              v24 = 0;
              v15 = v16;
              self = v45;
              v10 = v41;
              v9 = v42;
              goto LABEL_33;
            }

            [v15 appendInt64Value:{objc_msgSend(v22, "longLongValue")}];
            ++v20;
            v21 = v14;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v56 objects:v63 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v8 = v14;
      self = v45;
      v10 = v41;
      v9 = v42;
      a4 = v48;
    }

    else
    {
      v15 = 0;
    }

    v25 = [v6 objectForKeyedSubscript:@"priorScore"];
    if (v25)
    {
      v26 = v25;
      objc_opt_class();
      v54 = v8;
      v27 = CCValidateIsInstanceOfExpectedClass();
      v14 = v8;

      if ((v27 & 1) == 0)
      {
        CCSetError();
        v24 = 0;
        goto LABEL_32;
      }

      v40 = v15;
      v46 = self;
      v49 = a4;
      v43 = v9;
      v44 = v6;
      v28 = objc_opt_new();
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v26 = v26;
      v29 = [v26 countByEnumeratingWithState:&v50 objects:v62 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v51;
        while (2)
        {
          v32 = 0;
          v33 = v14;
          do
          {
            if (*v51 != v31)
            {
              objc_enumerationMutation(v26);
            }

            v34 = *(*(&v50 + 1) + 8 * v32);
            objc_opt_class();
            v35 = CCValidateIsInstanceOfExpectedClass();
            v14 = v33;

            if (!v35)
            {
              CCSetError();

              v24 = 0;
              v6 = v44;
              self = v46;
              v9 = v43;
              v15 = v40;
              goto LABEL_32;
            }

            [v34 floatValue];
            [v28 appendFloatValue:?];
            ++v32;
            v33 = v14;
          }

          while (v30 != v32);
          v30 = [v26 countByEnumeratingWithState:&v50 objects:v62 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }
      }

      v6 = v44;
      self = v46;
      v9 = v43;
    }

    else
    {
      v40 = v15;
      v49 = a4;
      v28 = 0;
      v14 = v8;
    }

    v47 = [v6 objectForKeyedSubscript:@"modelName"];
    v36 = [v6 objectForKeyedSubscript:@"modelVersion"];
    v37 = [v6 objectForKeyedSubscript:@"referenceDate"];
    v24 = [[CCPeopleSuggesterContactPriorContent alloc] initWithVersion:v9 minVersion:v10 sourceSharedIdentifier:v40 priorScore:v28 modelName:v47 modelVersion:v36 referenceDate:v37 error:v49];

    v26 = v28;
    v15 = v40;
LABEL_32:

    goto LABEL_33;
  }

  CCSetError();
  v24 = 0;
LABEL_34:

  v38 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_hasVersion)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCPeopleSuggesterContactPriorContent version](self, "version")}];
    [v3 setObject:v4 forKeyedSubscript:@"version"];
  }

  if (self->_hasMinVersion)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCPeopleSuggesterContactPriorContent minVersion](self, "minVersion")}];
    [v3 setObject:v5 forKeyedSubscript:@"minVersion"];
  }

  if (self->_sourceSharedIdentifier)
  {
    v6 = objc_opt_new();
    v7 = [(CCPeopleSuggesterContactPriorContent *)self sourceSharedIdentifier];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __54__CCPeopleSuggesterContactPriorContent_jsonDictionary__block_invoke;
    v23[3] = &unk_1E73E8EF0;
    v24 = v6;
    v8 = v6;
    [v7 enumerateInt64ValuesWithBlock:v23];

    [v3 setObject:v8 forKeyedSubscript:@"sourceSharedIdentifier"];
  }

  if (self->_priorScore)
  {
    v9 = objc_opt_new();
    v10 = [(CCPeopleSuggesterContactPriorContent *)self priorScore];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __54__CCPeopleSuggesterContactPriorContent_jsonDictionary__block_invoke_2;
    v21 = &unk_1E73E7CB8;
    v22 = v9;
    v11 = v9;
    [v10 enumerateFloatValuesWithBlock:&v18];

    [v3 setObject:v11 forKeyedSubscript:{@"priorScore", v18, v19, v20, v21}];
  }

  if (self->_modelName)
  {
    v12 = [(CCPeopleSuggesterContactPriorContent *)self modelName];
    [v3 setObject:v12 forKeyedSubscript:@"modelName"];
  }

  if (self->_modelVersion)
  {
    v13 = [(CCPeopleSuggesterContactPriorContent *)self modelVersion];
    [v3 setObject:v13 forKeyedSubscript:@"modelVersion"];
  }

  if (self->_hasReferenceDate)
  {
    v14 = MEMORY[0x1E696AD98];
    [(CCPeopleSuggesterContactPriorContent *)self referenceDate];
    v15 = [v14 numberWithDouble:?];
    [v3 setObject:v15 forKeyedSubscript:@"referenceDate"];
  }

  v16 = [v3 copy];

  return v16;
}

void __54__CCPeopleSuggesterContactPriorContent_jsonDictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __54__CCPeopleSuggesterContactPriorContent_jsonDictionary__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [v1 addObject:v2];
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v12 = a3;
  if (self->_hasVersion)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:40569 uint32Value:self->_version];
    v12[2](v12, v5);
  }

  if (self->_hasMinVersion)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:40570 uint32Value:self->_minVersion];
    v12[2](v12, v6);
  }

  if (self->_sourceSharedIdentifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:40571 repeatedInt64Value:self->_sourceSharedIdentifier];
    v12[2](v12, v7);
  }

  if (self->_priorScore)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:40572 repeatedFloatValue:self->_priorScore];
    v12[2](v12, v8);
  }

  if (self->_modelName)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:40573 stringValue:self->_modelName];
    v12[2](v12, v9);
  }

  if (self->_modelVersion)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:40574 stringValue:self->_modelVersion];
    v12[2](v12, v10);
  }

  if (self->_hasReferenceDate)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:40575 doubleValue:self->_referenceDate];
    v12[2](v12, v11);
  }
}

- (NSString)modelVersion
{
  v2 = [(NSString *)self->_modelVersion copy];

  return v2;
}

- (NSString)modelName
{
  v2 = [(NSString *)self->_modelName copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v6];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  if (*&v7[*MEMORY[0x1E6993AB8]] < *&v7[*MEMORY[0x1E6993AB0]])
  {
    v68 = 0;
    v10 = 0;
    v11 = 0;
    v12 = MEMORY[0x1E6993AA8];
    v13 = MEMORY[0x1E6993AA0];
    while (2)
    {
      if (*&v7[*v12])
      {
        v14 = 0;
      }

      else
      {
        v14 = v11 == 0;
      }

      if (!v14)
      {
        goto LABEL_74;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = *v8;
        v19 = *&v7[v18];
        v20 = v19 + 1;
        if (v19 == -1 || v20 > *&v7[*v9])
        {
          break;
        }

        v21 = *(*&v7[*v13] + v19);
        *&v7[v18] = v20;
        v17 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v15 += 7;
        v22 = v16++ >= 9;
        if (v22)
        {
          v23 = 0;
          v24 = *v12;
          if (*&v7[v24])
          {
            goto LABEL_73;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v12] = 1;
LABEL_17:
      v24 = *v12;
      v25 = *&v7[v24];
      if (v25)
      {
        v23 = 0;
      }

      else
      {
        v23 = v17;
      }

      if (v25)
      {
        goto LABEL_73;
      }

LABEL_21:
      v26 = v23 >> 3;
      if ((v23 >> 3) <= 3)
      {
        switch(v26)
        {
          case 1:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            while (1)
            {
              v35 = *v8;
              v36 = *&v7[v35];
              v37 = v36 + 1;
              if (v36 == -1 || v37 > *&v7[*v9])
              {
                break;
              }

              v38 = *(*&v7[*v13] + v36);
              *&v7[v35] = v37;
              v34 |= (v38 & 0x7F) << v32;
              if ((v38 & 0x80) == 0)
              {
                goto LABEL_60;
              }

              v32 += 7;
              v22 = v33++ >= 9;
              if (v22)
              {
                LODWORD(v34) = 0;
                goto LABEL_62;
              }
            }

            *&v7[*v12] = 1;
LABEL_60:
            if (*&v7[*v12])
            {
              LODWORD(v34) = 0;
            }

LABEL_62:
            v11 = 0;
            self->_version = v34;
            v53 = 16;
            break;
          case 2:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            while (1)
            {
              v49 = *v8;
              v50 = *&v7[v49];
              v51 = v50 + 1;
              if (v50 == -1 || v51 > *&v7[*v9])
              {
                break;
              }

              v52 = *(*&v7[*v13] + v50);
              *&v7[v49] = v51;
              v48 |= (v52 & 0x7F) << v46;
              if ((v52 & 0x80) == 0)
              {
                goto LABEL_64;
              }

              v46 += 7;
              v22 = v47++ >= 9;
              if (v22)
              {
                LODWORD(v48) = 0;
                goto LABEL_66;
              }
            }

            *&v7[*v12] = 1;
LABEL_64:
            if (*&v7[*v12])
            {
              LODWORD(v48) = 0;
            }

LABEL_66:
            v11 = 0;
            self->_minVersion = v48;
            v53 = 17;
            break;
          case 3:
            if (!v10)
            {
              v10 = objc_opt_new();
            }

            CCPBReaderAppendRepeatedInt64FieldValues();
LABEL_49:
            v11 = 0;
            v12 = MEMORY[0x1E6993AA8];
            goto LABEL_70;
          default:
LABEL_44:
            if ((CCPBReaderSkipValueWithTag() & 1) == 0)
            {
              v39 = objc_opt_class();
              NSStringFromClass(v39);
              v67 = v10;
              v40 = a4;
              v42 = v41 = v6;
              v43 = *&v7[*MEMORY[0x1E6993AA8]];
              v11 = CCSkipFieldErrorForMessage();

              v12 = MEMORY[0x1E6993AA8];
              v6 = v41;
              a4 = v40;
              v10 = v67;
              goto LABEL_70;
            }

            goto LABEL_49;
        }
      }

      else
      {
        if (v26 <= 5)
        {
          if (v26 != 4)
          {
            if (v26 == 5)
            {
              v27 = CCPBReaderReadStringNoCopy();
              v28 = 48;
LABEL_51:
              v45 = *(&self->super.super.isa + v28);
              *(&self->super.super.isa + v28) = v27;

              v12 = MEMORY[0x1E6993AA8];
              v11 = 0;
              goto LABEL_70;
            }

            goto LABEL_44;
          }

          v44 = v68;
          if (!v68)
          {
            v44 = objc_opt_new();
          }

          v68 = v44;
          CCPBReaderAppendRepeatedFloatFieldValues();
          goto LABEL_49;
        }

        if (v26 == 6)
        {
          v27 = CCPBReaderReadStringNoCopy();
          v28 = 56;
          goto LABEL_51;
        }

        if (v26 != 7)
        {
          goto LABEL_44;
        }

        v29 = *v8;
        v30 = *&v7[v29];
        if (v30 <= 0xFFFFFFFFFFFFFFF7 && v30 + 8 <= *&v7[*v9])
        {
          v31 = *(*&v7[*v13] + v30);
          *&v7[v29] = v30 + 8;
        }

        else
        {
          *&v7[v24] = 1;
          v31 = 0.0;
        }

        v11 = 0;
        self->_referenceDate = v31;
        v53 = 18;
      }

      *(&self->super.super.isa + v53) = 1;
LABEL_70:
      if (*&v7[*v8] < *&v7[*v9])
      {
        continue;
      }

      goto LABEL_74;
    }
  }

  v10 = 0;
  v68 = 0;
LABEL_73:
  v11 = 0;
LABEL_74:
  v54 = [v10 copy];
  sourceSharedIdentifier = self->_sourceSharedIdentifier;
  self->_sourceSharedIdentifier = v54;

  v56 = [v68 copy];
  priorScore = self->_priorScore;
  self->_priorScore = v56;

  v58 = v10;
  if (v11)
  {
    CCSetError();
  }

  else
  {
    v59 = MEMORY[0x1E6993AA8];
    if (!*&v7[*MEMORY[0x1E6993AA8]])
    {
      v65 = 1;
      goto LABEL_79;
    }

    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    v62 = *&v7[*v59];
    CCInvalidBufferErrorForMessage();
    v64 = v63 = v6;
    CCSetError();

    v6 = v63;
  }

  v65 = 0;
LABEL_79:

  return v65;
}

- (CCPeopleSuggesterContactPriorContent)initWithVersion:(id)a3 minVersion:(id)a4 sourceSharedIdentifier:(id)a5 priorScore:(id)a6 modelName:(id)a7 modelVersion:(id)a8 referenceDate:(id)a9 error:(id *)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v39 = a8;
  v38 = a9;
  v20 = objc_opt_new();
  if (v15)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v22 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_26;
    }

    [v15 unsignedIntValue];
    CCPBDataWriterWriteUint32Field();
    if (!v16)
    {
LABEL_4:
      v23 = v22;
      if (v17)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v22 = 0;
    if (!v16)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v25 = CCValidateIsInstanceOfExpectedClass();
  v23 = v22;

  if (!v25)
  {
    goto LABEL_21;
  }

  [v16 unsignedIntValue];
  CCPBDataWriterWriteUint32Field();
  if (v17)
  {
LABEL_5:
    objc_opt_class();
    v24 = CCValidateIsInstanceOfExpectedClass();
    v22 = v23;

    if (!v24)
    {
      goto LABEL_26;
    }

    CCPBDataWriterWriteRepeatedInt64Field();
    if (!v18)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  v22 = v23;
  if (!v18)
  {
LABEL_7:
    v23 = v22;
    goto LABEL_14;
  }

LABEL_12:
  objc_opt_class();
  v26 = CCValidateIsInstanceOfExpectedClass();
  v23 = v22;

  if (!v26)
  {
    goto LABEL_21;
  }

  CCPBDataWriterWriteRepeatedFloatField();
LABEL_14:
  v27 = 0x1E696A000uLL;
  if (!v19)
  {
    v22 = v23;
    goto LABEL_18;
  }

  objc_opt_class();
  v28 = CCValidateIsInstanceOfExpectedClass();
  v22 = v23;

  if (!v28)
  {
LABEL_26:
    CCSetError();
    v31 = 0;
    goto LABEL_27;
  }

  CCPBDataWriterWriteStringField();
  v27 = 0x1E696A000;
LABEL_18:
  if (!v39)
  {
    v23 = v22;
    goto LABEL_23;
  }

  v29 = *(v27 + 3776);
  objc_opt_class();
  v30 = CCValidateIsInstanceOfExpectedClass();
  v23 = v22;

  if (v30)
  {
    CCPBDataWriterWriteStringField();
LABEL_23:
    if (!v38)
    {
      v22 = v23;
      goto LABEL_30;
    }

    objc_opt_class();
    v32 = CCValidateIsInstanceOfExpectedClass();
    v22 = v23;

    if (v32)
    {
      [v38 doubleValue];
      CCPBDataWriterWriteDoubleField();
LABEL_30:
      v35 = [v20 immutableData];
      v33 = [v37 initWithData:v35 error:a10];

      v31 = v33;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

LABEL_21:
  CCSetError();
  v31 = 0;
  v22 = v23;
LABEL_27:
  v33 = self;
LABEL_28:

  return v31;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3
{
  if ((a3 + 24968) > 7u)
  {
    return 0;
  }

  else
  {
    return off_1E73E7CD8[(a3 + 24968)];
  }
}

@end