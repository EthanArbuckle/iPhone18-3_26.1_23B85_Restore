@interface CCToolKitToolRestrictionContextInSetValueSet
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolRestrictionContextInSetValueSet)initWithBundleIdentifier:(id)a3 kind:(id)a4 kindType:(unsigned int)a5 error:(id *)a6;
- (CCToolKitToolRestrictionContextInSetValueSet)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolRestrictionContextInSetValueSetContentPropertyPossibleValues)contentPropertyPossibleValues;
- (CCToolKitToolRestrictionContextInSetValueSetDynamicEnumeration)dynamicEnumeration;
- (CCToolKitToolRestrictionContextInSetValueSetDynamicTriggerEnumeration)dynamicEnumerationOnTrigger;
- (CCToolKitToolRestrictionContextInSetValueSetLinkQuery)linkQuery;
- (CCToolKitToolRestrictionContextInSetValueSetLinkQuery)linkQueryOnParameter;
- (NSString)bundleIdentifier;
- (NSString)standaloneLinkQuery;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolRestrictionContextInSetValueSet

- (CCToolKitToolRestrictionContextInSetValueSet)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v37[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"bundleIdentifier"];
    v10 = [v6 objectForKeyedSubscript:@"dynamicEnumeration"];
    if (v10)
    {
      v37[0] = 0;
      v11 = [[CCToolKitToolRestrictionContextInSetValueSetDynamicEnumeration alloc] initWithJSONDictionary:v10 error:v37];
      v12 = v37[0];
      v13 = v12;
      if (!v11 || v12)
      {
        CCSetError();
        v16 = 0;
LABEL_47:

        goto LABEL_48;
      }

      v10 = v11;
    }

    v13 = [v6 objectForKeyedSubscript:@"contentPropertyPossibleValues"];
    if (v13)
    {
      v36 = 0;
      v14 = [[CCToolKitToolRestrictionContextInSetValueSetContentPropertyPossibleValues alloc] initWithJSONDictionary:v13 error:&v36];
      v15 = v36;
      v11 = v15;
      if (!v14 || v15)
      {
        CCSetError();
        v16 = 0;
LABEL_46:

        goto LABEL_47;
      }

      v31 = self;

      v13 = v14;
    }

    else
    {
      v31 = self;
    }

    v32 = v9;
    v11 = [v6 objectForKeyedSubscript:@"linkQuery"];
    if (v11)
    {
      v35 = 0;
      v17 = [[CCToolKitToolRestrictionContextInSetValueSetLinkQuery alloc] initWithJSONDictionary:v11 error:&v35];
      v18 = v35;
      v14 = v18;
      if (!v17 || v18)
      {
        CCSetError();
        v16 = 0;
        self = v31;
LABEL_45:

        v9 = v32;
        goto LABEL_46;
      }

      v11 = v17;
    }

    v14 = [v6 objectForKeyedSubscript:@"standaloneLinkQuery"];
    v17 = [v6 objectForKeyedSubscript:@"linkQueryOnParameter"];
    if (v17)
    {
      v34 = 0;
      v19 = [[CCToolKitToolRestrictionContextInSetValueSetLinkQuery alloc] initWithJSONDictionary:v17 error:&v34];
      v20 = v34;
      if (!v19 || v20)
      {
        v30 = v20;
        CCSetError();
        goto LABEL_31;
      }

      v17 = v19;
    }

    v21 = [v6 objectForKeyedSubscript:@"dynamicEnumerationOnTrigger"];
    if (!v21)
    {
LABEL_25:
      v30 = v21;
      if (v10)
      {
        v23 = v10;
        v24 = 2;
      }

      else
      {
        v24 = 0;
      }

      v19 = v10;
      if (v13)
      {
        v19 = v13;

        v24 = 3;
      }

      if (v11)
      {
        v26 = v11;

        v24 = 4;
        v19 = v26;
      }

      if (v14)
      {
        v27 = v14;

        v24 = 5;
        v19 = v27;
      }

      if (v17)
      {
        v28 = v17;

        v24 = 6;
        v19 = v28;
      }

      if (v30)
      {
        v29 = v30;

        v24 = 7;
        v19 = v29;
      }

      v16 = [[CCToolKitToolRestrictionContextInSetValueSet alloc] initWithBundleIdentifier:v32 kind:v19 kindType:v24 error:a4];
      goto LABEL_44;
    }

    v33 = 0;
    v30 = v21;
    v21 = [[CCToolKitToolRestrictionContextInSetValueSetDynamicTriggerEnumeration alloc] initWithJSONDictionary:v21 error:&v33];
    v22 = v33;
    v19 = v22;
    if (v21 && !v22)
    {

      goto LABEL_25;
    }

    CCSetError();

LABEL_31:
    v16 = 0;
LABEL_44:
    self = v31;

    goto LABEL_45;
  }

  CCSetError();
  v16 = 0;
LABEL_48:

  return v16;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_bundleIdentifier)
  {
    v4 = [(CCToolKitToolRestrictionContextInSetValueSet *)self bundleIdentifier];
    [v3 setObject:v4 forKeyedSubscript:@"bundleIdentifier"];
  }

  kindType = self->_kindType;
  if (kindType == 2)
  {
    if (!self->_dynamicEnumeration)
    {
      goto LABEL_21;
    }

    v6 = [(CCToolKitToolRestrictionContextInSetValueSet *)self dynamicEnumeration];
    v7 = [v6 jsonDictionary];
    [v3 setObject:v7 forKeyedSubscript:@"dynamicEnumeration"];

    kindType = self->_kindType;
  }

  if (kindType == 3)
  {
    if (!self->_contentPropertyPossibleValues)
    {
      goto LABEL_21;
    }

    v8 = [(CCToolKitToolRestrictionContextInSetValueSet *)self contentPropertyPossibleValues];
    v9 = [v8 jsonDictionary];
    [v3 setObject:v9 forKeyedSubscript:@"contentPropertyPossibleValues"];

    kindType = self->_kindType;
  }

  if (kindType == 4)
  {
    if (!self->_linkQuery)
    {
      goto LABEL_21;
    }

    v10 = [(CCToolKitToolRestrictionContextInSetValueSet *)self linkQuery];
    v11 = [v10 jsonDictionary];
    [v3 setObject:v11 forKeyedSubscript:@"linkQuery"];

    kindType = self->_kindType;
  }

  if (kindType == 5)
  {
    if (!self->_standaloneLinkQuery)
    {
      goto LABEL_21;
    }

    v12 = [(CCToolKitToolRestrictionContextInSetValueSet *)self standaloneLinkQuery];
    [v3 setObject:v12 forKeyedSubscript:@"standaloneLinkQuery"];

    kindType = self->_kindType;
  }

  if (kindType == 6)
  {
    if (!self->_linkQueryOnParameter)
    {
      goto LABEL_21;
    }

    v13 = [(CCToolKitToolRestrictionContextInSetValueSet *)self linkQueryOnParameter];
    v14 = [v13 jsonDictionary];
    [v3 setObject:v14 forKeyedSubscript:@"linkQueryOnParameter"];

    kindType = self->_kindType;
  }

  if (kindType == 7 && self->_dynamicEnumerationOnTrigger)
  {
    v15 = [(CCToolKitToolRestrictionContextInSetValueSet *)self dynamicEnumerationOnTrigger];
    v16 = [v15 jsonDictionary];
    [v3 setObject:v16 forKeyedSubscript:@"dynamicEnumerationOnTrigger"];
  }

LABEL_21:
  v17 = [v3 copy];

  return v17;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v15 = v5;
  if (self->_bundleIdentifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_bundleIdentifier];
    v15[2](v15, v7);
  }

  if (self->_dynamicEnumeration)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_dynamicEnumeration];
    v15[2](v15, v8);
  }

  if (self->_contentPropertyPossibleValues)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_contentPropertyPossibleValues];
    v15[2](v15, v9);
  }

  if (self->_linkQuery)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_linkQuery];
    v15[2](v15, v10);
  }

  if (self->_standaloneLinkQuery)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_standaloneLinkQuery];
    v15[2](v15, v11);
  }

  if (self->_linkQueryOnParameter)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_linkQueryOnParameter];
    v15[2](v15, v12);
  }

  v13 = v15;
  if (self->_dynamicEnumerationOnTrigger)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_dynamicEnumerationOnTrigger];
    v15[2](v15, v14);

    v13 = v15;
  }
}

- (CCToolKitToolRestrictionContextInSetValueSetDynamicTriggerEnumeration)dynamicEnumerationOnTrigger
{
  v2 = [(CCToolKitToolRestrictionContextInSetValueSetDynamicTriggerEnumeration *)self->_dynamicEnumerationOnTrigger copy];

  return v2;
}

- (CCToolKitToolRestrictionContextInSetValueSetLinkQuery)linkQueryOnParameter
{
  v2 = [(CCToolKitToolRestrictionContextInSetValueSetLinkQuery *)self->_linkQueryOnParameter copy];

  return v2;
}

- (NSString)standaloneLinkQuery
{
  v2 = [(NSString *)self->_standaloneLinkQuery copy];

  return v2;
}

- (CCToolKitToolRestrictionContextInSetValueSetLinkQuery)linkQuery
{
  v2 = [(CCToolKitToolRestrictionContextInSetValueSetLinkQuery *)self->_linkQuery copy];

  return v2;
}

- (CCToolKitToolRestrictionContextInSetValueSetContentPropertyPossibleValues)contentPropertyPossibleValues
{
  v2 = [(CCToolKitToolRestrictionContextInSetValueSetContentPropertyPossibleValues *)self->_contentPropertyPossibleValues copy];

  return v2;
}

- (CCToolKitToolRestrictionContextInSetValueSetDynamicEnumeration)dynamicEnumeration
{
  v2 = [(CCToolKitToolRestrictionContextInSetValueSetDynamicEnumeration *)self->_dynamicEnumeration copy];

  return v2;
}

- (NSString)bundleIdentifier
{
  v2 = [(NSString *)self->_bundleIdentifier copy];

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
    goto LABEL_52;
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
            goto LABEL_53;
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
        goto LABEL_53;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 3)
      {
        if (v23 <= 5)
        {
          if (v23 != 4)
          {
            if (v23 == 5)
            {
              v24 = CCPBReaderReadStringNoCopy();
              standaloneLinkQuery = self->_standaloneLinkQuery;
              self->_standaloneLinkQuery = v24;

              dynamicEnumeration = self->_dynamicEnumeration;
              self->_dynamicEnumeration = 0;

              contentPropertyPossibleValues = self->_contentPropertyPossibleValues;
              self->_contentPropertyPossibleValues = 0;

              linkQuery = self->_linkQuery;
              self->_linkQuery = 0;

              self->_kindType = 5;
              linkQueryOnParameter = self->_linkQueryOnParameter;
              self->_linkQueryOnParameter = 0;

              dynamicEnumerationOnTrigger = self->_dynamicEnumerationOnTrigger;
              self->_dynamicEnumerationOnTrigger = 0;
LABEL_36:

LABEL_37:
              v10 = 0;
              goto LABEL_49;
            }

            goto LABEL_38;
          }

          v49 = [CCToolKitToolRestrictionContextInSetValueSetLinkQuery alloc];
          v50 = CCPBReaderReadDataNoCopy();
          v80 = 0;
          v51 = [(CCItemMessage *)v49 initWithData:v50 error:&v80];
          v10 = v80;
          v52 = self->_linkQuery;
          self->_linkQuery = v51;

          if (v10)
          {
            goto LABEL_49;
          }

          v53 = self->_dynamicEnumeration;
          self->_dynamicEnumeration = 0;

          v54 = self->_contentPropertyPossibleValues;
          self->_contentPropertyPossibleValues = 0;

          self->_kindType = 4;
          goto LABEL_47;
        }

        if (v23 == 6)
        {
          v55 = [CCToolKitToolRestrictionContextInSetValueSetLinkQuery alloc];
          v56 = CCPBReaderReadDataNoCopy();
          v79 = 0;
          v57 = [(CCItemMessage *)v55 initWithData:v56 error:&v79];
          v10 = v79;
          v58 = self->_linkQueryOnParameter;
          self->_linkQueryOnParameter = v57;

          if (v10)
          {
            goto LABEL_49;
          }

          v59 = self->_dynamicEnumeration;
          self->_dynamicEnumeration = 0;

          v60 = self->_contentPropertyPossibleValues;
          self->_contentPropertyPossibleValues = 0;

          v61 = self->_linkQuery;
          self->_linkQuery = 0;

          v62 = self->_standaloneLinkQuery;
          self->_standaloneLinkQuery = 0;

          self->_kindType = 6;
          goto LABEL_48;
        }

        if (v23 == 7)
        {
          v36 = [CCToolKitToolRestrictionContextInSetValueSetDynamicTriggerEnumeration alloc];
          v37 = CCPBReaderReadDataNoCopy();
          v78 = 0;
          v38 = [(CCItemMessage *)v36 initWithData:v37 error:&v78];
          v10 = v78;
          v39 = self->_dynamicEnumerationOnTrigger;
          self->_dynamicEnumerationOnTrigger = v38;

          if (!v10)
          {
            v40 = self->_dynamicEnumeration;
            self->_dynamicEnumeration = 0;

            v41 = self->_contentPropertyPossibleValues;
            self->_contentPropertyPossibleValues = 0;

            v42 = self->_linkQuery;
            self->_linkQuery = 0;

            v43 = self->_standaloneLinkQuery;
            self->_standaloneLinkQuery = 0;

            v44 = self->_linkQueryOnParameter;
            self->_linkQueryOnParameter = 0;

            self->_kindType = 7;
          }

          goto LABEL_49;
        }

LABEL_38:
        if (CCPBReaderSkipValueWithTag())
        {
          goto LABEL_37;
        }

        v46 = objc_opt_class();
        v47 = NSStringFromClass(v46);
        v48 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();

LABEL_49:
        if (*&v6[*v7] < *&v6[*v8])
        {
          continue;
        }

        break;
      }

      switch(v23)
      {
        case 1:
          v45 = CCPBReaderReadStringNoCopy();
          dynamicEnumerationOnTrigger = self->_bundleIdentifier;
          self->_bundleIdentifier = v45;
          goto LABEL_36;
        case 2:
          v63 = [CCToolKitToolRestrictionContextInSetValueSetDynamicEnumeration alloc];
          v64 = CCPBReaderReadDataNoCopy();
          v82 = 0;
          v65 = [(CCItemMessage *)v63 initWithData:v64 error:&v82];
          v10 = v82;
          v66 = self->_dynamicEnumeration;
          self->_dynamicEnumeration = v65;

          if (v10)
          {
            goto LABEL_49;
          }

          self->_kindType = 2;
          v67 = self->_contentPropertyPossibleValues;
          self->_contentPropertyPossibleValues = 0;

          break;
        case 3:
          v31 = [CCToolKitToolRestrictionContextInSetValueSetContentPropertyPossibleValues alloc];
          v32 = CCPBReaderReadDataNoCopy();
          v81 = 0;
          v33 = [(CCItemMessage *)v31 initWithData:v32 error:&v81];
          v10 = v81;
          v34 = self->_contentPropertyPossibleValues;
          self->_contentPropertyPossibleValues = v33;

          if (v10)
          {
            goto LABEL_49;
          }

          v35 = self->_dynamicEnumeration;
          self->_dynamicEnumeration = 0;

          self->_kindType = 3;
          break;
        default:
          goto LABEL_38;
      }

      v68 = self->_linkQuery;
      self->_linkQuery = 0;

LABEL_47:
      v69 = self->_standaloneLinkQuery;
      self->_standaloneLinkQuery = 0;

      v70 = self->_linkQueryOnParameter;
      self->_linkQueryOnParameter = 0;

LABEL_48:
      v71 = self->_dynamicEnumerationOnTrigger;
      self->_dynamicEnumerationOnTrigger = 0;

      goto LABEL_49;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_54;
  }

LABEL_52:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v76 = 1;
    goto LABEL_56;
  }

LABEL_53:
  v72 = objc_opt_class();
  v73 = NSStringFromClass(v72);
  v74 = *&v6[*v9];
  v75 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_54:
  v76 = 0;
LABEL_56:

  return v76;
}

- (CCToolKitToolRestrictionContextInSetValueSet)initWithBundleIdentifier:(id)a3 kind:(id)a4 kindType:(unsigned int)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = objc_opt_new();
  if (!v10)
  {
    v14 = 0;
    if (!v11)
    {
      goto LABEL_9;
    }

LABEL_6:
    if (a5 == 2)
    {
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v16 = v14;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

LABEL_9:
    if (v11 && a5 == 3)
    {
      objc_opt_class();
      v17 = CCValidateIsInstanceOfExpectedClass();
      v16 = v14;

      if (v17)
      {
        goto LABEL_17;
      }

LABEL_30:
      CCSetError();
      v18 = 0;
      v14 = v16;
      goto LABEL_31;
    }

    if (!v11 || a5 != 4)
    {
      if (v11 && a5 == 5)
      {
        objc_opt_class();
        v22 = CCValidateIsInstanceOfExpectedClass();
        v16 = v14;

        if (v22)
        {
          CCPBDataWriterWriteStringField();
          goto LABEL_18;
        }
      }

      else if (v11 && a5 == 6)
      {
        objc_opt_class();
        v23 = CCValidateIsInstanceOfExpectedClass();
        v16 = v14;

        if (v23)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (!v11 || a5 != 7)
        {
          v16 = v14;
          goto LABEL_18;
        }

        objc_opt_class();
        v24 = CCValidateIsInstanceOfExpectedClass();
        v16 = v14;

        if (v24)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_30;
    }

    objc_opt_class();
    v19 = CCValidateIsInstanceOfExpectedClass();
    v16 = v14;

    if (!v19)
    {
      goto LABEL_30;
    }

LABEL_17:
    v20 = [v11 data];
    CCPBDataWriterWriteDataField();

LABEL_18:
    v21 = [v12 immutableData];
    self = [(CCItemMessage *)self initWithData:v21 error:a6];

    v14 = v16;
    v18 = self;
    goto LABEL_31;
  }

  objc_opt_class();
  v13 = CCValidateIsInstanceOfExpectedClass();
  v14 = 0;
  if (v13)
  {
    CCPBDataWriterWriteStringField();
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  CCSetError();
  v18 = 0;
LABEL_31:

  return v18;
}

@end