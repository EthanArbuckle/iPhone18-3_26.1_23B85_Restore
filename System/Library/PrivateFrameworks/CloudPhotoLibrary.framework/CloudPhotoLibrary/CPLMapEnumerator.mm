@interface CPLMapEnumerator
- (CPLMapEnumerator)initWithEnumerator:(id)enumerator;
- (CPLMapEnumerator)initWithEnumerator:(id)enumerator map:(id)map;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
@end

@implementation CPLMapEnumerator

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  while (1)
  {
    state->var1 = objects;
    v9 = [(NSFastEnumeration *)self->_enumerator countByEnumeratingWithState:state objects:objects count:count];
    if (!v9)
    {
      break;
    }

    v10 = v9;
    var1 = state->var1;
    itemsPtr = objects;
    if (var1 != objects)
    {
      itemsPtr = self->_itemsPtr;
      if (!itemsPtr)
      {
        self->_previousItemsPtrLength = v10;
        itemsPtr = malloc_type_malloc(8 * v10, 0x80040B8603338uLL);
        goto LABEL_7;
      }

      if (v10 > self->_previousItemsPtrLength)
      {
        self->_previousItemsPtrLength = v10;
        itemsPtr = malloc_type_realloc(itemsPtr, 8 * v10, 0x80040B8603338uLL);
LABEL_7:
        self->_itemsPtr = itemsPtr;
      }
    }

    state->var1 = itemsPtr;
    if (self->_previousResultValuesLength < v10)
    {
      self->_previousResultValuesLength = v10;
      resultValues = self->_resultValues;
      if (resultValues)
      {
        if (self->_previousResultValuesCount)
        {
          v14 = 0;
          do
          {
            v15 = self->_resultValues;
            v16 = v15[v14];
            v15[v14] = 0;

            ++v14;
          }

          while (v14 < self->_previousResultValuesCount);
          resultValues = self->_resultValues;
        }

        free(resultValues);
        self->_resultValues = malloc_type_calloc(v10, 8uLL, 0x80040B8603338uLL);
        self->_previousResultValuesCount = 0;
      }

      else
      {
        self->_resultValues = malloc_type_calloc(v10, 8uLL, 0x80040B8603338uLL);
      }
    }

    v17 = 0;
    do
    {
      v18 = *var1;
      v19 = (*(self->_mapBlock + 2))();
      if (v19)
      {
        objc_storeStrong(&self->_resultValues[v17], v19);
        state->var1[v17++] = v19;
      }

      ++var1;
      --v10;
    }

    while (v10);
    if (v17)
    {
      goto LABEL_23;
    }
  }

  v17 = 0;
LABEL_23:
  if (v17 < self->_previousResultValuesCount)
  {
    v20 = v17;
    do
    {
      v21 = self->_resultValues;
      v22 = v21[v20];
      v21[v20] = 0;

      ++v20;
    }

    while (v20 < self->_previousResultValuesCount);
  }

  self->_previousResultValuesCount = v17;
  return v17;
}

- (void)dealloc
{
  if (self->_previousResultValuesCount)
  {
    v3 = 0;
    do
    {
      resultValues = self->_resultValues;
      v5 = resultValues[v3];
      resultValues[v3] = 0;

      ++v3;
    }

    while (v3 < self->_previousResultValuesCount);
  }

  v6 = self->_resultValues;
  if (v6)
  {
    free(v6);
  }

  itemsPtr = self->_itemsPtr;
  if (itemsPtr)
  {
    free(itemsPtr);
  }

  v8.receiver = self;
  v8.super_class = CPLMapEnumerator;
  [(CPLMapEnumerator *)&v8 dealloc];
}

- (CPLMapEnumerator)initWithEnumerator:(id)enumerator
{
  v4 = MEMORY[0x1E695DFB0];
  enumeratorCopy = enumerator;
  null = [v4 null];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__CPLMapEnumerator_initWithEnumerator___block_invoke;
  v10[3] = &unk_1E861CC28;
  v11 = null;
  v7 = null;
  v8 = [(CPLMapEnumerator *)self initWithEnumerator:enumeratorCopy map:v10];

  return v8;
}

id __39__CPLMapEnumerator_initWithEnumerator___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

- (CPLMapEnumerator)initWithEnumerator:(id)enumerator map:(id)map
{
  enumeratorCopy = enumerator;
  mapCopy = map;
  v14.receiver = self;
  v14.super_class = CPLMapEnumerator;
  v9 = [(CPLMapEnumerator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_enumerator, enumerator);
    v11 = [mapCopy copy];
    mapBlock = v10->_mapBlock;
    v10->_mapBlock = v11;
  }

  return v10;
}

@end