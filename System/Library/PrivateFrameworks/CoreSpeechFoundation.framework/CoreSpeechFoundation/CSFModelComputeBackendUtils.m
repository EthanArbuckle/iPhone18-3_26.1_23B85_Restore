@interface CSFModelComputeBackendUtils
+ (id)_flattenArray:(id)a3;
+ (id)getShapeWithTensors:(id)a3;
+ (int64_t)getRankOfTensor:(id)a3;
+ (unint64_t)_getElementSizeFromShape:(id)a3;
@end

@implementation CSFModelComputeBackendUtils

+ (unint64_t)_getElementSizeFromShape:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      v8 = 1;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v8 *= [*(*(&v12 + 1) + 8 * i) unsignedLongValue];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)_flattenArray:(id)a3
{
  v4 = a3;
  v5 = [a1 getShapeWithTensors:v4];
  if ([v5 count] == 1)
  {
    v6 = v4;
  }

  else if ([v5 count] == 2)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [v5 firstObject];
    v9 = [v8 unsignedLongValue];

    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = [v4 objectAtIndexedSubscript:v10];
        v12 = [v5 objectAtIndexedSubscript:1];
        v13 = [v12 unsignedLongValue];

        if (v13)
        {
          v14 = 0;
          do
          {
            v15 = [v11 objectAtIndexedSubscript:v14];
            [v7 addObject:v15];

            ++v14;
            v16 = [v5 objectAtIndexedSubscript:1];
            v17 = [v16 unsignedLongValue];
          }

          while (v14 < v17);
        }

        ++v10;
        v18 = [v5 firstObject];
        v19 = [v18 unsignedLongValue];
      }

      while (v10 < v19);
    }

    v6 = [v7 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)getRankOfTensor:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 firstObject];

    if (v5)
    {
      v6 = [v4 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v5 = 1;
      }

      else
      {
        v8 = [v4 firstObject];
        objc_opt_class();
        v9 = objc_opt_isKindOfClass();

        if ((v9 & 1) == 0)
        {
          goto LABEL_9;
        }

        v10 = [v4 firstObject];
        v11 = [v10 firstObject];
        objc_opt_class();
        v12 = objc_opt_isKindOfClass();

        if (v12)
        {
          v5 = 2;
        }

        else
        {
LABEL_9:
          v13 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136315138;
            v17 = "+[CSFModelComputeBackendUtils getRankOfTensor:]";
            _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s No support for tensor with rank > 2", &v16, 0xCu);
          }

          v5 = -1;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)getShapeWithTensors:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_12;
  }

  v5 = [v3 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    v23[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
LABEL_9:

    goto LABEL_13;
  }

  v9 = [v4 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v10 = [v4 firstObject];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v12 = [v4 firstObject];
  v13 = [v12 firstObject];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if (v14)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = [v4 firstObject];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    [v7 addObject:v16];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
    [v7 addObject:v17];

    v8 = [v7 copy];
    goto LABEL_9;
  }

  v18 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v21 = 136315138;
    v22 = "+[CSFModelComputeBackendUtils getShapeWithTensors:]";
    _os_log_error_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_ERROR, "%s input tensor not valid, rank > 3 tensor is not supported", &v21, 0xCu);
  }

LABEL_12:
  v8 = 0;
LABEL_13:

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

@end