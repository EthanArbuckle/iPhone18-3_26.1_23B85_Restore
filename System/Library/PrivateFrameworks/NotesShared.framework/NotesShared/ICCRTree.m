@interface ICCRTree
+ (id)CRProperties;
- (ICCROrderedSet)nodes;
- (ICCRTree)init;
- (ICCRTree)initWithICCRCoder:(id)a3;
- (ICCRTreeNode)root;
- (id)insertNodeWithValue:(id)a3 inParent:(id)a4 atIndex:(unint64_t)a5;
- (int64_t)count;
- (unint64_t)insertIndexForNode:(id)a3 childIndex:(unint64_t)a4;
- (void)computeChildren;
- (void)insertNode:(id)a3 inParent:(id)a4 atIndex:(unint64_t)a5;
- (void)invalidateChildren;
- (void)mergeWith:(id)a3;
- (void)moveNode:(id)a3 toParent:(id)a4 atIndex:(unint64_t)a5;
- (void)removeNode:(id)a3;
- (void)setDocument:(id)a3;
- (void)setNodeTree:(id)a3 insertAtIndex:(unint64_t)a4;
@end

@implementation ICCRTree

- (ICCRTree)init
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v8.receiver = self;
  v8.super_class = ICCRTree;
  v4 = [(ICCRObject *)&v8 initWithDocument:0 identity:v3];

  if (v4)
  {
    v5 = [[ICCRTreeNode alloc] initWithValue:@"root" parent:0 tree:v4];
    v6 = [(ICCRTree *)v4 nodes];
    [v6 insertObject:v5 atIndex:0];
  }

  return v4;
}

- (ICCRTree)initWithICCRCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICCRTree;
  v5 = [(ICCRObject *)&v11 initWithICCRCoder:v4];
  v6 = v5;
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__ICCRTree_initWithICCRCoder___block_invoke;
    v9[3] = &unk_278195DA8;
    v10 = v5;
    v7 = [(ICCRTree *)v10 nodes];
    [v4 addDecoderCompletionHandler:v9 dependency:v7 for:v10];
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
  v2 = [(ICCRObject *)self fields];
  v3 = [v2 objectForKeyedSubscript:@"nodes"];

  return v3;
}

- (ICCRTreeNode)root
{
  v2 = [(ICCRTree *)self nodes];
  v3 = [v2 objectAtIndexedSubscript:0];

  return v3;
}

- (int64_t)count
{
  v2 = [(ICCRTree *)self nodes];
  v3 = [v2 count];

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

- (unint64_t)insertIndexForNode:(id)a3 childIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = [v6 children];

    v9 = [v8 objectAtIndexedSubscript:a4 - 1];

    v10 = [(ICCRTree *)self nodes];
    v7 = v10;
    v11 = v9;
  }

  else
  {
    v10 = [(ICCRTree *)self nodes];
    v9 = v10;
    v11 = v7;
  }

  v12 = [v10 indexOfObject:v11];

  return v12 + 1;
}

- (id)insertNodeWithValue:(id)a3 inParent:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[ICCRTreeNode alloc] initWithValue:v9 parent:v8 tree:self];

  [(ICCRTree *)self insertNode:v10 inParent:v8 atIndex:a5];

  return v10;
}

- (void)insertNode:(id)a3 inParent:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(ICCRTree *)self insertIndexForNode:v8 childIndex:a5];
  [v9 setParent:v8];

  [(ICCRTree *)self setNodeTree:v9 insertAtIndex:v10];

  [(ICCRTree *)self invalidateChildren];
}

- (void)setNodeTree:(id)a3 insertAtIndex:(unint64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ICCRTree *)self nodes];
  [v7 insertObject:v6 atIndex:a4];

  v8 = [v6 tree];

  if (v8 != self)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [v6 children];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v9);
          }

          [(ICCRTree *)self setNodeTree:*(*(&v15 + 1) + 8 * v13++) insertAtIndex:a4 + 1];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    v14 = [v6 tree];
    [v14 removeNode:v6];

    [v6 setTree:self];
  }
}

- (void)moveNode:(id)a3 toParent:(id)a4 atIndex:(unint64_t)a5
{
  v15 = a3;
  v8 = a4;
  v9 = [v15 tree];

  if (v9 != self)
  {
    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Can only move node from this tree." userInfo:0];
    objc_exception_throw(v14);
  }

  v10 = [(ICCRTree *)self insertIndexForNode:v8 childIndex:a5];
  v11 = [(ICCRTree *)self nodes];
  v12 = [v11 indexOfObject:v15];

  v13 = [(ICCRTree *)self nodes];
  [v13 moveObject:v15 toIndex:{((__PAIR128__(v10, v12) - v10) >> 64)}];

  [v15 setParent:v8];
  [(ICCRTree *)self invalidateChildren];
}

- (void)removeNode:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 children];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(ICCRTree *)self removeNode:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = [(ICCRTree *)self nodes];
  [v10 removeObject:v4];

  [(ICCRTree *)self invalidateChildren];
}

- (void)setDocument:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICCRTree;
  [(ICCRObject *)&v6 setDocument:a3];
  v4 = [(ICCRTree *)self nodes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__ICCRTree_setDocument___block_invoke;
  v5[3] = &unk_278195D80;
  v5[4] = self;
  [v4 enumerateWithBlock:v5];
}

- (void)mergeWith:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICCRTree;
  [(ICCRObject *)&v4 mergeWith:a3];
  [(ICCRTree *)self invalidateChildren];
}

- (void)invalidateChildren
{
  v2 = [(ICCRTree *)self nodes];
  [v2 enumerateWithBlock:&__block_literal_global_12];
}

- (void)computeChildren
{
  v3 = [(ICCRTree *)self root];
  v4 = [(ICCRTree *)self nodes];
  [v4 enumerateWithBlock:&__block_literal_global_67];

  v5 = [(ICCRTree *)self nodes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__ICCRTree_computeChildren__block_invoke_2;
  v7[3] = &unk_278195DF0;
  v8 = v3;
  v9 = self;
  v6 = v3;
  [v5 enumerateWithBlock:v7];
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