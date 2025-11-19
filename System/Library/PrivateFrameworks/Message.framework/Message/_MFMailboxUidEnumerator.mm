@interface _MFMailboxUidEnumerator
- (_MFMailboxUidEnumerator)initWithMailbox:(id)a3;
- (id)nextObject;
@end

@implementation _MFMailboxUidEnumerator

- (id)nextObject
{
  index = self->_index;
  if (index >= [(NSMutableArray *)self->_mailboxes count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_mailboxes objectAtIndex:self->_index];
    ++self->_index;
  }

  return v4;
}

- (_MFMailboxUidEnumerator)initWithMailbox:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = _MFMailboxUidEnumerator;
    v5 = [(_MFMailboxUidEnumerator *)&v10 init];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      mailboxes = v5->_mailboxes;
      v5->_mailboxes = v6;

      [v4 addToPostOrderTraversal:v5->_mailboxes];
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end