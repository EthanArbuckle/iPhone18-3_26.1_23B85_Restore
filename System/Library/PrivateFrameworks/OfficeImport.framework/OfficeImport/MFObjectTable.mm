@interface MFObjectTable
- (MFObjectTable)init;
- (id)getObject:(unsigned int)object;
- (int)deleteObject:(unsigned int)object;
- (int)putObject:(id)object in_objectPos:(unsigned int)pos;
- (int)selectInto:(int)into io_DC:(id)c;
- (unsigned)insertPos;
@end

@implementation MFObjectTable

- (MFObjectTable)init
{
  v6.receiver = self;
  v6.super_class = MFObjectTable;
  v2 = [(MFObjectTable *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    m_objects = v2->m_objects;
    v2->m_objects = array;

    v2->m_maximumSize = 0;
  }

  return v2;
}

- (unsigned)insertPos
{
  v3 = [(NSMutableArray *)self->m_objects count];
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = [(NSMutableArray *)self->m_objects objectAtIndex:v4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return v3;
      }
    }

    return v4;
  }

  return v3;
}

- (int)deleteObject:(unsigned int)object
{
  objectCopy = object;
  v5 = [(NSMutableArray *)self->m_objects objectAtIndex:object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    m_objects = self->m_objects;
    null = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)m_objects replaceObjectAtIndex:objectCopy withObject:null];
  }

  return 0;
}

- (int)selectInto:(int)into io_DC:(id)c
{
  cCopy = c;
  v7 = [(NSMutableArray *)self->m_objects objectAtIndex:into];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [v7 selectInto:cCopy];
  }

  return 0;
}

- (int)putObject:(id)object in_objectPos:(unsigned int)pos
{
  objectCopy = object;
  if (self->m_maximumSize - 1 >= pos)
  {
    if (pos == -1)
    {
      pos = [(MFObjectTable *)self insertPos];
    }

    v8 = [(NSMutableArray *)self->m_objects count];
    v9 = pos - v8;
    if (pos >= v8)
    {
      if (pos > v8)
      {
        do
        {
          m_objects = self->m_objects;
          null = [MEMORY[0x277CBEB68] null];
          [(NSMutableArray *)m_objects addObject:null];

          --v9;
        }

        while (v9);
      }

      [(NSMutableArray *)self->m_objects addObject:objectCopy];
    }

    else
    {
      [(NSMutableArray *)self->m_objects replaceObjectAtIndex:pos withObject:objectCopy];
    }

    v7 = 0;
  }

  else
  {
    v7 = -7;
  }

  return v7;
}

- (id)getObject:(unsigned int)object
{
  v5 = [(NSMutableArray *)self->m_objects objectAtIndex:object];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
    v5 = 0;
  }

  return v5;
}

@end