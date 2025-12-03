@interface IMDoubleLinkedListNode
- (IMDoubleLinkedListNode)initWithObject:(id)object;
- (void)orphan;
- (void)removeFromList;
@end

@implementation IMDoubleLinkedListNode

- (IMDoubleLinkedListNode)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = IMDoubleLinkedListNode;
  v6 = [(IMDoubleLinkedListNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, object);
  }

  return v7;
}

- (void)removeFromList
{
  prev = self->_prev;
  v4 = self->_next;
  v9 = prev;
  objc_msgSend_setNext_(v9, v5, v4);
  objc_msgSend_setPrev_(v4, v6, v9);

  objc_msgSend_setNext_(self, v7, 0);
  objc_msgSend_setPrev_(self, v8, 0);
}

- (void)orphan
{
  objc_msgSend_setNext_(self, a2, 0);
  objc_msgSend_setPrev_(self, v3, 0);

  objc_msgSend_setObject_(self, v4, 0);
}

@end