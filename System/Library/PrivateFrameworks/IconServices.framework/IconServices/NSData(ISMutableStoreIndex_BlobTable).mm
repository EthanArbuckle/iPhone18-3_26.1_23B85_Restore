@interface NSData(ISMutableStoreIndex_BlobTable)
+ (id)_ISMutableStoreIndex_mappedDataWithSize:()ISMutableStoreIndex_BlobTable;
- (uint64_t)_ISMutableStoreIndex_addBlobBuffer:()ISMutableStoreIndex_BlobTable size:;
- (uint64_t)_ISMutableStoreIndex_addBlobData:()ISMutableStoreIndex_BlobTable;
- (uint64_t)_ISMutableStoreIndex_availableSpace;
- (uint64_t)_ISMutableStoreIndex_removeBlobForID:()ISMutableStoreIndex_BlobTable;
@end

@implementation NSData(ISMutableStoreIndex_BlobTable)

+ (id)_ISMutableStoreIndex_mappedDataWithSize:()ISMutableStoreIndex_BlobTable
{
  v4 = mmap(0, a3, 3, 4097, 0, 0);
  v5 = 0;
  if (v4 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  if (a3 && v6)
  {
    v7 = objc_alloc(MEMORY[0x1E695DEF0]);
    v5 = [v7 initWithBytesNoCopy:v6 length:a3 deallocator:*MEMORY[0x1E696A268]];
  }

  _ISStoreIndex_blobTableHeader = [v5 _ISStoreIndex_blobTableHeader];
  if (_ISStoreIndex_blobTableHeader)
  {
    *_ISStoreIndex_blobTableHeader = 11;
    *(_ISStoreIndex_blobTableHeader + 8) = 0;
    v6[20] = 0;
    *(_ISStoreIndex_blobTableHeader + 4) = 1;
  }

  return v5;
}

- (uint64_t)_ISMutableStoreIndex_availableSpace
{
  v2 = [self length];
  _ISStoreIndex_blobTableHeader = [self _ISStoreIndex_blobTableHeader];
  if (_ISStoreIndex_blobTableHeader)
  {
    v4 = v2 - *(_ISStoreIndex_blobTableHeader + 8) - 24;
  }

  else
  {
    v4 = 0;
  }

  return v4 & ~(v4 >> 63);
}

- (uint64_t)_ISMutableStoreIndex_addBlobBuffer:()ISMutableStoreIndex_BlobTable size:
{
  result = 0;
  if (a3)
  {
    if (a4)
    {
      v8 = [self length];
      bytes = [self bytes];
      result = [self _ISStoreIndex_blobTableHeader];
      if (result)
      {
        v10 = *(result + 8);
        v11 = a4 + v10 + 12;
        if (v11 + 12 >= v8)
        {
          return 0;
        }

        else
        {
          v12 = (bytes + v10 + 12);
          if (v11 + 24 < v8)
          {
            *(bytes + v10 + 20) = 0;
          }

          *(result + 8) = v11;
          *v12 = v10;
          *(bytes + v10 + 16) = a4;
          memcpy((bytes + v10 + 24), a3, a4);
          v12[8] = 1;
          return *v12;
        }
      }
    }
  }

  return result;
}

- (uint64_t)_ISMutableStoreIndex_addBlobData:()ISMutableStoreIndex_BlobTable
{
  v5 = a3;
  v6 = a3;
  bytes = [v6 bytes];
  v8 = [v6 length];

  return [self _ISMutableStoreIndex_addBlobBuffer:bytes size:v8];
}

- (uint64_t)_ISMutableStoreIndex_removeBlobForID:()ISMutableStoreIndex_BlobTable
{
  result = [self _ISStoreIndex_blobForID:?];
  *(result + 8) = 0;
  return result;
}

@end