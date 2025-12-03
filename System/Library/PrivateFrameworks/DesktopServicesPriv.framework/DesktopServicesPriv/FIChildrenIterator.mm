@interface FIChildrenIterator
- (FIChildrenIterator)initWithChildren:(id)children fullyPopulated:(BOOL)populated options:(unsigned int)options;
- (id)next;
@end

@implementation FIChildrenIterator

- (FIChildrenIterator)initWithChildren:(id)children fullyPopulated:(BOOL)populated options:(unsigned int)options
{
  optionsCopy = options;
  childrenCopy = children;
  v11.receiver = self;
  v11.super_class = FIChildrenIterator;
  v9 = [(FIChildrenIterator *)&v11 init];
  [(FIChildrenIterator *)v9 setChildren:childrenCopy];
  v9->_includeInvisible = (optionsCopy & 4) == 0;
  v9->_fullyPopulated = populated;

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