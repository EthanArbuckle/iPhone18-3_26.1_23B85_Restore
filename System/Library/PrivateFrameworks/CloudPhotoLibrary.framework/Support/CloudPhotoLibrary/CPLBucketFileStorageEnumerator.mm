@interface CPLBucketFileStorageEnumerator
- (CPLBucketFileStorageEnumerator)initWithDirectoryEnumerator:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
@end

@implementation CPLBucketFileStorageEnumerator

- (CPLBucketFileStorageEnumerator)initWithDirectoryEnumerator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CPLBucketFileStorageEnumerator;
  v6 = [(CPLBucketFileStorageEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enumerator, a3);
  }

  return v7;
}

- (void)dealloc
{
  itemPtr = self->_itemPtr;
  if (itemPtr)
  {
    free(itemPtr);
  }

  v4.receiver = self;
  v4.super_class = CPLBucketFileStorageEnumerator;
  [(CPLBucketFileStorageEnumerator *)&v4 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  p_singleKeeper = &self->_singleKeeper;
  singleKeeper = self->_singleKeeper;
  self->_singleKeeper = 0;

  [*(p_singleKeeper - 1) removeAllObjects];
  v30 = a5;
  location = p_singleKeeper;
  v11 = [*(p_singleKeeper - 4) countByEnumeratingWithState:a3 objects:a4 count:a5];
  if (v11)
  {
    v12 = v11;
    v29 = a4;
    while (1)
    {
      itemPtr = a4;
      if (a3->var1 != a4)
      {
        itemPtr = self->_itemPtr;
        if (v12 > self->_sizeOfItemPtr)
        {
          if (itemPtr)
          {
            v14 = malloc_type_realloc(self->_itemPtr, 8 * v12, 0x80040B8603338uLL);
          }

          else
          {
            v14 = malloc_type_malloc(8 * v12, 0x80040B8603338uLL);
          }

          itemPtr = v14;
          self->_sizeOfItemPtr = v12;
          self->_itemPtr = v14;
        }
      }

      v15 = 0;
      v16 = 0;
      v17 = v12;
      do
      {
        v18 = a3->var1[v15];
        v19 = [v18 lastPathComponent];
        v20 = [CPLResourceIdentity identityForStorageName:v19];
        v21 = v20;
        if (v20)
        {
          [v20 setAvailable:1];
          v22 = [[CPLBucketFileStorageItem alloc] initWithIdentity:v21 url:v18];
          keeper = self->_keeper;
          v24 = self->_singleKeeper;
          if (v24)
          {
            if (!keeper)
            {
              v25 = objc_alloc_init(NSMutableArray);
              v26 = self->_keeper;
              self->_keeper = v25;

              keeper = self->_keeper;
              v24 = self->_singleKeeper;
            }

            [(NSMutableArray *)keeper addObject:v24];
            [(NSMutableArray *)self->_keeper addObject:v22];
            v27 = self->_singleKeeper;
            self->_singleKeeper = 0;
          }

          else if ([(NSMutableArray *)keeper count])
          {
            [(NSMutableArray *)self->_keeper addObject:v22];
          }

          else
          {
            objc_storeStrong(location, v22);
          }

          itemPtr[v16] = v22;

          ++v16;
        }

        else
        {
          --v17;
        }

        ++v15;
      }

      while (v12 != v15);
      if (v17)
      {
        break;
      }

      a4 = v29;
      v12 = [(NSDirectoryEnumerator *)self->_enumerator countByEnumeratingWithState:a3 objects:v29 count:v30];
      if (!v12)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    itemPtr = 0;
LABEL_25:
    v17 = 0;
  }

  a3->var1 = itemPtr;
  return v17;
}

@end