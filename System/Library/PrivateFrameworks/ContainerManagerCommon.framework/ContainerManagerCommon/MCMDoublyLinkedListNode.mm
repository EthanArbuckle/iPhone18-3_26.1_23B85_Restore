@interface MCMDoublyLinkedListNode
- (MCMDoublyLinkedListNode)initWithKey:(id)key data:(id)data;
- (MCMDoublyLinkedListNode)next;
- (MCMDoublyLinkedListNode)prev;
- (id)data;
- (id)key;
- (void)setData:(id)data;
- (void)setKey:(id)key;
- (void)setNext:(id)next;
- (void)setPrev:(id)prev;
@end

@implementation MCMDoublyLinkedListNode

- (MCMDoublyLinkedListNode)prev
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_prev);
  v3 = *MEMORY[0x1E69E9840];

  return WeakRetained;
}

- (MCMDoublyLinkedListNode)next
{
  result = self->_next;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)data
{
  result = self->_data;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)key
{
  result = self->_key;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setNext:(id)next
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_next = &self->_next;

  objc_storeStrong(p_next, next);
}

- (void)setPrev:(id)prev
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_prev = &self->_prev;

  objc_storeWeak(p_prev, prev);
}

- (void)setKey:(id)key
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_key = &self->_key;

  objc_storeStrong(p_key, key);
}

- (void)setData:(id)data
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_data = &self->_data;

  objc_storeStrong(p_data, data);
}

- (MCMDoublyLinkedListNode)initWithKey:(id)key data:(id)data
{
  v13 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = MCMDoublyLinkedListNode;
  v8 = [(MCMDoublyLinkedListNode *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(MCMDoublyLinkedListNode *)v8 setKey:keyCopy];
    [(MCMDoublyLinkedListNode *)v9 setData:dataCopy];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end