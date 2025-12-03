@interface CCToolKitToolRestrictionContextTextTypedWith
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolRestrictionContextTextTypedWith)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolRestrictionContextTextTypedWith)initWithMultilineAllowed:(id)allowed smartQuotesEnabled:(id)enabled smartDashesEnabled:(id)dashesEnabled keyboardType:(unsigned int)type autocorrectionType:(unsigned int)autocorrectionType capitalizationType:(unsigned int)capitalizationType error:(id *)error;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolRestrictionContextTextTypedWith

- (CCToolKitToolRestrictionContextTextTypedWith)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v22 = [dictionaryCopy objectForKeyedSubscript:@"multilineAllowed"];
    v21 = [dictionaryCopy objectForKeyedSubscript:@"smartQuotesEnabled"];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"smartDashesEnabled"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"keyboardType"];
    v11 = v10;
    if (v10)
    {
      unsignedIntegerValue = [v10 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"autocorrectionType"];
    v14 = v13;
    selfCopy = self;
    if (v13)
    {
      unsignedIntegerValue2 = [v13 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"capitalizationType"];
    v17 = v16;
    if (v16)
    {
      unsignedIntegerValue3 = [v16 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue3 = 0;
    }

    v12 = [[CCToolKitToolRestrictionContextTextTypedWith alloc] initWithMultilineAllowed:v22 smartQuotesEnabled:v21 smartDashesEnabled:v9 keyboardType:unsignedIntegerValue autocorrectionType:unsignedIntegerValue2 capitalizationType:unsignedIntegerValue3 error:error];

    self = selfCopy;
  }

  else
  {
    CCSetError();
    v12 = 0;
  }

  return v12;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_hasMultilineAllowed)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolRestrictionContextTextTypedWith multilineAllowed](self, "multilineAllowed")}];
    [v3 setObject:v4 forKeyedSubscript:@"multilineAllowed"];
  }

  if (self->_hasSmartQuotesEnabled)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolRestrictionContextTextTypedWith smartQuotesEnabled](self, "smartQuotesEnabled")}];
    [v3 setObject:v5 forKeyedSubscript:@"smartQuotesEnabled"];
  }

  if (self->_hasSmartDashesEnabled)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolRestrictionContextTextTypedWith smartDashesEnabled](self, "smartDashesEnabled")}];
    [v3 setObject:v6 forKeyedSubscript:@"smartDashesEnabled"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolRestrictionContextTextTypedWith keyboardType](self, "keyboardType")}];
  [v3 setObject:v7 forKeyedSubscript:@"keyboardType"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolRestrictionContextTextTypedWith autocorrectionType](self, "autocorrectionType")}];
  [v3 setObject:v8 forKeyedSubscript:@"autocorrectionType"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolRestrictionContextTextTypedWith capitalizationType](self, "capitalizationType")}];
  [v3 setObject:v9 forKeyedSubscript:@"capitalizationType"];

  v10 = [v3 copy];

  return v10;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = MEMORY[0x1E69939A8];
  if (self->_hasMultilineAllowed)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] BOOLValue:self->_multilineAllowed];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_hasSmartQuotesEnabled)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 BOOLValue:self->_smartQuotesEnabled];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_hasSmartDashesEnabled)
  {
    v8 = objc_alloc(MEMORY[0x1E69939F0]);
    v9 = *v5;
    v10 = [v8 initWithFieldType:v9 BOOLValue:self->_smartDashesEnabled];
    blockCopy[2](blockCopy, v10);
  }

  else
  {
    v9 = *v5;
  }

  v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_keyboardType];
  blockCopy[2](blockCopy, v11);

  v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_autocorrectionType];
  blockCopy[2](blockCopy, v12);

  v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_capitalizationType];
  blockCopy[2](blockCopy, v13);
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  v10 = MEMORY[0x1E6993AA8];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_114;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v7[*v10])
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *v8;
        v18 = *&v7[v17];
        v19 = v18 + 1;
        if (v18 == -1 || v19 > *&v7[*v9])
        {
          break;
        }

        v20 = *(*&v7[*v12] + v18);
        *&v7[v17] = v19;
        v16 |= (v20 & 0x7F) << v14;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v14 += 7;
        v21 = v15++ >= 9;
        if (v21)
        {
          v22 = 0;
          if (*&v7[*v10])
          {
            goto LABEL_115;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v10] = 1;
LABEL_17:
      v23 = *&v7[*v10];
      if (v23)
      {
        v22 = 0;
      }

      else
      {
        v22 = v16;
      }

      if (v23)
      {
        goto LABEL_115;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) <= 3)
      {
        switch(v24)
        {
          case 1:
            v40 = 0;
            v41 = 0;
            v42 = 0;
            while (1)
            {
              v43 = *v8;
              v44 = *&v7[v43];
              v45 = v44 + 1;
              if (v44 == -1 || v45 > *&v7[*v9])
              {
                break;
              }

              v46 = *(*&v7[*v12] + v44);
              *&v7[v43] = v45;
              v42 |= (v46 & 0x7F) << v40;
              if ((v46 & 0x80) == 0)
              {
                goto LABEL_73;
              }

              v40 += 7;
              v21 = v41++ >= 9;
              if (v21)
              {
                v47 = 0;
                goto LABEL_79;
              }
            }

            *&v7[*v10] = 1;
LABEL_73:
            if (*&v7[*v10])
            {
              v68 = 1;
            }

            else
            {
              v68 = v42 == 0;
            }

            v47 = !v68;
LABEL_79:
            v11 = 0;
            self->_multilineAllowed = v47;
            v69 = 19;
            goto LABEL_104;
          case 2:
            v54 = 0;
            v55 = 0;
            v56 = 0;
            while (1)
            {
              v57 = *v8;
              v58 = *&v7[v57];
              v59 = v58 + 1;
              if (v58 == -1 || v59 > *&v7[*v9])
              {
                break;
              }

              v60 = *(*&v7[*v12] + v58);
              *&v7[v57] = v59;
              v56 |= (v60 & 0x7F) << v54;
              if ((v60 & 0x80) == 0)
              {
                goto LABEL_97;
              }

              v54 += 7;
              v21 = v55++ >= 9;
              if (v21)
              {
                v61 = 0;
                goto LABEL_103;
              }
            }

            *&v7[*v10] = 1;
LABEL_97:
            if (*&v7[*v10])
            {
              v72 = 1;
            }

            else
            {
              v72 = v56 == 0;
            }

            v61 = !v72;
LABEL_103:
            v11 = 0;
            self->_smartQuotesEnabled = v61;
            v69 = 20;
            goto LABEL_104;
          case 3:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            while (1)
            {
              v28 = *v8;
              v29 = *&v7[v28];
              v30 = v29 + 1;
              if (v29 == -1 || v30 > *&v7[*v9])
              {
                break;
              }

              v31 = *(*&v7[*v12] + v29);
              *&v7[v28] = v30;
              v27 |= (v31 & 0x7F) << v25;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_85;
              }

              v25 += 7;
              v21 = v26++ >= 9;
              if (v21)
              {
                v32 = 0;
                goto LABEL_91;
              }
            }

            *&v7[*v10] = 1;
LABEL_85:
            if (*&v7[*v10])
            {
              v71 = 1;
            }

            else
            {
              v71 = v27 == 0;
            }

            v32 = !v71;
LABEL_91:
            v11 = 0;
            self->_smartDashesEnabled = v32;
            v69 = 21;
LABEL_104:
            *(&self->super.super.isa + v69) = 1;
            goto LABEL_111;
        }

        goto LABEL_56;
      }

      switch(v24)
      {
        case 4:
          v48 = 0;
          v49 = 0;
          v35 = 0;
          while (1)
          {
            v50 = *v8;
            v51 = *&v7[v50];
            v52 = v51 + 1;
            if (v51 == -1 || v52 > *&v7[*v9])
            {
              break;
            }

            v53 = *(*&v7[*v12] + v51);
            *&v7[v50] = v52;
            v35 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              goto LABEL_81;
            }

            v48 += 7;
            v21 = v49++ >= 9;
            if (v21)
            {
              LODWORD(v35) = 0;
              goto LABEL_83;
            }
          }

          *&v7[*v10] = 1;
LABEL_81:
          if (*&v7[*v10])
          {
            LODWORD(v35) = 0;
          }

LABEL_83:
          v11 = 0;
          v70 = 24;
          break;
        case 5:
          v62 = 0;
          v63 = 0;
          v35 = 0;
          while (1)
          {
            v64 = *v8;
            v65 = *&v7[v64];
            v66 = v65 + 1;
            if (v65 == -1 || v66 > *&v7[*v9])
            {
              break;
            }

            v67 = *(*&v7[*v12] + v65);
            *&v7[v64] = v66;
            v35 |= (v67 & 0x7F) << v62;
            if ((v67 & 0x80) == 0)
            {
              goto LABEL_106;
            }

            v62 += 7;
            v21 = v63++ >= 9;
            if (v21)
            {
              LODWORD(v35) = 0;
              goto LABEL_108;
            }
          }

          *&v7[*v10] = 1;
LABEL_106:
          if (*&v7[*v10])
          {
            LODWORD(v35) = 0;
          }

LABEL_108:
          v11 = 0;
          v70 = 28;
          break;
        case 6:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          while (1)
          {
            v36 = *v8;
            v37 = *&v7[v36];
            v38 = v37 + 1;
            if (v37 == -1 || v38 > *&v7[*v9])
            {
              break;
            }

            v39 = *(*&v7[*v12] + v37);
            *&v7[v36] = v38;
            v35 |= (v39 & 0x7F) << v33;
            if ((v39 & 0x80) == 0)
            {
              goto LABEL_93;
            }

            v33 += 7;
            v21 = v34++ >= 9;
            if (v21)
            {
              LODWORD(v35) = 0;
              goto LABEL_95;
            }
          }

          *&v7[*v10] = 1;
LABEL_93:
          if (*&v7[*v10])
          {
            LODWORD(v35) = 0;
          }

LABEL_95:
          v11 = 0;
          v70 = 32;
          break;
        default:
LABEL_56:
          if (CCPBReaderSkipValueWithTag())
          {
            v11 = 0;
          }

          else
          {
            v73 = objc_opt_class();
            NSStringFromClass(v73);
            selfCopy = self;
            errorCopy = error;
            v76 = v75 = dataCopy;
            v77 = *&v7[*v10];
            v11 = CCSkipFieldErrorForMessage();

            dataCopy = v75;
            error = errorCopy;
            self = selfCopy;
          }

LABEL_111:
          if (*&v7[*v8] < *&v7[*v9])
          {
            continue;
          }

          goto LABEL_112;
      }

      *(&self->super.super.isa + v70) = v35;
      goto LABEL_111;
    }

    break;
  }

LABEL_112:
  if (v11)
  {
    CCSetError();
    goto LABEL_116;
  }

LABEL_114:
  if (!*&v7[*v10])
  {
    v81 = 1;
    goto LABEL_118;
  }

LABEL_115:
  v78 = objc_opt_class();
  v11 = NSStringFromClass(v78);
  v79 = *&v7[*v10];
  v80 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_116:
  v81 = 0;
LABEL_118:

  return v81;
}

- (CCToolKitToolRestrictionContextTextTypedWith)initWithMultilineAllowed:(id)allowed smartQuotesEnabled:(id)enabled smartDashesEnabled:(id)dashesEnabled keyboardType:(unsigned int)type autocorrectionType:(unsigned int)autocorrectionType capitalizationType:(unsigned int)capitalizationType error:(id *)error
{
  LODWORD(v30) = autocorrectionType;
  HIDWORD(v30) = capitalizationType;
  allowedCopy = allowed;
  enabledCopy = enabled;
  dashesEnabledCopy = dashesEnabled;
  v16 = objc_opt_new();
  if (!allowedCopy)
  {
    v18 = 0;
LABEL_5:
    selfCopy = self;
    if (enabledCopy)
    {
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v20 = v18;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_11;
      }

      [enabledCopy BOOLValue];
      CCPBDataWriterWriteBOOLField();
      if (!dashesEnabledCopy)
      {
LABEL_8:
        v18 = v20;
        if (type)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v20 = v18;
      if (!dashesEnabledCopy)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    v23 = CCValidateIsInstanceOfExpectedClass();
    v18 = v20;

    if (!v23)
    {
LABEL_21:
      CCSetError();
      v22 = 0;
      goto LABEL_22;
    }

    [dashesEnabledCopy BOOLValue];
    CCPBDataWriterWriteBOOLField();
    if (type)
    {
LABEL_9:
      v21 = CCValidateEnumField();
      v20 = v18;

      if (v21)
      {
        CCPBDataWriterWriteUint32Field();
LABEL_17:
        if (!v30)
        {
          v18 = v20;
          if (!HIDWORD(v30))
          {
LABEL_27:
            immutableData = [v16 immutableData];
            v29 = [(CCItemMessage *)selfCopy initWithData:immutableData error:error];

            self = v29;
            v22 = v29;
            goto LABEL_23;
          }

          goto LABEL_25;
        }

        v24 = CCValidateEnumField();
        v18 = v20;

        if (v24)
        {
          CCPBDataWriterWriteUint32Field();
          if (!HIDWORD(v30))
          {
            goto LABEL_27;
          }

LABEL_25:
          v26 = CCValidateEnumField();
          v27 = v18;

          if (v26)
          {
            CCPBDataWriterWriteUint32Field();
            v18 = v27;
            goto LABEL_27;
          }

          CCSetError();
          v22 = 0;
          v18 = v27;
          goto LABEL_22;
        }

        goto LABEL_21;
      }

LABEL_11:
      CCSetError();
      v22 = 0;
      v18 = v20;
LABEL_22:
      self = selfCopy;
      goto LABEL_23;
    }

LABEL_16:
    v20 = v18;
    goto LABEL_17;
  }

  objc_opt_class();
  v17 = CCValidateIsInstanceOfExpectedClass();
  v18 = 0;
  if (v17)
  {
    [allowedCopy BOOLValue];
    CCPBDataWriterWriteBOOLField();
    goto LABEL_5;
  }

  CCSetError();
  v22 = 0;
LABEL_23:

  return v22;
}

@end