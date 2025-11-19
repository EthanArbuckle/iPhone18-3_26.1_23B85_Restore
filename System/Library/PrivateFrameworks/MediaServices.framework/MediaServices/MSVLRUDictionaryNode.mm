@interface MSVLRUDictionaryNode
- (MSVLRUDictionaryNode)initWithKey:(id)a3 object:(id)a4;
- (MSVLRUDictionaryNode)next;
- (MSVLRUDictionaryNode)prev;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MSVLRUDictionaryNode

- (MSVLRUDictionaryNode)next
{
  WeakRetained = objc_loadWeakRetained(&self->_next);

  return WeakRetained;
}

- (MSVLRUDictionaryNode)prev
{
  WeakRetained = objc_loadWeakRetained(&self->_prev);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MSVLRUDictionaryNode alloc];
  key = self->_key;
  object = self->_object;

  return [(MSVLRUDictionaryNode *)v4 initWithKey:key object:object];
}

- (MSVLRUDictionaryNode)initWithKey:(id)a3 object:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MSVLRUDictionaryNode;
  v9 = [(MSVLRUDictionaryNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    objc_storeStrong(&v10->_object, a4);
  }

  return v10;
}

@end