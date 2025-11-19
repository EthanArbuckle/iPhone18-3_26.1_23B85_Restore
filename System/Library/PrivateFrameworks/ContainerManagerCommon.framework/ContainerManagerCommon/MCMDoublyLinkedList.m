@interface MCMDoublyLinkedList
- (MCMDoublyLinkedListNode)head;
- (MCMDoublyLinkedListNode)tail;
- (id)removeFromHead;
- (unint64_t)count;
- (void)addToTail:(id)a3;
- (void)removeAllObjects;
- (void)removeNodeAndAddToTail:(id)a3;
- (void)setCount:(unint64_t)a3;
- (void)setHead:(id)a3;
- (void)setTail:(id)a3;
@end

@implementation MCMDoublyLinkedList

- (unint64_t)count
{
  result = self->_count;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMDoublyLinkedListNode)head
{
  result = self->_head;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMDoublyLinkedListNode)tail
{
  result = self->_tail;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)removeFromHead
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(MCMDoublyLinkedList *)self head];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 next];
    [(MCMDoublyLinkedList *)self setHead:v5];

    v6 = [v4 next];
    [v6 setPrev:0];

    v7 = [(MCMDoublyLinkedList *)self tail];

    if (v4 == v7)
    {
      [(MCMDoublyLinkedList *)self setTail:0];
    }

    [(MCMDoublyLinkedList *)self setCount:[(MCMDoublyLinkedList *)self count]- 1];
  }

  [v4 setNext:0];
  [v4 setPrev:0];
  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setTail:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_tail = &self->_tail;

  objc_storeStrong(p_tail, a3);
}

- (void)setHead:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_head = &self->_head;

  objc_storeStrong(p_head, a3);
}

- (void)setCount:(unint64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_count = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)removeAllObjects
{
  v5 = *MEMORY[0x1E69E9840];
  do
  {
    v3 = [(MCMDoublyLinkedList *)self removeFromHead];
  }

  while (v3);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)removeNodeAndAddToTail:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v4 = [v12 prev];
  v5 = [v12 next];
  [v5 setPrev:v4];

  v6 = [v12 next];
  [v4 setNext:v6];

  v7 = [(MCMDoublyLinkedList *)self head];

  if (v7 == v12)
  {
    v8 = [v12 next];
    [(MCMDoublyLinkedList *)self setHead:v8];
  }

  v9 = [(MCMDoublyLinkedList *)self tail];

  v10 = v12;
  if (v9 == v12)
  {
    [(MCMDoublyLinkedList *)self setTail:v4];
    v10 = v12;
  }

  [v10 setPrev:0];
  [v12 setNext:0];
  [(MCMDoublyLinkedList *)self setCount:[(MCMDoublyLinkedList *)self count]- 1];
  [(MCMDoublyLinkedList *)self addToTail:v12];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addToTail:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMDoublyLinkedList *)self tail];

  if (v5)
  {
    v6 = [(MCMDoublyLinkedList *)self tail];
    [v6 setNext:v4];

    v7 = [(MCMDoublyLinkedList *)self tail];
    [v4 setPrev:v7];

    [v4 setNext:0];
  }

  else
  {
    [v4 setPrev:0];
    [v4 setNext:0];
    [(MCMDoublyLinkedList *)self setHead:v4];
  }

  [(MCMDoublyLinkedList *)self setTail:v4];

  v8 = [(MCMDoublyLinkedList *)self count];
  v9 = *MEMORY[0x1E69E9840];

  [(MCMDoublyLinkedList *)self setCount:v8 + 1];
}

@end