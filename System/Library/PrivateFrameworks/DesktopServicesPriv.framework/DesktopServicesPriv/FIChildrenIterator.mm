@interface FIChildrenIterator
- (FIChildrenIterator)initWithChildren:(id)a3 fullyPopulated:(BOOL)a4 options:(unsigned int)a5;
- (id)next;
@end

@implementation FIChildrenIterator

- (FIChildrenIterator)initWithChildren:(id)a3 fullyPopulated:(BOOL)a4 options:(unsigned int)a5
{
  v5 = a5;
  v8 = a3;
  v11.receiver = self;
  v11.super_class = FIChildrenIterator;
  v9 = [(FIChildrenIterator *)&v11 init];
  [(FIChildrenIterator *)v9 setChildren:v8];
  v9->_includeInvisible = (v5 & 4) == 0;
  v9->_fullyPopulated = a4;

  return v9;
}

- (id)next
{
  v3 = 0;
  while (1)
  {
    index = self->_index;
    if (index >= [(NSArray *)self->_children count])
    {
      break;
    }

    children = self->_children;
    ++self->_index;
    v6 = [(NSArray *)children objectAtIndexedSubscript:?];

    if (!self->_includeInvisible)
    {
      v3 = v6;
      if (([v6 isVisible] & 1) == 0)
      {
        continue;
      }
    }

    v3 = 0;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end