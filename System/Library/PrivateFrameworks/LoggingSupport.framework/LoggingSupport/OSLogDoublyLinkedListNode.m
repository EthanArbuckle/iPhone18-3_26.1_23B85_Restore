@interface OSLogDoublyLinkedListNode
- (OSLogDoublyLinkedListNode)initWithKey:(id)a3 data:(id)a4;
- (OSLogDoublyLinkedListNode)prev;
@end

@implementation OSLogDoublyLinkedListNode

- (OSLogDoublyLinkedListNode)prev
{
  WeakRetained = objc_loadWeakRetained(&self->_prev);

  return WeakRetained;
}

- (OSLogDoublyLinkedListNode)initWithKey:(id)a3 data:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = OSLogDoublyLinkedListNode;
  v9 = [(OSLogDoublyLinkedListNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    objc_storeStrong(&v10->_data, a4);
  }

  return v10;
}

@end