@interface _CPStruct
- (BOOL)getStringKeyFields:(id *)fields forKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (_CPStruct)initWithFacade:(id)facade;
- (void)setIntKeyFields:(id)fields;
- (void)setStringKeyFields:(id)fields;
- (void)setStringKeyFields:(id)fields forKey:(id)key;
- (void)writeTo:(id)to;
@end

@implementation _CPStruct

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  stringKeyFields = [(_CPStruct *)self stringKeyFields];
  stringKeyFields2 = [equalCopy stringKeyFields];
  if ((stringKeyFields != 0) == (stringKeyFields2 == 0))
  {
    goto LABEL_11;
  }

  stringKeyFields3 = [(_CPStruct *)self stringKeyFields];
  if (stringKeyFields3)
  {
    v8 = stringKeyFields3;
    stringKeyFields4 = [(_CPStruct *)self stringKeyFields];
    stringKeyFields5 = [equalCopy stringKeyFields];
    v11 = [stringKeyFields4 isEqual:stringKeyFields5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  stringKeyFields = [(_CPStruct *)self intKeyFields];
  stringKeyFields2 = [equalCopy intKeyFields];
  if ((stringKeyFields != 0) != (stringKeyFields2 == 0))
  {
    intKeyFields = [(_CPStruct *)self intKeyFields];
    if (!intKeyFields)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = intKeyFields;
    intKeyFields2 = [(_CPStruct *)self intKeyFields];
    intKeyFields3 = [equalCopy intKeyFields];
    v16 = [intKeyFields2 isEqual:intKeyFields3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v31 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_stringKeyFields;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v24 = 0;
        PBDataWriterPlaceMark();
        PBDataWriterWriteStringField();
        v11 = [(NSDictionary *)self->_stringKeyFields objectForKeyedSubscript:v10];
        PBDataWriterWriteSubmessage();

        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_intKeyFields;
  v13 = [(NSDictionary *)v12 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        v24 = 0;
        PBDataWriterPlaceMark();
        [v17 intValue];
        PBDataWriterWriteInt32Field();
        v18 = [(NSDictionary *)self->_intKeyFields objectForKeyedSubscript:v17];
        PBDataWriterWriteSubmessage();

        PBDataWriterRecallMark();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSDictionary *)v12 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setIntKeyFields:(id)fields
{
  v4 = [fields mutableCopy];
  intKeyFields = self->_intKeyFields;
  self->_intKeyFields = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setStringKeyFields:(id)fields forKey:(id)key
{
  fieldsCopy = fields;
  keyCopy = key;
  if (!self->_stringKeyFields)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    stringKeyFields = self->_stringKeyFields;
    self->_stringKeyFields = dictionary;
  }

  v10 = keyCopy;
  v11 = fieldsCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSDictionary *)self->_stringKeyFields setObject:v11 forKey:v10];
    }
  }
}

- (BOOL)getStringKeyFields:(id *)fields forKey:(id)key
{
  v5 = [(NSDictionary *)self->_stringKeyFields objectForKeyedSubscript:key];
  if (fields && v5)
  {
    v5 = v5;
    *fields = v5;
  }

  v6 = v5 != 0;

  return v6;
}

- (void)setStringKeyFields:(id)fields
{
  v4 = [fields mutableCopy];
  stringKeyFields = self->_stringKeyFields;
  self->_stringKeyFields = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_CPStruct)initWithFacade:(id)facade
{
  v31 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_CPStruct *)self init];
  if (v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = facadeCopy;
    v6 = facadeCopy;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          v12 = [_CPValue alloc];
          v13 = [v6 objectForKeyedSubscript:v11];
          v14 = [(_CPValue *)v12 initWithFacade:v13];

          if (v14)
          {
            if (![(_CPValue *)v14 whichKind])
            {
              if (PARLogHandleForCategory_onceToken_1456 != -1)
              {
                dispatch_once(&PARLogHandleForCategory_onceToken_1456, &__block_literal_global_1457);
              }

              v15 = PARLogHandleForCategory_logHandles_2_1458;
              if (os_log_type_enabled(PARLogHandleForCategory_logHandles_2_1458, OS_LOG_TYPE_DEBUG))
              {
                v16 = v15;
                v17 = [v6 objectForKeyedSubscript:v11];
                *buf = 138412546;
                v27 = v11;
                v28 = 2112;
                v29 = v17;
                _os_log_debug_impl(&dword_1B1064000, v16, OS_LOG_TYPE_DEBUG, "dictionary entry (%@,%@) could not be translated correctly.", buf, 0x16u);
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(_CPStruct *)v5 setStringKeyFields:v14 forKey:v11];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                -[_CPStruct setIntKeyFields:forKey:](v5, "setIntKeyFields:forKey:", v14, [v11 intValue]);
              }
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v8);
    }

    v18 = v5;
    facadeCopy = v21;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end