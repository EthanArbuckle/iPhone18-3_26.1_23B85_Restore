@interface SUUIStackListCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)layoutSubviewsWithFixedWidth:(CGRect)width size:(CGSize *)size;
- (BOOL)layoutSubviewsWithFlowLayout:(CGRect)layout size:(CGSize *)size;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIStackListCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SUUIStackListCollectionViewCell

- (SUUIStackListCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SUUIStackListCollectionViewCell;
  v3 = [(SUUIViewReuseCollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    listViews = v3->_listViews;
    v3->_listViews = v4;
  }

  return v3;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  style = [elementCopy style];
  -[SUUIStackListCollectionViewCell setAlignment:](self, "setAlignment:", [style elementAlignment]);

  listViews = [(SUUIStackListCollectionViewCell *)self listViews];
  [listViews removeAllObjects];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__SUUIStackListCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v14[3] = &unk_2798F5EF0;
  widthCopy = width;
  v15 = elementCopy;
  v16 = contextCopy;
  selfCopy = self;
  v12 = contextCopy;
  v13 = elementCopy;
  [(SUUIViewReuseCollectionViewCell *)self modifyUsingBlock:v14];
}

void __71__SUUIStackListCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) children];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 elementType] == 59)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [v3 addStackItemViewWithElement:v9 width:*(a1 + 40) context:*(a1 + 56)];
            if (v10)
            {
              v11 = v10;
              v12 = [*(a1 + 48) listViews];
              [v12 setObject:v9 forKey:v11];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  children = [element children];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(children);
        }

        v11 |= [contextCopy prefetchResourcesForViewElement:*(*(&v15 + 1) + 8 * i) reason:reason];
      }

      v10 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  children = [element children];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(children);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([v13 elementType] == 59)
        {
          [SUUIStackItemView requestLayoutForViewElement:v13 width:contextCopy context:width];
        }
      }

      v10 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  v68 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  v9 = *MEMORY[0x277CBF3A8];
  MaxY = *(MEMORY[0x277CBF3A8] + 8);
  [elementCopy children];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = v64 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v62;
    v14 = 0.0;
    v15 = MaxY;
    v16 = v9;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v62 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v61 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [SUUIStackItemView sizeThatFitsWidth:v18 viewElement:contextCopy context:0 numberOfLines:width];
          v21 = v14 + 17.0;
          if (v14 <= 0.0)
          {
            v21 = v14;
          }

          v14 = v21 + v19;
          if (v21 + v19 > width)
          {

            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v23 = v10;
            v24 = [v23 countByEnumeratingWithState:&v57 objects:v66 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = width * 0.5 + -8.5;
              v27 = floorf(v26);
              v28 = *v58;
              while (2)
              {
                for (j = 0; j != v25; ++j)
                {
                  if (*v58 != v28)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v30 = *(*(&v57 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v56 = 0;
                    [SUUIStackItemView sizeThatFitsWidth:v30 viewElement:contextCopy context:&v56 numberOfLines:v27];
                    if (MaxY < v31)
                    {
                      MaxY = v31;
                    }

                    if (v56 > 2)
                    {

                      v33 = *MEMORY[0x277CBF3A0];
                      v32 = *(MEMORY[0x277CBF3A0] + 8);
                      v34 = *(MEMORY[0x277CBF3A0] + 16);
                      v35 = *(MEMORY[0x277CBF3A0] + 24);
                      v54 = 0u;
                      v55 = 0u;
                      v52 = 0u;
                      v53 = 0u;
                      v36 = v23;
                      v37 = [v36 countByEnumeratingWithState:&v52 objects:v65 count:16];
                      if (v37)
                      {
                        v38 = v37;
                        v39 = *v53;
                        do
                        {
                          for (k = 0; k != v38; ++k)
                          {
                            if (*v53 != v39)
                            {
                              objc_enumerationMutation(v36);
                            }

                            v41 = *(*(&v52 + 1) + 8 * k);
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              [SUUIStackItemView sizeThatFitsWidth:v41 viewElement:contextCopy context:0 numberOfLines:width];
                              v44 = v43;
                              if (v42 >= 16.0)
                              {
                                v45 = v42;
                              }

                              else
                              {
                                v45 = 16.0;
                              }

                              v70.origin.x = v33;
                              v70.origin.y = v32;
                              v70.size.width = v34;
                              v70.size.height = v35;
                              if (v44 + CGRectGetMaxX(v70) <= width)
                              {
                                v33 = v33 + v44;
                              }

                              else
                              {
                                v71.origin.x = v33;
                                v71.origin.y = v32;
                                v71.size.width = v34;
                                v71.size.height = v35;
                                v32 = v32 + CGRectGetHeight(v71) + 6.0;
                                v33 = 0.0;
                              }

                              v72.origin.x = v33;
                              v72.origin.y = v32;
                              v72.size.width = v44;
                              v72.size.height = v45;
                              MaxX = CGRectGetMaxX(v72);
                              if (v9 < MaxX)
                              {
                                v9 = MaxX;
                              }

                              v34 = v44;
                              v35 = v45;
                            }
                          }

                          v38 = [v36 countByEnumeratingWithState:&v52 objects:v65 count:16];
                        }

                        while (v38);
                      }

                      v73.origin.x = v33;
                      v73.origin.y = v32;
                      v73.size.width = v34;
                      v73.size.height = v35;
                      MaxY = CGRectGetMaxY(v73);
                      goto LABEL_51;
                    }
                  }
                }

                v25 = [v23 countByEnumeratingWithState:&v57 objects:v66 count:16];
                if (v25)
                {
                  continue;
                }

                break;
              }
            }

            goto LABEL_54;
          }

          if (v20 >= 16.0)
          {
            v22 = v20;
          }

          else
          {
            v22 = 16.0;
          }

          if (v15 < v22)
          {
            v15 = v22;
          }

          if (v16 < v14)
          {
            v16 = v14;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    MaxY = v15;
    v9 = v16;
  }

  else
  {
  }

LABEL_51:
  style = [elementCopy style];
  elementAlignment = [style elementAlignment];

  if (elementAlignment == 3)
  {
    MaxY = MaxY + 6.0;
  }

  width = v9;
LABEL_54:

  widthCopy = width;
  v50 = MaxY;
  result.height = v50;
  result.width = widthCopy;
  return result;
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  imageCopy = image;
  requestCopy = request;
  contextCopy = context;
  listViews = [(SUUIStackListCollectionViewCell *)self listViews];
  keyEnumerator = [listViews keyEnumerator];

  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v14 = nextObject;
    v15 = 0;
    do
    {
      if (v15)
      {
        v15 = 1;
      }

      else
      {
        v15 = [v14 setImage:imageCopy forArtworkRequest:requestCopy context:contextCopy];
      }

      nextObject2 = [keyEnumerator nextObject];

      v14 = nextObject2;
    }

    while (nextObject2);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v8 = *MEMORY[0x277CBF3A8];
  if (![(SUUIStackListCollectionViewCell *)self layoutSubviewsWithFlowLayout:&v8 size:0.0, 0.0, fits.width, fits.height])
  {
    if ([(SUUIStackListCollectionViewCell *)self layoutSubviewsWithFixedWidth:&v8 size:0.0, 0.0, width, height])
    {
      goto LABEL_6;
    }

    [(SUUIStackListCollectionViewCell *)self layoutSubviewsWithFlowLayout:&v8 size:0.0, 0.0, width, height];
  }

  if ([(SUUIStackListCollectionViewCell *)self alignment]== 3)
  {
    *(&v8 + 1) = *(&v8 + 1) + 6.0;
  }

LABEL_6:
  v7 = *(&v8 + 1);
  v6 = *&v8;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SUUIStackListCollectionViewCell;
  [(SUUICollectionViewCell *)&v12 layoutSubviews];
  contentView = [(SUUIStackListCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (![(SUUIStackListCollectionViewCell *)self layoutSubviewsWithFlowLayout:0 size:v5, v7, v9, v11]&& ![(SUUIStackListCollectionViewCell *)self layoutSubviewsWithFixedWidth:0 size:v5, v7, v9, v11])
  {
    [(SUUIStackListCollectionViewCell *)self layoutSubviewsWithFlowLayout:0 size:v5, v7, v9, v11];
  }
}

- (BOOL)layoutSubviewsWithFlowLayout:(CGRect)layout size:(CGSize *)size
{
  height = layout.size.height;
  width = layout.size.width;
  y = layout.origin.y;
  x = layout.origin.x;
  v76 = *MEMORY[0x277D85DE8];
  [(SUUIViewReuseCollectionViewCell *)self contentInset];
  rect = v10;
  v12 = v11;
  v14 = v13;
  v77.origin.x = x;
  v77.origin.y = y;
  v77.size.width = width;
  v77.size.height = height;
  v15 = CGRectGetWidth(v77);
  v61.origin.x = x;
  v61.origin.y = y;
  v78.origin.x = x;
  v78.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  v78.size.width = width;
  v78.size.height = height;
  v16 = CGRectGetWidth(v78);
  v18 = *MEMORY[0x277CBF3A0];
  v17 = *(MEMORY[0x277CBF3A0] + 8);
  v19 = *(MEMORY[0x277CBF3A0] + 16);
  v20 = *(MEMORY[0x277CBF3A0] + 24);
  _isRightAligned = [(SUUIStackListCollectionViewCell *)self _isRightAligned];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  allExistingViews = [(SUUIViewReuseCollectionViewCell *)self allExistingViews];
  v23 = [allExistingViews countByEnumeratingWithState:&v71 objects:v75 count:16];
  v68 = v18;
  v69 = v17;
  if (!v23)
  {
    v26 = 1;
    v27 = 0.0;
    goto LABEL_32;
  }

  v24 = v23;
  v70 = v15 - v12 - v14;
  v65 = v12;
  v62 = v16 - v14;
  v63 = v18;
  if (_isRightAligned)
  {
    v12 = v16 - v14;
  }

  v25 = *v72;
  v26 = 1;
  v27 = 0.0;
  v28 = rect;
  v64 = v17;
  do
  {
    v29 = 0;
    v30 = v20;
    v31 = v19;
    do
    {
      v67 = v30;
      if (*v72 != v25)
      {
        objc_enumerationMutation(allExistingViews);
      }

      v32 = *(*(&v71 + 1) + 8 * v29);
      [v32 sizeThatFits:{v70, 1.79769313e308, *&v61.origin.x, *&v61.origin.y, *&v61.size.width, *&v61.size.height}];
      v19 = v33;
      v79.size.height = v34;
      v79.origin.x = v63;
      v79.origin.y = v17;
      v79.size.width = v19;
      v35 = fmax(CGRectGetHeight(v79), 16.0);
      if ([(SUUIStackListCollectionViewCell *)self _isRightAligned])
      {
        v80.origin.x = v63;
        v80.origin.y = v17;
        v80.size.width = v19;
        v36 = v35;
        v80.size.height = v35;
        v12 = v12 - CGRectGetWidth(v80);
      }

      else
      {
        v36 = v35;
      }

      _isRightAligned2 = [(SUUIStackListCollectionViewCell *)self _isRightAligned];
      v38 = v12;
      v39 = v28;
      v40 = v19;
      v20 = v36;
      v41 = v36;
      if (_isRightAligned2)
      {
        MinX = CGRectGetMinX(*&v38);
        if (MinX >= v65 + CGRectGetMinX(v61))
        {
          goto LABEL_13;
        }
      }

      else if (CGRectGetMaxX(*&v38) <= v62)
      {
LABEL_13:
        v43 = v12;
        v44 = v12;
        goto LABEL_20;
      }

      if (v70 < v27)
      {
        v27 = v70;
      }

      [v32 setFrame:{v12, v28, v19, v20}];
      [v32 layoutIfNeeded];
      v45 = [v32 numberOfLines] > 1;
      v43 = v65;
      if ([(SUUIStackListCollectionViewCell *)self _isRightAligned])
      {
        v81.origin.x = v12;
        v81.origin.y = rect;
        v81.size.width = v19;
        v81.size.height = v20;
        v43 = v62 - CGRectGetWidth(v81);
      }

      v26 &= v45;
      v82.origin.x = v68;
      v82.origin.y = v69;
      v82.size.width = v31;
      v82.size.height = v67;
      v28 = CGRectGetMaxY(v82) + 6.0;
      v44 = v43;
LABEL_20:
      [v32 setFrame:{v43, v28, v19, v20}];
      _isRightAligned3 = [(SUUIStackListCollectionViewCell *)self _isRightAligned];
      v47 = v43;
      v48 = v28;
      v49 = v19;
      v50 = v20;
      if (_isRightAligned3)
      {
        MaxX = CGRectGetMinX(*&v47);
        v52 = -17.0;
      }

      else
      {
        MaxX = CGRectGetMaxX(*&v47);
        v52 = 17.0;
      }

      v12 = MaxX + v52;
      _isRightAligned4 = [(SUUIStackListCollectionViewCell *)self _isRightAligned];
      v68 = v44;
      v69 = v28;
      v54 = v43;
      v55 = v28;
      v56 = v19;
      v57 = v20;
      if (_isRightAligned4)
      {
        v58 = v70 - CGRectGetMinX(*&v54);
      }

      else
      {
        v58 = CGRectGetMaxX(*&v54);
      }

      if (v27 < v58)
      {
        v27 = v58;
      }

      ++v29;
      v30 = v20;
      v31 = v19;
      v28 = rect;
      v17 = v64;
    }

    while (v24 != v29);
    v24 = [allExistingViews countByEnumeratingWithState:&v71 objects:v75 count:{16, v20}];
  }

  while (v24);
LABEL_32:

  if (size)
  {
    v83.origin.x = v68;
    v83.origin.y = v69;
    v83.size.width = v19;
    v83.size.height = v20;
    MaxY = CGRectGetMaxY(v83);
    size->width = v27;
    size->height = MaxY;
  }

  return v26 & 1;
}

- (BOOL)layoutSubviewsWithFixedWidth:(CGRect)width size:(CGSize *)size
{
  height = width.size.height;
  width = width.size.width;
  y = width.origin.y;
  x = width.origin.x;
  v43 = *MEMORY[0x277D85DE8];
  [(SUUIViewReuseCollectionViewCell *)self contentInset];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v37.origin.x = x;
  v37.origin.y = y;
  v44.origin.x = x;
  v44.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v44.size.width = width;
  v44.size.height = height;
  v38 = 0u;
  v39 = 0u;
  v36 = v15;
  v16 = CGRectGetWidth(v44) - v13 - v15;
  v40 = 0u;
  v41 = 0u;
  allExistingViews = [(SUUIViewReuseCollectionViewCell *)self allExistingViews];
  v18 = [allExistingViews countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = v16 * 0.5 + -8.5;
    v35 = floorf(v20);
    v21 = *v39;
    v22 = 1;
    v23 = v13;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(allExistingViews);
        }

        v25 = *(*(&v38 + 1) + 8 * i);
        [v25 sizeThatFits:{v35, 1.79769313e308}];
        v27 = v26;
        v29 = v28;
        v45.origin.x = v23;
        v45.origin.y = v11;
        v45.size.width = v27;
        v45.size.height = v29;
        MaxX = CGRectGetMaxX(v45);
        if (MaxX <= CGRectGetMaxX(v37) - v36)
        {
          v31 = v11;
          v32 = v23;
        }

        else
        {
          v46.origin.x = v13;
          v46.origin.y = v11;
          v46.size.width = v27;
          v46.size.height = v29;
          v31 = CGRectGetMaxY(v46) + 6.0;
          v23 = v13;
          v32 = v13;
        }

        [v25 setFrame:{v23, v31, v27, v29}];
        [v25 layoutIfNeeded];
        v22 &= [v25 numberOfLines] < 3;
        v47.origin.x = v23;
        v47.origin.y = v31;
        v47.size.width = v27;
        v47.size.height = v29;
        v23 = CGRectGetMaxX(v47) + 17.0;
      }

      v19 = [allExistingViews countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v19);
  }

  else
  {
    v32 = *MEMORY[0x277CBF3A0];
    v31 = *(MEMORY[0x277CBF3A0] + 8);
    v27 = *(MEMORY[0x277CBF3A0] + 16);
    v29 = *(MEMORY[0x277CBF3A0] + 24);
    v22 = 1;
  }

  if (size)
  {
    v48.origin.x = v32;
    v48.origin.y = v31;
    v48.size.width = v27;
    v48.size.height = v29;
    MaxY = CGRectGetMaxY(v48);
    size->width = v16;
    size->height = MaxY;
  }

  return v22;
}

@end