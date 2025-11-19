@interface CCItemMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)recursivelyEnumerateFieldsWithError:(id *)a3 forParentField:(id)a4 isRepeatedSubMessage:(BOOL)a5 repeatedSubMessageIndex:(unsigned int)a6 usingBlock:(id)a7;
- (CCItemMessage)initWithData:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)jsonDictionary;
- (unint64_t)hash;
@end

@implementation CCItemMessage

- (CCItemMessage)initWithData:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(CCItemMessage *)self isMemberOfClass:objc_opt_class()])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Cannot use base classes directly. Please use CCItemMessage"];
  }

  v22 = 0;
  v8 = CCValidateNonNilField(@"data", v7, &v22);
  v9 = v22;
  if (!v8)
  {
    CCSetError(a4, v9);

LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  v10 = objc_opt_class();
  v21 = v9;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass(@"data", v7, v10, &v21);
  v12 = v21;

  if ((IsInstanceOfExpectedClass & 1) == 0)
  {
    CCSetError(a4, v12);

    goto LABEL_13;
  }

  v20.receiver = self;
  v20.super_class = CCItemMessage;
  v13 = [(CCItemMessage *)&v20 init];
  self = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_innerData, a3);
  }

  innerData = self->_innerData;
  v19 = v12;
  v15 = [(CCItemMessage *)self initializeFieldValuesFromData:innerData error:&v19];
  v16 = v19;

  if (!v15 || v16)
  {
    CCSetError(a4, v16);

    goto LABEL_13;
  }

  self = self;
  v17 = self;
LABEL_14:

  return v17;
}

- (BOOL)recursivelyEnumerateFieldsWithError:(id *)a3 forParentField:(id)a4 isRepeatedSubMessage:(BOOL)a5 repeatedSubMessageIndex:(unsigned int)a6 usingBlock:(id)a7
{
  v11 = a4;
  v12 = a7;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__12;
  v30 = __Block_byref_object_dispose__12;
  v31 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __124__CCItemMessage_recursivelyEnumerateFieldsWithError_forParentField_isRepeatedSubMessage_repeatedSubMessageIndex_usingBlock___block_invoke;
  v21 = &unk_1E7C8BDA8;
  v13 = v11;
  v25 = a6;
  v22 = v13;
  v24 = &v26;
  v14 = v12;
  v23 = v14;
  v15 = _Block_copy(&v18);
  -[CCItemMessage enumerateFieldsUsingBlock:parentFieldType:](self, "enumerateFieldsUsingBlock:parentFieldType:", v15, [v13 fieldType]);
  if (a3)
  {
    *a3 = v27[5];
  }

  v16 = v27[5] == 0;

  _Block_object_dispose(&v26, 8);
  return v16;
}

void __124__CCItemMessage_recursivelyEnumerateFieldsWithError_forParentField_isRepeatedSubMessage_repeatedSubMessageIndex_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setParentMessageField:*(a1 + 32)];
  [v3 setRepeatedSubMessageIndex:*(a1 + 56)];
  if ([v3 dataType] == 18)
  {
    v4 = [v3 subMessageValueNoCopy];
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 48) + 8);
    obj = *(v6 + 40);
    [v4 recursivelyEnumerateFieldsWithError:&obj forParentField:v3 isRepeatedSubMessage:0 repeatedSubMessageIndex:0 usingBlock:v5];
    objc_storeStrong((v6 + 40), obj);
LABEL_11:

    goto LABEL_12;
  }

  if ([v3 dataType] == 19)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = [v3 repeatedSubMessageValueNoCopy];
    v7 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v23 + 1) + 8 * v11);
          v13 = *(a1 + 40);
          v14 = *(*(a1 + 48) + 8);
          v22 = *(v14 + 40);
          [v12 recursivelyEnumerateFieldsWithError:&v22 forParentField:v3 isRepeatedSubMessage:1 repeatedSubMessageIndex:v9 usingBlock:v13];
          objc_storeStrong((v14 + 40), v22);
          v9 = (v9 + 1);
          ++v11;
        }

        while (v8 != v11);
        v8 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }

    goto LABEL_11;
  }

  (*(*(a1 + 40) + 16))();
  v16 = [v3 error];

  if (v16)
  {
    v17 = *(*(*(a1 + 48) + 8) + 40);
    v18 = [v3 error];
    v19 = CCErrorByJoiningMismatchedFieldAccessorErrorUnderlyingErrors(v17, v18);
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

LABEL_12:

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CCItemMessage *)self data];
    v7 = [v5 data];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(CCItemMessage *)self data];
      v9 = [v5 data];
      v10 = [v8 isEqualToData:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(CCItemMessage *)self data];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 initWithFormat:@"%@ - itemType: %hu", v4, objc_msgSend(objc_opt_class(), "itemType")];

  return v5;
}

- (id)jsonDictionary
{
  v2 = objc_opt_new();

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(NSData *)self->_innerData copy];
  v6 = [v4 initWithData:v5 error:0];

  return v6;
}

@end