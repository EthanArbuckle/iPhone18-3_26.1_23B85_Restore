@interface _EFLRUCacheNode
- (_EFLRUCacheNode)initWithKey:(id)key element:(id)element;
- (void)setNext:(id)next;
- (void)setPrevious:(id)previous;
@end

@implementation _EFLRUCacheNode

- (_EFLRUCacheNode)initWithKey:(id)key element:(id)element
{
  keyCopy = key;
  elementCopy = element;
  v12.receiver = self;
  v12.super_class = _EFLRUCacheNode;
  v9 = [(_EFLRUCacheNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_element, element);
  }

  return v10;
}

- (void)setNext:(id)next
{
  nextCopy = next;
  v7 = nextCopy;
  if (nextCopy == self)
  {
    v5 = 0;
  }

  else
  {
    v5 = nextCopy;
  }

  next = self->_next;
  self->_next = v5;
}

- (void)setPrevious:(id)previous
{
  previousCopy = previous;
  v7 = previousCopy;
  if (previousCopy == self)
  {
    v5 = 0;
  }

  else
  {
    v5 = previousCopy;
  }

  previous = self->_previous;
  self->_previous = v5;
}

@end