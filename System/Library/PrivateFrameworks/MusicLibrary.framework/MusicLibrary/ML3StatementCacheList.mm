@interface ML3StatementCacheList
- (id)description;
- (unint64_t)count;
- (void)appendNode:(id)node;
- (void)deleteAllNodes;
- (void)deleteOldestNode;
- (void)promoteNodeWithDictionaryKey:(id)key;
@end

@implementation ML3StatementCacheList

- (unint64_t)count
{
  v2 = self->_firstNode;
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  do
  {
    next = [v3 next];

    ++v4;
    v3 = next;
  }

  while (next);
  return v4;
}

- (void)deleteAllNodes
{
  lastNode = self->_lastNode;
  self->_lastNode = 0;

  firstNode = self->_firstNode;
  self->_firstNode = 0;
}

- (void)deleteOldestNode
{
  v5 = self->_firstNode;
  next = [(ML3StatementCacheNode *)v5 next];
  firstNode = self->_firstNode;
  self->_firstNode = next;
}

- (void)promoteNodeWithDictionaryKey:(id)key
{
  keyCopy = key;
  next = self->_firstNode;
  v5 = 0;
  if (next)
  {
    while (1)
    {
      dictionaryKey = [(ML3StatementCacheNode *)next dictionaryKey];
      v7 = [keyCopy isEqual:dictionaryKey];

      if (v7)
      {
        break;
      }

      v8 = next;

      next = [(ML3StatementCacheNode *)v8 next];

      v5 = v8;
      if (!next)
      {
        v5 = v8;
        goto LABEL_9;
      }
    }

    if (next != self->_lastNode)
    {
      firstNode = self->_firstNode;
      if (next == firstNode)
      {
        next2 = [(ML3StatementCacheNode *)firstNode next];
        v11 = self->_firstNode;
        self->_firstNode = next2;
      }

      v4Next = [(ML3StatementCacheNode *)next next];
      [(ML3StatementCacheNode *)v5 setNext:v4Next];

      [(ML3StatementCacheNode *)next setNext:0];
      [(ML3StatementCacheList *)self appendNode:next];
    }
  }

LABEL_9:
}

- (void)appendNode:(id)node
{
  nodeCopy = node;
  if (self->_firstNode)
  {
    lastNode = self->_lastNode;
    p_lastNode = &self->_lastNode;
    [(ML3StatementCacheNode *)lastNode setNext:nodeCopy];
  }

  else
  {
    objc_storeStrong(&self->_firstNode, node);
    p_lastNode = &self->_lastNode;
  }

  v8 = *p_lastNode;
  *p_lastNode = nodeCopy;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = self->_firstNode;
  if (v4)
  {
    v5 = v4;
    do
    {
      [v3 addObject:v5];
      next = [v5 next];

      v5 = next;
    }

    while (next);
  }

  v7 = [v3 componentsJoinedByString:{@", \n\t"}];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ %p = {\n\t%@\n}>", objc_opt_class(), self, v7];

  return v8;
}

@end