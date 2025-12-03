@interface ICCRTree
+ (id)CRProperties;
- (ICCROrderedSet)nodes;
- (ICCRTree)init;
- (ICCRTree)initWithICCRCoder:(id)coder;
- (ICCRTreeNode)root;
- (id)insertNodeWithValue:(id)value inParent:(id)parent atIndex:(unint64_t)index;
- (int64_t)count;
- (unint64_t)insertIndexForNode:(id)node childIndex:(unint64_t)index;
- (void)computeChildren;
- (void)insertNode:(id)node inParent:(id)parent atIndex:(unint64_t)index;
- (void)invalidateChildren;
- (void)mergeWith:(id)with;
- (void)moveNode:(id)node toParent:(id)parent atIndex:(unint64_t)index;
- (void)removeNode:(id)node;
- (void)setDocument:(id)document;
- (void)setNodeTree:(id)tree insertAtIndex:(unint64_t)index;
@end

@implementation ICCRTree

- (ICCRTree)init
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v8.receiver = self;
  v8.super_class = ICCRTree;
  v4 = [(ICCRObject *)&v8 initWithDocument:0 identity:uUID];

  if (v4)
  {
    v5 = [[ICCRTreeNode alloc] initWithValue:@"root" parent:0 tree:v4];
    nodes = [(ICCRTree *)v4 nodes];
    [nodes insertObject:v5 atIndex:0];
  }

  return v4;
}

- (ICCRTree)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ICCRTree;
  v5 = [(ICCRObject *)&v11 initWithICCRCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__ICCRTree_initWithICCRCoder___block_invoke;
    v9[3] = &unk_278195DA8;
    v10 = v5;
    nodes = [(ICCRTree *)v10 nodes];
    [coderCopy addDecoderCompletionHandler:v9 dependency:nodes for:v10];
  }

  return v6;
}

void __30__ICCRTree_initWithICCRCoder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodes];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __30__ICCRTree_initWithICCRCoder___block_invoke_2;
  v3[3] = &unk_278195D80;
  v4 = *(a1 + 32);
  [v2 enumerateWithBlock:v3];
}

- (ICCROrderedSet)nodes
{
  fields = [(ICCRObject *)self fields];
  v3 = [fields objectForKeyedSubscript:@"nodes"];

  return v3;
}

- (ICCRTreeNode)root
{
  nodes = [(ICCRTree *)self nodes];
  v3 = [nodes objectAtIndexedSubscript:0];

  return v3;
}

- (int64_t)count
{
  nodes = [(ICCRTree *)self nodes];
  v3 = [nodes count];

  return v3;
}

+ (id)CRProperties
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"nodes";
  v2 = objc_alloc_init(ICCROrderedSet);
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (unint64_t)insertIndexForNode:(id)node childIndex:(unint64_t)index
{
  nodeCopy = node;
  v7 = nodeCopy;
  if (index)
  {
    children = [nodeCopy children];

    v9 = [children objectAtIndexedSubscript:index - 1];

    nodes = [(ICCRTree *)self nodes];
    v7 = nodes;
    v11 = v9;
  }

  else
  {
    nodes = [(ICCRTree *)self nodes];
    v9 = nodes;
    v11 = v7;
  }

  v12 = [nodes indexOfObject:v11];

  return v12 + 1;
}

- (id)insertNodeWithValue:(id)value inParent:(id)parent atIndex:(unint64_t)index
{
  parentCopy = parent;
  valueCopy = value;
  v10 = [[ICCRTreeNode alloc] initWithValue:valueCopy parent:parentCopy tree:self];

  [(ICCRTree *)self insertNode:v10 inParent:parentCopy atIndex:index];

  return v10;
}

- (void)insertNode:(id)node inParent:(id)parent atIndex:(unint64_t)index
{
  parentCopy = parent;
  nodeCopy = node;
  v10 = [(ICCRTree *)self insertIndexForNode:parentCopy childIndex:index];
  [nodeCopy setParent:parentCopy];

  [(ICCRTree *)self setNodeTree:nodeCopy insertAtIndex:v10];

  [(ICCRTree *)self invalidateChildren];
}

- (void)setNodeTree:(id)tree insertAtIndex:(unint64_t)index
{
  v20 = *MEMORY[0x277D85DE8];
  treeCopy = tree;
  nodes = [(ICCRTree *)self nodes];
  [nodes insertObject:treeCopy atIndex:index];

  tree = [treeCopy tree];

  if (tree != self)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    children = [treeCopy children];
    v10 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(children);
          }

          [(ICCRTree *)self setNodeTree:*(*(&v15 + 1) + 8 * v13++) insertAtIndex:index + 1];
        }

        while (v11 != v13);
        v11 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    tree2 = [treeCopy tree];
    [tree2 removeNode:treeCopy];

    [treeCopy setTree:self];
  }
}

- (void)moveNode:(id)node toParent:(id)parent atIndex:(unint64_t)index
{
  nodeCopy = node;
  parentCopy = parent;
  tree = [nodeCopy tree];

  if (tree != self)
  {
    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Can only move node from this tree." userInfo:0];
    objc_exception_throw(v14);
  }

  v10 = [(ICCRTree *)self insertIndexForNode:parentCopy childIndex:index];
  nodes = [(ICCRTree *)self nodes];
  v12 = [nodes indexOfObject:nodeCopy];

  nodes2 = [(ICCRTree *)self nodes];
  [nodes2 moveObject:nodeCopy toIndex:{((__PAIR128__(v10, v12) - v10) >> 64)}];

  [nodeCopy setParent:parentCopy];
  [(ICCRTree *)self invalidateChildren];
}

- (void)removeNode:(id)node
{
  v16 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  children = [nodeCopy children];
  v6 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(children);
        }

        [(ICCRTree *)self removeNode:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  nodes = [(ICCRTree *)self nodes];
  [nodes removeObject:nodeCopy];

  [(ICCRTree *)self invalidateChildren];
}

- (void)setDocument:(id)document
{
  v6.receiver = self;
  v6.super_class = ICCRTree;
  [(ICCRObject *)&v6 setDocument:document];
  nodes = [(ICCRTree *)self nodes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__ICCRTree_setDocument___block_invoke;
  v5[3] = &unk_278195D80;
  v5[4] = self;
  [nodes enumerateWithBlock:v5];
}

- (void)mergeWith:(id)with
{
  v4.receiver = self;
  v4.super_class = ICCRTree;
  [(ICCRObject *)&v4 mergeWith:with];
  [(ICCRTree *)self invalidateChildren];
}

- (void)invalidateChildren
{
  nodes = [(ICCRTree *)self nodes];
  [nodes enumerateWithBlock:&__block_literal_global_12];
}

- (void)computeChildren
{
  root = [(ICCRTree *)self root];
  nodes = [(ICCRTree *)self nodes];
  [nodes enumerateWithBlock:&__block_literal_global_67];

  nodes2 = [(ICCRTree *)self nodes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__ICCRTree_computeChildren__block_invoke_2;
  v7[3] = &unk_278195DF0;
  v8 = root;
  selfCopy = self;
  v6 = root;
  [nodes2 enumerateWithBlock:v7];
}

void __27__ICCRTree_computeChildren__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB18];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  [v3 setChildren:v4];
}

void __27__ICCRTree_computeChildren__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 parentReference];

  if (v3)
  {
    v4 = [v14 parent];
    if (v4)
    {
      v5 = v4;
      v6 = [v14 parent];
      if (v6 == v14)
      {
      }

      else
      {
        v7 = [v14 isLoopNode];

        if ((v7 & 1) == 0)
        {
          v8 = [v14 parent];
          v9 = [v8 children];
          [v9 addObject:v14];

LABEL_14:
          goto LABEL_15;
        }
      }
    }

    v10 = [v14 parent];
    if (v10 != *(a1 + 32))
    {
      v11 = [*(a1 + 40) nodes];
      v12 = [v14 parent];
      if ([v11 containsObject:v12])
      {
        v13 = [v14 isLoopNode];

        if ((v13 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_13:
        v8 = [*(a1 + 32) children];
        [v8 addObject:v14];
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

LABEL_15:
}

@end