@interface MCMDoublyLinkedList
- (MCMDoublyLinkedListNode)head;
- (MCMDoublyLinkedListNode)tail;
- (id)removeFromHead;
- (unint64_t)count;
- (void)addToTail:(id)tail;
- (void)removeAllObjects;
- (void)removeNodeAndAddToTail:(id)tail;
- (void)setCount:(unint64_t)count;
- (void)setHead:(id)head;
- (void)setTail:(id)tail;
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
  head = [(MCMDoublyLinkedList *)self head];
  v4 = head;
  if (head)
  {
    next = [head next];
    [(MCMDoublyLinkedList *)self setHead:next];

    next2 = [v4 next];
    [next2 setPrev:0];

    tail = [(MCMDoublyLinkedList *)self tail];

    if (v4 == tail)
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

- (void)setTail:(id)tail
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_tail = &self->_tail;

  objc_storeStrong(p_tail, tail);
}

- (void)setHead:(id)head
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_head = &self->_head;

  objc_storeStrong(p_head, head);
}

- (void)setCount:(unint64_t)count
{
  v4 = *MEMORY[0x1E69E9840];
  self->_count = count;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)removeAllObjects
{
  v5 = *MEMORY[0x1E69E9840];
  do
  {
    removeFromHead = [(MCMDoublyLinkedList *)self removeFromHead];
  }

  while (removeFromHead);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)removeNodeAndAddToTail:(id)tail
{
  v13 = *MEMORY[0x1E69E9840];
  tailCopy = tail;
  prev = [tailCopy prev];
  next = [tailCopy next];
  [next setPrev:prev];

  next2 = [tailCopy next];
  [prev setNext:next2];

  head = [(MCMDoublyLinkedList *)self head];

  if (head == tailCopy)
  {
    next3 = [tailCopy next];
    [(MCMDoublyLinkedList *)self setHead:next3];
  }

  tail = [(MCMDoublyLinkedList *)self tail];

  v10 = tailCopy;
  if (tail == tailCopy)
  {
    [(MCMDoublyLinkedList *)self setTail:prev];
    v10 = tailCopy;
  }

  [v10 setPrev:0];
  [tailCopy setNext:0];
  [(MCMDoublyLinkedList *)self setCount:[(MCMDoublyLinkedList *)self count]- 1];
  [(MCMDoublyLinkedList *)self addToTail:tailCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addToTail:(id)tail
{
  v10 = *MEMORY[0x1E69E9840];
  tailCopy = tail;
  tail = [(MCMDoublyLinkedList *)self tail];

  if (tail)
  {
    tail2 = [(MCMDoublyLinkedList *)self tail];
    [tail2 setNext:tailCopy];

    tail3 = [(MCMDoublyLinkedList *)self tail];
    [tailCopy setPrev:tail3];

    [tailCopy setNext:0];
  }

  else
  {
    [tailCopy setPrev:0];
    [tailCopy setNext:0];
    [(MCMDoublyLinkedList *)self setHead:tailCopy];
  }

  [(MCMDoublyLinkedList *)self setTail:tailCopy];

  v8 = [(MCMDoublyLinkedList *)self count];
  v9 = *MEMORY[0x1E69E9840];

  [(MCMDoublyLinkedList *)self setCount:v8 + 1];
}

@end