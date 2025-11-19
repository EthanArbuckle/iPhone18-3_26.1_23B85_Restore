@interface _MFMailboxUidChildrenEnumerator
- (id)_initWithMailbox:(id)a3 includeHiddenChildren:(BOOL)a4;
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

- (id)_initWithMailbox:(id)a3 includeHiddenChildren:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = _MFMailboxUidChildrenEnumerator;
  v6 = [(_MFMailboxUidChildrenEnumerator *)&v8 init];
  if (v6)
  {
    v6->_mailboxes = [a3 _mutableChildren];
    v6->_includeHidden = a4;
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