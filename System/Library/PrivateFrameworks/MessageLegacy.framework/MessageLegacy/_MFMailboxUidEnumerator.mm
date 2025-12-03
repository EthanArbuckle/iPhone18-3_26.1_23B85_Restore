@interface _MFMailboxUidEnumerator
- (_MFMailboxUidEnumerator)initWithMailbox:(id)mailbox;
- (id)nextObject;
- (void)dealloc;
@end

@implementation _MFMailboxUidEnumerator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MFMailboxUidEnumerator;
  [(_MFMailboxUidEnumerator *)&v3 dealloc];
}

- (_MFMailboxUidEnumerator)initWithMailbox:(id)mailbox
{
  if (mailbox)
  {
    v7.receiver = self;
    v7.super_class = _MFMailboxUidEnumerator;
    v4 = [(_MFMailboxUidEnumerator *)&v7 init];
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v4->_mailboxes = v5;
      [mailbox addToPostOrderTraversal:v5];
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (id)nextObject
{
  index = self->_index;
  if (index >= [(NSMutableArray *)self->_mailboxes count])
  {
    return 0;
  }

  return [(NSMutableArray *)self->_mailboxes objectAtIndex:self->_index++];
}

@end