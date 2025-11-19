@interface CCToolKitToolComparisonPredicate
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolComparisonPredicate)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolComparisonPredicate)initWithProperty:(id)a3 comparison:(id)a4 rawGroupId:(id)a5 contentItemClass:(id)a6 error:(id *)a7;
- (CCToolKitToolComparisonPredicateComparison)comparison;
- (CCToolKitToolContentItemClassDescriptor)contentItemClass;
- (CCToolKitToolTypeDefinitionVersion1EntityProperty)property;
- (NSString)rawGroupId;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolComparisonPredicate

- (CCToolKitToolComparisonPredicate)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v23[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"property"];
    if (v9)
    {
      v23[0] = 0;
      v10 = [[CCToolKitToolTypeDefinitionVersion1EntityProperty alloc] initWithJSONDictionary:v9 error:v23];
      v11 = v23[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v19 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v9 = v10;
    }

    v12 = [v6 objectForKeyedSubscript:@"comparison"];
    if (v12)
    {
      v22 = 0;
      v13 = [[CCToolKitToolComparisonPredicateComparison alloc] initWithJSONDictionary:v12 error:&v22];
      v14 = v22;
      v10 = v14;
      if (!v13 || v14)
      {
        CCSetError();
        goto LABEL_20;
      }

      v12 = v13;
    }

    v10 = [v6 objectForKeyedSubscript:@"rawGroupId"];
    v15 = [v6 objectForKeyedSubscript:@"contentItemClass"];
    if (!v15)
    {
      v16 = 0;
      goto LABEL_18;
    }

    v13 = v15;
    v21 = 0;
    v16 = [[CCToolKitToolContentItemClassDescriptor alloc] initWithJSONDictionary:v15 error:&v21];
    v17 = v21;
    v18 = v17;
    if (v16 && !v17)
    {

LABEL_18:
      v19 = [[CCToolKitToolComparisonPredicate alloc] initWithProperty:v9 comparison:v12 rawGroupId:v10 contentItemClass:v16 error:a4];
      v13 = v16;
LABEL_21:

      goto LABEL_22;
    }

    CCSetError();

LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  CCSetError();
  v19 = 0;
LABEL_23:

  return v19;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_property)
  {
    v4 = [(CCToolKitToolComparisonPredicate *)self property];
    v5 = [v4 jsonDictionary];
    [v3 setObject:v5 forKeyedSubscript:@"property"];
  }

  if (self->_comparison)
  {
    v6 = [(CCToolKitToolComparisonPredicate *)self comparison];
    v7 = [v6 jsonDictionary];
    [v3 setObject:v7 forKeyedSubscript:@"comparison"];
  }

  if (self->_rawGroupId)
  {
    v8 = [(CCToolKitToolComparisonPredicate *)self rawGroupId];
    [v3 setObject:v8 forKeyedSubscript:@"rawGroupId"];
  }

  if (self->_contentItemClass)
  {
    v9 = [(CCToolKitToolComparisonPredicate *)self contentItemClass];
    v10 = [v9 jsonDictionary];
    [v3 setObject:v10 forKeyedSubscript:@"contentItemClass"];
  }

  v11 = [v3 copy];

  return v11;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v12 = v5;
  if (self->_property)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_property];
    v12[2](v12, v7);
  }

  if (self->_comparison)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_comparison];
    v12[2](v12, v8);
  }

  if (self->_rawGroupId)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_rawGroupId];
    v12[2](v12, v9);
  }

  v10 = v12;
  if (self->_contentItemClass)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_contentItemClass];
    v12[2](v12, v11);

    v10 = v12;
  }
}

- (CCToolKitToolContentItemClassDescriptor)contentItemClass
{
  v2 = [(CCToolKitToolContentItemClassDescriptor *)self->_contentItemClass copy];

  return v2;
}

- (NSString)rawGroupId
{
  v2 = [(NSString *)self->_rawGroupId copy];

  return v2;
}

- (CCToolKitToolComparisonPredicateComparison)comparison
{
  v2 = [(CCToolKitToolComparisonPredicateComparison *)self->_comparison copy];

  return v2;
}

- (CCToolKitToolTypeDefinitionVersion1EntityProperty)property
{
  v2 = [(CCToolKitToolTypeDefinitionVersion1EntityProperty *)self->_property copy];

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
    goto LABEL_38;
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
            goto LABEL_39;
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
        goto LABEL_39;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 2)
      {
        if (v23 == 3)
        {
          v31 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          rawGroupId = self->_rawGroupId;
          self->_rawGroupId = v31;
          goto LABEL_34;
        }

        if (v23 == 4)
        {
          v28 = [CCToolKitToolContentItemClassDescriptor alloc];
          rawGroupId = CCPBReaderReadDataNoCopy();
          v40 = 0;
          v26 = [(CCItemMessage *)v28 initWithData:rawGroupId error:&v40];
          v10 = v40;
          v27 = 40;
          goto LABEL_31;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v29 = [CCToolKitToolTypeDefinitionVersion1EntityProperty alloc];
          rawGroupId = CCPBReaderReadDataNoCopy();
          v42 = 0;
          v26 = [(CCItemMessage *)v29 initWithData:rawGroupId error:&v42];
          v10 = v42;
          v27 = 16;
          goto LABEL_31;
        }

        if (v23 == 2)
        {
          v24 = [CCToolKitToolComparisonPredicateComparison alloc];
          rawGroupId = CCPBReaderReadDataNoCopy();
          v41 = 0;
          v26 = [(CCItemMessage *)v24 initWithData:rawGroupId error:&v41];
          v10 = v41;
          v27 = 24;
LABEL_31:
          v30 = *(&self->super.super.isa + v27);
          *(&self->super.super.isa + v27) = v26;

          goto LABEL_34;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
        goto LABEL_35;
      }

      v32 = objc_opt_class();
      rawGroupId = NSStringFromClass(v32);
      v33 = *&v6[*v9];
      v10 = CCSkipFieldErrorForMessage();
LABEL_34:

LABEL_35:
      if (*&v6[*v7] < *&v6[*v8])
      {
        continue;
      }
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_40;
  }

LABEL_38:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v38 = 1;
    goto LABEL_42;
  }

LABEL_39:
  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  v36 = *&v6[*v9];
  v37 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_40:
  v38 = 0;
LABEL_42:

  return v38;
}

- (CCToolKitToolComparisonPredicate)initWithProperty:(id)a3 comparison:(id)a4 rawGroupId:(id)a5 contentItemClass:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_opt_new();
  if (v12)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v18 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_8;
    }

    v19 = [v12 data];
    CCPBDataWriterWriteDataField();

    if (!v13)
    {
LABEL_4:
      v20 = v18;
      if (v14)
      {
        goto LABEL_5;
      }

LABEL_12:
      v18 = v20;
      if (!v15)
      {
LABEL_15:
        v27 = [v16 immutableData];
        self = [(CCItemMessage *)self initWithData:v27 error:a7];

        v22 = self;
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v18 = 0;
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v23 = CCValidateIsInstanceOfExpectedClass();
  v20 = v18;

  if (!v23)
  {
    goto LABEL_16;
  }

  v24 = [v13 data];
  CCPBDataWriterWriteDataField();

  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  v21 = CCValidateIsInstanceOfExpectedClass();
  v18 = v20;

  if (v21)
  {
    CCPBDataWriterWriteStringField();
    if (!v15)
    {
      goto LABEL_15;
    }

LABEL_13:
    objc_opt_class();
    v29 = v18;
    v25 = CCValidateIsInstanceOfExpectedClass();
    v20 = v18;

    if (v25)
    {
      v26 = [v15 data];
      CCPBDataWriterWriteDataField();

      v18 = v20;
      goto LABEL_15;
    }

LABEL_16:
    CCSetError();
    v22 = 0;
    v18 = v20;
    goto LABEL_17;
  }

LABEL_8:
  CCSetError();
  v22 = 0;
LABEL_17:

  return v22;
}

@end