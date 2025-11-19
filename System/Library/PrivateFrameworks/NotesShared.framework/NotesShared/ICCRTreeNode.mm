@interface ICCRTreeNode
+ (id)CRProperties;
- (BOOL)isInLoop;
- (BOOL)isLoopNode;
- (ICCRTree)tree;
- (ICCRTreeNode)initWithValue:(id)a3 parent:(id)a4 tree:(id)a5;
- (ICCRTreeNode)parent;
- (NSArray)children;
- (id)insertNodeWithValue:(id)a3 atIndex:(unint64_t)a4;
- (id)parentReference;
- (void)insertNode:(id)a3 atIndex:(unint64_t)a4;
- (void)moveNode:(id)a3 toIndex:(unint64_t)a4;
- (void)removeNode:(id)a3;
- (void)setParent:(id)a3;
@end

@implementation ICCRTreeNode

- (ICCRTreeNode)initWithValue:(id)a3 parent:(id)a4 tree:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCAD78] UUID];
  v17.receiver = self;
  v17.super_class = ICCRTreeNode;
  v12 = [(ICCRObject *)&v17 initWithDocument:0 identity:v11];

  if (v12)
  {
    objc_storeWeak(&v12->_tree, v10);
    [(ICCRTreeNode *)v12 setValue:v8];
    if (v9)
    {
      v13 = [ICCRWeakReference alloc];
      v14 = [v10 document];
      v15 = [(ICCRWeakReference *)v13 initWithContents:v9 document:v14];
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
  v2 = [(ICCRObject *)self fields];
  v3 = [v2 objectForKeyedSubscript:@"parentRef"];
  v4 = [v3 contents];

  return v4;
}

- (ICCRTreeNode)parent
{
  v2 = [(ICCRTreeNode *)self parentReference];
  v3 = [v2 contents];

  return v3;
}

- (void)setParent:(id)a3
{
  v4 = a3;
  v5 = [ICCRWeakReference alloc];
  v10 = [(ICCRTreeNode *)self tree];
  v6 = [v10 document];
  v7 = [(ICCRWeakReference *)v5 initWithContents:v4 document:v6];

  v8 = [(ICCRObject *)self fields];
  v9 = [v8 objectForKeyedSubscript:@"parentRef"];
  [v9 setContents:v7];
}

- (BOOL)isInLoop
{
  v3 = [(ICCRTreeNode *)self parent];
  v4 = v3;
  for (i = v3 != 0; v4 != self && v4; i = v4 != 0)
  {
    v6 = v4;
    v4 = [(ICCRTreeNode *)v4 parent];
  }

  return i;
}

- (BOOL)isLoopNode
{
  if (![(ICCRTreeNode *)self isInLoop])
  {
    return 0;
  }

  v3 = [(ICCRTreeNode *)self parent];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = -1;
  while (1)
  {
    v6 = [(ICCRTreeNode *)self tree];
    v7 = [v6 nodes];
    v8 = [v7 indexOfObject:v4];

    if (v5 >= v8)
    {
      v5 = v8;
    }

    if (v4 == self)
    {
      break;
    }

    v9 = [(ICCRTreeNode *)v4 parent];

    v4 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  v12 = [(ICCRTreeNode *)self tree];
  v13 = [v12 nodes];
  v10 = v5 == [v13 indexOfObject:self];

  return v10;
}

- (NSArray)children
{
  children = self->_children;
  if (!children)
  {
    v4 = [(ICCRTreeNode *)self tree];
    [v4 computeChildren];

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

- (void)insertNode:(id)a3 atIndex:(unint64_t)a4
{
  v11 = a3;
  v6 = [(ICCRTreeNode *)self tree];
  v7 = [v6 nodes];
  v8 = [v7 containsObject:v11];

  v9 = [(ICCRTreeNode *)self tree];
  v10 = v9;
  if (v8)
  {
    [v9 moveNode:v11 toParent:self atIndex:a4];
  }

  else
  {
    [v9 insertNode:v11 inParent:self atIndex:a4];
  }
}

- (id)insertNodeWithValue:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ICCRTreeNode *)self tree];
  v8 = [v7 insertNodeWithValue:v6 inParent:self atIndex:a4];

  return v8;
}

- (void)moveNode:(id)a3 toIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ICCRTreeNode *)self tree];
  [v7 moveNode:v6 toParent:self atIndex:a4];
}

- (void)removeNode:(id)a3
{
  v7 = a3;
  v4 = [(ICCRTreeNode *)self children];
  v5 = [v4 containsObject:v7];

  if (v5)
  {
    v6 = [(ICCRTreeNode *)self tree];
    [v6 removeNode:v7];
  }
}

- (ICCRTree)tree
{
  WeakRetained = objc_loadWeakRetained(&self->_tree);

  return WeakRetained;
}

@end