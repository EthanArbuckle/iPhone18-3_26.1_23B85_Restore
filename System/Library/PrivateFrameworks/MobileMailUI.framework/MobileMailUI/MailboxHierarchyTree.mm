@interface MailboxHierarchyTree
- (BOOL)mailboxHasSubMailboxes:(id)mailboxes;
- (MailboxHierarchyTree)initWithRootMailbox:(id)mailbox;
- (id)addChildMailbox:(id)mailbox forMailboxNode:(id)node;
- (id)displayNameForMailbox:(id)mailbox;
- (id)flattenedMailboxTreeRepresentation;
- (id)parentForMailbox:(id)mailbox;
- (int)levelForMailbox:(id)mailbox;
- (void)_addChildNode:(id)node toParentNode:(id)parentNode;
- (void)moveMailbox:(id)mailbox toParent:(id)parent;
- (void)removeNodeForMailbox:(id)mailbox;
- (void)setDisplayName:(id)name forMailbox:(id)mailbox;
@end

@implementation MailboxHierarchyTree

- (MailboxHierarchyTree)initWithRootMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v11.receiver = self;
  v11.super_class = MailboxHierarchyTree;
  v5 = [(MailboxHierarchyTree *)&v11 init];
  if (v5)
  {
    v6 = [[MailboxHierarchyNode alloc] initWithMailbox:mailboxCopy];
    rootMailboxNode = v5->_rootMailboxNode;
    v5->_rootMailboxNode = v6;

    [(MailboxHierarchyNode *)v5->_rootMailboxNode setLevel:0xFFFFFFFFLL];
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    nodesByMailbox = v5->_nodesByMailbox;
    v5->_nodesByMailbox = v8;

    [(NSMutableDictionary *)v5->_nodesByMailbox setObject:v5->_rootMailboxNode forKey:mailboxCopy];
  }

  return v5;
}

- (id)addChildMailbox:(id)mailbox forMailboxNode:(id)node
{
  mailboxCopy = mailbox;
  nodeCopy = node;
  if (mailboxCopy)
  {
    v8 = [[MailboxHierarchyNode alloc] initWithMailbox:mailboxCopy];
    [(MailboxHierarchyTree *)self _addChildNode:v8 toParentNode:nodeCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_addChildNode:(id)node toParentNode:(id)parentNode
{
  nodeCopy = node;
  parentNodeCopy = parentNode;
  [parentNodeCopy addChild:nodeCopy];
  mailbox = [parentNodeCopy mailbox];
  [nodeCopy setParentMailbox:mailbox];

  [nodeCopy setLevel:{objc_msgSend(parentNodeCopy, "level") + 1}];
  nodesByMailbox = self->_nodesByMailbox;
  mailbox2 = [nodeCopy mailbox];
  [(NSMutableDictionary *)nodesByMailbox setObject:nodeCopy forKey:mailbox2];
}

- (id)flattenedMailboxTreeRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(MailboxHierarchyTree *)self _insertMailboxUidsFlattenedFromMailboxNode:self->_rootMailboxNode intoArray:v3 currentLevel:0];

  return v3;
}

- (void)removeNodeForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v4 = [(MailboxHierarchyNode *)self->_rootMailboxNode removeNodeForMailbox:?];
  [(NSMutableDictionary *)self->_nodesByMailbox removeObjectForKey:mailboxCopy];
}

- (void)moveMailbox:(id)mailbox toParent:(id)parent
{
  mailboxCopy = mailbox;
  parentCopy = parent;
  v7 = [(NSMutableDictionary *)self->_nodesByMailbox objectForKey:mailboxCopy];
  v8 = [(NSMutableDictionary *)self->_nodesByMailbox objectForKey:parentCopy];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    [(MailboxHierarchyTree *)self removeNodeForMailbox:mailboxCopy];
    [(MailboxHierarchyTree *)self _addChildNode:v7 toParentNode:v9];
  }
}

- (id)parentForMailbox:(id)mailbox
{
  v3 = [(NSMutableDictionary *)self->_nodesByMailbox objectForKey:mailbox];
  parentMailbox = [v3 parentMailbox];

  return parentMailbox;
}

- (int)levelForMailbox:(id)mailbox
{
  v3 = [(NSMutableDictionary *)self->_nodesByMailbox objectForKey:mailbox];
  v4 = v3;
  if (v3)
  {
    level = [v3 level];
  }

  else
  {
    level = 0;
  }

  return level;
}

- (void)setDisplayName:(id)name forMailbox:(id)mailbox
{
  nameCopy = name;
  mailboxCopy = mailbox;
  v7 = [(NSMutableDictionary *)self->_nodesByMailbox objectForKey:mailboxCopy];
  [v7 setDisplayName:nameCopy];
  parentMailbox = [v7 parentMailbox];
  [(MailboxHierarchyTree *)self moveMailbox:mailboxCopy toParent:parentMailbox];
}

- (id)displayNameForMailbox:(id)mailbox
{
  v3 = [(NSMutableDictionary *)self->_nodesByMailbox objectForKey:mailbox];
  displayName = [v3 displayName];

  return displayName;
}

- (BOOL)mailboxHasSubMailboxes:(id)mailboxes
{
  v3 = [(NSMutableDictionary *)self->_nodesByMailbox objectForKey:mailboxes];
  children = [v3 children];
  v5 = [children count] != 0;

  return v5;
}

@end