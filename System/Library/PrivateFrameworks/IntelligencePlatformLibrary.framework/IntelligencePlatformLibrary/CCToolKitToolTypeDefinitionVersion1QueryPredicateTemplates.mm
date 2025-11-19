@interface CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolAllPredicate)all;
- (CCToolKitToolIdSearchPredicateTemplate)idSearch;
- (CCToolKitToolSearchableItemPredicateTemplate)searchableItem;
- (CCToolKitToolStringSearchPredicateTemplate)stringSearch;
- (CCToolKitToolSuggestedPredicate)suggested;
- (CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates)initWithComparison:(id)a3 stringSearch:(id)a4 idSearch:(id)a5 all:(id)a6 suggested:(id)a7 sampleInvocations:(id)a8 searchableItem:(id)a9 valid:(id)a10 valueSearch:(id)a11 metadata:(id)a12 error:(id *)a13;
- (CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplatesPredicateMetadata)metadata;
- (CCToolKitToolValidPredicate)valid;
- (CCToolKitToolValueSearchPredicateTemplate)valueSearch;
- (NSArray)comparison;
- (NSArray)sampleInvocations;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates

- (CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v106 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v103 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"comparison"];
    if (v9)
    {
      v10 = v9;
      objc_opt_class();
      v102 = v8;
      v11 = CCValidateIsInstanceOfExpectedClass();
      v12 = v8;

      if ((v11 & 1) == 0)
      {
        CCSetError();
        v37 = 0;
        v13 = v10;
LABEL_88:

        v8 = v12;
        goto LABEL_89;
      }

      obj = v12;
      v13 = objc_opt_new();
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v14 = v10;
      v15 = [v14 countByEnumeratingWithState:&v98 objects:v105 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v99;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v99 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v98 + 1) + 8 * i);
            v20 = [CCToolKitToolComparisonPredicateTemplate alloc];
            v97 = 0;
            v21 = [(CCToolKitToolComparisonPredicateTemplate *)v20 initWithJSONDictionary:v19 error:&v97];
            v22 = v97;
            if (v21)
            {
              v23 = v22 == 0;
            }

            else
            {
              v23 = 0;
            }

            if (!v23)
            {
              v36 = v22;
              CCSetError();

              v37 = 0;
              v13 = v14;
              v12 = obj;
              goto LABEL_88;
            }

            [v13 addObject:v21];
          }

          v16 = [v14 countByEnumeratingWithState:&v98 objects:v105 count:16];
        }

        while (v16);
      }
    }

    else
    {
      v13 = 0;
      v12 = v8;
    }

    v24 = [v6 objectForKeyedSubscript:@"stringSearch"];
    if (v24)
    {
      v96 = 0;
      v25 = [[CCToolKitToolStringSearchPredicateTemplate alloc] initWithJSONDictionary:v24 error:&v96];
      v26 = v96;
      v27 = v26;
      if (!v25 || v26)
      {
        CCSetError();
        v37 = 0;
LABEL_87:

        goto LABEL_88;
      }

      v24 = v25;
    }

    v27 = [v6 objectForKeyedSubscript:@"idSearch"];
    if (v27)
    {
      v95 = 0;
      v28 = [[CCToolKitToolIdSearchPredicateTemplate alloc] initWithJSONDictionary:v27 error:&v95];
      v29 = v95;
      v25 = v29;
      if (!v28 || v29)
      {
        CCSetError();
        v37 = 0;
LABEL_86:

        goto LABEL_87;
      }

      v27 = v28;
    }

    v25 = [v6 objectForKeyedSubscript:@"all"];
    if (v25)
    {
      v94 = 0;
      v30 = [[CCToolKitToolAllPredicate alloc] initWithJSONDictionary:v25 error:&v94];
      v31 = v94;
      v28 = v31;
      if (!v30 || v31)
      {
        CCSetError();
        v37 = 0;
        goto LABEL_85;
      }

      v25 = v30;
    }

    v28 = [v6 objectForKeyedSubscript:@"suggested"];
    v78 = v25;
    if (v28)
    {
      v93 = 0;
      v32 = [[CCToolKitToolSuggestedPredicate alloc] initWithJSONDictionary:v28 error:&v93];
      v33 = v93;
      v34 = v33;
      if (!v32 || v33)
      {
        CCSetError();

        v37 = 0;
        v30 = v34;
LABEL_62:
        v25 = v78;
        goto LABEL_85;
      }

      v74 = v27;
      v75 = v24;
      v35 = v12;

      v28 = v32;
      v25 = v78;
    }

    else
    {
      v74 = v27;
      v75 = v24;
      v35 = v12;
    }

    v38 = [v6 objectForKeyedSubscript:@"sampleInvocations"];
    if (!v38)
    {
      v30 = 0;
      v71 = v35;
      v27 = v74;
      v24 = v75;
      goto LABEL_57;
    }

    v39 = v38;
    objc_opt_class();
    v92 = v35;
    v40 = CCValidateIsInstanceOfExpectedClass();
    v41 = v35;

    if (v40)
    {
      v71 = v41;
      v72 = v28;
      v42 = objc_opt_new();
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      obja = v39;
      v43 = [(CCToolKitToolAllPredicate *)obja countByEnumeratingWithState:&v88 objects:v104 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v89;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v89 != v45)
            {
              objc_enumerationMutation(obja);
            }

            v47 = *(*(&v88 + 1) + 8 * j);
            v48 = [CCToolKitToolSampleInvocationDefinition alloc];
            v87 = 0;
            v49 = [(CCToolKitToolSampleInvocationDefinition *)v48 initWithJSONDictionary:v47 error:&v87];
            v50 = v87;
            if (v49)
            {
              v51 = v50 == 0;
            }

            else
            {
              v51 = 0;
            }

            if (!v51)
            {
              v56 = v50;
              CCSetError();

              v30 = obja;
              v37 = 0;
              v12 = v71;
              v28 = v72;
              v27 = v74;
              v24 = v75;
              goto LABEL_62;
            }

            [(CCToolKitToolAllPredicate *)v42 addObject:v49];
          }

          v44 = [(CCToolKitToolAllPredicate *)obja countByEnumeratingWithState:&v88 objects:v104 count:16];
        }

        while (v44);
      }

      v27 = v74;
      v24 = v75;
      v28 = v72;
      v30 = v42;
      v25 = v78;
LABEL_57:
      v52 = [v6 objectForKeyedSubscript:@"searchableItem"];
      if (v52)
      {
        v76 = v30;
        v86 = 0;
        objb = v52;
        v53 = [[CCToolKitToolSearchableItemPredicateTemplate alloc] initWithJSONDictionary:v52 error:&v86];
        v54 = v86;
        v55 = v54;
        v82 = v53;
        if (!v53 || v54)
        {
          CCSetError();
          v37 = 0;
          v30 = v76;
LABEL_84:

          v12 = v71;
          goto LABEL_85;
        }

        objb = v53;
        v30 = v76;
      }

      else
      {
        objb = 0;
      }

      v55 = [v6 objectForKeyedSubscript:@"valid"];
      v73 = v28;
      if (v55)
      {
        v85 = 0;
        v57 = [[CCToolKitToolValidPredicate alloc] initWithJSONDictionary:v55 error:&v85];
        v58 = v85;
        if (!v57 || v58)
        {
          v82 = v58;
          CCSetError();
          v37 = 0;
          goto LABEL_83;
        }

        v55 = v57;
      }

      v59 = [v6 objectForKeyedSubscript:@"valueSearch"];
      if (v59)
      {
        v60 = v30;
        v84 = 0;
        v82 = v59;
        v61 = [[CCToolKitToolValueSearchPredicateTemplate alloc] initWithJSONDictionary:v59 error:&v84];
        v62 = v84;
        v57 = v62;
        if (!v61 || v62)
        {
          CCSetError();

          v37 = 0;
          v30 = v60;
          v25 = v78;
          goto LABEL_83;
        }

        v82 = v61;
        v30 = v60;
      }

      else
      {
        v82 = 0;
      }

      v77 = v55;
      v63 = [v6 objectForKeyedSubscript:@"metadata"];
      if (v63)
      {
        v57 = v63;
        v64 = v30;
        v83 = 0;
        v65 = [[CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplatesPredicateMetadata alloc] initWithJSONDictionary:v63 error:&v83];
        v66 = v83;
        v67 = v66;
        if (!v65 || v66)
        {
          CCSetError();

          v37 = 0;
          v30 = v64;
          v55 = v77;
          v25 = v78;
          goto LABEL_83;
        }

        v30 = v64;
      }

      else
      {
        v65 = 0;
      }

      v70 = v65;
      v57 = v65;
      v55 = v77;
      v25 = v78;
      v37 = [[CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates alloc] initWithComparison:v13 stringSearch:v24 idSearch:v27 all:v78 suggested:v73 sampleInvocations:v30 searchableItem:objb valid:v77 valueSearch:v82 metadata:v70 error:a4];
LABEL_83:

      v28 = v73;
      goto LABEL_84;
    }

    CCSetError();
    v37 = 0;
    v30 = v39;
    v12 = v41;
    v27 = v74;
    v24 = v75;
LABEL_85:

    goto LABEL_86;
  }

  CCSetError();
  v37 = 0;
LABEL_89:

  v68 = *MEMORY[0x1E69E9840];
  return v37;
}

- (id)jsonDictionary
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_comparison)
  {
    v4 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v5 = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self comparison];
    v6 = [v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v42;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v42 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v41 + 1) + 8 * i) jsonDictionary];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"comparison"];
  }

  if (self->_stringSearch)
  {
    v11 = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self stringSearch];
    v12 = [v11 jsonDictionary];
    [v3 setObject:v12 forKeyedSubscript:@"stringSearch"];
  }

  if (self->_idSearch)
  {
    v13 = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self idSearch];
    v14 = [v13 jsonDictionary];
    [v3 setObject:v14 forKeyedSubscript:@"idSearch"];
  }

  if (self->_all)
  {
    v15 = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self all];
    v16 = [v15 jsonDictionary];
    [v3 setObject:v16 forKeyedSubscript:@"all"];
  }

  if (self->_suggested)
  {
    v17 = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self suggested];
    v18 = [v17 jsonDictionary];
    [v3 setObject:v18 forKeyedSubscript:@"suggested"];
  }

  if (self->_sampleInvocations)
  {
    v19 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self sampleInvocations];
    v21 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v37 + 1) + 8 * j) jsonDictionary];
          [v19 addObject:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKeyedSubscript:@"sampleInvocations"];
  }

  if (self->_searchableItem)
  {
    v26 = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self searchableItem];
    v27 = [v26 jsonDictionary];
    [v3 setObject:v27 forKeyedSubscript:@"searchableItem"];
  }

  if (self->_valid)
  {
    v28 = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self valid];
    v29 = [v28 jsonDictionary];
    [v3 setObject:v29 forKeyedSubscript:@"valid"];
  }

  if (self->_valueSearch)
  {
    v30 = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self valueSearch];
    v31 = [v30 jsonDictionary];
    [v3 setObject:v31 forKeyedSubscript:@"valueSearch"];
  }

  if (self->_metadata)
  {
    v32 = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self metadata];
    v33 = [v32 jsonDictionary];
    [v3 setObject:v33 forKeyedSubscript:@"metadata"];
  }

  v34 = [v3 copy];

  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v18 = v5;
  if (self->_comparison)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] repeatedSubMessageValue:self->_comparison];
    v18[2](v18, v7);
  }

  if (self->_stringSearch)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_stringSearch];
    v18[2](v18, v8);
  }

  if (self->_idSearch)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_idSearch];
    v18[2](v18, v9);
  }

  if (self->_all)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_all];
    v18[2](v18, v10);
  }

  if (self->_suggested)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_suggested];
    v18[2](v18, v11);
  }

  if (self->_sampleInvocations)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_sampleInvocations];
    v18[2](v18, v12);
  }

  if (self->_searchableItem)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_searchableItem];
    v18[2](v18, v13);
  }

  if (self->_valid)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_valid];
    v18[2](v18, v14);
  }

  if (self->_valueSearch)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_valueSearch];
    v18[2](v18, v15);
  }

  v16 = v18;
  if (self->_metadata)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_metadata];
    v18[2](v18, v17);

    v16 = v18;
  }
}

- (CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplatesPredicateMetadata)metadata
{
  v2 = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplatesPredicateMetadata *)self->_metadata copy];

  return v2;
}

- (CCToolKitToolValueSearchPredicateTemplate)valueSearch
{
  v2 = [(CCToolKitToolValueSearchPredicateTemplate *)self->_valueSearch copy];

  return v2;
}

- (CCToolKitToolValidPredicate)valid
{
  v2 = [(CCToolKitToolValidPredicate *)self->_valid copy];

  return v2;
}

- (CCToolKitToolSearchableItemPredicateTemplate)searchableItem
{
  v2 = [(CCToolKitToolSearchableItemPredicateTemplate *)self->_searchableItem copy];

  return v2;
}

- (NSArray)sampleInvocations
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_sampleInvocations copyItems:1];

  return v2;
}

- (CCToolKitToolSuggestedPredicate)suggested
{
  v2 = [(CCToolKitToolSuggestedPredicate *)self->_suggested copy];

  return v2;
}

- (CCToolKitToolAllPredicate)all
{
  v2 = [(CCToolKitToolAllPredicate *)self->_all copy];

  return v2;
}

- (CCToolKitToolIdSearchPredicateTemplate)idSearch
{
  v2 = [(CCToolKitToolIdSearchPredicateTemplate *)self->_idSearch copy];

  return v2;
}

- (CCToolKitToolStringSearchPredicateTemplate)stringSearch
{
  v2 = [(CCToolKitToolStringSearchPredicateTemplate *)self->_stringSearch copy];

  return v2;
}

- (NSArray)comparison
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_comparison copyItems:1];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v54 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v54];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v55 = 0;
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
        goto LABEL_63;
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
            goto LABEL_62;
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
        goto LABEL_62;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 5)
      {
        if (v23 > 7)
        {
          switch(v23)
          {
            case 8:
              v36 = [CCToolKitToolValidPredicate alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v58 = 0;
              v26 = [(CCItemMessage *)v36 initWithData:v25 error:&v58];
              v8 = v58;
              v27 = 72;
              goto LABEL_54;
            case 9:
              v38 = [CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplatesPredicateMetadata alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v56 = 0;
              v26 = [(CCItemMessage *)v38 initWithData:v25 error:&v56];
              v8 = v56;
              v27 = 88;
              goto LABEL_54;
            case 0xA:
              v28 = [CCToolKitToolValueSearchPredicateTemplate alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v57 = 0;
              v26 = [(CCItemMessage *)v28 initWithData:v25 error:&v57];
              v8 = v57;
              v27 = 80;
              goto LABEL_54;
          }

          goto LABEL_58;
        }

        if (v23 != 6)
        {
          if (v23 == 7)
          {
            v30 = [CCToolKitToolSearchableItemPredicateTemplate alloc];
            v25 = CCPBReaderReadDataNoCopy();
            v59 = 0;
            v26 = [(CCItemMessage *)v30 initWithData:v25 error:&v59];
            v8 = v59;
            v27 = 64;
            goto LABEL_54;
          }

LABEL_58:
          if (CCPBReaderSkipValueWithTag())
          {
            v8 = 0;
LABEL_56:
            if (*&v5[*v6] < *&v5[*v7])
            {
              continue;
            }

            goto LABEL_63;
          }

          v40 = objc_opt_class();
          v25 = NSStringFromClass(v40);
          v41 = *&v5[*v10];
          v8 = CCSkipFieldErrorForMessage();
LABEL_55:

          goto LABEL_56;
        }

        v25 = CCPBReaderReadDataNoCopy();
        if (!v9)
        {
          v9 = objc_opt_new();
        }

        v34 = [CCToolKitToolSampleInvocationDefinition alloc];
        v60 = 0;
        v32 = [(CCItemMessage *)v34 initWithData:v25 error:&v60];
        v8 = v60;
        if (!v8 && v32)
        {
          v33 = v9;
          goto LABEL_48;
        }
      }

      else
      {
        if (v23 > 2)
        {
          switch(v23)
          {
            case 3:
              v35 = [CCToolKitToolIdSearchPredicateTemplate alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v63 = 0;
              v26 = [(CCItemMessage *)v35 initWithData:v25 error:&v63];
              v8 = v63;
              v27 = 32;
              goto LABEL_54;
            case 4:
              v37 = [CCToolKitToolAllPredicate alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v62 = 0;
              v26 = [(CCItemMessage *)v37 initWithData:v25 error:&v62];
              v8 = v62;
              v27 = 40;
              goto LABEL_54;
            case 5:
              v24 = [CCToolKitToolSuggestedPredicate alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v61 = 0;
              v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v61];
              v8 = v61;
              v27 = 48;
LABEL_54:
              v39 = *(&self->super.super.isa + v27);
              *(&self->super.super.isa + v27) = v26;

              goto LABEL_55;
          }

          goto LABEL_58;
        }

        if (v23 != 1)
        {
          if (v23 == 2)
          {
            v29 = [CCToolKitToolStringSearchPredicateTemplate alloc];
            v25 = CCPBReaderReadDataNoCopy();
            v64 = 0;
            v26 = [(CCItemMessage *)v29 initWithData:v25 error:&v64];
            v8 = v64;
            v27 = 24;
            goto LABEL_54;
          }

          goto LABEL_58;
        }

        v25 = CCPBReaderReadDataNoCopy();
        if (!v55)
        {
          v55 = objc_opt_new();
        }

        v31 = [CCToolKitToolComparisonPredicateTemplate alloc];
        v65 = 0;
        v32 = [(CCItemMessage *)v31 initWithData:v25 error:&v65];
        v8 = v65;
        if (!v8 && v32)
        {
          v33 = v55;
LABEL_48:
          [v33 addObject:v32];
        }
      }

      break;
    }

    goto LABEL_55;
  }

  v9 = 0;
  v55 = 0;
LABEL_62:
  v8 = 0;
LABEL_63:
  v42 = [v55 copy];
  comparison = self->_comparison;
  self->_comparison = v42;

  v44 = [v9 copy];
  sampleInvocations = self->_sampleInvocations;
  self->_sampleInvocations = v44;

  if (v8)
  {
    CCSetError();
    v46 = 0;
    v47 = v54;
  }

  else
  {
    v48 = MEMORY[0x1E6993AA8];
    v47 = v54;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = *&v5[*v48];
      v52 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }
  }

  return v46;
}

- (CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates)initWithComparison:(id)a3 stringSearch:(id)a4 idSearch:(id)a5 all:(id)a6 suggested:(id)a7 sampleInvocations:(id)a8 searchableItem:(id)a9 valid:(id)a10 valueSearch:(id)a11 metadata:(id)a12 error:(id *)a13
{
  v66 = a13;
  v93 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v76 = a4;
  v75 = a5;
  v19 = a6;
  v74 = a7;
  v73 = a8;
  v68 = a9;
  v71 = a10;
  v20 = a11;
  v70 = a12;
  v21 = objc_opt_new();
  v72 = v20;
  if (v18)
  {
    objc_opt_class();
    v90 = 0;
    v22 = CCValidateArrayValues();
    v23 = 0;
    if (!v22)
    {
      CCSetError();
      v34 = 0;
      v35 = self;
      v30 = v19;
LABEL_30:
      v42 = v73;
      goto LABEL_31;
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v24 = v18;
    v25 = [v24 countByEnumeratingWithState:&v86 objects:v92 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v87;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v87 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v86 + 1) + 8 * i) data];
          CCPBDataWriterWriteDataField();
        }

        v26 = [v24 countByEnumeratingWithState:&v86 objects:v92 count:16];
      }

      while (v26);
    }
  }

  else
  {
    v23 = 0;
  }

  v30 = v19;
  if (v76)
  {
    objc_opt_class();
    v85 = v23;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v32 = v23;

    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_27;
    }

    v33 = [v76 data];
    CCPBDataWriterWriteDataField();
  }

  else
  {
    v32 = v23;
  }

  if (v75)
  {
    objc_opt_class();
    v84 = v32;
    v36 = CCValidateIsInstanceOfExpectedClass();
    v23 = v32;

    if (!v36)
    {
LABEL_28:
      CCSetError();
      v34 = 0;
      goto LABEL_29;
    }

    v37 = [v75 data];
    CCPBDataWriterWriteDataField();

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v23 = v32;
    if (!v19)
    {
LABEL_20:
      v32 = v23;
      goto LABEL_24;
    }
  }

  objc_opt_class();
  v83 = v23;
  v38 = CCValidateIsInstanceOfExpectedClass();
  v32 = v23;

  if (!v38)
  {
LABEL_27:
    CCSetError();
    v34 = 0;
    v23 = v32;
LABEL_29:
    v35 = self;
    goto LABEL_30;
  }

  v39 = [v19 data];
  CCPBDataWriterWriteDataField();

LABEL_24:
  if (!v74)
  {
    v23 = v32;
    goto LABEL_35;
  }

  objc_opt_class();
  v82 = v32;
  v40 = CCValidateIsInstanceOfExpectedClass();
  v23 = v32;

  if (!v40)
  {
    goto LABEL_28;
  }

  v41 = [v74 data];
  CCPBDataWriterWriteDataField();

LABEL_35:
  v42 = v73;
  if (!v73)
  {
    v48 = v23;
    goto LABEL_46;
  }

  objc_opt_class();
  v81 = v23;
  v47 = CCValidateArrayValues();
  v48 = v23;

  if (v47)
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v49 = v73;
    v50 = [v49 countByEnumeratingWithState:&v77 objects:v91 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v78;
      do
      {
        for (j = 0; j != v51; ++j)
        {
          if (*v78 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = [*(*(&v77 + 1) + 8 * j) data];
          CCPBDataWriterWriteDataField();
        }

        v51 = [v49 countByEnumeratingWithState:&v77 objects:v91 count:16];
      }

      while (v51);
    }

    v30 = v19;
LABEL_46:
    v43 = v68;
    if (v68)
    {
      objc_opt_class();
      v55 = CCValidateIsInstanceOfExpectedClass();
      v23 = v48;

      if (!v55)
      {
        goto LABEL_58;
      }

      v56 = [v68 data];
      CCPBDataWriterWriteDataField();
    }

    else
    {
      v23 = v48;
    }

    if (v71)
    {
      objc_opt_class();
      v57 = CCValidateIsInstanceOfExpectedClass();
      v58 = v23;

      if (!v57)
      {
        CCSetError();
        v34 = 0;
        v23 = v58;
        v35 = self;
        v44 = v71;
        v42 = v73;
        goto LABEL_33;
      }

      v59 = [v71 data];
      CCPBDataWriterWriteDataField();
    }

    else
    {
      v58 = v23;
    }

    if (!v72)
    {
      v23 = v58;
      goto LABEL_62;
    }

    objc_opt_class();
    v60 = CCValidateIsInstanceOfExpectedClass();
    v23 = v58;

    if (v60)
    {
      v61 = [v72 data];
      CCPBDataWriterWriteDataField();

LABEL_62:
      if (!v70)
      {
LABEL_65:
        v65 = [v21 immutableData];
        v35 = [(CCItemMessage *)self initWithData:v65 error:v67];

        v34 = v35;
        goto LABEL_66;
      }

      objc_opt_class();
      v62 = CCValidateIsInstanceOfExpectedClass();
      v63 = v23;

      if (v62)
      {
        v64 = [v70 data];
        CCPBDataWriterWriteDataField();

        v23 = v63;
        goto LABEL_65;
      }

      CCSetError();
      v34 = 0;
      v23 = v63;
LABEL_59:
      v35 = self;
LABEL_66:
      v42 = v73;
      goto LABEL_32;
    }

LABEL_58:
    CCSetError();
    v34 = 0;
    goto LABEL_59;
  }

  CCSetError();
  v34 = 0;
  v23 = v48;
  v35 = self;
LABEL_31:
  v43 = v68;
LABEL_32:
  v44 = v71;
LABEL_33:

  v45 = *MEMORY[0x1E69E9840];
  return v34;
}

@end