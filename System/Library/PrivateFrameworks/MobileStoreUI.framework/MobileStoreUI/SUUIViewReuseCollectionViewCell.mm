@interface SUUIViewReuseCollectionViewCell
- (SUUIViewReuseCollectionViewCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (id)existingViewForIndex:(int64_t)index;
- (id)existingViewsForReuseIdentifier:(id)identifier;
- (void)applyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)enumerateExistingViewsForReuseIdentifier:(id)identifier usingBlock:(id)block;
- (void)modifyUsingBlock:(id)block;
- (void)setBackgroundColor:(id)color;
- (void)setContentInset:(UIEdgeInsets)inset;
@end

@implementation SUUIViewReuseCollectionViewCell

- (SUUIViewReuseCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SUUIViewReuseCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[SUUIViewReusePool alloc] initWithParentView:v3];
    viewPool = v3->_viewPool;
    v3->_viewPool = v4;
  }

  return v3;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_allExistingViews;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_isKindOfClass())
        {
          [v8 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = SUUIViewReuseCollectionViewCell;
  [(SUUIViewReuseCollectionViewCell *)&v9 dealloc];
}

- (void)enumerateExistingViewsForReuseIdentifier:(id)identifier usingBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  blockCopy = block;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_allExistingViews;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = SUUIReuseIdentifierForView(v14);
        if (v15 && [identifierCopy isEqualToString:v15])
        {
          v16 = 0;
          blockCopy[2](blockCopy, v14, v11, &v16);
          if (v16)
          {

            goto LABEL_14;
          }

          ++v11;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (id)existingViewForIndex:(int64_t)index
{
  if ([(NSArray *)self->_allExistingViews count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_allExistingViews objectAtIndex:index];
  }

  return v5;
}

- (id)existingViewsForReuseIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_allExistingViews;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = SUUIReuseIdentifierForView(v11);
        if (v12 && [identifierCopy isEqualToString:{v12, v14}])
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)modifyUsingBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (self->_allExistingViews)
  {
    [(SUUIViewReusePool *)self->_viewPool recycleReusableViews:?];
    allExistingViews = self->_allExistingViews;
    self->_allExistingViews = 0;
  }

  v6 = [[SUUIViewModification alloc] initWithViewReusePool:self->_viewPool];
  blockCopy[2](blockCopy, v6);
  backgroundColor = [(SUUIViewReuseCollectionViewCell *)self backgroundColor];
  contentView = [(SUUIViewReuseCollectionViewCell *)self contentView];
  allViewTextProperties = [(SUUIViewModification *)v6 allViewTextProperties];
  allViewTextProperties = self->_allViewTextProperties;
  self->_allViewTextProperties = allViewTextProperties;

  views = [(SUUIViewModification *)v6 views];
  v12 = self->_allExistingViews;
  self->_allExistingViews = views;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = self->_allExistingViews;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v19 + 1) + 8 * i);
        [v18 setBackgroundColor:backgroundColor];
        [contentView addSubview:v18];
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  [(SUUIViewReusePool *)self->_viewPool hideUnusedViews];
  [(SUUIViewReuseCollectionViewCell *)self setNeedsLayout];
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SUUIViewReuseCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  v17 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_allExistingViews;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) setBackgroundColor:backgroundColor];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11.receiver = self;
  v11.super_class = SUUIViewReuseCollectionViewCell;
  [(SUUICollectionViewCell *)&v11 applyLayoutAttributes:attributesCopy];
}

- (void)setBackgroundColor:(id)color
{
  v16 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_allExistingViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [*(*(&v11 + 1) + 8 * v9++) setBackgroundColor:colorCopy];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUUIViewReuseCollectionViewCell;
  [(SUUICollectionViewCell *)&v10 setBackgroundColor:colorCopy];
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end