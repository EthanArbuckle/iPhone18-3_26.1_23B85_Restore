@interface _EFLRUCacheNode
- (_EFLRUCacheNode)initWithKey:(id)a3 element:(id)a4;
- (void)setNext:(id)a3;
- (void)setPrevious:(id)a3;
@end

@implementation _EFLRUCacheNode

- (_EFLRUCacheNode)initWithKey:(id)a3 element:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _EFLRUCacheNode;
  v9 = [(_EFLRUCacheNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    objc_storeStrong(&v10->_element, a4);
  }

  return v10;
}

- (void)setNext:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4 == self)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  next = self->_next;
  self->_next = v5;
}

- (void)setPrevious:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4 == self)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  previous = self->_previous;
  self->_previous = v5;
}

@end