@interface MCMDoublyLinkedListNode
- (MCMDoublyLinkedListNode)initWithKey:(id)a3 data:(id)a4;
- (MCMDoublyLinkedListNode)next;
- (MCMDoublyLinkedListNode)prev;
- (id)data;
- (id)key;
- (void)setData:(id)a3;
- (void)setKey:(id)a3;
- (void)setNext:(id)a3;
- (void)setPrev:(id)a3;
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

- (void)setNext:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_next = &self->_next;

  objc_storeStrong(p_next, a3);
}

- (void)setPrev:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_prev = &self->_prev;

  objc_storeWeak(p_prev, a3);
}

- (void)setKey:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_key = &self->_key;

  objc_storeStrong(p_key, a3);
}

- (void)setData:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_data = &self->_data;

  objc_storeStrong(p_data, a3);
}

- (MCMDoublyLinkedListNode)initWithKey:(id)a3 data:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MCMDoublyLinkedListNode;
  v8 = [(MCMDoublyLinkedListNode *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(MCMDoublyLinkedListNode *)v8 setKey:v6];
    [(MCMDoublyLinkedListNode *)v9 setData:v7];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end