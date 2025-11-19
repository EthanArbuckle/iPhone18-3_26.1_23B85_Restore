@interface ML3StatementCacheList
- (id)description;
- (unint64_t)count;
- (void)appendNode:(id)a3;
- (void)deleteAllNodes;
- (void)deleteOldestNode;
- (void)promoteNodeWithDictionaryKey:(id)a3;
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
    v5 = [v3 next];

    ++v4;
    v3 = v5;
  }

  while (v5);
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
  v3 = [(ML3StatementCacheNode *)v5 next];
  firstNode = self->_firstNode;
  self->_firstNode = v3;
}

- (void)promoteNodeWithDictionaryKey:(id)a3
{
  v13 = a3;
  v4 = self->_firstNode;
  v5 = 0;
  if (v4)
  {
    while (1)
    {
      v6 = [(ML3StatementCacheNode *)v4 dictionaryKey];
      v7 = [v13 isEqual:v6];

      if (v7)
      {
        break;
      }

      v8 = v4;

      v4 = [(ML3StatementCacheNode *)v8 next];

      v5 = v8;
      if (!v4)
      {
        v5 = v8;
        goto LABEL_9;
      }
    }

    if (v4 != self->_lastNode)
    {
      firstNode = self->_firstNode;
      if (v4 == firstNode)
      {
        v10 = [(ML3StatementCacheNode *)firstNode next];
        v11 = self->_firstNode;
        self->_firstNode = v10;
      }

      v12 = [(ML3StatementCacheNode *)v4 next];
      [(ML3StatementCacheNode *)v5 setNext:v12];

      [(ML3StatementCacheNode *)v4 setNext:0];
      [(ML3StatementCacheList *)self appendNode:v4];
    }
  }

LABEL_9:
}

- (void)appendNode:(id)a3
{
  v5 = a3;
  if (self->_firstNode)
  {
    lastNode = self->_lastNode;
    p_lastNode = &self->_lastNode;
    [(ML3StatementCacheNode *)lastNode setNext:v5];
  }

  else
  {
    objc_storeStrong(&self->_firstNode, a3);
    p_lastNode = &self->_lastNode;
  }

  v8 = *p_lastNode;
  *p_lastNode = v5;
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
      v6 = [v5 next];

      v5 = v6;
    }

    while (v6);
  }

  v7 = [v3 componentsJoinedByString:{@", \n\t"}];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ %p = {\n\t%@\n}>", objc_opt_class(), self, v7];

  return v8;
}

@end