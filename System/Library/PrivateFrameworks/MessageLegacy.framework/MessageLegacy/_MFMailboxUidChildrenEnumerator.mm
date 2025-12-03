@interface _MFMailboxUidChildrenEnumerator
- (id)_initWithMailbox:(id)mailbox includeHiddenChildren:(BOOL)children;
- (id)nextObject;
- (void)dealloc;
@end

@implementation _MFMailboxUidChildrenEnumerator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MFMailboxUidChildrenEnumerator;
  [(_MFMailboxUidChildrenEnumerator *)&v3 dealloc];
}

- (id)_initWithMailbox:(id)mailbox includeHiddenChildren:(BOOL)children
{
  v8.receiver = self;
  v8.super_class = _MFMailboxUidChildrenEnumerator;
  v6 = [(_MFMailboxUidChildrenEnumerator *)&v8 init];
  if (v6)
  {
    v6->_mailboxes = [mailbox _mutableChildren];
    v6->_includeHidden = children;
  }

  return v6;
}

- (id)nextObject
{
  v3 = [(NSMutableArray *)self->_mailboxes count];
  while (self->_index < v3)
  {
    v4 = [(NSMutableArray *)self->_mailboxes objectAtIndex:?];
    v5 = v4;
    ++self->_index;
    if (!self->_includeHidden && ![v4 isVisible])
    {
      v5 = 0;
    }

    if (v5)
    {
      return v5;
    }
  }

  return 0;
}

@end