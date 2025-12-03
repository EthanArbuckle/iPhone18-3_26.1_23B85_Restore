@interface CCToolKitToolTypeDefinitionVersion1Enumeration
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTypeDefinitionVersion1Enumeration)initWithIdentifier:(id)identifier cases:(id)cases runtimeRequirements:(id)requirements displayRepresentation:(id)representation kind:(unsigned int)kind systemProtocols:(id)protocols error:(id *)error;
- (CCToolKitToolTypeDefinitionVersion1Enumeration)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypeDisplayRepresentation)displayRepresentation;
- (CCToolKitToolTypeIdentifier)identifier;
- (NSArray)cases;
- (NSArray)runtimeRequirements;
- (NSArray)systemProtocols;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypeDefinitionVersion1Enumeration

- (CCToolKitToolTypeDefinitionVersion1Enumeration)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v102 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v98[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    if (v9)
    {
      v98[0] = 0;
      v10 = [[CCToolKitToolTypeIdentifier alloc] initWithJSONDictionary:v9 error:v98];
      v11 = v98[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();

        v42 = 0;
        goto LABEL_71;
      }

      v9 = v10;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"cases"];
    if (!v13)
    {
      v12 = 0;
      v76 = v8;
      goto LABEL_24;
    }

    v14 = v13;
    objc_opt_class();
    v97 = v8;
    v15 = CCValidateIsInstanceOfExpectedClass();
    v16 = v8;

    if (v15)
    {
      selfCopy = self;
      v76 = v16;
      v70 = v9;
      v12 = objc_opt_new();
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v17 = v14;
      v18 = [v17 countByEnumeratingWithState:&v93 objects:v101 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v94;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v94 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v93 + 1) + 8 * i);
            v23 = [CCToolKitToolTypeDefinitionVersion1EnumerationCase alloc];
            v92 = 0;
            v24 = [(CCToolKitToolTypeDefinitionVersion1EnumerationCase *)v23 initWithJSONDictionary:v22 error:&v92];
            v25 = v92;
            if (v24)
            {
              v26 = v25 == 0;
            }

            else
            {
              v26 = 0;
            }

            if (!v26)
            {
              v41 = v25;
              CCSetError();

              v42 = 0;
              v12 = v17;
              self = selfCopy;
              v8 = v76;
              v9 = v70;
              goto LABEL_71;
            }

            [v12 addObject:v24];
          }

          v19 = [v17 countByEnumeratingWithState:&v93 objects:v101 count:16];
        }

        while (v19);
      }

      v9 = v70;
      self = selfCopy;
LABEL_24:
      v27 = [dictionaryCopy objectForKeyedSubscript:@"runtimeRequirements"];
      if (v27)
      {
        v28 = v27;
        objc_opt_class();
        v91 = v76;
        v29 = CCValidateIsInstanceOfExpectedClass();
        v8 = v76;

        if ((v29 & 1) == 0)
        {
          CCSetError();
          v42 = 0;
          v49 = v28;
LABEL_70:

          goto LABEL_71;
        }

        selfCopy2 = self;
        v77 = dictionaryCopy;
        v71 = v9;
        v30 = objc_opt_new();
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v31 = v28;
        v32 = [v31 countByEnumeratingWithState:&v87 objects:v100 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v88;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v88 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v87 + 1) + 8 * j);
              v37 = [CCToolKitToolRuntimeRequirement alloc];
              v86 = 0;
              v38 = [(CCToolKitToolRuntimeRequirement *)v37 initWithJSONDictionary:v36 error:&v86];
              v39 = v86;
              if (v38)
              {
                v40 = v39 == 0;
              }

              else
              {
                v40 = 0;
              }

              if (!v40)
              {
                v48 = v39;
                CCSetError();

                v42 = 0;
                v49 = v31;
                v9 = v71;
                self = selfCopy2;
                dictionaryCopy = v77;
                goto LABEL_70;
              }

              [v30 addObject:v38];
            }

            v33 = [v31 countByEnumeratingWithState:&v87 objects:v100 count:16];
          }

          while (v33);
        }

        v9 = v71;
        self = selfCopy2;
        v49 = v30;
        dictionaryCopy = v77;
      }

      else
      {
        v49 = 0;
        v8 = v76;
      }

      v43 = [dictionaryCopy objectForKeyedSubscript:@"displayRepresentation"];
      if (v43)
      {
        v85 = 0;
        v44 = [[CCToolKitToolTypeDisplayRepresentation alloc] initWithJSONDictionary:v43 error:&v85];
        v45 = v85;
        v46 = v45;
        if (!v44 || v45)
        {
          CCSetError();
          v42 = 0;
          goto LABEL_69;
        }

        v43 = v44;
      }

      v47 = [dictionaryCopy objectForKeyedSubscript:@"kind"];
      v46 = v47;
      if (v47)
      {
        unsignedIntegerValue = [v47 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue = 0;
      }

      v50 = [dictionaryCopy objectForKeyedSubscript:@"systemProtocols"];
      if (!v50)
      {
        v69 = v46;
        v53 = 0;
LABEL_66:
        v42 = [[CCToolKitToolTypeDefinitionVersion1Enumeration alloc] initWithIdentifier:v9 cases:v12 runtimeRequirements:v49 displayRepresentation:v43 kind:unsignedIntegerValue systemProtocols:v53 error:error];
        v44 = v53;
LABEL_68:
        v46 = v69;
        goto LABEL_69;
      }

      v44 = v50;
      v67 = v43;
      v68 = v49;
      objc_opt_class();
      v84 = v8;
      v51 = CCValidateIsInstanceOfExpectedClass();
      v52 = v8;

      if (v51)
      {
        v66 = v52;
        v69 = v46;
        v72 = v9;
        selfCopy3 = self;
        v53 = objc_opt_new();
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v44 = v44;
        v54 = [(CCToolKitToolTypeDisplayRepresentation *)v44 countByEnumeratingWithState:&v80 objects:v99 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v81;
          do
          {
            for (k = 0; k != v55; ++k)
            {
              if (*v81 != v56)
              {
                objc_enumerationMutation(v44);
              }

              v58 = *(*(&v80 + 1) + 8 * k);
              v59 = [CCToolKitToolSystemTypeProtocol alloc];
              v79 = 0;
              v60 = [(CCToolKitToolSystemTypeProtocol *)v59 initWithJSONDictionary:v58 error:&v79];
              v61 = v79;
              if (v60)
              {
                v62 = v61 == 0;
              }

              else
              {
                v62 = 0;
              }

              if (!v62)
              {
                v63 = v61;
                CCSetError();

                v42 = 0;
                v8 = v66;
                v43 = v67;
                v9 = v72;
                self = selfCopy3;
                v49 = v68;
                goto LABEL_68;
              }

              [(CCToolKitToolTypeDisplayRepresentation *)v53 addObject:v60];
            }

            v55 = [(CCToolKitToolTypeDisplayRepresentation *)v44 countByEnumeratingWithState:&v80 objects:v99 count:16];
          }

          while (v55);
        }

        v8 = v66;
        v43 = v67;
        v9 = v72;
        self = selfCopy3;
        v49 = v68;
        goto LABEL_66;
      }

      CCSetError();
      v42 = 0;
      v8 = v52;
      v43 = v67;
      v49 = v68;
LABEL_69:

      goto LABEL_70;
    }

    CCSetError();
    v42 = 0;
    v12 = v14;
    v8 = v16;
LABEL_71:

    goto LABEL_72;
  }

  CCSetError();
  v42 = 0;
LABEL_72:

  v64 = *MEMORY[0x1E69E9840];
  return v42;
}

- (id)jsonDictionary
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_identifier)
  {
    identifier = [(CCToolKitToolTypeDefinitionVersion1Enumeration *)self identifier];
    jsonDictionary = [identifier jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"identifier"];
  }

  if (self->_cases)
  {
    v6 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    cases = [(CCToolKitToolTypeDefinitionVersion1Enumeration *)self cases];
    v8 = [cases countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(cases);
          }

          jsonDictionary2 = [*(*(&v41 + 1) + 8 * i) jsonDictionary];
          [v6 addObject:jsonDictionary2];
        }

        v9 = [cases countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"cases"];
  }

  if (self->_runtimeRequirements)
  {
    v13 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    runtimeRequirements = [(CCToolKitToolTypeDefinitionVersion1Enumeration *)self runtimeRequirements];
    v15 = [runtimeRequirements countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(runtimeRequirements);
          }

          jsonDictionary3 = [*(*(&v37 + 1) + 8 * j) jsonDictionary];
          [v13 addObject:jsonDictionary3];
        }

        v16 = [runtimeRequirements countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"runtimeRequirements"];
  }

  if (self->_displayRepresentation)
  {
    displayRepresentation = [(CCToolKitToolTypeDefinitionVersion1Enumeration *)self displayRepresentation];
    jsonDictionary4 = [displayRepresentation jsonDictionary];
    [v3 setObject:jsonDictionary4 forKeyedSubscript:@"displayRepresentation"];
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeDefinitionVersion1Enumeration kind](self, "kind")}];
  [v3 setObject:v22 forKeyedSubscript:@"kind"];

  if (self->_systemProtocols)
  {
    v23 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    systemProtocols = [(CCToolKitToolTypeDefinitionVersion1Enumeration *)self systemProtocols];
    v25 = [systemProtocols countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v34;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(systemProtocols);
          }

          jsonDictionary5 = [*(*(&v33 + 1) + 8 * k) jsonDictionary];
          [v23 addObject:jsonDictionary5];
        }

        v26 = [systemProtocols countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKeyedSubscript:@"systemProtocols"];
  }

  v30 = [v3 copy];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v15 = blockCopy;
  if (self->_identifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_identifier];
    v15[2](v15, v7);
  }

  if (self->_cases)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_cases];
    v15[2](v15, v8);
  }

  if (self->_runtimeRequirements)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_runtimeRequirements];
    v15[2](v15, v9);
  }

  if (self->_displayRepresentation)
  {
    v10 = objc_alloc(MEMORY[0x1E69939F0]);
    v11 = *v6;
    v12 = [v10 initWithFieldType:v11 subMessageValue:self->_displayRepresentation];
    v15[2](v15, v12);
  }

  else
  {
    v11 = *v6;
  }

  v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v11 enumValue:self->_kind];
  v15[2](v15, v13);

  if (self->_systemProtocols)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v11 repeatedSubMessageValue:self->_systemProtocols];
    v15[2](v15, v14);
  }
}

- (NSArray)systemProtocols
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_systemProtocols copyItems:1];

  return v2;
}

- (CCToolKitToolTypeDisplayRepresentation)displayRepresentation
{
  v2 = [(CCToolKitToolTypeDisplayRepresentation *)self->_displayRepresentation copy];

  return v2;
}

- (NSArray)runtimeRequirements
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_runtimeRequirements copyItems:1];

  return v2;
}

- (NSArray)cases
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_cases copyItems:1];

  return v2;
}

- (CCToolKitToolTypeIdentifier)identifier
{
  v2 = [(CCToolKitToolTypeIdentifier *)self->_identifier copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v59 = 0;
    v60 = 0;
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
        goto LABEL_67;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v5[*v7])
        {
          break;
        }

        v19 = *(*&v5[*v11] + v17);
        *&v5[v16] = v18;
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
          if (*&v5[*v10])
          {
            goto LABEL_66;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v22 = *&v5[*v10];
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
        goto LABEL_66;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 3)
      {
        if (v23 != 4)
        {
          if (v23 == 6)
          {
            v24 = CCPBReaderReadDataNoCopy();
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            v41 = [CCToolKitToolSystemTypeProtocol alloc];
            v61 = 0;
            v26 = [(CCItemMessage *)v41 initWithData:v24 error:&v61];
            v8 = v61;
            if (v8 || !v26)
            {
              goto LABEL_56;
            }

            v27 = v9;
            goto LABEL_55;
          }

          if (v23 == 5)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            while (1)
            {
              v31 = *v6;
              v32 = *&v5[v31];
              v33 = v32 + 1;
              if (v32 == -1 || v33 > *&v5[*v7])
              {
                break;
              }

              v34 = *(*&v5[*v11] + v32);
              *&v5[v31] = v33;
              v30 |= (v34 & 0x7F) << v28;
              if ((v34 & 0x80) == 0)
              {
                goto LABEL_61;
              }

              v28 += 7;
              v20 = v29++ >= 9;
              if (v20)
              {
                LODWORD(v30) = 0;
                goto LABEL_63;
              }
            }

            *&v5[*v10] = 1;
LABEL_61:
            if (*&v5[*v10])
            {
              LODWORD(v30) = 0;
            }

LABEL_63:
            v8 = 0;
            self->_kind = v30;
LABEL_58:
            if (*&v5[*v6] < *&v5[*v7])
            {
              continue;
            }

            goto LABEL_67;
          }

LABEL_43:
          if (CCPBReaderSkipValueWithTag())
          {
            v8 = 0;
            goto LABEL_58;
          }

          v42 = objc_opt_class();
          v24 = NSStringFromClass(v42);
          v43 = *&v5[*v10];
          v8 = CCSkipFieldErrorForMessage();
          goto LABEL_57;
        }

        v38 = [CCToolKitToolTypeDisplayRepresentation alloc];
        v24 = CCPBReaderReadDataNoCopy();
        v62 = 0;
        v36 = [(CCItemMessage *)v38 initWithData:v24 error:&v62];
        v8 = v62;
        v37 = 48;
      }

      else
      {
        if (v23 != 1)
        {
          if (v23 == 2)
          {
            v24 = CCPBReaderReadDataNoCopy();
            if (!v60)
            {
              v60 = objc_opt_new();
            }

            v40 = [CCToolKitToolTypeDefinitionVersion1EnumerationCase alloc];
            v64 = 0;
            v26 = [(CCItemMessage *)v40 initWithData:v24 error:&v64];
            v8 = v64;
            if (v8 || !v26)
            {
              goto LABEL_56;
            }

            v27 = v60;
            goto LABEL_55;
          }

          if (v23 == 3)
          {
            v24 = CCPBReaderReadDataNoCopy();
            if (!v59)
            {
              v59 = objc_opt_new();
            }

            v25 = [CCToolKitToolRuntimeRequirement alloc];
            v63 = 0;
            v26 = [(CCItemMessage *)v25 initWithData:v24 error:&v63];
            v8 = v63;
            if (v8 || !v26)
            {
              goto LABEL_56;
            }

            v27 = v59;
LABEL_55:
            [v27 addObject:v26];
LABEL_56:

            goto LABEL_57;
          }

          goto LABEL_43;
        }

        v35 = [CCToolKitToolTypeIdentifier alloc];
        v24 = CCPBReaderReadDataNoCopy();
        v65 = 0;
        v36 = [(CCItemMessage *)v35 initWithData:v24 error:&v65];
        v8 = v65;
        v37 = 24;
      }

      break;
    }

    v39 = *(&self->super.super.isa + v37);
    *(&self->super.super.isa + v37) = v36;

LABEL_57:
    goto LABEL_58;
  }

  v9 = 0;
  v59 = 0;
  v60 = 0;
LABEL_66:
  v8 = 0;
LABEL_67:
  v44 = [v60 copy];
  cases = self->_cases;
  self->_cases = v44;

  v46 = [v59 copy];
  runtimeRequirements = self->_runtimeRequirements;
  self->_runtimeRequirements = v46;

  v48 = [v9 copy];
  systemProtocols = self->_systemProtocols;
  self->_systemProtocols = v48;

  if (v8)
  {
    CCSetError();
    v50 = 0;
    v51 = dataCopy;
  }

  else
  {
    v52 = MEMORY[0x1E6993AA8];
    v51 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      v55 = *&v5[*v52];
      v56 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }
  }

  return v50;
}

- (CCToolKitToolTypeDefinitionVersion1Enumeration)initWithIdentifier:(id)identifier cases:(id)cases runtimeRequirements:(id)requirements displayRepresentation:(id)representation kind:(unsigned int)kind systemProtocols:(id)protocols error:(id *)error
{
  v83 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  casesCopy = cases;
  requirementsCopy = requirements;
  representationCopy = representation;
  protocolsCopy = protocols;
  v19 = objc_opt_new();
  if (!identifierCopy)
  {
    v21 = 0;
LABEL_5:
    selfCopy = self;
    if (casesCopy)
    {
      objc_opt_class();
      v78 = v21;
      v23 = CCValidateArrayValues();
      v24 = v21;

      if (!v23)
      {
        goto LABEL_34;
      }

      v54 = protocolsCopy;
      v57 = representationCopy;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v25 = casesCopy;
      v26 = [v25 countByEnumeratingWithState:&v74 objects:v82 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v75;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v75 != v28)
            {
              objc_enumerationMutation(v25);
            }

            data = [*(*(&v74 + 1) + 8 * i) data];
            CCPBDataWriterWriteDataField();
          }

          v27 = [v25 countByEnumeratingWithState:&v74 objects:v82 count:16];
        }

        while (v27);
      }

      protocolsCopy = v54;
      representationCopy = v57;
      if (!requirementsCopy)
      {
LABEL_15:
        v21 = v24;
        if (representationCopy)
        {
          goto LABEL_16;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v24 = v21;
      if (!requirementsCopy)
      {
        goto LABEL_15;
      }
    }

    objc_opt_class();
    v73 = v24;
    v34 = CCValidateArrayValues();
    v21 = v24;

    if (!v34)
    {
LABEL_33:
      CCSetError();
      selfCopy2 = 0;
LABEL_35:
      self = selfCopy;
      goto LABEL_50;
    }

    v55 = protocolsCopy;
    v58 = representationCopy;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v35 = requirementsCopy;
    v36 = [v35 countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v70;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v70 != v38)
          {
            objc_enumerationMutation(v35);
          }

          data2 = [*(*(&v69 + 1) + 8 * j) data];
          CCPBDataWriterWriteDataField();
        }

        v37 = [v35 countByEnumeratingWithState:&v69 objects:v81 count:16];
      }

      while (v37);
    }

    protocolsCopy = v55;
    representationCopy = v58;
    if (v58)
    {
LABEL_16:
      objc_opt_class();
      v68 = v21;
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v24 = v21;

      if (IsInstanceOfExpectedClass)
      {
        data3 = [representationCopy data];
        CCPBDataWriterWriteDataField();

LABEL_30:
        if (!kind)
        {
          v59 = representationCopy;
          v21 = v24;
LABEL_37:
          v42 = selfCopy;
          if (protocolsCopy)
          {
            objc_opt_class();
            v66 = v21;
            v43 = CCValidateArrayValues();
            v44 = v21;

            if (!v43)
            {
              CCSetError();
              selfCopy2 = 0;
              v21 = v44;
              self = selfCopy;
              goto LABEL_49;
            }

            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v56 = protocolsCopy;
            v45 = protocolsCopy;
            v46 = [v45 countByEnumeratingWithState:&v62 objects:v80 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v63;
              do
              {
                for (k = 0; k != v47; ++k)
                {
                  if (*v63 != v48)
                  {
                    objc_enumerationMutation(v45);
                  }

                  data4 = [*(*(&v62 + 1) + 8 * k) data];
                  CCPBDataWriterWriteDataField();
                }

                v47 = [v45 countByEnumeratingWithState:&v62 objects:v80 count:16];
              }

              while (v47);
            }

            v21 = v44;
            v42 = selfCopy;
            protocolsCopy = v56;
          }

          immutableData = [v19 immutableData];
          self = [(CCItemMessage *)v42 initWithData:immutableData error:error];

          selfCopy2 = self;
LABEL_49:
          representationCopy = v59;
          goto LABEL_50;
        }

        v67 = v24;
        v41 = CCValidateEnumField();
        v21 = v24;

        if (v41)
        {
          v59 = representationCopy;
          CCPBDataWriterWriteUint32Field();
          goto LABEL_37;
        }

        goto LABEL_33;
      }

LABEL_34:
      CCSetError();
      selfCopy2 = 0;
      v21 = v24;
      goto LABEL_35;
    }

LABEL_29:
    v24 = v21;
    goto LABEL_30;
  }

  objc_opt_class();
  v79 = 0;
  v20 = CCValidateIsInstanceOfExpectedClass();
  v21 = 0;
  if (v20)
  {
    data5 = [identifierCopy data];
    CCPBDataWriterWriteDataField();

    goto LABEL_5;
  }

  CCSetError();
  selfCopy2 = 0;
LABEL_50:

  v52 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

@end