@interface MediaLibraryPropertyCache
- (id)description;
- (id)initForProperty:(id)a3;
- (id)itemNamesForRange:(_NSRange)a3;
- (void)dealloc;
- (void)removeNonGlobalCache;
- (void)setItemNames:(id)a3 forRange:(_NSRange)a4;
@end

@implementation MediaLibraryPropertyCache

- (id)description
{
  if (((self + 16) & 7) != 0 || ((self + 56) & 7) != 0 || ((self + 8) & 7) != 0 || ((self + 24) & 7) != 0 || ((self + 32) & 7) != 0 || ((self + 40) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v2 = *(self + 4);
    return [NSString stringWithFormat:@"<MediaLibraryPropertyCache %hhx> itemProperty=%@ collections=%hhx globalCount=%@ itemCount=%@ itemNamesRange=(%lu, %lu)", self, *(self + 2), *(self + 7), *(self + 1), *(self + 3), v2, *(self + 5)];
  }

  return self;
}

- (id)initForProperty:(id)a3
{
  v6.receiver = self;
  v6.super_class = MediaLibraryPropertyCache;
  result = [(MediaLibraryPropertyCache *)&v6 init];
  v5 = result;
  if (!result)
  {
    return v5;
  }

  if (((result + 16) & 7) == 0)
  {
    *(result + 2) = a3;
    if (((result + 32) & 7) == 0)
    {
      *(result + 4) = 0;
      if (((result + 40) & 7) == 0)
      {
        *(result + 5) = 0;
        result = [NSMutableArray arrayWithCapacity:1024];
        if (((v5 + 6) & 7) == 0)
        {
          v5[6] = result;
          return v5;
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

- (void)dealloc
{
  if (((self + 8) & 7) != 0 || (self->_globalCount, ((self + 16) & 7) != 0) || (self->_itemProperty, ((self + 24) & 7) != 0) || (self->_itemCount, ((self + 48) & 7) != 0) || (self->_itemNames, ((self + 56) & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {

    v3.receiver = self;
    v3.super_class = MediaLibraryPropertyCache;
    [(MediaLibraryPropertyCache *)&v3 dealloc];
  }
}

- (void)removeNonGlobalCache
{
  if (((self + 24) & 7) != 0 || (self->_itemCount, self->_itemCount = 0, ((self + 48) & 7) != 0) || ([(NSMutableArray *)self->_itemNames removeAllObjects], ((self + 32) & 7) != 0) || (self->_itemNamesRange.location = 0, ((self + 40) & 7) != 0) || (self->_itemNamesRange.length = 0, p_collections = &self->_collections, (p_collections & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {

    *p_collections = 0;
  }
}

- (id)itemNamesForRange:(_NSRange)a3
{
  v3 = (self + 32);
  if (((self + 32) & 7) != 0)
  {
    goto LABEL_19;
  }

  location = a3.location;
  v5 = *v3;
  if (a3.location < *v3)
  {
    return 0;
  }

  length = a3.length;
  if (__CFADD__(a3.location, a3.length))
  {
    goto LABEL_17;
  }

  v7 = self;
  if (((self + 40) & 7) != 0)
  {
    goto LABEL_19;
  }

  v8 = *(self + 5);
  v9 = __CFADD__(v5, v8);
  v10 = v5 + v8;
  if (v9)
  {
LABEL_17:
    __break(0x5500u);
LABEL_18:
    __break(0x5515u);
    goto LABEL_19;
  }

  if (a3.location + a3.length > v10)
  {
    return 0;
  }

  self = [NSMutableArray arrayWithCapacity:a3.length];
  v11 = self;
  if (!length)
  {
    return v11;
  }

  v12 = (v7 + 48);
  if ((v12 & 7) == 0)
  {
    v13 = 0;
    while (1)
    {
      v14 = location - *v3;
      if (location < *v3)
      {
        goto LABEL_18;
      }

      if (__CFADD__(v14, v13))
      {
        goto LABEL_17;
      }

      self = [v11 addObject:{objc_msgSend(*v12, "objectAtIndex:", v14 + v13)}];
      v9 = __CFADD__(v13, 1);
      v13 = (v13 + 1);
      if (v9)
      {
        goto LABEL_17;
      }

      if (length <= v13)
      {
        return v11;
      }
    }
  }

LABEL_19:
  __break(0x5516u);
  return self;
}

- (void)setItemNames:(id)a3 forRange:(_NSRange)a4
{
  p_itemNames = &self->_itemNames;
  if ((&self->_itemNames & 7) != 0)
  {
    goto LABEL_25;
  }

  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = self;
  self = [(NSMutableArray *)*p_itemNames count];
  if (self)
  {
    v9 = v8->_itemNamesRange.location;
    p_length = &v8->_itemNamesRange.length;
    v11 = v8->_itemNamesRange.length;
    v12 = __CFADD__(v9, v11);
    v13 = v9 + v11;
    if (v12)
    {
      goto LABEL_26;
    }

    if (location == v13)
    {
      if ((((v8 + 32) | p_length) & 7) == 0)
      {
        v12 = __CFADD__(v11, length);
        v14 = v11 + length;
        if (!v12)
        {
          *p_length = v14;
          v15 = *p_itemNames;

          [(NSMutableArray *)v15 addObjectsFromArray:v7];
          return;
        }

        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  self = [(NSMutableArray *)*p_itemNames count];
  if (!self)
  {
LABEL_20:
    if (((v8 + 32) & 7) == 0)
    {
      v8->_itemNamesRange.location = location;
      if ((&v8->_itemNamesRange.length & 7) == 0)
      {
        v8->_itemNamesRange.length = length;
        self = *p_itemNames;
        a3 = v7;

        goto _objc_msgSend$setArray_;
      }
    }

    goto LABEL_25;
  }

  p_itemNamesRange = &v8->_itemNamesRange;
  if ((&v8->_itemNamesRange & 7) != 0)
  {
LABEL_25:
    __break(0x5516u);
    goto LABEL_26;
  }

  if (__CFADD__(location, length))
  {
LABEL_26:
    __break(0x5500u);
    goto LABEL_27;
  }

  if (p_itemNamesRange->location != location + length)
  {
    goto LABEL_20;
  }

  v17 = &v8->_itemNamesRange.length;
  if ((&v8->_itemNamesRange.length & 7) != 0)
  {
    goto LABEL_25;
  }

  v18 = length + *v17;
  if (__CFADD__(length, *v17))
  {
    goto LABEL_26;
  }

  p_itemNamesRange->location = location;
  *v17 = v18;
  self = [v7 count];
  v19 = &self[-1]._collections + 7;
  if (__OFSUB__(self, 1))
  {
LABEL_27:
    __break(0x5515u);
_objc_msgSend$setArray_:
    [(MediaLibraryPropertyCache *)self setArray:a3];
    return;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
    do
    {
      -[NSMutableArray insertObject:atIndex:](*p_itemNames, "insertObject:atIndex:", [v7 objectAtIndex:v19--], 0);
    }

    while (v19 != -1);
  }
}

@end