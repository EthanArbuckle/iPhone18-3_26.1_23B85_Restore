@interface _CPStruct
- (BOOL)getStringKeyFields:(id *)a3 forKey:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_CPStruct)initWithFacade:(id)a3;
- (void)setIntKeyFields:(id)a3;
- (void)setStringKeyFields:(id)a3;
- (void)setStringKeyFields:(id)a3 forKey:(id)a4;
- (void)writeTo:(id)a3;
@end

@implementation _CPStruct

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_CPStruct *)self stringKeyFields];
  v6 = [v4 stringKeyFields];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_CPStruct *)self stringKeyFields];
  if (v7)
  {
    v8 = v7;
    v9 = [(_CPStruct *)self stringKeyFields];
    v10 = [v4 stringKeyFields];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_CPStruct *)self intKeyFields];
  v6 = [v4 intKeyFields];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_CPStruct *)self intKeyFields];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_CPStruct *)self intKeyFields];
    v15 = [v4 intKeyFields];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)setIntKeyFields:(id)a3
{
  v4 = [a3 mutableCopy];
  intKeyFields = self->_intKeyFields;
  self->_intKeyFields = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setStringKeyFields:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_stringKeyFields)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    stringKeyFields = self->_stringKeyFields;
    self->_stringKeyFields = v8;
  }

  v10 = v7;
  v11 = v6;
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

- (BOOL)getStringKeyFields:(id *)a3 forKey:(id)a4
{
  v5 = [(NSDictionary *)self->_stringKeyFields objectForKeyedSubscript:a4];
  if (a3 && v5)
  {
    v5 = v5;
    *a3 = v5;
  }

  v6 = v5 != 0;

  return v6;
}

- (void)setStringKeyFields:(id)a3
{
  v4 = [a3 mutableCopy];
  stringKeyFields = self->_stringKeyFields;
  self->_stringKeyFields = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_CPStruct)initWithFacade:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CPStruct *)self init];
  if (v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v4;
    v6 = v4;
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
    v4 = v21;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end