@interface CCSetDescriptor
+ (id)localeIdentifierWithValue:(id)a3 error:(id *)a4;
+ (id)setDescriptorFromDescriptor:(id)a3 error:(id *)a4;
+ (id)setDescriptorsFromEncodedString:(id)a3 error:(id *)a4;
+ (id)setDescriptorsFromResourceDescriptors:(id)a3 error:(id *)a4;
+ (id)sourceIdentifierWithValue:(id)a3 error:(id *)a4;
@end

@implementation CCSetDescriptor

+ (id)sourceIdentifierWithValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithKey:@"sourceIdentifier" value:v6 error:a4];

  return v7;
}

+ (id)localeIdentifierWithValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithKey:@"localeIdentifier" value:v6 error:a4];

  return v7;
}

+ (id)setDescriptorFromDescriptor:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [CCSetDescriptor alloc];
  v7 = [v5 key];
  v8 = [v5 value];

  v9 = [(BMResourceDescriptor *)v6 initWithKey:v7 value:v8 error:a4];

  return v9;
}

+ (id)setDescriptorsFromResourceDescriptors:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v20 = 0;
        v13 = [CCSetDescriptor setDescriptorFromDescriptor:v12 error:&v20];
        v14 = v20;
        if (v13)
        {
          v15 = v14 == 0;
        }

        else
        {
          v15 = 0;
        }

        if (!v15)
        {
          v16 = v14;
          CCSetError(a4, v14);

          v17 = 0;
          goto LABEL_14;
        }

        [v6 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v17 = [v6 copy];
LABEL_14:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)setDescriptorsFromEncodedString:(id)a3 error:(id *)a4
{
  v5 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = objc_opt_new();
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__CCSetDescriptor_setDescriptorsFromEncodedString_error___block_invoke;
  v9[3] = &unk_1E7C8BAC8;
  v9[4] = &v10;
  v9[5] = &v16;
  if ([MEMORY[0x1E698E9F0] enumerateDescriptorsFromEncodedString:v5 error:a4 usingBlock:v9])
  {
    v6 = v17[5];
    if (!v6)
    {
      CCSetError(a4, v11[5]);
      v6 = v17[5];
    }

    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __57__CCSetDescriptor_setDescriptorsFromEncodedString_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  v4 = [CCSetDescriptor setDescriptorFromDescriptor:a2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  if (v4)
  {
    [v6 addObject:v4];
  }

  else
  {
    *(v5 + 40) = 0;
  }
}

@end