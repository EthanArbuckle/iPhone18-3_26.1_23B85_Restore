@interface _MFMailboxUidEnumerator
- (_MFMailboxUidEnumerator)initWithMailbox:(id)mailbox;
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

- (_MFMailboxUidEnumerator)initWithMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if (mailboxCopy)
  {
    v10.receiver = self;
    v10.super_class = _MFMailboxUidEnumerator;
    v5 = [(_MFMailboxUidEnumerator *)&v10 init];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      mailboxes = v5->_mailboxes;
      v5->_mailboxes = v6;

      [mailboxCopy addToPostOrderTraversal:v5->_mailboxes];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end