@interface MSVLRUDictionaryNode
- (MSVLRUDictionaryNode)initWithKey:(id)key object:(id)object;
- (MSVLRUDictionaryNode)next;
- (MSVLRUDictionaryNode)prev;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MSVLRUDictionaryNode alloc];
  key = self->_key;
  object = self->_object;

  return [(MSVLRUDictionaryNode *)v4 initWithKey:key object:object];
}

- (MSVLRUDictionaryNode)initWithKey:(id)key object:(id)object
{
  keyCopy = key;
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = MSVLRUDictionaryNode;
  v9 = [(MSVLRUDictionaryNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_object, object);
  }

  return v10;
}

@end