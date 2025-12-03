@interface OITSUAggregateEnumerator
- (OITSUAggregateEnumerator)initWithFirstObject:(id)object argumentList:(char *)list;
- (id)nextObject;
- (void)addObject:(id)object;
- (void)dealloc;
@end

@implementation OITSUAggregateEnumerator

- (OITSUAggregateEnumerator)initWithFirstObject:(id)object argumentList:(char *)list
{
  v10.receiver = self;
  v10.super_class = OITSUAggregateEnumerator;
  listCopy = list;
  v5 = [(OITSUAggregateEnumerator *)&v10 init];
  if (v5)
  {
    objects = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5->_objects = objects;
    if (object)
    {
      objectCopy = object;
      while (1)
      {
        [(NSMutableArray *)objects addObject:objectCopy];
        v8 = listCopy;
        listCopy += 8;
        objectCopy = *v8;
        if (!*v8)
        {
          break;
        }

        objects = v5->_objects;
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OITSUAggregateEnumerator;
  [(OITSUAggregateEnumerator *)&v3 dealloc];
}

- (void)addObject:(id)object
{
  if (object)
  {
    [(NSMutableArray *)self->_objects addObject:?];
  }
}

- (id)nextObject
{
  while ([(NSMutableArray *)self->_objects count])
  {
    v3 = [(NSMutableArray *)self->_objects objectAtIndex:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v3 = [v3 nextObject]) == 0)
    {
      [(NSMutableArray *)self->_objects removeObjectAtIndex:0];
      if (!v3)
      {
        continue;
      }
    }

    return v3;
  }

  return 0;
}

@end