@interface MailboxHierarchyNode
- (MailboxHierarchyNode)initWithMailbox:(id)mailbox;
- (id)description;
- (id)findNodeForMailbox:(id)mailbox;
- (id)removeNodeForMailbox:(id)mailbox;
- (void)addChild:(id)child;
@end

@implementation MailboxHierarchyNode

- (MailboxHierarchyNode)initWithMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v10.receiver = self;
  v10.super_class = MailboxHierarchyNode;
  v6 = [(MailboxHierarchyNode *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailbox, mailbox);
    if (![(MFMailboxUid *)v7->_mailbox mailboxType])
    {
      displayName = [mailboxCopy displayName];
      [(MailboxHierarchyNode *)v7 setDisplayName:displayName];
    }
  }

  return v7;
}

- (void)addChild:(id)child
{
  childCopy = child;
  children = self->_children;
  v8 = childCopy;
  if (!children)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_children;
    self->_children = v6;

    children = self->_children;
    childCopy = v8;
  }

  [(NSMutableArray *)children ef_insertObject:childCopy usingSortFunction:_CompareMailboxHierarchyNodes context:0 allowDuplicates:1];
}

- (id)removeNodeForMailbox:(id)mailbox
{
  v3 = [(MailboxHierarchyNode *)self _findNodeForMailbox:mailbox removeNode:1];

  return v3;
}

- (id)findNodeForMailbox:(id)mailbox
{
  v3 = [(MailboxHierarchyNode *)self _findNodeForMailbox:mailbox removeNode:0];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MailboxHierarchyNode;
  v4 = [(MailboxHierarchyNode *)&v8 description];
  mailbox = [(MailboxHierarchyNode *)self mailbox];
  v6 = [v3 stringWithFormat:@"%@, %@", v4, mailbox];

  return v6;
}

@end