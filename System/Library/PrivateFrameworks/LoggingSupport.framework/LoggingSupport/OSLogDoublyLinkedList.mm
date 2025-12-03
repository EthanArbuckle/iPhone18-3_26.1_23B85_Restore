@interface OSLogDoublyLinkedList
- (id)removeFromHead;
- (void)addToTail:(id)tail;
- (void)removeAllObjects;
- (void)removeNodeAndAddToTail:(id)tail;
@end

@implementation OSLogDoublyLinkedList

- (void)removeAllObjects
{
  do
  {
    removeFromHead = [(OSLogDoublyLinkedList *)self removeFromHead];
  }

  while (removeFromHead);
}

- (void)removeNodeAndAddToTail:(id)tail
{
  tailCopy = tail;
  prev = [tailCopy prev];
  next = [tailCopy next];
  [next setPrev:prev];

  next2 = [tailCopy next];
  prev2 = [tailCopy prev];
  [prev2 setNext:next2];

  head = [(OSLogDoublyLinkedList *)self head];

  if (head == tailCopy)
  {
    next3 = [tailCopy next];
    [(OSLogDoublyLinkedList *)self setHead:next3];
  }

  tail = [(OSLogDoublyLinkedList *)self tail];

  if (tail == tailCopy)
  {
    prev3 = [tailCopy prev];
    [(OSLogDoublyLinkedList *)self setTail:prev3];
  }

  [tailCopy setPrev:0];
  [tailCopy setNext:0];
  [(OSLogDoublyLinkedList *)self setCount:[(OSLogDoublyLinkedList *)self count]- 1];
  [(OSLogDoublyLinkedList *)self addToTail:tailCopy];
}

- (void)addToTail:(id)tail
{
  tailCopy = tail;
  tail = [(OSLogDoublyLinkedList *)self tail];

  if (tail)
  {
    tail2 = [(OSLogDoublyLinkedList *)self tail];
    [tail2 setNext:tailCopy];

    tail3 = [(OSLogDoublyLinkedList *)self tail];
    [tailCopy setPrev:tail3];

    [tailCopy setNext:0];
  }

  else
  {
    [tailCopy setPrev:0];
    [tailCopy setNext:0];
    [(OSLogDoublyLinkedList *)self setHead:tailCopy];
  }

  [(OSLogDoublyLinkedList *)self setTail:tailCopy];

  v8 = [(OSLogDoublyLinkedList *)self count]+ 1;

  [(OSLogDoublyLinkedList *)self setCount:v8];
}

- (id)removeFromHead
{
  head = [(OSLogDoublyLinkedList *)self head];
  v4 = head;
  if (head)
  {
    next = [head next];
    [(OSLogDoublyLinkedList *)self setHead:next];

    next2 = [v4 next];
    [next2 setPrev:0];

    tail = [(OSLogDoublyLinkedList *)self tail];

    if (v4 == tail)
    {
      [(OSLogDoublyLinkedList *)self setTail:0];
    }

    [(OSLogDoublyLinkedList *)self setCount:[(OSLogDoublyLinkedList *)self count]- 1];
  }

  [v4 setNext:0];
  [v4 setPrev:0];

  return v4;
}

@end