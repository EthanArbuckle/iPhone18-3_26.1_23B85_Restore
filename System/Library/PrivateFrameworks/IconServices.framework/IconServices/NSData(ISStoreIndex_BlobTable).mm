@interface NSData(ISStoreIndex_BlobTable)
- (uint64_t)_ISStoreIndex_blobForID:()ISStoreIndex_BlobTable;
- (uint64_t)_ISStoreIndex_blobTableHeader;
- (uint64_t)_ISStoreIndex_isValid;
- (unsigned)_ISStoreIndex_blobDataForID:()ISStoreIndex_BlobTable;
- (void)_ISStoreIndex_enumerateBlobsWithBock:()ISStoreIndex_BlobTable;
@end

@implementation NSData(ISStoreIndex_BlobTable)

- (uint64_t)_ISStoreIndex_blobTableHeader
{
  if ([a1 length] < 0xD)
  {
    return 0;
  }

  v2 = a1;

  return [v2 bytes];
}

- (uint64_t)_ISStoreIndex_isValid
{
  result = [a1 _ISStoreIndex_blobTableHeader];
  if (result)
  {
    return *(result + 4) == 1 && *result == 11;
  }

  return result;
}

- (uint64_t)_ISStoreIndex_blobForID:()ISStoreIndex_BlobTable
{
  v5 = [a1 length];
  v6 = [a1 bytes];
  result = [a1 _ISStoreIndex_blobTableHeader];
  if (result)
  {
    if (a3 < v5 && (v8 = (a3 + v6 + 12), a3 + v6 != -12) && *(a3 + v6 + 20) == 1 && *v8 == a3)
    {
      if (v8 + HIDWORD(*v8) + 12 >= v5 + v6)
      {
        return 0;
      }

      else
      {
        return a3 + v6 + 12;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (unsigned)_ISStoreIndex_blobDataForID:()ISStoreIndex_BlobTable
{
  v2 = [a1 _ISStoreIndex_blobForID:?];
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = objc_alloc(MEMORY[0x1E695DEF0]);
    v6 = v3[1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__NSData_ISStoreIndex_BlobTable___ISStoreIndex_blobDataForID___block_invoke;
    v8[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
    v8[4] = v4;
    v2 = [v5 initWithBytesNoCopy:v3 + 3 length:v6 deallocator:v8];
  }

  return v2;
}

- (void)_ISStoreIndex_enumerateBlobsWithBock:()ISStoreIndex_BlobTable
{
  v4 = a3;
  v5 = [a1 length];
  v6 = [a1 bytes];
  v7 = [a1 _ISStoreIndex_blobTableHeader];
  if (v7)
  {
    v8 = v6 + 12;
    if (v6 != -12)
    {
      v9 = v7;
      v10 = v5 + v6;
      do
      {
        v11 = *v8;
        if (!*v8)
        {
          break;
        }

        v12 = *(v9 + 8) > v11;
        v13 = HIDWORD(v11) + v8 + 12;
        if (!v12 || v13 >= v10)
        {
          break;
        }

        if (*(v8 + 8) == 1)
        {
          v15 = 0;
          v4[2](v4, v8, &v15);
          if (v15)
          {
            break;
          }

          v13 = *(v8 + 4) + v8 + 12;
        }

        v8 = v13;
      }

      while (v13);
    }
  }
}

@end