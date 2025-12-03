@interface CPLBucketFileStorageEnumerator
- (CPLBucketFileStorageEnumerator)initWithDirectoryEnumerator:(id)enumerator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
@end

@implementation CPLBucketFileStorageEnumerator

- (CPLBucketFileStorageEnumerator)initWithDirectoryEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v9.receiver = self;
  v9.super_class = CPLBucketFileStorageEnumerator;
  v6 = [(CPLBucketFileStorageEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enumerator, enumerator);
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

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  p_singleKeeper = &self->_singleKeeper;
  singleKeeper = self->_singleKeeper;
  self->_singleKeeper = 0;

  [*(p_singleKeeper - 1) removeAllObjects];
  countCopy = count;
  location = p_singleKeeper;
  v11 = [*(p_singleKeeper - 4) countByEnumeratingWithState:state objects:objects count:count];
  if (v11)
  {
    v12 = v11;
    objectsCopy = objects;
    while (1)
    {
      itemPtr = objects;
      if (state->var1 != objects)
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
        v18 = state->var1[v15];
        lastPathComponent = [v18 lastPathComponent];
        v20 = [CPLResourceIdentity identityForStorageName:lastPathComponent];
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

      objects = objectsCopy;
      v12 = [(NSDirectoryEnumerator *)self->_enumerator countByEnumeratingWithState:state objects:objectsCopy count:countCopy];
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

  state->var1 = itemPtr;
  return v17;
}

@end