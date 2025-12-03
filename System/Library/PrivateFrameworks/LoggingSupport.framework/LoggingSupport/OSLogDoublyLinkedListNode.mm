@interface OSLogDoublyLinkedListNode
- (OSLogDoublyLinkedListNode)initWithKey:(id)key data:(id)data;
- (OSLogDoublyLinkedListNode)prev;
@end

@implementation OSLogDoublyLinkedListNode

- (OSLogDoublyLinkedListNode)prev
{
  WeakRetained = objc_loadWeakRetained(&self->_prev);

  return WeakRetained;
}

- (OSLogDoublyLinkedListNode)initWithKey:(id)key data:(id)data
{
  keyCopy = key;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = OSLogDoublyLinkedListNode;
  v9 = [(OSLogDoublyLinkedListNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_data, data);
  }

  return v10;
}

@end