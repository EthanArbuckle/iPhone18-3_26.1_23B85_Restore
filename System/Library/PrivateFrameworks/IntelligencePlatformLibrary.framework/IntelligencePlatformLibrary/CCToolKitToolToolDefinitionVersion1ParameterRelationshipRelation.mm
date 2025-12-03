@interface CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelation
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelation)initWithKind:(id)kind kindType:(unsigned int)type error:(id *)error;
- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationContains)contains;
- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationDoesNotContain)doesNotContain;
- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationEquals)equals;
- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationGreaterThan)greaterThan;
- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationLessThan)lessThan;
- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationNotEquals)notEquals;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelation

- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v49[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"isSome"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"isNone"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"equals"];
    if (v11)
    {
      v49[0] = 0;
      v12 = [[CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationEquals alloc] initWithJSONDictionary:v11 error:v49];
      v13 = v49[0];
      v14 = v13;
      if (!v12 || v13)
      {
        CCSetError();
        v27 = 0;
LABEL_57:

        goto LABEL_58;
      }

      v11 = v12;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"notEquals"];
    if (v14)
    {
      v48 = 0;
      v15 = [[CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationNotEquals alloc] initWithJSONDictionary:v14 error:&v48];
      v16 = v48;
      v12 = v16;
      if (!v15 || v16)
      {
        CCSetError();
        v27 = 0;
LABEL_56:

        goto LABEL_57;
      }

      v14 = v15;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"greaterThan"];
    v42 = v10;
    if (v12)
    {
      v47 = 0;
      v17 = [[CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationGreaterThan alloc] initWithJSONDictionary:v12 error:&v47];
      v18 = v47;
      v15 = v18;
      if (!v17 || v18)
      {
        CCSetError();
        v27 = 0;
LABEL_55:

        v10 = v42;
        goto LABEL_56;
      }

      v12 = v17;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"lessThan"];
    v41 = v8;
    if (v15)
    {
      v46 = 0;
      v19 = [[CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationLessThan alloc] initWithJSONDictionary:v15 error:&v46];
      v20 = v46;
      v21 = v20;
      v43 = v19;
      if (!v19 || v20)
      {
        CCSetError();
        v27 = 0;
        v17 = v21;
        v8 = v41;
LABEL_54:

        goto LABEL_55;
      }

      v15 = v19;
      v8 = v41;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"contains"];
    v40 = v9;
    if (v17)
    {
      v45 = 0;
      v9 = [[CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationContains alloc] initWithJSONDictionary:v17 error:&v45];
      v22 = v45;
      if (!v9 || v22)
      {
        v43 = v22;
        CCSetError();
        v27 = 0;
        goto LABEL_53;
      }

      v17 = v9;
      v9 = v40;
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"doesNotContain"];
    selfCopy = self;
    if (!v23)
    {
      v26 = 0;
      goto LABEL_33;
    }

    v43 = v23;
    v44 = 0;
    v24 = [[CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationDoesNotContain alloc] initWithJSONDictionary:v23 error:&v44];
    v25 = v44;
    v9 = v25;
    if (v24 && !v25)
    {

      v26 = v24;
      v9 = v40;
      v8 = v41;
LABEL_33:
      v43 = v26;
      if (v9)
      {
        v28 = v9;
        v29 = 1;
      }

      else
      {
        v29 = 0;
      }

      if (v42)
      {
        v30 = v9;
        v9 = v42;

        v29 = 2;
      }

      if (v11)
      {
        v31 = v11;

        v29 = 3;
        v9 = v31;
      }

      if (v14)
      {
        v32 = v14;

        v29 = 4;
        v9 = v32;
      }

      if (v12)
      {
        v33 = v12;

        v29 = 5;
        v9 = v33;
      }

      if (v15)
      {
        v34 = v15;

        v29 = 6;
        v9 = v34;
      }

      if (v17)
      {
        v35 = v17;

        v29 = 7;
        v9 = v35;
      }

      if (v43)
      {
        v38 = v43;

        v36 = 8;
        v9 = v38;
      }

      else
      {
        v36 = v29;
      }

      v27 = [[CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelation alloc] initWithKind:v9 kindType:v36 error:error];
      self = selfCopy;
      goto LABEL_53;
    }

    CCSetError();

    v27 = 0;
    self = selfCopy;
    v8 = v41;
LABEL_53:

    v9 = v40;
    goto LABEL_54;
  }

  CCSetError();
  v27 = 0;
LABEL_58:

  return v27;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelation isSome](self, "isSome")}];
    [v3 setObject:v5 forKeyedSubscript:@"isSome"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelation isNone](self, "isNone")}];
    [v3 setObject:v6 forKeyedSubscript:@"isNone"];

    kindType = self->_kindType;
  }

  if (kindType == 3)
  {
    if (!self->_equals)
    {
      goto LABEL_23;
    }

    equals = [(CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelation *)self equals];
    jsonDictionary = [equals jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"equals"];

    kindType = self->_kindType;
  }

  if (kindType == 4)
  {
    if (!self->_notEquals)
    {
      goto LABEL_23;
    }

    notEquals = [(CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelation *)self notEquals];
    jsonDictionary2 = [notEquals jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"notEquals"];

    kindType = self->_kindType;
  }

  if (kindType == 5)
  {
    if (!self->_greaterThan)
    {
      goto LABEL_23;
    }

    greaterThan = [(CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelation *)self greaterThan];
    jsonDictionary3 = [greaterThan jsonDictionary];
    [v3 setObject:jsonDictionary3 forKeyedSubscript:@"greaterThan"];

    kindType = self->_kindType;
  }

  if (kindType == 6)
  {
    if (!self->_lessThan)
    {
      goto LABEL_23;
    }

    lessThan = [(CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelation *)self lessThan];
    jsonDictionary4 = [lessThan jsonDictionary];
    [v3 setObject:jsonDictionary4 forKeyedSubscript:@"lessThan"];

    kindType = self->_kindType;
  }

  if (kindType == 7)
  {
    if (!self->_contains)
    {
      goto LABEL_23;
    }

    contains = [(CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelation *)self contains];
    jsonDictionary5 = [contains jsonDictionary];
    [v3 setObject:jsonDictionary5 forKeyedSubscript:@"contains"];

    kindType = self->_kindType;
  }

  if (kindType == 8 && self->_doesNotContain)
  {
    doesNotContain = [(CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelation *)self doesNotContain];
    jsonDictionary6 = [doesNotContain jsonDictionary];
    [v3 setObject:jsonDictionary6 forKeyedSubscript:@"doesNotContain"];
  }

LABEL_23:
  v19 = [v3 copy];

  return v19;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_isSome];
  blockCopy[2](blockCopy, v7);

  v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_isNone];
  blockCopy[2](blockCopy, v8);

  if (self->_equals)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_equals];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_notEquals)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_notEquals];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_greaterThan)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_greaterThan];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_lessThan)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_lessThan];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_contains)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_contains];
    blockCopy[2](blockCopy, v13);
  }

  v14 = blockCopy;
  if (self->_doesNotContain)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_doesNotContain];
    blockCopy[2](blockCopy, v15);

    v14 = blockCopy;
  }
}

- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationDoesNotContain)doesNotContain
{
  v2 = [(CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationDoesNotContain *)self->_doesNotContain copy];

  return v2;
}

- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationContains)contains
{
  v2 = [(CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationContains *)self->_contains copy];

  return v2;
}

- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationLessThan)lessThan
{
  v2 = [(CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationLessThan *)self->_lessThan copy];

  return v2;
}

- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationGreaterThan)greaterThan
{
  v2 = [(CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationGreaterThan *)self->_greaterThan copy];

  return v2;
}

- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationNotEquals)notEquals
{
  v2 = [(CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationNotEquals *)self->_notEquals copy];

  return v2;
}

- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationEquals)equals
{
  v2 = [(CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationEquals *)self->_equals copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_77;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v7;
        v17 = *&v6[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v6[*v8])
        {
          break;
        }

        v19 = *(*&v6[*v11] + v17);
        *&v6[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_78;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v22 = *&v6[*v9];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v22)
      {
        goto LABEL_78;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 4)
      {
        if (v23 > 6)
        {
          if (v23 != 7)
          {
            if (v23 == 8)
            {
              v43 = [CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationDoesNotContain alloc];
              v44 = CCPBReaderReadDataNoCopy();
              v97 = 0;
              v45 = [(CCItemMessage *)v43 initWithData:v44 error:&v97];
              v10 = v97;
              doesNotContain = self->_doesNotContain;
              self->_doesNotContain = v45;

              if (!v10)
              {
                self->_isSome = 0;
                self->_isNone = 0;
                equals = self->_equals;
                self->_equals = 0;

                notEquals = self->_notEquals;
                self->_notEquals = 0;

                greaterThan = self->_greaterThan;
                self->_greaterThan = 0;

                lessThan = self->_lessThan;
                self->_lessThan = 0;

                contains = self->_contains;
                self->_contains = 0;

                self->_kindType = 8;
              }

LABEL_74:
              if (*&v6[*v7] < *&v6[*v8])
              {
                continue;
              }

              break;
            }

            goto LABEL_62;
          }

          v74 = [CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationContains alloc];
          v75 = CCPBReaderReadDataNoCopy();
          v98 = 0;
          v76 = [(CCItemMessage *)v74 initWithData:v75 error:&v98];
          v10 = v98;
          v77 = self->_contains;
          self->_contains = v76;

          if (v10)
          {
            goto LABEL_74;
          }

          self->_isSome = 0;
          self->_isNone = 0;
          v78 = self->_equals;
          self->_equals = 0;

          v79 = self->_notEquals;
          self->_notEquals = 0;

          v80 = self->_greaterThan;
          self->_greaterThan = 0;

          v81 = self->_lessThan;
          self->_lessThan = 0;

          self->_kindType = 7;
LABEL_59:
          v73 = self->_doesNotContain;
          self->_doesNotContain = 0;

          goto LABEL_74;
        }

        if (v23 != 5)
        {
          if (v23 != 6)
          {
            goto LABEL_62;
          }

          v31 = [CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationLessThan alloc];
          v32 = CCPBReaderReadDataNoCopy();
          v99 = 0;
          v33 = [(CCItemMessage *)v31 initWithData:v32 error:&v99];
          v10 = v99;
          v34 = self->_lessThan;
          self->_lessThan = v33;

          if (v10)
          {
            goto LABEL_74;
          }

          self->_isSome = 0;
          self->_isNone = 0;
          v35 = self->_equals;
          self->_equals = 0;

          v36 = self->_notEquals;
          self->_notEquals = 0;

          v37 = self->_greaterThan;
          self->_greaterThan = 0;

          self->_kindType = 6;
          goto LABEL_58;
        }

        v59 = [CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationGreaterThan alloc];
        v60 = CCPBReaderReadDataNoCopy();
        v100 = 0;
        v61 = [(CCItemMessage *)v59 initWithData:v60 error:&v100];
        v10 = v100;
        v62 = self->_greaterThan;
        self->_greaterThan = v61;

        if (v10)
        {
          goto LABEL_74;
        }

        self->_isSome = 0;
        self->_isNone = 0;
        v63 = self->_equals;
        self->_equals = 0;

        v64 = self->_notEquals;
        self->_notEquals = 0;

        self->_kindType = 5;
      }

      else
      {
        if (v23 <= 2)
        {
          if (v23 == 1)
          {
            v52 = 0;
            v53 = 0;
            v54 = 0;
            while (1)
            {
              v55 = *v7;
              v56 = *&v6[v55];
              v57 = v56 + 1;
              if (v56 == -1 || v57 > *&v6[*v8])
              {
                break;
              }

              v58 = *(*&v6[*v11] + v56);
              *&v6[v55] = v57;
              v54 |= (v58 & 0x7F) << v52;
              if ((v58 & 0x80) == 0)
              {
                goto LABEL_65;
              }

              v52 += 7;
              v20 = v53++ >= 9;
              if (v20)
              {
                LODWORD(v54) = 0;
                goto LABEL_67;
              }
            }

            *&v6[*v9] = 1;
LABEL_65:
            if (*&v6[*v9])
            {
              LODWORD(v54) = 0;
            }

LABEL_67:
            self->_isSome = v54;
            self->_kindType = 1;
            self->_isNone = 0;
            goto LABEL_72;
          }

          if (v23 == 2)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            while (1)
            {
              v27 = *v7;
              v28 = *&v6[v27];
              v29 = v28 + 1;
              if (v28 == -1 || v29 > *&v6[*v8])
              {
                break;
              }

              v30 = *(*&v6[*v11] + v28);
              *&v6[v27] = v29;
              v26 |= (v30 & 0x7F) << v24;
              if ((v30 & 0x80) == 0)
              {
                goto LABEL_69;
              }

              v24 += 7;
              v20 = v25++ >= 9;
              if (v20)
              {
                LODWORD(v26) = 0;
                goto LABEL_71;
              }
            }

            *&v6[*v9] = 1;
LABEL_69:
            if (*&v6[*v9])
            {
              LODWORD(v26) = 0;
            }

LABEL_71:
            self->_isNone = v26;
            self->_isSome = 0;
            self->_kindType = 2;
LABEL_72:
            v85 = self->_equals;
            self->_equals = 0;

            v86 = self->_notEquals;
            self->_notEquals = 0;

            v87 = self->_greaterThan;
            self->_greaterThan = 0;

            v88 = self->_lessThan;
            self->_lessThan = 0;

            v89 = self->_contains;
            self->_contains = 0;

            v90 = self->_doesNotContain;
            self->_doesNotContain = 0;

LABEL_73:
            v10 = 0;
            goto LABEL_74;
          }

LABEL_62:
          if ((CCPBReaderSkipValueWithTag() & 1) == 0)
          {
            v82 = objc_opt_class();
            v83 = NSStringFromClass(v82);
            v84 = *&v6[*v9];
            v10 = CCSkipFieldErrorForMessage();

            goto LABEL_74;
          }

          goto LABEL_73;
        }

        if (v23 == 3)
        {
          v65 = [CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationEquals alloc];
          v66 = CCPBReaderReadDataNoCopy();
          v102 = 0;
          v67 = [(CCItemMessage *)v65 initWithData:v66 error:&v102];
          v10 = v102;
          v68 = self->_equals;
          self->_equals = v67;

          if (v10)
          {
            goto LABEL_74;
          }

          self->_isSome = 0;
          self->_isNone = 0;
          self->_kindType = 3;
          v69 = self->_notEquals;
          self->_notEquals = 0;
        }

        else
        {
          if (v23 != 4)
          {
            goto LABEL_62;
          }

          v38 = [CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationNotEquals alloc];
          v39 = CCPBReaderReadDataNoCopy();
          v101 = 0;
          v40 = [(CCItemMessage *)v38 initWithData:v39 error:&v101];
          v10 = v101;
          v41 = self->_notEquals;
          self->_notEquals = v40;

          if (v10)
          {
            goto LABEL_74;
          }

          self->_isSome = 0;
          self->_isNone = 0;
          v42 = self->_equals;
          self->_equals = 0;

          self->_kindType = 4;
        }

        v70 = self->_greaterThan;
        self->_greaterThan = 0;
      }

      v71 = self->_lessThan;
      self->_lessThan = 0;

LABEL_58:
      v72 = self->_contains;
      self->_contains = 0;

      goto LABEL_59;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_79;
  }

LABEL_77:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v95 = 1;
    goto LABEL_81;
  }

LABEL_78:
  v91 = objc_opt_class();
  v92 = NSStringFromClass(v91);
  v93 = *&v6[*v9];
  v94 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_79:
  v95 = 0;
LABEL_81:

  return v95;
}

- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelation)initWithKind:(id)kind kindType:(unsigned int)type error:(id *)error
{
  kindCopy = kind;
  v9 = objc_opt_new();
  if (kindCopy && type == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (IsInstanceOfExpectedClass)
    {
      [kindCopy unsignedIntegerValue];
      v12 = CCValidateEnumField();
      v13 = v11;

      if (v12)
      {
        goto LABEL_10;
      }

      goto LABEL_36;
    }

    goto LABEL_11;
  }

  if (!kindCopy || type != 2)
  {
    if (kindCopy && type == 3)
    {
      objc_opt_class();
      v17 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (v17)
      {
LABEL_35:
        data = [kindCopy data];
        CCPBDataWriterWriteDataField();

        goto LABEL_36;
      }
    }

    else if (kindCopy && type == 4)
    {
      objc_opt_class();
      v18 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (v18)
      {
        goto LABEL_35;
      }
    }

    else if (kindCopy && type == 5)
    {
      objc_opt_class();
      v19 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (v19)
      {
        goto LABEL_35;
      }
    }

    else if (kindCopy && type == 6)
    {
      objc_opt_class();
      v20 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (v20)
      {
        goto LABEL_35;
      }
    }

    else if (kindCopy && type == 7)
    {
      objc_opt_class();
      v21 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (v21)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v13 = 0;
      if (!kindCopy || type != 8)
      {
        goto LABEL_36;
      }

      objc_opt_class();
      v26 = 0;
      v22 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (v22)
      {
        goto LABEL_35;
      }
    }

    CCSetError();
    selfCopy = 0;
    v11 = v13;
    goto LABEL_37;
  }

  objc_opt_class();
  v14 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if (v14)
  {
    [kindCopy unsignedIntegerValue];
    v15 = CCValidateEnumField();
    v13 = v11;

    if (v15)
    {
LABEL_10:
      CCPBDataWriterWriteUint32Field();
    }

LABEL_36:
    immutableData = [v9 immutableData];
    self = [(CCItemMessage *)self initWithData:immutableData error:error];

    v11 = v13;
    selfCopy = self;
    goto LABEL_37;
  }

LABEL_11:
  CCSetError();
  selfCopy = 0;
LABEL_37:

  return selfCopy;
}

@end