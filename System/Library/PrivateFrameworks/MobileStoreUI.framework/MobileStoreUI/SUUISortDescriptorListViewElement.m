@interface SUUISortDescriptorListViewElement
- (NSArray)sortDescriptorViewElements;
@end

@implementation SUUISortDescriptorListViewElement

- (NSArray)sortDescriptorViewElements
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__94;
  v9 = __Block_byref_object_dispose__94;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SUUISortDescriptorListViewElement_sortDescriptorViewElements__block_invoke;
  v4[3] = &unk_2798F5FB8;
  v4[4] = &v5;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __63__SUUISortDescriptorListViewElement_sortDescriptorViewElements__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 elementType] == 125)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    if (!v3)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v3 addObject:v7];
  }
}

@end