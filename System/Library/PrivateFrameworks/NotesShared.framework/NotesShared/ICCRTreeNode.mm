@interface ICCRTreeNode
+ (id)CRProperties;
- (BOOL)isInLoop;
- (BOOL)isLoopNode;
- (ICCRTree)tree;
- (ICCRTreeNode)initWithValue:(id)value parent:(id)parent tree:(id)tree;
- (ICCRTreeNode)parent;
- (NSArray)children;
- (id)insertNodeWithValue:(id)value atIndex:(unint64_t)index;
- (id)parentReference;
- (void)insertNode:(id)node atIndex:(unint64_t)index;
- (void)moveNode:(id)node toIndex:(unint64_t)index;
- (void)removeNode:(id)node;
- (void)setParent:(id)parent;
@end

@implementation ICCRTreeNode

- (ICCRTreeNode)initWithValue:(id)value parent:(id)parent tree:(id)tree
{
  valueCopy = value;
  parentCopy = parent;
  treeCopy = tree;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v17.receiver = self;
  v17.super_class = ICCRTreeNode;
  v12 = [(ICCRObject *)&v17 initWithDocument:0 identity:uUID];

  if (v12)
  {
    objc_storeWeak(&v12->_tree, treeCopy);
    [(ICCRTreeNode *)v12 setValue:valueCopy];
    if (parentCopy)
    {
      v13 = [ICCRWeakReference alloc];
      document = [treeCopy document];
      v15 = [(ICCRWeakReference *)v13 initWithContents:parentCopy document:document];
      [(ICCRTreeNode *)v12 setParentRef:v15];
    }
  }

  return v12;
}

+ (id)CRProperties
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"value";
  v2 = +[ICCRConstant constant];
  v6[1] = @"parentRef";
  v7[0] = v2;
  v3 = [ICCRRegister registerWithType:0 contents:0];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)parentReference
{
  fields = [(ICCRObject *)self fields];
  v3 = [fields objectForKeyedSubscript:@"parentRef"];
  contents = [v3 contents];

  return contents;
}

- (ICCRTreeNode)parent
{
  parentReference = [(ICCRTreeNode *)self parentReference];
  contents = [parentReference contents];

  return contents;
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  v5 = [ICCRWeakReference alloc];
  tree = [(ICCRTreeNode *)self tree];
  document = [tree document];
  v7 = [(ICCRWeakReference *)v5 initWithContents:parentCopy document:document];

  fields = [(ICCRObject *)self fields];
  v9 = [fields objectForKeyedSubscript:@"parentRef"];
  [v9 setContents:v7];
}

- (BOOL)isInLoop
{
  parent = [(ICCRTreeNode *)self parent];
  parent2 = parent;
  for (i = parent != 0; parent2 != self && parent2; i = parent2 != 0)
  {
    v6 = parent2;
    parent2 = [(ICCRTreeNode *)parent2 parent];
  }

  return i;
}

- (BOOL)isLoopNode
{
  if (![(ICCRTreeNode *)self isInLoop])
  {
    return 0;
  }

  parent = [(ICCRTreeNode *)self parent];
  if (!parent)
  {
    return 0;
  }

  v4 = parent;
  v5 = -1;
  while (1)
  {
    tree = [(ICCRTreeNode *)self tree];
    nodes = [tree nodes];
    v8 = [nodes indexOfObject:v4];

    if (v5 >= v8)
    {
      v5 = v8;
    }

    if (v4 == self)
    {
      break;
    }

    parent2 = [(ICCRTreeNode *)v4 parent];

    v4 = parent2;
    if (!parent2)
    {
      return 0;
    }
  }

  tree2 = [(ICCRTreeNode *)self tree];
  nodes2 = [tree2 nodes];
  v10 = v5 == [nodes2 indexOfObject:self];

  return v10;
}

- (NSArray)children
{
  children = self->_children;
  if (!children)
  {
    tree = [(ICCRTreeNode *)self tree];
    [tree computeChildren];

    children = self->_children;
  }

  if (children)
  {
    v5 = children;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)insertNode:(id)node atIndex:(unint64_t)index
{
  nodeCopy = node;
  tree = [(ICCRTreeNode *)self tree];
  nodes = [tree nodes];
  v8 = [nodes containsObject:nodeCopy];

  tree2 = [(ICCRTreeNode *)self tree];
  v10 = tree2;
  if (v8)
  {
    [tree2 moveNode:nodeCopy toParent:self atIndex:index];
  }

  else
  {
    [tree2 insertNode:nodeCopy inParent:self atIndex:index];
  }
}

- (id)insertNodeWithValue:(id)value atIndex:(unint64_t)index
{
  valueCopy = value;
  tree = [(ICCRTreeNode *)self tree];
  v8 = [tree insertNodeWithValue:valueCopy inParent:self atIndex:index];

  return v8;
}

- (void)moveNode:(id)node toIndex:(unint64_t)index
{
  nodeCopy = node;
  tree = [(ICCRTreeNode *)self tree];
  [tree moveNode:nodeCopy toParent:self atIndex:index];
}

- (void)removeNode:(id)node
{
  nodeCopy = node;
  children = [(ICCRTreeNode *)self children];
  v5 = [children containsObject:nodeCopy];

  if (v5)
  {
    tree = [(ICCRTreeNode *)self tree];
    [tree removeNode:nodeCopy];
  }
}

- (ICCRTree)tree
{
  WeakRetained = objc_loadWeakRetained(&self->_tree);

  return WeakRetained;
}

@end