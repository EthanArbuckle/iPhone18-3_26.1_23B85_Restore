@interface MailboxHierarchyNode
- (MailboxHierarchyNode)initWithMailbox:(id)a3;
- (id)description;
- (id)findNodeForMailbox:(id)a3;
- (id)removeNodeForMailbox:(id)a3;
- (void)addChild:(id)a3;
@end

@implementation MailboxHierarchyNode

- (MailboxHierarchyNode)initWithMailbox:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MailboxHierarchyNode;
  v6 = [(MailboxHierarchyNode *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailbox, a3);
    if (![(MFMailboxUid *)v7->_mailbox mailboxType])
    {
      v8 = [v5 displayName];
      [(MailboxHierarchyNode *)v7 setDisplayName:v8];
    }
  }

  return v7;
}

- (void)addChild:(id)a3
{
  v4 = a3;
  children = self->_children;
  v8 = v4;
  if (!children)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_children;
    self->_children = v6;

    children = self->_children;
    v4 = v8;
  }

  [(NSMutableArray *)children ef_insertObject:v4 usingSortFunction:sub_10002DD44 context:0 allowDuplicates:1];
}

- (id)removeNodeForMailbox:(id)a3
{
  v3 = [(MailboxHierarchyNode *)self _findNodeForMailbox:a3 removeNode:1];

  return v3;
}

- (id)findNodeForMailbox:(id)a3
{
  v3 = [(MailboxHierarchyNode *)self _findNodeForMailbox:a3 removeNode:0];

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = MailboxHierarchyNode;
  v3 = [(MailboxHierarchyNode *)&v7 description];
  v4 = [(MailboxHierarchyNode *)self mailbox];
  v5 = [NSString stringWithFormat:@"%@, %@", v3, v4];

  return v5;
}

@end