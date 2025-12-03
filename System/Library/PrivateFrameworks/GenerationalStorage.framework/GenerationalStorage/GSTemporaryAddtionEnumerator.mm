@interface GSTemporaryAddtionEnumerator
- (GSTemporaryAddtionEnumerator)initWithStorage:(id)storage nameSpace:(id)space withOptions:(unint64_t)options withoutOptions:(unint64_t)withoutOptions ordering:(int)ordering;
- (id)_nextURL;
- (id)nextObject;
@end

@implementation GSTemporaryAddtionEnumerator

- (GSTemporaryAddtionEnumerator)initWithStorage:(id)storage nameSpace:(id)space withOptions:(unint64_t)options withoutOptions:(unint64_t)withoutOptions ordering:(int)ordering
{
  v38[1] = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  spaceCopy = space;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v37.receiver = self;
  v37.super_class = GSTemporaryAddtionEnumerator;
  v16 = [(GSTemporaryAddtionEnumerator *)&v37 init];
  v17 = v16;
  if (v16)
  {
    v16->_withOptions = options;
    v16->_withoutOption = withoutOptions;
    v18 = [spaceCopy copy];
    nameSpace = v17->_nameSpace;
    v17->_nameSpace = v18;

    objc_storeStrong(&v17->_storage, storage);
    v36 = 0;
    v20 = [storageCopy _URLForNameSpace:spaceCopy createIfNeeded:0 allowMissing:1 error:&v36];
    v21 = v36;
    v22 = v36;
    if (v20)
    {
      objc_initWeak(&location, v17);
      v38[0] = *MEMORY[0x277CBE7B0];
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __94__GSTemporaryAddtionEnumerator_initWithStorage_nameSpace_withOptions_withoutOptions_ordering___block_invoke;
      v33[3] = &unk_279697A18;
      objc_copyWeak(&v34, &location);
      v24 = [defaultManager enumeratorAtURL:v20 includingPropertiesForKeys:v23 options:1 errorHandler:v33];

      if (ordering)
      {
        enumerator = [v24 allObjects];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __94__GSTemporaryAddtionEnumerator_initWithStorage_nameSpace_withOptions_withoutOptions_ordering___block_invoke_2;
        v31[3] = &__block_descriptor_36_e25_q24__0__NSURL_8__NSURL_16l;
        orderingCopy = ordering;
        v26 = [enumerator sortedArrayUsingComparator:v31];
        array = v17->_array;
        v17->_array = v26;
      }

      else
      {
        v28 = v24;
        enumerator = v17->_enumerator;
        v17->_enumerator = v28;
      }

      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
    }

    else
    {
      objc_storeStrong(&v17->_error, v21);
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
    v22 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __94__GSTemporaryAddtionEnumerator_initWithStorage_nameSpace_withOptions_withoutOptions_ordering___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 5, a3);
  }

  return 0;
}

uint64_t __94__GSTemporaryAddtionEnumerator_initWithStorage_nameSpace_withOptions_withoutOptions_ordering___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = 0;
  v5 = *MEMORY[0x277CBE7B0];
  v6 = a3;
  [a2 getResourceValue:&v13 forKey:v5 error:0];
  v7 = v13;
  v12 = 0;
  [v6 getResourceValue:&v12 forKey:v5 error:0];

  v8 = v12;
  if (*(a1 + 32) == 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v12;
    v8 = v7;
  }

  v10 = [v9 compare:v8];

  return v10;
}

- (id)_nextURL
{
  enumerator = self->_enumerator;
  if (enumerator)
  {
    nextObject = [(NSDirectoryEnumerator *)enumerator nextObject];
  }

  else
  {
    pos = self->_pos;
    if (pos >= [(NSArray *)self->_array count])
    {
      nextObject = 0;
    }

    else
    {
      array = self->_array;
      ++self->_pos;
      nextObject = [(NSArray *)array objectAtIndex:?];
    }
  }

  return nextObject;
}

- (id)nextObject
{
  _nextURL = [(GSTemporaryAddtionEnumerator *)self _nextURL];
  if (!_nextURL)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v4 = _nextURL;
  while (1)
  {
    lastPathComponent = [v4 lastPathComponent];
    if (([lastPathComponent hasPrefix:@"."] & 1) == 0)
    {
      break;
    }

    v6 = 0;
LABEL_10:

    _nextURL2 = [(GSTemporaryAddtionEnumerator *)self _nextURL];

    v4 = _nextURL2;
    if (!_nextURL2)
    {
      goto LABEL_11;
    }
  }

  v7 = [(GSTemporaryStorage *)self->_storage additionWithName:lastPathComponent inNameSpace:self->_nameSpace error:0];
  v6 = v7;
  if (!v7 || self->_withOptions && (self->_withOptions & ~[v7 options]) != 0 || self->_withoutOption && (self->_withoutOption & objc_msgSend(v6, "options")) != 0)
  {
    goto LABEL_10;
  }

LABEL_12:

  return v6;
}

@end