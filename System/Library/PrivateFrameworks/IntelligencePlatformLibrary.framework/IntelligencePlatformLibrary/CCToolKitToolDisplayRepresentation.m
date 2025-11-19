@interface CCToolKitToolDisplayRepresentation
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolDisplayRepresentation)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolDisplayRepresentation)initWithTitle:(id)a3 subtitle:(id)a4 altText:(id)a5 image:(id)a6 synonyms:(id)a7 snippetPluginModel:(id)a8 error:(id *)a9;
- (CCToolKitToolDisplayRepresentationAltText)altText;
- (CCToolKitToolDisplayRepresentationImage)image;
- (CCToolKitToolDisplayRepresentationSubtitle)subtitle;
- (CCToolKitToolPluginModelData)snippetPluginModel;
- (NSArray)synonyms;
- (NSString)title;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolDisplayRepresentation

- (CCToolKitToolDisplayRepresentation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v29[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"title"];
    v10 = [v6 objectForKeyedSubscript:@"subtitle"];
    if (v10)
    {
      v29[0] = 0;
      v11 = [[CCToolKitToolDisplayRepresentationSubtitle alloc] initWithJSONDictionary:v10 error:v29];
      v12 = v29[0];
      v13 = v12;
      if (!v11 || v12)
      {
        CCSetError();
        v18 = 0;
LABEL_28:

        goto LABEL_29;
      }

      v10 = v11;
    }

    v13 = [v6 objectForKeyedSubscript:@"altText"];
    if (v13)
    {
      v28 = 0;
      v14 = [[CCToolKitToolDisplayRepresentationAltText alloc] initWithJSONDictionary:v13 error:&v28];
      v15 = v28;
      v11 = v15;
      if (!v14 || v15)
      {
        CCSetError();
        v18 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v13 = v14;
    }

    v11 = [v6 objectForKeyedSubscript:@"image"];
    if (v11)
    {
      v27 = 0;
      v16 = [[CCToolKitToolDisplayRepresentationImage alloc] initWithJSONDictionary:v11 error:&v27];
      v17 = v27;
      v14 = v17;
      if (!v16 || v17)
      {
        CCSetError();
        v18 = 0;
        goto LABEL_26;
      }

      v24 = v9;

      v11 = v16;
    }

    else
    {
      v24 = v9;
    }

    v25 = self;
    v14 = [v6 objectForKeyedSubscript:@"synonyms"];
    v19 = [v6 objectForKeyedSubscript:@"snippetPluginModel"];
    if (v19)
    {
      v16 = v19;
      v26 = 0;
      v20 = [[CCToolKitToolPluginModelData alloc] initWithJSONDictionary:v19 error:&v26];
      v21 = v26;
      v22 = v21;
      if (!v20 || v21)
      {
        CCSetError();

        v18 = 0;
        v9 = v24;
        self = v25;
        goto LABEL_26;
      }
    }

    else
    {
      v20 = 0;
    }

    v9 = v24;
    v18 = [[CCToolKitToolDisplayRepresentation alloc] initWithTitle:v24 subtitle:v10 altText:v13 image:v11 synonyms:v14 snippetPluginModel:v20 error:a4];
    v16 = v20;
    self = v25;
LABEL_26:

    goto LABEL_27;
  }

  CCSetError();
  v18 = 0;
LABEL_29:

  return v18;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_title)
  {
    v4 = [(CCToolKitToolDisplayRepresentation *)self title];
    [v3 setObject:v4 forKeyedSubscript:@"title"];
  }

  if (self->_subtitle)
  {
    v5 = [(CCToolKitToolDisplayRepresentation *)self subtitle];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"subtitle"];
  }

  if (self->_altText)
  {
    v7 = [(CCToolKitToolDisplayRepresentation *)self altText];
    v8 = [v7 jsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"altText"];
  }

  if (self->_image)
  {
    v9 = [(CCToolKitToolDisplayRepresentation *)self image];
    v10 = [v9 jsonDictionary];
    [v3 setObject:v10 forKeyedSubscript:@"image"];
  }

  if (self->_synonyms)
  {
    v11 = [(CCToolKitToolDisplayRepresentation *)self synonyms];
    [v3 setObject:v11 forKeyedSubscript:@"synonyms"];
  }

  if (self->_snippetPluginModel)
  {
    v12 = [(CCToolKitToolDisplayRepresentation *)self snippetPluginModel];
    v13 = [v12 jsonDictionary];
    [v3 setObject:v13 forKeyedSubscript:@"snippetPluginModel"];
  }

  v14 = [v3 copy];

  return v14;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v14 = v5;
  if (self->_title)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_title];
    v14[2](v14, v7);
  }

  if (self->_subtitle)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_subtitle];
    v14[2](v14, v8);
  }

  if (self->_altText)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_altText];
    v14[2](v14, v9);
  }

  if (self->_image)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_image];
    v14[2](v14, v10);
  }

  if (self->_synonyms)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedStringValue:self->_synonyms];
    v14[2](v14, v11);
  }

  v12 = v14;
  if (self->_snippetPluginModel)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_snippetPluginModel];
    v14[2](v14, v13);

    v12 = v14;
  }
}

- (CCToolKitToolPluginModelData)snippetPluginModel
{
  v2 = [(CCToolKitToolPluginModelData *)self->_snippetPluginModel copy];

  return v2;
}

- (NSArray)synonyms
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_synonyms copyItems:1];

  return v2;
}

- (CCToolKitToolDisplayRepresentationImage)image
{
  v2 = [(CCToolKitToolDisplayRepresentationImage *)self->_image copy];

  return v2;
}

- (CCToolKitToolDisplayRepresentationAltText)altText
{
  v2 = [(CCToolKitToolDisplayRepresentationAltText *)self->_altText copy];

  return v2;
}

- (CCToolKitToolDisplayRepresentationSubtitle)subtitle
{
  v2 = [(CCToolKitToolDisplayRepresentationSubtitle *)self->_subtitle copy];

  return v2;
}

- (NSString)title
{
  v2 = [(NSString *)self->_title copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v46 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v46];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
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
        goto LABEL_47;
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
            goto LABEL_46;
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
        goto LABEL_46;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 3)
      {
        switch(v23)
        {
          case 4:
            v30 = [CCToolKitToolDisplayRepresentationImage alloc];
            title = CCPBReaderReadDataNoCopy();
            v48 = 0;
            v26 = [(CCItemMessage *)v30 initWithData:title error:&v48];
            v8 = v48;
            v27 = 40;
            goto LABEL_35;
          case 5:
            title = CCPBReaderReadStringNoCopy();
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            if (title)
            {
              [v9 addObject:title];
            }

            v8 = 0;
            goto LABEL_36;
          case 6:
            v28 = [CCToolKitToolPluginModelData alloc];
            title = CCPBReaderReadDataNoCopy();
            v47 = 0;
            v26 = [(CCItemMessage *)v28 initWithData:title error:&v47];
            v8 = v47;
            v27 = 56;
            goto LABEL_35;
        }
      }

      else
      {
        switch(v23)
        {
          case 1:
            v29 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            title = self->_title;
            self->_title = v29;
            goto LABEL_36;
          case 2:
            v31 = [CCToolKitToolDisplayRepresentationSubtitle alloc];
            title = CCPBReaderReadDataNoCopy();
            v50 = 0;
            v26 = [(CCItemMessage *)v31 initWithData:title error:&v50];
            v8 = v50;
            v27 = 24;
            goto LABEL_35;
          case 3:
            v24 = [CCToolKitToolDisplayRepresentationAltText alloc];
            title = CCPBReaderReadDataNoCopy();
            v49 = 0;
            v26 = [(CCItemMessage *)v24 initWithData:title error:&v49];
            v8 = v49;
            v27 = 32;
LABEL_35:
            v32 = *(&self->super.super.isa + v27);
            *(&self->super.super.isa + v27) = v26;

            goto LABEL_36;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v8 = 0;
        goto LABEL_37;
      }

      v33 = objc_opt_class();
      title = NSStringFromClass(v33);
      v34 = *&v5[*v10];
      v8 = CCSkipFieldErrorForMessage();
LABEL_36:

LABEL_37:
      if (*&v5[*v6] < *&v5[*v7])
      {
        continue;
      }

      goto LABEL_47;
    }
  }

  v9 = 0;
LABEL_46:
  v8 = 0;
LABEL_47:
  v35 = [v9 copy];
  synonyms = self->_synonyms;
  self->_synonyms = v35;

  if (v8)
  {
    CCSetError();
    v37 = 0;
    v38 = v46;
  }

  else
  {
    v39 = MEMORY[0x1E6993AA8];
    v38 = v46;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = *&v5[*v39];
      v43 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }
  }

  return v37;
}

- (CCToolKitToolDisplayRepresentation)initWithTitle:(id)a3 subtitle:(id)a4 altText:(id)a5 image:(id)a6 synonyms:(id)a7 snippetPluginModel:(id)a8 error:(id *)a9
{
  v57 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = objc_opt_new();
  if (!v15)
  {
    v23 = 0;
LABEL_5:
    v46 = v20;
    if (v16)
    {
      objc_opt_class();
      v54 = v23;
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v25 = v23;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_30;
      }

      v26 = [v16 data];
      CCPBDataWriterWriteDataField();

      if (!v17)
      {
LABEL_8:
        v23 = v25;
        if (v18)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v25 = v23;
      if (!v17)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    v53 = v25;
    v30 = CCValidateIsInstanceOfExpectedClass();
    v23 = v25;

    if (!v30)
    {
      goto LABEL_31;
    }

    v31 = [v17 data];
    CCPBDataWriterWriteDataField();

    if (v18)
    {
LABEL_9:
      objc_opt_class();
      v52 = v23;
      v27 = CCValidateIsInstanceOfExpectedClass();
      v25 = v23;

      if (v27)
      {
        v28 = [v18 data];
        CCPBDataWriterWriteDataField();

        if (!v19)
        {
LABEL_11:
          v23 = v25;
LABEL_26:
          v20 = v46;
          if (!v46)
          {
LABEL_29:
            v41 = [v21 immutableData];
            self = [(CCItemMessage *)self initWithData:v41 error:a9];

            v29 = self;
            goto LABEL_33;
          }

          objc_opt_class();
          v39 = CCValidateIsInstanceOfExpectedClass();
          v25 = v23;

          if (v39)
          {
            v40 = [v46 data];
            CCPBDataWriterWriteDataField();

            v23 = v25;
            v20 = v46;
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        goto LABEL_17;
      }

LABEL_30:
      CCSetError();
      v29 = 0;
      v23 = v25;
LABEL_32:
      v20 = v46;
      goto LABEL_33;
    }

LABEL_16:
    v25 = v23;
    if (!v19)
    {
      goto LABEL_11;
    }

LABEL_17:
    objc_opt_class();
    v51 = v25;
    v32 = CCValidateArrayValues();
    v23 = v25;

    if (v32)
    {
      v44 = v19;
      v45 = self;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v33 = v19;
      v34 = [v33 countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v48;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v48 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v47 + 1) + 8 * i);
            CCPBDataWriterWriteStringField();
          }

          v35 = [v33 countByEnumeratingWithState:&v47 objects:v56 count:16];
        }

        while (v35);
      }

      v19 = v44;
      self = v45;
      goto LABEL_26;
    }

LABEL_31:
    CCSetError();
    v29 = 0;
    goto LABEL_32;
  }

  objc_opt_class();
  v55 = 0;
  v22 = CCValidateIsInstanceOfExpectedClass();
  v23 = 0;
  if (v22)
  {
    CCPBDataWriterWriteStringField();
    goto LABEL_5;
  }

  CCSetError();
  v29 = 0;
LABEL_33:

  v42 = *MEMORY[0x1E69E9840];
  return v29;
}

@end