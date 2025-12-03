@interface SUUIFilterBarViewElement
- (SUUIDividerViewElement)bottomDivider;
- (id)childViewElementsForAlignment:(unint64_t)alignment;
- (void)enumerateChildrenUsingBlock:(id)block;
@end

@implementation SUUIFilterBarViewElement

- (SUUIDividerViewElement)bottomDivider
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__SUUIFilterBarViewElement_bottomDivider__block_invoke;
  v5[3] = &unk_2798F5FB8;
  v5[4] = &v6;
  v4.receiver = self;
  v4.super_class = SUUIFilterBarViewElement;
  [(SUUIViewElement *)&v4 enumerateChildrenUsingBlock:v5];
  v2 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v2;
}

void __41__SUUIFilterBarViewElement_bottomDivider__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 32)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)childViewElementsForAlignment:(unint64_t)alignment
{
  v25 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if (alignment - 1 <= 2)
  {
    [(SUUIViewElement *)self flattenedChildren];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v6 = v21 = 0u;
    v7 = 0;
    v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v20 + 1) + 8 * i) elementType] == 127)
          {
            ++v7;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0;
    v11 = [v6 count];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__SUUIFilterBarViewElement_childViewElementsForAlignment___block_invoke;
    v13[3] = &unk_2798F9130;
    v15 = v19;
    v16 = v7;
    v17 = v11;
    alignmentCopy = alignment;
    v14 = array;
    [v6 enumerateObjectsUsingBlock:v13];

    _Block_object_dispose(v19, 8);
  }

  return array;
}

void __58__SUUIFilterBarViewElement_childViewElementsForAlignment___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [v12 style];
  v6 = [v5 elementAlignment];

  if (v6)
  {
    goto LABEL_2;
  }

  if (*(a1 + 48) < 1)
  {
    if (*(a1 + 56) == 3)
    {
      v6 = qword_259FCB1A0[a3];
      goto LABEL_2;
    }

    v10 = [v12 elementType];
    v9 = *(*(a1 + 40) + 8);
    if (v10 == 109)
    {
      v6 = 2;
      *(v9 + 24) = 2;
      goto LABEL_2;
    }

    if (v10 == 69)
    {
      *(v9 + 24) = 2;
      v6 = 3;
      goto LABEL_2;
    }

LABEL_14:
    v6 = qword_259FCB1A0[*(v9 + 24)];
    goto LABEL_2;
  }

  if ([v12 elementType] != 127)
  {
    v9 = *(*(a1 + 40) + 8);
    goto LABEL_14;
  }

  v7 = *(*(a1 + 40) + 8);
  if (*(a1 + 48) == 1)
  {
    v6 = 0;
    v8 = 2;
  }

  else
  {
    v6 = 0;
    v11 = *(v7 + 24);
    if (v11 >= 1)
    {
      v11 = 1;
    }

    v8 = v11 + 1;
  }

  *(v7 + 24) = v8;
LABEL_2:
  if (v6 == *(a1 + 64))
  {
    [*(a1 + 32) addObject:v12];
  }
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SUUIFilterBarViewElement_enumerateChildrenUsingBlock___block_invoke;
  v7[3] = &unk_2798F6008;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = SUUIFilterBarViewElement;
  v5 = blockCopy;
  [(SUUIViewElement *)&v6 enumerateChildrenUsingBlock:v7];
}

void __56__SUUIFilterBarViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  v4 = (v3 - 8) > 0x3D || ((1 << (v3 - 8)) & 0x2000060000000031) == 0;
  if (!v4 || (v3 - 106) <= 0x2E && ((1 << (v3 - 106)) & 0x400900200009) != 0)
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end