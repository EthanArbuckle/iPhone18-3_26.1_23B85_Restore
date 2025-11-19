@interface MFObjectTable
- (MFObjectTable)init;
- (id)getObject:(unsigned int)a3;
- (int)deleteObject:(unsigned int)a3;
- (int)putObject:(id)a3 in_objectPos:(unsigned int)a4;
- (int)selectInto:(int)a3 io_DC:(id)a4;
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
    v3 = [MEMORY[0x277CBEB18] array];
    m_objects = v2->m_objects;
    v2->m_objects = v3;

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

- (int)deleteObject:(unsigned int)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->m_objects objectAtIndex:a3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    m_objects = self->m_objects;
    v8 = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)m_objects replaceObjectAtIndex:v4 withObject:v8];
  }

  return 0;
}

- (int)selectInto:(int)a3 io_DC:(id)a4
{
  v6 = a4;
  v7 = [(NSMutableArray *)self->m_objects objectAtIndex:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [v7 selectInto:v6];
  }

  return 0;
}

- (int)putObject:(id)a3 in_objectPos:(unsigned int)a4
{
  v6 = a3;
  if (self->m_maximumSize - 1 >= a4)
  {
    if (a4 == -1)
    {
      a4 = [(MFObjectTable *)self insertPos];
    }

    v8 = [(NSMutableArray *)self->m_objects count];
    v9 = a4 - v8;
    if (a4 >= v8)
    {
      if (a4 > v8)
      {
        do
        {
          m_objects = self->m_objects;
          v11 = [MEMORY[0x277CBEB68] null];
          [(NSMutableArray *)m_objects addObject:v11];

          --v9;
        }

        while (v9);
      }

      [(NSMutableArray *)self->m_objects addObject:v6];
    }

    else
    {
      [(NSMutableArray *)self->m_objects replaceObjectAtIndex:a4 withObject:v6];
    }

    v7 = 0;
  }

  else
  {
    v7 = -7;
  }

  return v7;
}

- (id)getObject:(unsigned int)a3
{
  v5 = [(NSMutableArray *)self->m_objects objectAtIndex:a3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
    v5 = 0;
  }

  return v5;
}

@end