@interface SUUIImageGridView
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)contentInset;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setColumnCount:(int64_t)count;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setImageViews:(id)views;
- (void)setSize:(CGSize)size;
@end

@implementation SUUIImageGridView

- (void)setColumnCount:(int64_t)count
{
  if (self->_columnCount != count)
  {
    self->_columnCount = count;
    [(SUUIImageGridView *)self setNeedsLayout];
  }
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
    [(SUUIImageGridView *)self setNeedsLayout];
  }
}

- (void)setImageViews:(id)views
{
  v26 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  if (![(NSArray *)self->_imageViews isEqualToArray:viewsCopy])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_imageViews;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v20 + 1) + 8 * v10++) removeFromSuperview];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = viewsCopy;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(SUUIImageGridView *)self addSubview:*(*(&v16 + 1) + 8 * v15++), v16];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }

    objc_storeStrong(&self->_imageViews, views);
    [(SUUIImageGridView *)self setNeedsLayout];
  }
}

- (void)setSize:(CGSize)size
{
  if (self->_size.width != size.width || self->_size.height != size.height)
  {
    self->_size = size;
    [(SUUIImageGridView *)self setNeedsLayout];
  }
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  [SUUIImageGridViewReuseView preferredSizeForViewElement:element context:context];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  [SUUIImageGridViewReuseView sizeThatFitsWidth:element viewElement:context context:width];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  reuseView = self->_reuseView;
  if (!reuseView)
  {
    v10 = objc_alloc_init(SUUIImageGridViewReuseView);
    v11 = self->_reuseView;
    self->_reuseView = v10;

    reuseView = self->_reuseView;
  }

  [(SUUIImageGridViewReuseView *)reuseView reloadWithViewElement:elementCopy width:contextCopy context:width];
  -[SUUIImageGridView setColumnCount:](self, "setColumnCount:", [elementCopy columnCount]);
  [elementCopy contentInset];
  [(SUUIImageGridView *)self setContentInset:?];
  imageViews = [(SUUIImageGridViewReuseView *)self->_reuseView imageViews];
  [(SUUIImageGridView *)self setImageViews:imageViews];

  [elementCopy size];
  [(SUUIImageGridView *)self setSize:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = [(SUUIImageGridView *)self columnCount:fits.width];
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  imageViews = [(SUUIImageGridView *)self imageViews];
  v7 = [imageViews count] / v5;

  imageViews2 = [(SUUIImageGridView *)self imageViews];
  v9 = [imageViews2 count] % v5;

  if (v9)
  {
    v10 = v7 + 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = malloc_type_calloc(v5, 8uLL, 0x100004000313F17uLL);
  v12 = malloc_type_calloc(v10, 8uLL, 0x100004000313F17uLL);
  bzero(v11, 8 * v5);
  if (v10 >= 1)
  {
    bzero(v12, 8 * v10);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  imageViews3 = [(SUUIImageGridView *)self imageViews];
  v14 = [imageViews3 countByEnumeratingWithState:&v31 objects:v35 count:16];
  width = *MEMORY[0x277CBF3A8];
  height = *(MEMORY[0x277CBF3A8] + 8);
  if (v14)
  {
    v17 = v14;
    v18 = 0;
    v19 = 0;
    v20 = *v32;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(imageViews3);
        }

        [*(*(&v31 + 1) + 8 * i) sizeThatFits:{width, height}];
        if (*(v11 + v18) < v22)
        {
          *(v11 + v18) = v22;
        }

        if (*(v12 + v19) < v23)
        {
          *(v12 + v19) = v23;
        }

        v24 = v18 + 1 < v5;
        if (v18 + 1 < v5)
        {
          ++v18;
        }

        else
        {
          v18 = 0;
        }

        if (!v24)
        {
          ++v19;
        }
      }

      v17 = [imageViews3 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v17);
  }

  for (j = 0; j != v5; ++j)
  {
    width = width + *(v11 + j);
  }

  if (v10 >= 1)
  {
    v26 = v12;
    do
    {
      v27 = *v26++;
      height = height + v27;
      --v10;
    }

    while (v10);
  }

  if (width < selfCopy->_size.width)
  {
    width = selfCopy->_size.width;
  }

  if (height < selfCopy->_size.height)
  {
    height = selfCopy->_size.height;
  }

  free(v11);
  free(v12);
  v28 = width;
  v29 = height;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)layoutSubviews
{
  v72 = *MEMORY[0x277D85DE8];
  v69.receiver = self;
  v69.super_class = SUUIImageGridView;
  [(SUUIImageGridView *)&v69 layoutSubviews];
  columnCount = [(SUUIImageGridView *)self columnCount];
  if (columnCount <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = columnCount;
  }

  imageViews = [(SUUIImageGridView *)self imageViews];
  v6 = [imageViews count] / v4;

  selfCopy = self;
  imageViews2 = [(SUUIImageGridView *)self imageViews];
  v8 = [imageViews2 count] % v4;

  if (v8)
  {
    v9 = v6 + 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = malloc_type_calloc(v4, 8uLL, 0x100004000313F17uLL);
  v11 = malloc_type_calloc(v9, 8uLL, 0x100004000313F17uLL);
  bzero(v10, 8 * v4);
  if (v9 >= 1)
  {
    bzero(v11, 8 * v9);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  imageViews3 = [(SUUIImageGridView *)selfCopy imageViews];
  v13 = [imageViews3 countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *v66;
    v18 = *MEMORY[0x277CBF3A8];
    v19 = *(MEMORY[0x277CBF3A8] + 8);
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v66 != v17)
        {
          objc_enumerationMutation(imageViews3);
        }

        [*(*(&v65 + 1) + 8 * i) sizeThatFits:{v18, v19}];
        if (*(v10 + v16) < v21)
        {
          *(v10 + v16) = v21;
        }

        if (*(v11 + v15) < v22)
        {
          *(v11 + v15) = v22;
        }

        if (v16 + 1 < v4)
        {
          ++v16;
        }

        else
        {
          ++v15;
          v16 = 0;
        }
      }

      v14 = [imageViews3 countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v14);
  }

  [(SUUIImageGridView *)selfCopy bounds];
  v24 = v23;
  [(SUUIImageGridView *)selfCopy bounds];
  v26 = v25;
  for (j = 0; j != v4; ++j)
  {
    v24 = v24 - *(v10 + j);
  }

  v28 = v9 - 1;
  if (v9 >= 1)
  {
    v29 = v11;
    do
    {
      v30 = *v29++;
      v26 = v26 - v30;
      --v9;
    }

    while (v9);
  }

  [(SUUIImageGridView *)selfCopy contentInset];
  v32 = v26 - v31;
  [(SUUIImageGridView *)selfCopy contentInset];
  v34 = v32 - v33;
  [(SUUIImageGridView *)selfCopy contentInset];
  v36 = v24 - v35;
  [(SUUIImageGridView *)selfCopy contentInset];
  v38 = v36 - v37;
  v39 = v34 / v28;
  v40 = floorf(v39);
  v41 = v38 / (v4 - 1);
  v42 = floorf(v41);
  if (v40 >= 0.0)
  {
    v43 = v40;
  }

  else
  {
    v43 = 0.0;
  }

  if (v42 >= 0.0)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0.0;
  }

  [(SUUIImageGridView *)selfCopy contentInset];
  v46 = v45;
  [(SUUIImageGridView *)selfCopy contentInset];
  v48 = v47;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  imageViews4 = [(SUUIImageGridView *)selfCopy imageViews];
  v50 = [imageViews4 countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = 0;
    v53 = 0;
    v54 = *v62;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v62 != v54)
        {
          objc_enumerationMutation(imageViews4);
        }

        v56 = *(*(&v61 + 1) + 8 * k);
        [v56 frame];
        [v56 sizeThatFits:{v38, 1.79769313e308}];
        [v56 setFrame:{v46, v48, v57, v58}];
        if (v53 + 1 >= v4)
        {
          [(SUUIImageGridView *)selfCopy contentInset];
          v46 = v59;
          v53 = 0;
          v48 = v43 + v48 + *(v11 + v52++);
        }

        else
        {
          v46 = v44 + v46 + *(v10 + v53++);
        }
      }

      v51 = [imageViews4 countByEnumeratingWithState:&v61 objects:v70 count:16];
    }

    while (v51);
  }

  free(v10);
  free(v11);
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

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end