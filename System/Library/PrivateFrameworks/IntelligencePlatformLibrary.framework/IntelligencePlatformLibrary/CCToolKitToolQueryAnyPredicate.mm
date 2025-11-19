@interface CCToolKitToolQueryAnyPredicate
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolAllPredicate)all;
- (CCToolKitToolComparisonPredicate)comparison;
- (CCToolKitToolCompoundPredicate)compound;
- (CCToolKitToolIdSearchPredicate)idSearch;
- (CCToolKitToolQueryAnyPredicate)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolQueryAnyPredicate)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5;
- (CCToolKitToolSearchableItemPredicate)searchableItem;
- (CCToolKitToolStringSearchPredicate)stringSearch;
- (CCToolKitToolSuggestedPredicate)suggested;
- (CCToolKitToolValidPredicate)valid;
- (CCToolKitToolValueSearchPredicate)valueSearch;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolQueryAnyPredicate

- (CCToolKitToolQueryAnyPredicate)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v75[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"comparison"];
    if (v9)
    {
      v75[0] = 0;
      v10 = [[CCToolKitToolComparisonPredicate alloc] initWithJSONDictionary:v9 error:v75];
      v11 = v75[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v36 = 0;
LABEL_80:

        goto LABEL_81;
      }

      v9 = v10;
    }

    v12 = [v6 objectForKeyedSubscript:@"compound"];
    if (v12)
    {
      v13 = [CCToolKitToolCompoundPredicate alloc];
      v74 = 0;
      v14 = [(CCToolKitToolCompoundPredicate *)v13 initWithJSONDictionary:v12 error:&v74];
      v15 = v74;
      v10 = v15;
      if (!v14 || v15)
      {
        CCSetError();
        v36 = 0;
LABEL_79:

        goto LABEL_80;
      }

      v12 = v14;
    }

    v10 = [v6 objectForKeyedSubscript:@"stringSearch"];
    if (v10)
    {
      v16 = [CCToolKitToolStringSearchPredicate alloc];
      v73 = 0;
      v17 = [(CCToolKitToolStringSearchPredicate *)v16 initWithJSONDictionary:v10 error:&v73];
      v18 = v73;
      v14 = v18;
      if (!v17 || v18)
      {
        CCSetError();
        v36 = 0;
LABEL_78:

        goto LABEL_79;
      }

      v10 = v17;
    }

    v14 = [v6 objectForKeyedSubscript:@"idSearch"];
    if (v14)
    {
      v19 = [CCToolKitToolIdSearchPredicate alloc];
      v72 = 0;
      v20 = [(CCToolKitToolIdSearchPredicate *)v19 initWithJSONDictionary:v14 error:&v72];
      v21 = v72;
      v17 = v21;
      if (!v20 || v21)
      {
        CCSetError();
        v36 = 0;
LABEL_77:

        goto LABEL_78;
      }

      v14 = v20;
    }

    v17 = [v6 objectForKeyedSubscript:@"all"];
    if (v17)
    {
      v64 = self;
      v22 = [CCToolKitToolAllPredicate alloc];
      v71 = 0;
      v23 = v17;
      v24 = [(CCToolKitToolAllPredicate *)v22 initWithJSONDictionary:v17 error:&v71];
      v25 = v71;
      v26 = v25;
      v66 = v24;
      if (!v24 || v25)
      {
        CCSetError();
        v36 = 0;
        v20 = v26;
        v17 = v23;
        self = v64;
LABEL_76:

        goto LABEL_77;
      }

      self = v64;
      v17 = v24;
    }

    v27 = [v6 objectForKeyedSubscript:@"suggested"];
    if (v27)
    {
      v28 = [CCToolKitToolSuggestedPredicate alloc];
      v70 = 0;
      v62 = v27;
      v27 = [(CCToolKitToolSuggestedPredicate *)v28 initWithJSONDictionary:v27 error:&v70];
      v29 = v70;
      v65 = v27;
      if (!v27 || v29)
      {
        v66 = v29;
        CCSetError();
        v36 = 0;
        v20 = v62;
        goto LABEL_75;
      }
    }

    v30 = [v6 objectForKeyedSubscript:@"searchableItem"];
    if (!v30)
    {
      v66 = 0;
LABEL_38:
      v37 = [v6 objectForKeyedSubscript:@"valid"];
      v63 = v27;
      if (v37)
      {
        v38 = v37;
        v39 = [CCToolKitToolValidPredicate alloc];
        v68 = 0;
        v65 = v38;
        v40 = [(CCToolKitToolValidPredicate *)v39 initWithJSONDictionary:v38 error:&v68];
        v41 = v68;
        if (!v40 || v41)
        {
          v58 = v41;
          CCSetError();
          goto LABEL_53;
        }

        v65 = v40;
      }

      else
      {
        v65 = 0;
      }

      v42 = [v6 objectForKeyedSubscript:@"valueSearch"];
      if (!v42)
      {
        v58 = 0;
        goto LABEL_50;
      }

      v43 = v42;
      v44 = [CCToolKitToolValueSearchPredicate alloc];
      v67 = 0;
      v58 = v43;
      v45 = [(CCToolKitToolValueSearchPredicate *)v44 initWithJSONDictionary:v43 error:&v67];
      v46 = v67;
      v60 = v45;
      if (v45 && !v46)
      {

        v58 = v45;
LABEL_50:
        if (v9)
        {
          v47 = v9;
          v48 = 1;
        }

        else
        {
          v48 = 0;
        }

        v61 = v9;
        if (v12)
        {
          v61 = v12;

          v48 = 2;
        }

        if (v10)
        {
          v50 = v10;

          v48 = 3;
          v61 = v50;
        }

        if (v14)
        {
          v51 = v14;

          v48 = 4;
          v61 = v51;
        }

        if (v17)
        {
          v52 = v17;

          v48 = 5;
          v61 = v52;
        }

        if (v63)
        {
          v53 = v63;

          v48 = 6;
          v61 = v53;
        }

        if (v66)
        {
          v54 = v66;

          v48 = 7;
          v61 = v54;
        }

        if (v65)
        {
          v55 = v65;

          v48 = 8;
          v61 = v55;
        }

        if (v58)
        {
          v40 = v58;

          v56 = 9;
        }

        else
        {
          v40 = v61;
          v56 = v48;
        }

        v36 = [[CCToolKitToolQueryAnyPredicate alloc] initWithKind:v40 kindType:v56 error:a4];
        goto LABEL_73;
      }

      v40 = v46;
      CCSetError();

LABEL_53:
      v36 = 0;
LABEL_73:

      v20 = v63;
      goto LABEL_75;
    }

    v59 = v17;
    v31 = v27;
    v32 = v30;
    v33 = [CCToolKitToolSearchableItemPredicate alloc];
    v69 = 0;
    v66 = v32;
    v34 = [(CCToolKitToolSearchableItemPredicate *)v33 initWithJSONDictionary:v32 error:&v69];
    v35 = v69;
    if (v34 && !v35)
    {

      v66 = v34;
      v27 = v31;
      v17 = v59;
      goto LABEL_38;
    }

    v57 = v34;
    v65 = v35;
    CCSetError();
    v36 = 0;
    v20 = v31;
    v17 = v59;

LABEL_75:
    goto LABEL_76;
  }

  CCSetError();
  v36 = 0;
LABEL_81:

  return v36;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    if (!self->_comparison)
    {
      goto LABEL_28;
    }

    v5 = [(CCToolKitToolQueryAnyPredicate *)self comparison];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"comparison"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    if (!self->_compound)
    {
      goto LABEL_28;
    }

    v7 = [(CCToolKitToolQueryAnyPredicate *)self compound];
    v8 = [v7 jsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"compound"];

    kindType = self->_kindType;
  }

  if (kindType == 3)
  {
    if (!self->_stringSearch)
    {
      goto LABEL_28;
    }

    v9 = [(CCToolKitToolQueryAnyPredicate *)self stringSearch];
    v10 = [v9 jsonDictionary];
    [v3 setObject:v10 forKeyedSubscript:@"stringSearch"];

    kindType = self->_kindType;
  }

  if (kindType == 4)
  {
    if (!self->_idSearch)
    {
      goto LABEL_28;
    }

    v11 = [(CCToolKitToolQueryAnyPredicate *)self idSearch];
    v12 = [v11 jsonDictionary];
    [v3 setObject:v12 forKeyedSubscript:@"idSearch"];

    kindType = self->_kindType;
  }

  if (kindType == 5)
  {
    if (!self->_all)
    {
      goto LABEL_28;
    }

    v13 = [(CCToolKitToolQueryAnyPredicate *)self all];
    v14 = [v13 jsonDictionary];
    [v3 setObject:v14 forKeyedSubscript:@"all"];

    kindType = self->_kindType;
  }

  if (kindType == 6)
  {
    if (!self->_suggested)
    {
      goto LABEL_28;
    }

    v15 = [(CCToolKitToolQueryAnyPredicate *)self suggested];
    v16 = [v15 jsonDictionary];
    [v3 setObject:v16 forKeyedSubscript:@"suggested"];

    kindType = self->_kindType;
  }

  if (kindType == 7)
  {
    if (!self->_searchableItem)
    {
      goto LABEL_28;
    }

    v17 = [(CCToolKitToolQueryAnyPredicate *)self searchableItem];
    v18 = [v17 jsonDictionary];
    [v3 setObject:v18 forKeyedSubscript:@"searchableItem"];

    kindType = self->_kindType;
  }

  if (kindType == 8)
  {
    if (!self->_valid)
    {
      goto LABEL_28;
    }

    v19 = [(CCToolKitToolQueryAnyPredicate *)self valid];
    v20 = [v19 jsonDictionary];
    [v3 setObject:v20 forKeyedSubscript:@"valid"];

    kindType = self->_kindType;
  }

  if (kindType == 9 && self->_valueSearch)
  {
    v21 = [(CCToolKitToolQueryAnyPredicate *)self valueSearch];
    v22 = [v21 jsonDictionary];
    [v3 setObject:v22 forKeyedSubscript:@"valueSearch"];
  }

LABEL_28:
  v23 = [v3 copy];

  return v23;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v17 = v5;
  if (self->_comparison)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_comparison];
    v17[2](v17, v7);
  }

  if (self->_compound)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_compound];
    v17[2](v17, v8);
  }

  if (self->_stringSearch)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_stringSearch];
    v17[2](v17, v9);
  }

  if (self->_idSearch)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_idSearch];
    v17[2](v17, v10);
  }

  if (self->_all)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_all];
    v17[2](v17, v11);
  }

  if (self->_suggested)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_suggested];
    v17[2](v17, v12);
  }

  if (self->_searchableItem)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_searchableItem];
    v17[2](v17, v13);
  }

  if (self->_valid)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_valid];
    v17[2](v17, v14);
  }

  v15 = v17;
  if (self->_valueSearch)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_valueSearch];
    v17[2](v17, v16);

    v15 = v17;
  }
}

- (CCToolKitToolValueSearchPredicate)valueSearch
{
  v2 = [(CCToolKitToolValueSearchPredicate *)self->_valueSearch copy];

  return v2;
}

- (CCToolKitToolValidPredicate)valid
{
  v2 = [(CCToolKitToolValidPredicate *)self->_valid copy];

  return v2;
}

- (CCToolKitToolSearchableItemPredicate)searchableItem
{
  v2 = [(CCToolKitToolSearchableItemPredicate *)self->_searchableItem copy];

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

- (CCToolKitToolIdSearchPredicate)idSearch
{
  v2 = [(CCToolKitToolIdSearchPredicate *)self->_idSearch copy];

  return v2;
}

- (CCToolKitToolStringSearchPredicate)stringSearch
{
  v2 = [(CCToolKitToolStringSearchPredicate *)self->_stringSearch copy];

  return v2;
}

- (CCToolKitToolCompoundPredicate)compound
{
  v2 = [(CCToolKitToolCompoundPredicate *)self->_compound copy];

  return v2;
}

- (CCToolKitToolComparisonPredicate)comparison
{
  v2 = [(CCToolKitToolComparisonPredicate *)self->_comparison copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_65;
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
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_66;
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
        goto LABEL_66;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 4)
      {
        if (v23 > 6)
        {
          if (v23 != 7)
          {
            if (v23 != 8)
            {
              if (v23 == 9)
              {
                v24 = [CCToolKitToolValueSearchPredicate alloc];
                v25 = CCPBReaderReadDataNoCopy();
                v113 = 0;
                v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v113];
                v10 = v113;
                valueSearch = self->_valueSearch;
                self->_valueSearch = v26;

                if (!v10)
                {
                  comparison = self->_comparison;
                  self->_comparison = 0;

                  compound = self->_compound;
                  self->_compound = 0;

                  stringSearch = self->_stringSearch;
                  self->_stringSearch = 0;

                  idSearch = self->_idSearch;
                  self->_idSearch = 0;

                  all = self->_all;
                  self->_all = 0;

                  suggested = self->_suggested;
                  self->_suggested = 0;

                  searchableItem = self->_searchableItem;
                  self->_searchableItem = 0;

                  valid = self->_valid;
                  self->_valid = 0;

                  self->_kindType = 9;
                }

LABEL_52:
                if (*&v6[*v7] < *&v6[*v8])
                {
                  continue;
                }

                break;
              }

LABEL_60:
              if (CCPBReaderSkipValueWithTag())
              {
                v10 = 0;
              }

              else
              {
                v104 = objc_opt_class();
                v105 = NSStringFromClass(v104);
                v106 = *&v6[*v9];
                v10 = CCSkipFieldErrorForMessage();
              }

              goto LABEL_52;
            }

            v93 = [CCToolKitToolValidPredicate alloc];
            v94 = CCPBReaderReadDataNoCopy();
            v114 = 0;
            v95 = [(CCItemMessage *)v93 initWithData:v94 error:&v114];
            v10 = v114;
            v96 = self->_valid;
            self->_valid = v95;

            if (v10)
            {
              goto LABEL_52;
            }

            v97 = self->_comparison;
            self->_comparison = 0;

            v98 = self->_compound;
            self->_compound = 0;

            v99 = self->_stringSearch;
            self->_stringSearch = 0;

            v100 = self->_idSearch;
            self->_idSearch = 0;

            v101 = self->_all;
            self->_all = 0;

            v102 = self->_suggested;
            self->_suggested = 0;

            v103 = self->_searchableItem;
            self->_searchableItem = 0;

            self->_kindType = 8;
LABEL_51:
            v74 = self->_valueSearch;
            self->_valueSearch = 0;

            goto LABEL_52;
          }

          v75 = [CCToolKitToolSearchableItemPredicate alloc];
          v76 = CCPBReaderReadDataNoCopy();
          v115 = 0;
          v77 = [(CCItemMessage *)v75 initWithData:v76 error:&v115];
          v10 = v115;
          v78 = self->_searchableItem;
          self->_searchableItem = v77;

          if (v10)
          {
            goto LABEL_52;
          }

          v79 = self->_comparison;
          self->_comparison = 0;

          v80 = self->_compound;
          self->_compound = 0;

          v81 = self->_stringSearch;
          self->_stringSearch = 0;

          v82 = self->_idSearch;
          self->_idSearch = 0;

          v83 = self->_all;
          self->_all = 0;

          v84 = self->_suggested;
          self->_suggested = 0;

          self->_kindType = 7;
LABEL_50:
          v73 = self->_valid;
          self->_valid = 0;

          goto LABEL_51;
        }

        if (v23 != 5)
        {
          if (v23 != 6)
          {
            goto LABEL_60;
          }

          v48 = [CCToolKitToolSuggestedPredicate alloc];
          v49 = CCPBReaderReadDataNoCopy();
          v116 = 0;
          v50 = [(CCItemMessage *)v48 initWithData:v49 error:&v116];
          v10 = v116;
          v51 = self->_suggested;
          self->_suggested = v50;

          if (v10)
          {
            goto LABEL_52;
          }

          v52 = self->_comparison;
          self->_comparison = 0;

          v53 = self->_compound;
          self->_compound = 0;

          v54 = self->_stringSearch;
          self->_stringSearch = 0;

          v55 = self->_idSearch;
          self->_idSearch = 0;

          v56 = self->_all;
          self->_all = 0;

          self->_kindType = 6;
          goto LABEL_49;
        }

        v85 = [CCToolKitToolAllPredicate alloc];
        v86 = CCPBReaderReadDataNoCopy();
        v117 = 0;
        v87 = [(CCItemMessage *)v85 initWithData:v86 error:&v117];
        v10 = v117;
        v88 = self->_all;
        self->_all = v87;

        if (v10)
        {
          goto LABEL_52;
        }

        v89 = self->_comparison;
        self->_comparison = 0;

        v90 = self->_compound;
        self->_compound = 0;

        v91 = self->_stringSearch;
        self->_stringSearch = 0;

        v92 = self->_idSearch;
        self->_idSearch = 0;

        self->_kindType = 5;
LABEL_48:
        v71 = self->_suggested;
        self->_suggested = 0;

LABEL_49:
        v72 = self->_searchableItem;
        self->_searchableItem = 0;

        goto LABEL_50;
      }

      if (v23 > 2)
      {
        if (v23 != 3)
        {
          if (v23 != 4)
          {
            goto LABEL_60;
          }

          v41 = [CCToolKitToolIdSearchPredicate alloc];
          v42 = CCPBReaderReadDataNoCopy();
          v118 = 0;
          v43 = [(CCItemMessage *)v41 initWithData:v42 error:&v118];
          v10 = v118;
          v44 = self->_idSearch;
          self->_idSearch = v43;

          if (v10)
          {
            goto LABEL_52;
          }

          v45 = self->_comparison;
          self->_comparison = 0;

          v46 = self->_compound;
          self->_compound = 0;

          v47 = self->_stringSearch;
          self->_stringSearch = 0;

          self->_kindType = 4;
          goto LABEL_47;
        }

        v63 = [CCToolKitToolStringSearchPredicate alloc];
        v64 = CCPBReaderReadDataNoCopy();
        v119 = 0;
        v65 = [(CCItemMessage *)v63 initWithData:v64 error:&v119];
        v10 = v119;
        v66 = self->_stringSearch;
        self->_stringSearch = v65;

        if (v10)
        {
          goto LABEL_52;
        }

        v67 = self->_comparison;
        self->_comparison = 0;

        v68 = self->_compound;
        self->_compound = 0;

        self->_kindType = 3;
      }

      else
      {
        if (v23 == 1)
        {
          v57 = [CCToolKitToolComparisonPredicate alloc];
          v58 = CCPBReaderReadDataNoCopy();
          v121 = 0;
          v59 = [(CCItemMessage *)v57 initWithData:v58 error:&v121];
          v10 = v121;
          v60 = self->_comparison;
          self->_comparison = v59;

          if (v10)
          {
            goto LABEL_52;
          }

          self->_kindType = 1;
          v61 = self->_compound;
          self->_compound = 0;
        }

        else
        {
          if (v23 != 2)
          {
            goto LABEL_60;
          }

          v36 = [CCToolKitToolCompoundPredicate alloc];
          v37 = CCPBReaderReadDataNoCopy();
          v120 = 0;
          v38 = [(CCItemMessage *)v36 initWithData:v37 error:&v120];
          v10 = v120;
          v39 = self->_compound;
          self->_compound = v38;

          if (v10)
          {
            goto LABEL_52;
          }

          v40 = self->_comparison;
          self->_comparison = 0;

          self->_kindType = 2;
        }

        v62 = self->_stringSearch;
        self->_stringSearch = 0;
      }

      v69 = self->_idSearch;
      self->_idSearch = 0;

LABEL_47:
      v70 = self->_all;
      self->_all = 0;

      goto LABEL_48;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_67;
  }

LABEL_65:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v111 = 1;
    goto LABEL_69;
  }

LABEL_66:
  v107 = objc_opt_class();
  v108 = NSStringFromClass(v107);
  v109 = *&v6[*v9];
  v110 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_67:
  v111 = 0;
LABEL_69:

  return v111;
}

- (CCToolKitToolQueryAnyPredicate)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  if (v8 && a4 == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (IsInstanceOfExpectedClass)
    {
      goto LABEL_36;
    }

LABEL_38:
    CCSetError();
    v22 = 0;
    goto LABEL_39;
  }

  if (v8 && a4 == 2)
  {
    objc_opt_class();
    v12 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v12)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if (v8 && a4 == 3)
  {
    objc_opt_class();
    v13 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v13)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if (v8 && a4 == 4)
  {
    objc_opt_class();
    v14 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v14)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if (v8 && a4 == 5)
  {
    objc_opt_class();
    v15 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v15)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if (v8 && a4 == 6)
  {
    objc_opt_class();
    v16 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v16)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if (v8 && a4 == 7)
  {
    objc_opt_class();
    v17 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v17)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if (v8 && a4 == 8)
  {
    objc_opt_class();
    v18 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v18)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v11 = 0;
  if (!v8 || a4 != 9)
  {
    goto LABEL_37;
  }

  objc_opt_class();
  v19 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if ((v19 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_36:
  v20 = [v8 data];
  CCPBDataWriterWriteDataField();

LABEL_37:
  v21 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v21 error:a5];

  v22 = self;
LABEL_39:

  return v22;
}

@end