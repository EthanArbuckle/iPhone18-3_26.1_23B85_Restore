@interface CPLPrequeliteSkipNullEnumerator
- (CPLPrequeliteSkipNullEnumerator)initWithEnumerator:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
@end

@implementation CPLPrequeliteSkipNullEnumerator

- (CPLPrequeliteSkipNullEnumerator)initWithEnumerator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CPLPrequeliteSkipNullEnumerator;
  v6 = [(CPLPrequeliteSkipNullEnumerator *)&v9 init];
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
  v4.super_class = CPLPrequeliteSkipNullEnumerator;
  [(CPLPrequeliteSkipNullEnumerator *)&v4 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v9 = [NSFastEnumeration countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
  if (v9)
  {
    v10 = v9;
    while (1)
    {
      var1 = a3->var1;
      itemPtr = a4;
      if (var1 != a4)
      {
        itemPtr = self->_itemPtr;
        if (v10 > self->_sizeOfItemPtr)
        {
          if (itemPtr)
          {
            v13 = malloc_type_realloc(self->_itemPtr, 8 * v10, 0x80040B8603338uLL);
          }

          else
          {
            v13 = malloc_type_malloc(8 * v10, 0x80040B8603338uLL);
          }

          itemPtr = v13;
          self->_sizeOfItemPtr = v10;
          self->_itemPtr = v13;
        }
      }

      v14 = +[NSNull null];
      v15 = 0;
      v16 = 0;
      v17 = v10;
      do
      {
        v18 = a3->var1[v16];
        if (v18 == v14)
        {
          --v17;
        }

        else
        {
          if (var1 != a4 || v15 < v16)
          {
            itemPtr[v15] = v18;
          }

          ++v15;
        }

        ++v16;
      }

      while (v10 != v16);

      if (v17)
      {
        break;
      }

      v10 = [(NSFastEnumeration *)self->_enumerator countByEnumeratingWithState:a3 objects:a4 count:a5];
      if (!v10)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    itemPtr = 0;
LABEL_21:
    v17 = 0;
  }

  a3->var1 = itemPtr;
  return v17;
}

@end