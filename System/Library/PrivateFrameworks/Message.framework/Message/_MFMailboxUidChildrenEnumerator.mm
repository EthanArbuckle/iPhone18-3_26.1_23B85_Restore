@interface _MFMailboxUidChildrenEnumerator
- (id)_initWithMailbox:(id)a3 includeHiddenChildren:(BOOL)a4;
- (id)nextObject;
@end

@implementation _MFMailboxUidChildrenEnumerator

- (id)nextObject
{
  v3 = [(NSMutableArray *)self->_mailboxes count];
  while (self->_index < v3)
  {
    v4 = [(NSMutableArray *)self->_mailboxes objectAtIndex:?];
    v5 = v4;
    ++self->_index;
    if (self->_includeHidden || [v4 isVisible])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      goto LABEL_10;
    }
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)_initWithMailbox:(id)a3 includeHiddenChildren:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _MFMailboxUidChildrenEnumerator;
  v7 = [(_MFMailboxUidChildrenEnumerator *)&v11 init];
  if (v7)
  {
    v8 = [v6 _mutableChildren];
    mailboxes = v7->_mailboxes;
    v7->_mailboxes = v8;

    v7->_includeHidden = a4;
  }

  return v7;
}

@end