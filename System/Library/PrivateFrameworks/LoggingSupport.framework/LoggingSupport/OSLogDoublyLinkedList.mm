@interface OSLogDoublyLinkedList
- (id)removeFromHead;
- (void)addToTail:(id)a3;
- (void)removeAllObjects;
- (void)removeNodeAndAddToTail:(id)a3;
@end

@implementation OSLogDoublyLinkedList

- (void)removeAllObjects
{
  do
  {
    v3 = [(OSLogDoublyLinkedList *)self removeFromHead];
  }

  while (v3);
}

- (void)removeNodeAndAddToTail:(id)a3
{
  v12 = a3;
  v4 = [v12 prev];
  v5 = [v12 next];
  [v5 setPrev:v4];

  v6 = [v12 next];
  v7 = [v12 prev];
  [v7 setNext:v6];

  v8 = [(OSLogDoublyLinkedList *)self head];

  if (v8 == v12)
  {
    v9 = [v12 next];
    [(OSLogDoublyLinkedList *)self setHead:v9];
  }

  v10 = [(OSLogDoublyLinkedList *)self tail];

  if (v10 == v12)
  {
    v11 = [v12 prev];
    [(OSLogDoublyLinkedList *)self setTail:v11];
  }

  [v12 setPrev:0];
  [v12 setNext:0];
  [(OSLogDoublyLinkedList *)self setCount:[(OSLogDoublyLinkedList *)self count]- 1];
  [(OSLogDoublyLinkedList *)self addToTail:v12];
}

- (void)addToTail:(id)a3
{
  v4 = a3;
  v5 = [(OSLogDoublyLinkedList *)self tail];

  if (v5)
  {
    v6 = [(OSLogDoublyLinkedList *)self tail];
    [v6 setNext:v4];

    v7 = [(OSLogDoublyLinkedList *)self tail];
    [v4 setPrev:v7];

    [v4 setNext:0];
  }

  else
  {
    [v4 setPrev:0];
    [v4 setNext:0];
    [(OSLogDoublyLinkedList *)self setHead:v4];
  }

  [(OSLogDoublyLinkedList *)self setTail:v4];

  v8 = [(OSLogDoublyLinkedList *)self count]+ 1;

  [(OSLogDoublyLinkedList *)self setCount:v8];
}

- (id)removeFromHead
{
  v3 = [(OSLogDoublyLinkedList *)self head];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 next];
    [(OSLogDoublyLinkedList *)self setHead:v5];

    v6 = [v4 next];
    [v6 setPrev:0];

    v7 = [(OSLogDoublyLinkedList *)self tail];

    if (v4 == v7)
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