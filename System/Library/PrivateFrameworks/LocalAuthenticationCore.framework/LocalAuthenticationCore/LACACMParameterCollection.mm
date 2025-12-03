@interface LACACMParameterCollection
- (LACACMParameterCollection)init;
- (LACACMParameterCollection)initWithParameter:(id)parameter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)makeACMParameters;
- (id)parameterWithType:(unsigned int)type;
- (void)makeACMParameters;
@end

@implementation LACACMParameterCollection

- (LACACMParameterCollection)init
{
  v6.receiver = self;
  v6.super_class = LACACMParameterCollection;
  v2 = [(LACACMParameterCollection *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    parameters = v2->_parameters;
    v2->_parameters = v3;
  }

  return v2;
}

- (LACACMParameterCollection)initWithParameter:(id)parameter
{
  parameterCopy = parameter;
  v5 = [(LACACMParameterCollection *)self init];
  v6 = v5;
  if (v5)
  {
    [(LACACMParameterCollection *)v5 addParameter:parameterCopy];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = [(NSMutableArray *)self->_parameters mutableCopy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (id)parameterWithType:(unsigned int)type
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_parameters;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 type] == type)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)makeACMParameters
{
  v35 = *MEMORY[0x1E69E9840];
  if (![(LACACMParameterCollection *)self parameterCount])
  {
LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  v3 = 24 * [(NSMutableArray *)self->_parameters count];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = self->_parameters;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v5)
  {
    v8 = v3;
    goto LABEL_13;
  }

  v6 = v5;
  v7 = *v31;
  v8 = v3;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v31 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v30 + 1) + 8 * i);
      data = [v10 data];
      v12 = [data length];

      if (HIDWORD(v12))
      {
        v24 = LACLogDefault();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [(LACACMParameterCollection *)v10 makeACMParameters];
        }

        goto LABEL_24;
      }

      data2 = [v10 data];
      v14 = [data2 length];

      v15 = __CFADD__(v14, v8);
      v8 += v14;
      if (v15)
      {
        v24 = LACLogDefault();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [(LACACMParameterCollection *)v24 makeACMParameters];
        }

LABEL_24:

        goto LABEL_25;
      }
    }

    v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_13:

  v16 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v8];
  if ([(NSMutableArray *)self->_parameters count])
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = [(NSMutableArray *)self->_parameters objectAtIndexedSubscript:v19];
      data3 = [v20 data];
      v22 = [data3 length];

      v27 = 0;
      v28 = 0;
      v29 = 0;
      LODWORD(v27) = [v20 type];
      if (v22)
      {
        v28 = [v16 mutableBytes] + v3 + v18;
        LODWORD(v29) = v22;
        [v16 replaceBytesInRange:v17 withBytes:{24, &v27}];
        data4 = [v20 data];
        [v16 replaceBytesInRange:v18 + v3 withBytes:{v22, objc_msgSend(data4, "bytes")}];

        v18 += v22;
      }

      else
      {
        v28 = 0;
        LODWORD(v29) = 0;
        [v16 replaceBytesInRange:v17 withBytes:{24, &v27}];
      }

      ++v19;
      v17 += 24;
    }

    while (v19 < [(NSMutableArray *)self->_parameters count]);
  }

LABEL_26:
  v25 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)makeACMParameters
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "ACMParameter: %@ data length exceeds UINT32_MAX", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end