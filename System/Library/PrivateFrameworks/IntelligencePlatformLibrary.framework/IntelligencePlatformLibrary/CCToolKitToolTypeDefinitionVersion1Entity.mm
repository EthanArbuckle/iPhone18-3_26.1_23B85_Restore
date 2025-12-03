@interface CCToolKitToolTypeDefinitionVersion1Entity
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTypeDefinitionVersion1Entity)initWithIdentifier:(id)identifier properties:(id)properties runtimeRequirements:(id)requirements displayRepresentation:(id)representation sampleInvocations:(id)invocations systemProtocols:(id)protocols runtimeFlags:(id)flags coercions:(id)self0 error:(id *)self1;
- (CCToolKitToolTypeDefinitionVersion1Entity)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypeDisplayRepresentation)displayRepresentation;
- (CCToolKitToolTypeIdentifier)identifier;
- (NSArray)coercions;
- (NSArray)properties;
- (NSArray)runtimeRequirements;
- (NSArray)sampleInvocations;
- (NSArray)systemProtocols;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypeDefinitionVersion1Entity

- (CCToolKitToolTypeDefinitionVersion1Entity)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v187 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v180[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    if (v9)
    {
      v180[0] = 0;
      v10 = [[CCToolKitToolTypeIdentifier alloc] initWithJSONDictionary:v9 error:v180];
      v11 = v180[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();

        v41 = 0;
        goto LABEL_120;
      }

      v9 = v10;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"properties"];
    if (!v13)
    {
      v12 = 0;
      v16 = v8;
      goto LABEL_24;
    }

    v14 = v13;
    objc_opt_class();
    v179 = v8;
    v15 = CCValidateIsInstanceOfExpectedClass();
    v16 = v8;

    if (v15)
    {
      obj = error;
      selfCopy = self;
      v12 = objc_opt_new();
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v17 = v14;
      v18 = [v17 countByEnumeratingWithState:&v175 objects:v186 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v176;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v176 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v175 + 1) + 8 * i);
            v23 = [CCToolKitToolTypeDefinitionVersion1EntityProperty alloc];
            v174 = 0;
            v24 = [(CCToolKitToolTypeDefinitionVersion1EntityProperty *)v23 initWithJSONDictionary:v22 error:&v174];
            v25 = v174;
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
              v40 = v25;
              CCSetError();

              v41 = 0;
              v12 = v17;
              v8 = v16;
              self = selfCopy;
              goto LABEL_120;
            }

            [v12 addObject:v24];
          }

          v19 = [v17 countByEnumeratingWithState:&v175 objects:v186 count:16];
        }

        while (v19);
      }

      self = selfCopy;
      error = obj;
LABEL_24:
      v27 = [dictionaryCopy objectForKeyedSubscript:@"runtimeRequirements"];
      if (v27)
      {
        objc_opt_class();
        v173 = v16;
        v28 = CCValidateIsInstanceOfExpectedClass();
        v8 = v16;

        if ((v28 & 1) == 0)
        {
          CCSetError();
          v41 = 0;
LABEL_119:

          goto LABEL_120;
        }

        v124 = v12;
        obja = error;
        selfCopy2 = self;
        v29 = objc_opt_new();
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        v30 = v27;
        v31 = [v30 countByEnumeratingWithState:&v169 objects:v185 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v170;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v170 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v169 + 1) + 8 * j);
              v36 = [CCToolKitToolRuntimeRequirement alloc];
              v168 = 0;
              v37 = [(CCToolKitToolRuntimeRequirement *)v36 initWithJSONDictionary:v35 error:&v168];
              v38 = v168;
              if (v37)
              {
                v39 = v38 == 0;
              }

              else
              {
                v39 = 0;
              }

              if (!v39)
              {
                v63 = v38;
                CCSetError();

                v41 = 0;
                v27 = v30;
                self = selfCopy2;
                v12 = v124;
                goto LABEL_119;
              }

              [v29 addObject:v37];
            }

            v32 = [v30 countByEnumeratingWithState:&v169 objects:v185 count:16];
          }

          while (v32);
        }

        self = selfCopy2;
        error = obja;
        v27 = v29;
        v12 = v124;
      }

      else
      {
        v8 = v16;
      }

      v42 = [dictionaryCopy objectForKeyedSubscript:@"displayRepresentation"];
      if (v42)
      {
        v167 = 0;
        v43 = [[CCToolKitToolTypeDisplayRepresentation alloc] initWithJSONDictionary:v42 error:&v167];
        v44 = v167;
        v45 = v44;
        if (!v43 || v44)
        {
          CCSetError();

          v41 = 0;
          goto LABEL_118;
        }

        v42 = v43;
      }

      v46 = [dictionaryCopy objectForKeyedSubscript:@"sampleInvocations"];
      if (!v46)
      {
        v51 = 0;
        goto LABEL_63;
      }

      v47 = v46;
      v120 = v27;
      objc_opt_class();
      v166 = v8;
      v48 = CCValidateIsInstanceOfExpectedClass();
      v49 = v8;

      if (v48)
      {
        objb = v49;
        v117 = v42;
        v125 = v12;
        errorCopy = error;
        selfCopy3 = self;
        v51 = objc_opt_new();
        v162 = 0u;
        v163 = 0u;
        v164 = 0u;
        v165 = 0u;
        v52 = v47;
        v53 = [v52 countByEnumeratingWithState:&v162 objects:v184 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v163;
          do
          {
            for (k = 0; k != v54; ++k)
            {
              v57 = v51;
              if (*v163 != v55)
              {
                objc_enumerationMutation(v52);
              }

              v58 = *(*(&v162 + 1) + 8 * k);
              v59 = [CCToolKitToolSampleInvocationDefinition alloc];
              v161 = 0;
              v60 = [(CCToolKitToolSampleInvocationDefinition *)v59 initWithJSONDictionary:v58 error:&v161];
              v61 = v161;
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
                v79 = v61;
                CCSetError();

                v41 = 0;
                v45 = v52;
                v8 = objb;
                self = selfCopy3;
                v27 = v120;
                v12 = v125;
                v42 = v117;
                goto LABEL_118;
              }

              v51 = v57;
              [v57 addObject:v60];
            }

            v54 = [v52 countByEnumeratingWithState:&v162 objects:v184 count:16];
          }

          while (v54);
        }

        self = selfCopy3;
        error = errorCopy;
        v27 = v120;
        v12 = v125;
        v42 = v117;
        v8 = objb;
LABEL_63:
        v64 = [dictionaryCopy objectForKeyedSubscript:@"systemProtocols"];
        v116 = v51;
        if (v64)
        {
          v65 = v64;
          objc_opt_class();
          v160 = v8;
          v66 = CCValidateIsInstanceOfExpectedClass();
          v67 = v8;
          v68 = v8;
          v8 = v67;

          if ((v66 & 1) == 0)
          {
            CCSetError();
            v41 = 0;
LABEL_92:
            v45 = v116;
            goto LABEL_117;
          }

          v118 = v42;
          v121 = v27;
          objc = error;
          selfCopy4 = self;
          v128 = objc_opt_new();
          v156 = 0u;
          v157 = 0u;
          v158 = 0u;
          v159 = 0u;
          v69 = v65;
          v70 = [v69 countByEnumeratingWithState:&v156 objects:v183 count:16];
          if (v70)
          {
            v71 = v70;
            v72 = *v157;
            do
            {
              for (m = 0; m != v71; ++m)
              {
                if (*v157 != v72)
                {
                  objc_enumerationMutation(v69);
                }

                v74 = *(*(&v156 + 1) + 8 * m);
                v75 = [CCToolKitToolSystemTypeProtocol alloc];
                v155 = 0;
                v76 = [(CCToolKitToolSystemTypeProtocol *)v75 initWithJSONDictionary:v74 error:&v155];
                v77 = v155;
                if (v76)
                {
                  v78 = v77 == 0;
                }

                else
                {
                  v78 = 0;
                }

                if (!v78)
                {
                  v92 = v77;
                  CCSetError();

                  v41 = 0;
                  v65 = v69;
                  self = selfCopy4;
                  v42 = v118;
                  v27 = v121;
                  goto LABEL_92;
                }

                [v128 addObject:v76];
              }

              v71 = [v69 countByEnumeratingWithState:&v156 objects:v183 count:16];
            }

            while (v71);
          }

          self = selfCopy4;
          error = objc;
          v42 = v118;
          v27 = v121;
        }

        else
        {
          v128 = 0;
        }

        v80 = [dictionaryCopy objectForKeyedSubscript:@"runtimeFlags"];
        v119 = v42;
        if (v80)
        {
          v81 = v80;
          objc_opt_class();
          v154 = v8;
          v82 = CCValidateIsInstanceOfExpectedClass();
          v83 = v8;

          if ((v82 & 1) == 0)
          {
            CCSetError();
            v41 = 0;
            v110 = v81;
LABEL_111:
            v45 = v116;
            v65 = v128;
            goto LABEL_116;
          }

          v122 = v27;
          v126 = v12;
          v135 = v9;
          selfCopy5 = self;
          v84 = objc_opt_new();
          v150 = 0u;
          v151 = 0u;
          v152 = 0u;
          v153 = 0u;
          objd = v81;
          v85 = [objd countByEnumeratingWithState:&v150 objects:v182 count:16];
          if (v85)
          {
            v86 = v85;
            v87 = *v151;
            while (2)
            {
              v88 = 0;
              v89 = v83;
              do
              {
                if (*v151 != v87)
                {
                  objc_enumerationMutation(objd);
                }

                v90 = *(*(&v150 + 1) + 8 * v88);
                objc_opt_class();
                v149 = v89;
                v91 = CCValidateIsInstanceOfExpectedClass();
                v83 = v89;

                if (!v91)
                {
                  CCSetError();
                  v110 = objd;

                  v41 = 0;
                  v9 = v135;
                  self = selfCopy5;
                  v27 = v122;
                  v12 = v126;
                  goto LABEL_111;
                }

                [v84 appendEnumValue:{objc_msgSend(v90, "unsignedIntValue")}];
                ++v88;
                v89 = v83;
              }

              while (v86 != v88);
              v86 = [objd countByEnumeratingWithState:&v150 objects:v182 count:16];
              if (v86)
              {
                continue;
              }

              break;
            }
          }

          v115 = v84;

          v8 = v83;
          v9 = v135;
          self = selfCopy5;
          v27 = v122;
          v12 = v126;
        }

        else
        {
          v115 = 0;
        }

        v93 = [dictionaryCopy objectForKeyedSubscript:@"coercions"];
        v65 = v128;
        if (v93)
        {
          v94 = v93;
          objc_opt_class();
          v148 = v8;
          v95 = CCValidateIsInstanceOfExpectedClass();
          v114 = v94;
          v83 = v8;

          if ((v95 & 1) == 0)
          {
            CCSetError();
            v41 = 0;
            v110 = v115;
            v45 = v116;
            v109 = v114;
            goto LABEL_115;
          }

          v123 = v27;
          v127 = v12;
          obje = error;
          selfCopy6 = self;
          v96 = objc_opt_new();
          v144 = 0u;
          v145 = 0u;
          v146 = 0u;
          v147 = 0u;
          v97 = v114;
          v98 = [v97 countByEnumeratingWithState:&v144 objects:v181 count:16];
          if (v98)
          {
            v99 = v98;
            v100 = *v145;
            do
            {
              for (n = 0; n != v99; ++n)
              {
                v102 = v96;
                if (*v145 != v100)
                {
                  objc_enumerationMutation(v97);
                }

                v103 = *(*(&v144 + 1) + 8 * n);
                v104 = [CCToolKitToolCoercionDefinition alloc];
                v143 = 0;
                v105 = [(CCToolKitToolCoercionDefinition *)v104 initWithJSONDictionary:v103 error:&v143];
                v106 = v143;
                if (v105)
                {
                  v107 = v106 == 0;
                }

                else
                {
                  v107 = 0;
                }

                if (!v107)
                {
                  v108 = v106;
                  CCSetError();

                  v109 = v97;
                  v41 = 0;
                  self = selfCopy6;
                  v27 = v123;
                  v12 = v127;
                  v110 = v115;
                  v45 = v116;
                  v65 = v128;
                  goto LABEL_115;
                }

                v96 = v102;
                [v102 addObject:v105];
              }

              v99 = [v97 countByEnumeratingWithState:&v144 objects:v181 count:16];
            }

            while (v99);
          }

          self = selfCopy6;
          v65 = v128;
          error = obje;
          v27 = v123;
          v12 = v127;
        }

        else
        {
          v96 = 0;
          v83 = v8;
        }

        v142 = v96;
        v113 = v96;
        v110 = v115;
        v45 = v116;
        v41 = [[CCToolKitToolTypeDefinitionVersion1Entity alloc] initWithIdentifier:v9 properties:v12 runtimeRequirements:v27 displayRepresentation:v119 sampleInvocations:v116 systemProtocols:v65 runtimeFlags:v115 coercions:v113 error:error];
        v109 = v142;
LABEL_115:

LABEL_116:
        v8 = v83;
        v42 = v119;
LABEL_117:

        goto LABEL_118;
      }

      CCSetError();
      v41 = 0;
      v45 = v47;
      v8 = v49;
      v27 = v120;
LABEL_118:

      goto LABEL_119;
    }

    CCSetError();
    v41 = 0;
    v12 = v14;
    v8 = v16;
LABEL_120:

    goto LABEL_121;
  }

  CCSetError();
  v41 = 0;
LABEL_121:

  v111 = *MEMORY[0x1E69E9840];
  return v41;
}

- (id)jsonDictionary
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_identifier)
  {
    identifier = [(CCToolKitToolTypeDefinitionVersion1Entity *)self identifier];
    jsonDictionary = [identifier jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"identifier"];
  }

  if (self->_properties)
  {
    v6 = objc_opt_new();
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    properties = [(CCToolKitToolTypeDefinitionVersion1Entity *)self properties];
    v8 = [properties countByEnumeratingWithState:&v67 objects:v75 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v68;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v68 != v10)
          {
            objc_enumerationMutation(properties);
          }

          jsonDictionary2 = [*(*(&v67 + 1) + 8 * i) jsonDictionary];
          [v6 addObject:jsonDictionary2];
        }

        v9 = [properties countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"properties"];
  }

  if (self->_runtimeRequirements)
  {
    v13 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    runtimeRequirements = [(CCToolKitToolTypeDefinitionVersion1Entity *)self runtimeRequirements];
    v15 = [runtimeRequirements countByEnumeratingWithState:&v63 objects:v74 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v64;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v64 != v17)
          {
            objc_enumerationMutation(runtimeRequirements);
          }

          jsonDictionary3 = [*(*(&v63 + 1) + 8 * j) jsonDictionary];
          [v13 addObject:jsonDictionary3];
        }

        v16 = [runtimeRequirements countByEnumeratingWithState:&v63 objects:v74 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"runtimeRequirements"];
  }

  if (self->_displayRepresentation)
  {
    displayRepresentation = [(CCToolKitToolTypeDefinitionVersion1Entity *)self displayRepresentation];
    jsonDictionary4 = [displayRepresentation jsonDictionary];
    [v3 setObject:jsonDictionary4 forKeyedSubscript:@"displayRepresentation"];
  }

  if (self->_sampleInvocations)
  {
    v22 = objc_opt_new();
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    sampleInvocations = [(CCToolKitToolTypeDefinitionVersion1Entity *)self sampleInvocations];
    v24 = [sampleInvocations countByEnumeratingWithState:&v59 objects:v73 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v60;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v60 != v26)
          {
            objc_enumerationMutation(sampleInvocations);
          }

          jsonDictionary5 = [*(*(&v59 + 1) + 8 * k) jsonDictionary];
          [v22 addObject:jsonDictionary5];
        }

        v25 = [sampleInvocations countByEnumeratingWithState:&v59 objects:v73 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKeyedSubscript:@"sampleInvocations"];
  }

  if (self->_systemProtocols)
  {
    v29 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    systemProtocols = [(CCToolKitToolTypeDefinitionVersion1Entity *)self systemProtocols];
    v31 = [systemProtocols countByEnumeratingWithState:&v55 objects:v72 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v56;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v56 != v33)
          {
            objc_enumerationMutation(systemProtocols);
          }

          jsonDictionary6 = [*(*(&v55 + 1) + 8 * m) jsonDictionary];
          [v29 addObject:jsonDictionary6];
        }

        v32 = [systemProtocols countByEnumeratingWithState:&v55 objects:v72 count:16];
      }

      while (v32);
    }

    [v3 setObject:v29 forKeyedSubscript:@"systemProtocols"];
  }

  if (self->_runtimeFlags)
  {
    v36 = objc_opt_new();
    runtimeFlags = [(CCToolKitToolTypeDefinitionVersion1Entity *)self runtimeFlags];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __59__CCToolKitToolTypeDefinitionVersion1Entity_jsonDictionary__block_invoke;
    v53[3] = &unk_1E73E8EA0;
    v54 = v36;
    v38 = v36;
    [runtimeFlags enumerateEnumValuesWithBlock:v53];

    [v3 setObject:v38 forKeyedSubscript:@"runtimeFlags"];
  }

  if (self->_coercions)
  {
    v39 = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    coercions = [(CCToolKitToolTypeDefinitionVersion1Entity *)self coercions];
    v41 = [coercions countByEnumeratingWithState:&v49 objects:v71 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v50;
      do
      {
        for (n = 0; n != v42; ++n)
        {
          if (*v50 != v43)
          {
            objc_enumerationMutation(coercions);
          }

          jsonDictionary7 = [*(*(&v49 + 1) + 8 * n) jsonDictionary];
          [v39 addObject:jsonDictionary7];
        }

        v42 = [coercions countByEnumeratingWithState:&v49 objects:v71 count:16];
      }

      while (v42);
    }

    [v3 setObject:v39 forKeyedSubscript:@"coercions"];
  }

  v46 = [v3 copy];

  v47 = *MEMORY[0x1E69E9840];

  return v46;
}

void __59__CCToolKitToolTypeDefinitionVersion1Entity_jsonDictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v16 = blockCopy;
  if (self->_identifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_identifier];
    v16[2](v16, v7);
  }

  if (self->_properties)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_properties];
    v16[2](v16, v8);
  }

  if (self->_runtimeRequirements)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_runtimeRequirements];
    v16[2](v16, v9);
  }

  if (self->_displayRepresentation)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_displayRepresentation];
    v16[2](v16, v10);
  }

  if (self->_sampleInvocations)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_sampleInvocations];
    v16[2](v16, v11);
  }

  if (self->_systemProtocols)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_systemProtocols];
    v16[2](v16, v12);
  }

  if (self->_runtimeFlags)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedEnumValue:self->_runtimeFlags];
    v16[2](v16, v13);
  }

  v14 = v16;
  if (self->_coercions)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_coercions];
    v16[2](v16, v15);

    v14 = v16;
  }
}

- (NSArray)coercions
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_coercions copyItems:1];

  return v2;
}

- (NSArray)systemProtocols
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_systemProtocols copyItems:1];

  return v2;
}

- (NSArray)sampleInvocations
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_sampleInvocations copyItems:1];

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

- (NSArray)properties
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_properties copyItems:1];

  return v2;
}

- (CCToolKitToolTypeIdentifier)identifier
{
  v2 = [(CCToolKitToolTypeIdentifier *)self->_identifier copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  errorCopy = error;
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    v65 = 0;
    v66 = 0;
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
        goto LABEL_73;
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
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_72;
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
        goto LABEL_72;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 4)
      {
        if (v23 > 6)
        {
          if (v23 == 7)
          {
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            CCPBReaderAppendRepeatedEnumFieldValues();
            goto LABEL_67;
          }

          if (v23 == 8)
          {
            v24 = CCPBReaderReadDataNoCopy();
            if (!v65)
            {
              v65 = objc_opt_new();
            }

            v33 = [CCToolKitToolCoercionDefinition alloc];
            v67 = 0;
            v26 = [(CCItemMessage *)v33 initWithData:v24 error:&v67];
            v8 = v67;
            if (v8 || !v26)
            {
              goto LABEL_61;
            }

            v27 = v65;
            goto LABEL_60;
          }
        }

        else
        {
          if (v23 == 5)
          {
            v24 = CCPBReaderReadDataNoCopy();
            if (!v62)
            {
              v62 = objc_opt_new();
            }

            v36 = [CCToolKitToolSampleInvocationDefinition alloc];
            v69 = 0;
            v26 = [(CCItemMessage *)v36 initWithData:v24 error:&v69];
            v8 = v69;
            if (v8 || !v26)
            {
              goto LABEL_61;
            }

            v27 = v62;
            goto LABEL_60;
          }

          if (v23 == 6)
          {
            v24 = CCPBReaderReadDataNoCopy();
            if (!v66)
            {
              v66 = objc_opt_new();
            }

            v28 = [CCToolKitToolSystemTypeProtocol alloc];
            v68 = 0;
            v26 = [(CCItemMessage *)v28 initWithData:v24 error:&v68];
            v8 = v68;
            if (v8 || !v26)
            {
              goto LABEL_61;
            }

            v27 = v66;
            goto LABEL_60;
          }
        }
      }

      else
      {
        if (v23 <= 2)
        {
          if (v23 != 1)
          {
            if (v23 == 2)
            {
              v24 = CCPBReaderReadDataNoCopy();
              if (!v64)
              {
                v64 = objc_opt_new();
              }

              v25 = [CCToolKitToolTypeDefinitionVersion1EntityProperty alloc];
              v72 = 0;
              v26 = [(CCItemMessage *)v25 initWithData:v24 error:&v72];
              v8 = v72;
              if (v8 || !v26)
              {
                goto LABEL_61;
              }

              v27 = v64;
LABEL_60:
              [v27 addObject:{v26, errorCopy}];
LABEL_61:

LABEL_62:
              goto LABEL_68;
            }

            goto LABEL_66;
          }

          v34 = [CCToolKitToolTypeIdentifier alloc];
          v30 = CCPBReaderReadDataNoCopy();
          v73 = 0;
          v31 = [(CCItemMessage *)v34 initWithData:v30 error:&v73];
          v8 = v73;
          v32 = 16;
LABEL_49:
          v35 = *(&self->super.super.isa + v32);
          *(&self->super.super.isa + v32) = v31;

          goto LABEL_68;
        }

        if (v23 == 3)
        {
          v24 = CCPBReaderReadDataNoCopy();
          if (!v63)
          {
            v63 = objc_opt_new();
          }

          v37 = [CCToolKitToolRuntimeRequirement alloc];
          v71 = 0;
          v26 = [(CCItemMessage *)v37 initWithData:v24 error:&v71];
          v8 = v71;
          if (v8 || !v26)
          {
            goto LABEL_61;
          }

          v27 = v63;
          goto LABEL_60;
        }

        if (v23 == 4)
        {
          v29 = [CCToolKitToolTypeDisplayRepresentation alloc];
          v30 = CCPBReaderReadDataNoCopy();
          v70 = 0;
          v31 = [(CCItemMessage *)v29 initWithData:v30 error:&v70];
          v8 = v70;
          v32 = 40;
          goto LABEL_49;
        }
      }

LABEL_66:
      if ((CCPBReaderSkipValueWithTag() & 1) == 0)
      {
        v38 = objc_opt_class();
        v24 = NSStringFromClass(v38);
        v39 = *&v5[*v10];
        v8 = CCSkipFieldErrorForMessage();
        goto LABEL_62;
      }

LABEL_67:
      v8 = 0;
LABEL_68:
      if (*&v5[*v6] < *&v5[*v7])
      {
        continue;
      }

      goto LABEL_73;
    }
  }

  v65 = 0;
  v66 = 0;
  v9 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
LABEL_72:
  v8 = 0;
LABEL_73:
  v40 = [v64 copy];
  properties = self->_properties;
  self->_properties = v40;

  v42 = [v63 copy];
  runtimeRequirements = self->_runtimeRequirements;
  self->_runtimeRequirements = v42;

  v44 = [v62 copy];
  sampleInvocations = self->_sampleInvocations;
  self->_sampleInvocations = v44;

  v46 = [v66 copy];
  systemProtocols = self->_systemProtocols;
  self->_systemProtocols = v46;

  v48 = [v9 copy];
  runtimeFlags = self->_runtimeFlags;
  self->_runtimeFlags = v48;

  v50 = [v65 copy];
  coercions = self->_coercions;
  self->_coercions = v50;

  if (v8)
  {
    CCSetError();
    v52 = 0;
    v53 = dataCopy;
  }

  else
  {
    v54 = MEMORY[0x1E6993AA8];
    v53 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = *&v5[*v54];
      v58 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v52 = 0;
    }

    else
    {
      v52 = 1;
    }
  }

  return v52;
}

- (CCToolKitToolTypeDefinitionVersion1Entity)initWithIdentifier:(id)identifier properties:(id)properties runtimeRequirements:(id)requirements displayRepresentation:(id)representation sampleInvocations:(id)invocations systemProtocols:(id)protocols runtimeFlags:(id)flags coercions:(id)self0 error:(id *)self1
{
  v128 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  propertiesCopy = properties;
  requirementsCopy = requirements;
  representationCopy = representation;
  invocationsCopy = invocations;
  protocolsCopy = protocols;
  flagsCopy = flags;
  coercionsCopy = coercions;
  v23 = objc_opt_new();
  if (identifierCopy)
  {
    objc_opt_class();
    v122 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v25 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      selfCopy2 = 0;
      goto LABEL_59;
    }

    data = [identifierCopy data];
    CCPBDataWriterWriteDataField();
  }

  else
  {
    v25 = 0;
  }

  v91 = coercionsCopy;
  selfCopy = self;
  if (!propertiesCopy)
  {
    v28 = v25;
    if (!requirementsCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  objc_opt_class();
  v121 = v25;
  v27 = CCValidateArrayValues();
  v28 = v25;

  if (v27)
  {
    v81 = requirementsCopy;
    v86 = invocationsCopy;
    v29 = representationCopy;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v30 = propertiesCopy;
    v31 = [v30 countByEnumeratingWithState:&v117 objects:v127 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v118;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v118 != v33)
          {
            objc_enumerationMutation(v30);
          }

          data2 = [*(*(&v117 + 1) + 8 * i) data];
          CCPBDataWriterWriteDataField();
        }

        v32 = [v30 countByEnumeratingWithState:&v117 objects:v127 count:16];
      }

      while (v32);
    }

    representationCopy = v29;
    requirementsCopy = v81;
    invocationsCopy = v86;
    if (!v81)
    {
LABEL_15:
      v25 = v28;
      if (representationCopy)
      {
LABEL_16:
        objc_opt_class();
        v111 = v25;
        v36 = CCValidateIsInstanceOfExpectedClass();
        v37 = v25;

        if (!v36)
        {
          goto LABEL_51;
        }

        data3 = [representationCopy data];
        CCPBDataWriterWriteDataField();

        if (!invocationsCopy)
        {
          goto LABEL_18;
        }

LABEL_31:
        objc_opt_class();
        v110 = v37;
        v50 = CCValidateArrayValues();
        v25 = v37;

        if (v50)
        {
          v83 = propertiesCopy;
          v88 = invocationsCopy;
          v51 = requirementsCopy;
          v52 = representationCopy;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v53 = invocationsCopy;
          v54 = [v53 countByEnumeratingWithState:&v106 objects:v125 count:16];
          if (v54)
          {
            v55 = v54;
            v56 = *v107;
            do
            {
              for (j = 0; j != v55; ++j)
              {
                if (*v107 != v56)
                {
                  objc_enumerationMutation(v53);
                }

                data4 = [*(*(&v106 + 1) + 8 * j) data];
                CCPBDataWriterWriteDataField();
              }

              v55 = [v53 countByEnumeratingWithState:&v106 objects:v125 count:16];
            }

            while (v55);
          }

          representationCopy = v52;
          requirementsCopy = v51;
          propertiesCopy = v83;
          invocationsCopy = v88;
          goto LABEL_40;
        }

LABEL_56:
        CCSetError();
        selfCopy2 = 0;
        goto LABEL_57;
      }

LABEL_30:
      v37 = v25;
      if (!invocationsCopy)
      {
LABEL_18:
        v25 = v37;
LABEL_40:
        if (!protocolsCopy)
        {
          v37 = v25;
LABEL_53:
          if (!flagsCopy)
          {
            v85 = representationCopy;
            v25 = v37;
            goto LABEL_61;
          }

          objc_opt_class();
          v100 = v37;
          v68 = CCValidateIsInstanceOfExpectedClass();
          v25 = v37;

          if (v68)
          {
            v85 = representationCopy;
            CCPBDataWriterWriteRepeatedUInt32Field();
LABEL_61:
            v71 = selfCopy;
            if (v91)
            {
              objc_opt_class();
              v99 = v25;
              v72 = CCValidateArrayValues();
              v73 = v25;

              if (!v72)
              {
                CCSetError();
                selfCopy2 = 0;
                v25 = v73;
                self = selfCopy;
                coercionsCopy = v91;
                representationCopy = v85;
                goto LABEL_59;
              }

              v90 = invocationsCopy;
              v97 = 0u;
              v98 = 0u;
              v95 = 0u;
              v96 = 0u;
              v74 = v91;
              v75 = [v74 countByEnumeratingWithState:&v95 objects:v123 count:16];
              if (v75)
              {
                v76 = v75;
                v77 = *v96;
                do
                {
                  for (k = 0; k != v76; ++k)
                  {
                    if (*v96 != v77)
                    {
                      objc_enumerationMutation(v74);
                    }

                    data5 = [*(*(&v95 + 1) + 8 * k) data];
                    CCPBDataWriterWriteDataField();
                  }

                  v76 = [v74 countByEnumeratingWithState:&v95 objects:v123 count:16];
                }

                while (v76);
              }

              v25 = v73;
              v71 = selfCopy;
              invocationsCopy = v90;
            }

            immutableData = [v23 immutableData];
            self = [(CCItemMessage *)v71 initWithData:immutableData error:error];

            selfCopy2 = self;
            representationCopy = v85;
            goto LABEL_58;
          }

          goto LABEL_56;
        }

        objc_opt_class();
        v105 = v25;
        v59 = CCValidateArrayValues();
        v37 = v25;

        if (v59)
        {
          v84 = propertiesCopy;
          v89 = invocationsCopy;
          v60 = requirementsCopy;
          v61 = representationCopy;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v62 = protocolsCopy;
          v63 = [v62 countByEnumeratingWithState:&v101 objects:v124 count:16];
          if (v63)
          {
            v64 = v63;
            v65 = *v102;
            do
            {
              for (m = 0; m != v64; ++m)
              {
                if (*v102 != v65)
                {
                  objc_enumerationMutation(v62);
                }

                data6 = [*(*(&v101 + 1) + 8 * m) data];
                CCPBDataWriterWriteDataField();
              }

              v64 = [v62 countByEnumeratingWithState:&v101 objects:v124 count:16];
            }

            while (v64);
          }

          representationCopy = v61;
          requirementsCopy = v60;
          propertiesCopy = v84;
          invocationsCopy = v89;
          goto LABEL_53;
        }

LABEL_51:
        CCSetError();
        selfCopy2 = 0;
        v25 = v37;
LABEL_57:
        self = selfCopy;
LABEL_58:
        coercionsCopy = v91;
        goto LABEL_59;
      }

      goto LABEL_31;
    }

LABEL_21:
    objc_opt_class();
    v116 = v28;
    v40 = CCValidateArrayValues();
    v25 = v28;

    if (!v40)
    {
      goto LABEL_56;
    }

    v82 = propertiesCopy;
    v87 = invocationsCopy;
    v41 = requirementsCopy;
    v42 = representationCopy;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v43 = v41;
    v44 = v41;
    v45 = [v44 countByEnumeratingWithState:&v112 objects:v126 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v113;
      do
      {
        for (n = 0; n != v46; ++n)
        {
          if (*v113 != v47)
          {
            objc_enumerationMutation(v44);
          }

          data7 = [*(*(&v112 + 1) + 8 * n) data];
          CCPBDataWriterWriteDataField();
        }

        v46 = [v44 countByEnumeratingWithState:&v112 objects:v126 count:16];
      }

      while (v46);
    }

    representationCopy = v42;
    requirementsCopy = v43;
    propertiesCopy = v82;
    invocationsCopy = v87;
    if (representationCopy)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  CCSetError();
  selfCopy2 = 0;
  v25 = v28;
  self = selfCopy;
LABEL_59:

  v69 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

@end