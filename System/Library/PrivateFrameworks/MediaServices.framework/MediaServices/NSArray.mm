@interface NSArray
@end

@implementation NSArray

uint64_t __54__NSArray_MSVAdditions__msv_lastIndexOfObjectEqualTo___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    return 1;
  }

  else
  {
    return [a2 isEqual:?];
  }
}

uint64_t __55__NSArray_MSVAdditions__msv_firstIndexOfObjectEqualTo___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    return 1;
  }

  else
  {
    return [a2 isEqual:?];
  }
}

uint64_t __53__NSArray_MSVAdditions__msv_indexesOfObjectsEqualTo___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    return 1;
  }

  else
  {
    return [a2 isEqual:?];
  }
}

id __44__NSArray_MSVJSONConvertible__msv_jsonValue__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_NSIsNSString() || _NSIsNSNumber())
  {
    goto LABEL_3;
  }

  if (!_NSIsNSDictionary() && !_NSIsNSArray())
  {
    v5 = [MEMORY[0x1E695DFB0] null];

    if (v5 != v3)
    {
      if (objc_opt_respondsToSelector())
      {
        goto LABEL_8;
      }

      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MSVJSON.m" lineNumber:40 description:{@"Found non-JSON value while converting to JSON array: %@", v3}];
    }

LABEL_3:
    v4 = v3;
    goto LABEL_9;
  }

LABEL_8:
  v4 = [v3 msv_jsonValue];
LABEL_9:
  v6 = v4;

  return v6;
}

id __53__NSArray_MSVJSONConvertible__msv_initWithJSONValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_NSIsNSString() || _NSIsNSNumber())
  {
    goto LABEL_3;
  }

  if (_NSIsNSDictionary())
  {
    v7 = MEMORY[0x1E695DF20];
  }

  else
  {
    if (!_NSIsNSArray())
    {
      v9 = [MEMORY[0x1E695DFB0] null];

      if (v9 == v3)
      {
        v4 = [MEMORY[0x1E695DFB0] null];
        goto LABEL_4;
      }

      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MSVJSON.m" lineNumber:27 description:{@"Found non-JSON value inside JSON array: %@", v3}];

LABEL_3:
      v4 = v3;
LABEL_4:
      v5 = v4;
      goto LABEL_5;
    }

    v7 = MEMORY[0x1E695DEC8];
  }

  v8 = [v7 alloc];
  v5 = [v8 msv_initWithJSONValue:v3];

LABEL_5:

  return v5;
}

@end