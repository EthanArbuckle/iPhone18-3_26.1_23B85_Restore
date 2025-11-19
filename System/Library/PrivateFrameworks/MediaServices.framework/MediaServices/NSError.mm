@interface NSError
@end

@implementation NSError

id __43__NSError_MSVErrorAdditions__msv_signature__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == v3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:? lineNumber:? description:?];
  }

  v4 = [v3 msv_signature];

  return v4;
}

void __51__NSError_MSVErrorAdditions__msv_analyticSignature__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = *(a1 + 32);
  if (isKindOfClass)
  {
    v7 = [v8 msv_analyticSignature];
    [v6 appendString:v7];
  }

  else
  {
    [*(a1 + 32) appendString:@"?"];
  }

  if ([*(a1 + 40) count] - 1 > a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }
}

id __63__NSError_MSVErrorAdditions__msv_errorByRemovingUnsafeUserInfo__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (*MEMORY[0x1E696AA08] == a2 || *MEMORY[0x1E696A750] == a2)
  {
    v7 = v4;
  }

  else
  {
    v7 = _MSVSanitizedPropertyListValue(v4);
  }

  v8 = v7;

  return v8;
}

id __52__NSError_MSVJSONConvertible__msv_userInfoJSONValue__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (_NSIsNSString() || _NSIsNSNumber())
  {
    goto LABEL_3;
  }

  if (_NSIsNSDictionary() || _NSIsNSArray())
  {
    goto LABEL_8;
  }

  v5 = [MEMORY[0x1E695DFB0] null];

  if (v5 == v3)
  {
LABEL_3:
    v4 = v3;
LABEL_9:
    v6 = v4;
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
LABEL_8:
    v4 = [v3 msv_jsonValue];
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

id __53__NSError_MSVJSONConvertible__msv_initWithJSONValue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (*MEMORY[0x1E696AA08] == v4 || [v4 isEqual:?])
  {
    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v7 = [v6 msv_initWithJSONValue:v5];

    goto LABEL_4;
  }

  if (*MEMORY[0x1E696A750] == v4 || [v4 isEqual:?])
  {
    if (!_NSIsNSArray())
    {
      v7 = MEMORY[0x1E695E0F0];
      goto LABEL_4;
    }

    v9 = [v5 msv_map:&__block_literal_global_37];
    goto LABEL_18;
  }

  if (*MEMORY[0x1E696A980] != v4 && ![v4 isEqual:?])
  {
    v9 = v5;
LABEL_18:
    v7 = v9;
    goto LABEL_4;
  }

  if (_NSIsNSString())
  {
    v10 = MEMORY[0x1E695DFF8];
    v11 = v5;
    v12 = [v10 alloc];
    v7 = [v12 msv_initWithJSONValue:v11];
  }

  else
  {
    v7 = 0;
  }

LABEL_4:

  return v7;
}

id __53__NSError_MSVJSONConvertible__msv_initWithJSONValue___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696ABC0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 msv_initWithJSONValue:v3];

  return v5;
}

@end